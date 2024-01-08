import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/basic_card.dart';
import 'package:flutter/material.dart';

class StockBook extends StatelessWidget {
  const StockBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Stock Book'),
          bottom: TabBar(
            indicatorColor: AppColors.background,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 5,
            labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.background,
                ),
            unselectedLabelStyle:
                Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.background.withOpacity(0.5),
                    ),
            tabs: const [
              Tab(text: 'All Items'),
              Tab(text: 'Low Stock'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  BasicCard(
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Items: 0'),
                          Icon(Icons.arrow_forward_ios,
                              color: AppColors.primary),
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
                            child: Text(
                              ' Stock IN Report',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: AppColors.success),
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
                            child: Text(
                              ' Stock OUT Report',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: AppColors.failure),
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
                        '1. Add Items',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.toast),
                      ),
                      y10,
                      Text(
                        '2. Add stock in/out entries',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.toast),
                      ),
                      y10,
                      Text(
                        '3. Manage your stock easily',
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  BasicCard(
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Items: 0'),
                          Icon(Icons.arrow_forward_ios,
                              color: AppColors.primary),
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
                            child: Text(
                              ' Stock IN Report',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: AppColors.success),
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
                            child: Text(
                              ' Stock OUT Report',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: AppColors.failure),
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
                        '1. Add Items',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.toast),
                      ),
                      y10,
                      Text(
                        '2. Add stock in/out entries',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.toast),
                      ),
                      y10,
                      Text(
                        '3. Manage your stock easily',
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
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: AppColors.primary,
          heroTag: 'additem',
          icon: const Icon(Icons.add),
          label: const Text('ADD ITEM'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
