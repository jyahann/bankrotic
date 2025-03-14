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

  Future<void> addSpend(Spend spend) async {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day);
    final recordKey = _getRecordKey(date);

    var record = _getRecordFromCache(recordKey);
    if (record != null) {
      final spends = record.spends.toSet();
      final existingSpend = spends.lookup(spend);
      if (existingSpend != null) {
        spends.remove(existingSpend);
        spend = spend.copyWith(cash: existingSpend.cash);
      }
      spends.add(spend);
      record = record.copyWith(spends: spends);
    } else {
      record = Record(date: date, spends: {spend});
    }

    _saveRecordToCache(recordKey, record);
  }

  void _saveRecordToCache(String key, Record record) {
    final json = jsonEncode(record.toJson());
    prefs.setString(key, json);
  }

  Record? _getRecordFromCache(String key) {
    final json = prefs.getString(key);

    if (json == null) return null;

    final jsonMap = jsonDecode(json) as Map<String, Object?>;
    return Record.fromJson(jsonMap);
  }

  String _getRecordKey(DateTime date) {
    return "record_${date.year}_${date.month}_${date.day}";
  }

  List<Record> getAllRecords() {
    final records = <Record>[];
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

  (Record? today, List<Record> other) getTodayAndOtherRecords() {
    final now = DateTime.now();
    final todayDate = DateTime(now.year, now.month, now.day);
    Record? todayRecord;
    final otherRecords = <Record>[];

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
}
