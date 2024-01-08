import 'package:digi_khata/config/routes.dart';
import 'package:digi_khata/constants.dart';
import 'package:digi_khata/screens/home_tabs/collection.dart';
import 'package:digi_khata/screens/home_tabs/add_customer.dart';
import 'package:digi_khata/screens/home_tabs/bank_tab.dart';
import 'package:digi_khata/screens/home_tabs/customers_tab.dart';
import 'package:digi_khata/screens/home_tabs/supplier_tab.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/basic_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool floatText = false;
  bool isBank = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                clipBehavior: Clip.antiAlias,
                context: context,
                builder: (context) => Container(
                  padding: const EdgeInsets.all(12),
                  height: 300,
                  child: Scaffold(
                    resizeToAvoidBottomInset: false,
                    body: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text('Edit Business Name',
                              style: Theme.of(context).textTheme.bodyMedium),
                          y20,
                          TextFormField(
                            decoration: kSimpleTextField.copyWith(
                                hintText: 'Business Name'),
                          ),
                          y20,
                          BasicButton(text: 'SAVE', onTap: () {}),
                          y20,
                          Text(
                            'ADD NEW DIGIKHATA BUSINESS',
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
              );
            },
            child: const Row(
              children: [
                Text('Business 1'),
                Icon(Icons.edit),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.collection);
              },
              icon: const Icon(Icons.add_business),
            ),
          ],
          bottom: TabBar(
            indicatorColor: AppColors.primaryGradient,
            indicatorWeight: 5,
            labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.background,
                ),
            unselectedLabelStyle:
                Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.background.withOpacity(0.5),
                    ),
            tabs: const [
              Tab(text: 'Customers'),
              Tab(text: 'Suppliers'),
              Tab(text: 'Banks'),
              Tab(text: 'All'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            customerANDAllTab(context ),
            supplierTab(context),
            bankTab(context),
            customerANDAllTab(context),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: floatText == supplierTab(context)
              ? AppColors.success
              : AppColors.primaryGradient,
          onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const AddCustomer();
                    }),
                  );
          },
          label: Row(
            children: [
              IconButton(
                onPressed: () {
                  
                },
                icon: isBank == bankTab(context)
                    ? const Icon(FontAwesomeIcons.building)
                    : const Icon(Icons.person_add),
              ),
              x5,
              Text(
                isBank == bankTab(context) ? 'Add Bank' : 'Add Customer',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.background),
              ),
            ],
          ),
        ),
        // floatingActionButton: _buildFABForIndex(_currentIndex, context),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}

Widget _buildFABForIndex(int index, BuildContext context) {
  switch (index) {
    case 0:
      return FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: AppColors.primaryGradient,
        label: Row(
          children: [
            const Icon(Icons.person_add),
            x5,
            Text(
              'Add Customer',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.background),
            ),
          ],
        ),
      );
    case 1:
      return FloatingActionButton.extended(
        backgroundColor: AppColors.success,
        onPressed: () {},
        label: Row(
          children: [
            const Icon(Icons.person_add),
            x5,
            Text(
              'Add Supplier',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.background),
            ),
          ],
        ),
      );
    case 2:
      return FloatingActionButton.extended(
        backgroundColor: AppColors.primaryGradient,
        onPressed: () {},
        label: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.buildingColumns),
            ),
            x5,
            Text(
              'Add Bank',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.background),
            ),
          ],
        ),
      );
    case 3:
      return FloatingActionButton.extended(
        backgroundColor: AppColors.primaryGradient,
        onPressed: () {},
        label: Row(
          children: [
            const Icon(Icons.person_add),
            x5,
            Text(
              'Add Customer',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.background),
            ),
          ],
        ),
      );
    default:
      return FloatingActionButton.extended(
        backgroundColor: AppColors.primaryGradient,
        onPressed: () {},
        label: Row(
          children: [
            const Icon(Icons.person_add),
            x5,
            Text(
              'Add Customer',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.background),
            ),
          ],
        ),
      );
  }
}
