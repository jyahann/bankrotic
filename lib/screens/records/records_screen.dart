import 'package:bankrotic/extensions/context_extension.dart';
import 'package:bankrotic/screens/records/cubit/records_cubit.dart';
import 'package:bankrotic/screens/records/modals/records_today_modal.dart';
import 'package:bankrotic/screens/records/widgets/records_amount_form.dart';
import 'package:bankrotic/screens/records/widgets/records_reason_form.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecordsScreen extends StatefulWidget {
  const RecordsScreen({super.key});

  @override
  State<RecordsScreen> createState() => _RecordsScreenState();
}

class _RecordsScreenState extends State<RecordsScreen> {
  CarouselSliderController controller = CarouselSliderController();

  RecordFormStep step = RecordFormStep.amount;

  @override
  Widget build(BuildContext context) {
    final paddingTopOffKeyboard = (context.sizeScreen.height) * 0.2;
    final paddingTopOnKeyboard = (context.sizeScreen.height) * 0.1;

    final keyboard = MediaQuery.of(context).viewInsets.bottom != 0.0;

    final paddingTop = keyboard ? paddingTopOnKeyboard : paddingTopOffKeyboard;

    final todayRecords = context.select(
      (RecordsCubit cubit) => cubit.state.today,
    );

    return BlocListener<RecordsCubit, RecordsState>(
      listener: (context, state) {
        if (state.step == step) return;
        step = state.step;
        switch (state.step) {
          case RecordFormStep.amount:
            controller.previousPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
            break;
          case RecordFormStep.reason:
            controller.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
            break;
        }
      },
      child: Scaffold(
        floatingActionButton:
            todayRecords?.spends.isNotEmpty == true
                ? IconButton(
                  onPressed: () {
                    RecordsTodayModal.showModal(context);
                  },
                  icon: Icon(Icons.arrow_upward, color: Colors.white),
                )
                : null,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: AnimatedContainer(
              margin: EdgeInsets.only(top: paddingTop),
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
              child: slider(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget slider(BuildContext context) {
    return CarouselSlider(
      carouselController: controller,
      options: CarouselOptions(viewportFraction: 1.0),
      disableGesture: true,
      items: [RecordsAmountForm(), RecordsReasonForm()],
    );
  }
}
