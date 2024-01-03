import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/balance_card.dart';
import 'package:digi_khata/widgets/basic_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget bankTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const BalanceCard(),
          y10,
          Row(
            children: [
              Expanded(
                child: BasicCard(
                  child: ListTile(
                    title: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.book,
                        color: AppColors.primaryVarient,
                      ),
                    ),
                    subtitle: Text(
                      'Cash Book',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              x5,
              Expanded(
                child: BasicCard(
                  child: ListTile(
                    title: IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.cashRegister,
                          color: AppColors.primaryVarient),
                    ),
                    subtitle: Text(
                      'Stock Book',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              x5,
              Expanded(
                child: BasicCard(
                  child: ListTile(
                    title: IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.moneyBill,
                          color: AppColors.primaryVarient),
                    ),
                    subtitle: Text(
                      'Bill  Book',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              x5,
              Expanded(
                child: BasicCard(
                  child: ListTile(
                    title: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.users,
                        color: AppColors.primaryVarient,
                      ),
                    ),
                    subtitle: Text(
                      'Staff Book',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              x5,
              Expanded(
                child: BasicCard(
                  child: ListTile(
                    title: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.recycle,
                        color: AppColors.primaryVarient,
                      ),
                    ),
                    subtitle: Text(
                      'Recycle Bin',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 10),
                      textAlign: TextAlign.center,
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
                '1. Add banks',
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
                '3. Manage your bank balance',
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


