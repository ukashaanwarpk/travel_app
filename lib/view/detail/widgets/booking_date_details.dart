


import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../utils/constant/color.dart';
import '../../../utils/constant/sizes.dart';
import 'add_remove_guest.dart';

class BookingDateDetails extends StatefulWidget {
  const BookingDateDetails({
    super.key,
  });

  @override
  State<BookingDateDetails> createState() => _BookingDateDetailsState();
}

class _BookingDateDetailsState extends State<BookingDateDetails> {
  TimeOfDay? selectedTime;
  String? selectedDate;


  Future<void> timePickerFun()async{

    TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.inputOnly,
    );

    if(picked != null){
      setState(() {
        selectedTime = picked;
      });

    }
  }

  Future<void> datePickerFun()async{

    DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );



    if(picked != null){
      String startDate = DateFormat('MM-dd-yyyy').format(picked.start);
      String endDate = DateFormat('MM-dd-yyyy').format(picked.start);
      String formattedDate = "$startDate to $endDate";
      setState(() {
        selectedDate = formattedDate;
      });

    }
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Schedule",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: TSizes.md,
          ),
          DottedLineAndDate(
            title: 'Date',
            onTap: () {
              datePickerFun();

            },
            subTitle: selectedDate != null ? selectedDate.toString() :"Select Date",
          ),
          DottedLineAndDate(
            title: 'Time',
            onTap: () {
              timePickerFun();
            },
            subTitle: selectedTime != null ? selectedTime!.format(context).toString(): 'Select Time',
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("No of Guest"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" 0 guest"),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: TSizes.defaultSpace / 2),
                        child: TGuestAddAndRemoveButton(quantity: 0),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class DottedLineAndDate extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final String subTitle;

  const DottedLineAndDate({
    super.key,
    required this.title,
    required this.onTap,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DottedLine(
              lineLength: 70,
              dashColor: TColors.darkGrey.withOpacity(0.60),
            ),
            TextButton(
                onPressed: onTap,
                child: Text(subTitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: TColors.primary)))
          ],
        ),
      ],
    );
  }
}



