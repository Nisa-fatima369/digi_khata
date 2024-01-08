import 'package:digi_khata/screens/nestedPageView/bill_book.dart';
import 'package:digi_khata/screens/nestedPageView/cash_book.dart';
import 'package:digi_khata/screens/home_tabs/home.dart';
import 'package:digi_khata/screens/money/money.dart';
import 'package:digi_khata/screens/more/more.dart';
import 'package:digi_khata/screens/nestedPageView/recycle_bin.dart';
import 'package:digi_khata/screens/nestedPageView/staff_book.dart';
import 'package:digi_khata/screens/nestedPageView/stock_book.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

  final List<Map<String, dynamic>> pages = [
    {
      'icon': Icons.home,
      'page': const Home(),
      'title': 'home',
    },
    {
      'icon': Icons.money,
      'page': const Money(),
      'title': 'money',
    },
    {
      'icon': Icons.more_horiz,
      'page': const More(),
      'title': 'more',
    },
  ];

final List<Map<String, dynamic>> containerData = [
  {
    'icon': const Icon(FontAwesomeIcons.book),
    'page': const CashBook(),
    'title': 'Cash Book',
  },
  {
    'icon': const Icon(FontAwesomeIcons.cashRegister),
    'page': const StockBook(),
    'title': 'Stock Book',
  },
  {
    'icon': const Icon(FontAwesomeIcons.moneyBill),
    'page': const BillBook(),
    'title': 'Bill  Book',
  },
  {
    'icon': const Icon(FontAwesomeIcons.users),
    'page': const StaffBook(),
    'title': 'Staff Book',
  },
  {
    'icon': const Icon(FontAwesomeIcons.recycle),
    'page': const RecycleBin(),
    'title': 'Recycle Bin',
  },
];