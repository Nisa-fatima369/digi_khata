import 'package:digi_khata/constants.dart';
import 'package:digi_khata/screens/nestedPageView/nested_page_view.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/balance_card.dart';
import 'package:digi_khata/widgets/basic_card.dart';
import 'package:digi_khata/widgets/utils.dart';
import 'package:flutter/material.dart';

Widget supplierTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const BalanceCard(),
          y10,
         Row(
          children: [
            for(int index = 0; index < containerData.length; index++)
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  child: BasicCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NestedPageView(nestedPageIndex: index),
                        ),
                      );
                    },
                    child: ListTile(
                      title: IconButton(
                        onPressed: () {},
                        icon: containerData[index]['icon'],
                        color: AppColors.primary,
                      ),
                      subtitle: Text(
                        containerData[index]['title'],
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        y100,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. Add suppliers',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.toast),
              ),
              y10,
              Text(
                '2. Add entries & maintain Khata',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.toast),
              ),
              y10,
              Text(
                '3. Manage your purchases',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.toast),
              ),
            ],
          ),
        ],
      ),
    );
  }


