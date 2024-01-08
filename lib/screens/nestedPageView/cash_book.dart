import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/basic_card.dart';
import 'package:flutter/material.dart';

class CashBook extends StatelessWidget {
  const CashBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text('Cash Book'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            IntrinsicHeight(
              child: BasicCard(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rs 0',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Text(
                              'Cash in Hand',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: AppColors.toast),
                            ),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        color: AppColors.border,
                        indent: 7,
                        endIndent: 7,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rs 0',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Text(
                              'Today Balance',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: AppColors.toast),
                            ),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        color: AppColors.border,
                        indent: 7,
                        endIndent: 7,
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const AllTransations()),);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.history,
                                  color: AppColors.primary),
                              Text(
                                'History',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: AppColors.primary),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            y300,
            Text(
              'Thu, 04 Jan 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            y15,
            Text(
              'Let\'s make today\'s cash entries',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.toast),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () {},
            backgroundColor: AppColors.failure,
            heroTag: 'cashout',
            label: const Text('CASH OUT'),
          ),
          x10,
          FloatingActionButton.extended(
            onPressed: () {},
            backgroundColor: AppColors.success,
            heroTag: 'cashin',
            label: const Text('CASH IN'),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
