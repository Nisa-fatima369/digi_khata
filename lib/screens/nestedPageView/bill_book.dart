import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/basic_card.dart';
import 'package:flutter/material.dart';

class BillBook extends StatelessWidget {
  const BillBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text('Bill Book'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            BasicCard(
              onTap: () {},
              child: Container(
                height: 70,
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Total sales for Januaury'),
                    Text(
                      'Rs 0',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.primary,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            y10,
            Row(
              children: [
                Expanded(
                  child: BasicCard(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.calendar_month,
                              color: AppColors.primary),
                          x5,
                          Text(
                            'Start Date',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                x10,
                Expanded(
                  child: BasicCard(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.calendar_month,
                              color: AppColors.primary),
                          x5,
                          Text(
                            'End Date',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            y300,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. Create bills',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.toast),
                ),
                y10,
                Text(
                  '2. Share with customers',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.toast),
                ),
                y10,
                Text(
                  '3. Get paid 3X faster',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.toast),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        heroTag: 'create_new_bill',
        icon: const Icon(Icons.add),
        label: const Text('CREATE NEW BILL'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
