import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/basic_card.dart';
import 'package:flutter/material.dart';

class StaffBook extends StatefulWidget {
  const StaffBook({super.key});

  @override
  State<StaffBook> createState() => _StaffBookState();
}

int _selectedIndex = 0;

class _StaffBookState extends State<StaffBook> {
  int _selectedIndex = 0;

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
              Tab(text: 'Attendance'),
              Tab(text: 'Payroll'),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            isScrollable: false,
            
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
                      child: Row(
                        children: [
                          const Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: AppColors.primary,
                                    size: 16,
                                  ),
                                  Text('Fri, 05 Jan 2024'),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColors.primary,
                                    size: 16,
                                  ),
                                ],
                              )),
                          const VerticalDivider(
                            thickness: 1,
                            color: AppColors.border,
                            indent: 7,
                            endIndent: 7,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '0',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: AppColors.success),
                                ),
                                Text(
                                  'Total Present',
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '0',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: AppColors.failure),
                                ),
                                Text(
                                  'Total Absent',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: AppColors.toast),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  y300,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1. Add staff',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.toast),
                      ),
                      y10,
                      Text(
                        '2. Maintain daily attendance',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.toast),
                      ),
                      y10,
                      Text(
                        '3. Manage your staff salaries',
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
                      child: Row(
                        children: [
                          const Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: AppColors.primary,
                                    size: 16,
                                  ),
                                  Text('Fri, 05 Jan 2024'),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColors.primary,
                                    size: 16,
                                  ),
                                ],
                              )),
                          const VerticalDivider(
                            thickness: 1,
                            color: AppColors.border,
                            indent: 7,
                            endIndent: 7,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rs 0',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: AppColors.success),
                                ),
                                Text(
                                  'Total Salary',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: AppColors.toast),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  y300,
                  const Center(child: Text('No data found')),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: _selectedIndex == 0
            ? FloatingActionButton.extended(
                onPressed: () {},
                backgroundColor: AppColors.primary,
                heroTag: 'addStaff',
                icon: const Icon(Icons.person_add),
                label: const Text('ADD STAFF'),
              )
            : const SizedBox(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
