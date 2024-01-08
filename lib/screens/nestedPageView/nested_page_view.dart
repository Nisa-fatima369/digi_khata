import 'package:digi_khata/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:digi_khata/screens/nestedPageView/bill_book.dart';
import 'package:digi_khata/screens/nestedPageView/cash_book.dart';
import 'package:digi_khata/screens/nestedPageView/recycle_bin.dart';
import 'package:digi_khata/screens/nestedPageView/staff_book.dart';
import 'package:digi_khata/screens/nestedPageView/stock_book.dart';
import 'package:digi_khata/theme/colors.dart';

class NestedPageView extends StatefulWidget {
  final int? nestedPageIndex;
  const NestedPageView({
    Key? key,
    this.nestedPageIndex,
  }) : super(key: key);

  @override
  State<NestedPageView> createState() => _NestedPageViewState();
}

class _NestedPageViewState extends State<NestedPageView> {
  int selectedIndex = 0;
  List<Widget> screens = const [
    CashBook(),
    StockBook(),
    BillBook(),
    StaffBook(),
    RecycleBin(),
  ];

  void animateToPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.nestedPageIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screens[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.background,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        selectedItemColor: AppColors.primaryVarient,
        unselectedItemColor: AppColors.toast,
        showUnselectedLabels: true,
        selectedLabelStyle: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(fontSize: 10, fontWeight: FontWeight.normal),
        unselectedLabelStyle: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(fontSize: 10, fontWeight: FontWeight.normal),
        onTap: animateToPage,
        currentIndex: selectedIndex,
        items: containerData
            .map(
              (page) => BottomNavigationBarItem(
                icon: (page['icon']),
                label: page['title'],
              ),
            )
            .toList(),
      ),
    );
  }
}
