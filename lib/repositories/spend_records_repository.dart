import 'dart:convert';

import 'package:bankrotic/models/spend_records.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class RecordsRepository {
  static final instance = RecordsRepository._();

  RecordsRepository._();

  late SharedPreferences prefs;

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  SpendRecord addSpend(Spend spend) {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day);
    final recordKey = _getRecordKey(date);

    var record = _getRecordFromCache(recordKey);
    if (record != null) {
      final spends = record.spends.toList();
      spends.add(spend);
      record = record.copyWith(spends: spends);
    } else {
      record = SpendRecord(date: date, spends: [spend]);
    }

    _saveRecordToCache(recordKey, record);
    return record;
  }

  void _saveRecordToCache(String key, SpendRecord record) {
    final json = jsonEncode(record.toJson());
    prefs.setString(key, json);
  }

  SpendRecord? _getRecordFromCache(String key) {
    final json = prefs.getString(key);

    if (json == null) return null;

    final jsonMap = jsonDecode(json) as Map<String, Object?>;
    return SpendRecord.fromJson(jsonMap);
  }

  String _getRecordKey(DateTime date) {
    return "record_${date.year}_${date.month}_${date.day}";
  }

  List<SpendRecord> getAllRecords() {
    final records = <SpendRecord>[];
    for (var key in prefs.getKeys()) {
      if (key.startsWith("record_")) {
        final record = _getRecordFromCache(key);
        if (record != null) {
          records.add(record);
        }
      }
    }
    return records;
  }

  (SpendRecord? today, List<SpendRecord> other) getTodayAndOtherRecords() {
    final now = DateTime.now();
    final todayDate = DateTime(now.year, now.month, now.day);
    SpendRecord? todayRecord;
    final otherRecords = <SpendRecord>[];

    for (var key in prefs.getKeys()) {
      if (key.startsWith("record_")) {
        final record = _getRecordFromCache(key);
        if (record != null) {
          if (record.date.isAtSameMomentAs(todayDate)) {
            todayRecord = record;
          } else {
            otherRecords.add(record);
          }
        }
      }
    }

    return (todayRecord, otherRecords);
  }

  Future<void> addTestRecords() async {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day);
    final dates = [
      date,
      date.subtract(Duration(days: 1)),
      date.subtract(Duration(days: 2)),
    ];

    final spends = {
      0: [
        Spend(reason: "пиво", amount: "2 000"),
        Spend(reason: "сиги", amount: "5 000"),
        Spend(reason: "покушать", amount: "10 000"),
      ],
      1: [
        Spend(reason: "крипта", amount: "пол зп"),
        Spend(reason: "кредит", amount: "зп"),
        Spend(reason: "эир подс", amount: "60 000"),
      ],
      2: [
        Spend(reason: "айфон кредит", amount: "40 000"),
        Spend(reason: "долг другу", amount: "20 000"),
        Spend(reason: "хата", amount: "250 000"),
      ],
    };

    for (var i = 0; i < dates.length; i++) {
      final recordKey = _getRecordKey(dates[i]);
      var record = SpendRecord(date: dates[i], spends: spends[i]!);
      _saveRecordToCache(recordKey, record);
    }
  }
}
