import 'package:digi_khata/config/routes.dart';
import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/basic_button.dart';
import 'package:digi_khata/widgets/basic_textfield.dart';
import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: const Text('Collection'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(110),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextFormField(
                    controller: searchController,
                    decoration: kSimpleTextField.copyWith(
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.background),
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.background),
                      hintText: 'Search',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: AppColors.background,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          searchController.clear();
                        },
                        child: const Icon(Icons.clear,
                            color: AppColors.background),
                      ),
                    ),
                  ),
                ),
                TabBar(
                  isScrollable: true,
                  indicatorColor: AppColors.primaryGradient,
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
                    Tab(text: 'All'),
                    Tab(text: 'Pending'),
                    Tab(text: 'Due Today'),
                    Tab(text: 'Upcoming'),
                    Tab(text: 'No Due Date'),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            for (int i = 0; i < 5; i++)
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text('No data found!',
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
