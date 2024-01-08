import 'package:digi_khata/screens/home_tabs/all_transactions.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/basic_card.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hide Balance',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppColors.primary),
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ListTile(
                      title: Text(
                        'Rs 0',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.success),
                      ),
                      subtitle: Text(
                        'You will give',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.toast),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    color: AppColors.border,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: ListTile(
                      title: Text(
                        'Rs 0',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.success),
                      ),
                      subtitle: Text(
                        'You will give',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.toast),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    color: AppColors.border,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AllTransations()));
                      },
                      child: const Icon(Icons.arrow_forward_ios,
                          color: AppColors.primary),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
