// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:digi_khata/widgets/basic_button.dart';
import 'package:digi_khata/widgets/basic_textfield.dart';
import 'package:flutter/material.dart';

import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';

class BusinessDetail extends StatelessWidget {
  const BusinessDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Business Detail'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            y40,
            const CircleAvatar(
              backgroundColor: AppColors.disabled,
              radius: 50,
              child: Icon(
                Icons.add_business,
                size: 50,
              ),
            ),
            y10,
            const Text('Registered Mobile Number'),
            y10,
            const Text('03001234567'),
            y20,
            BasicTextField(
              hinttext: 'Business Name',
              controller: TextEditingController(text: 'Business 1'),
              icon: Icons.business,
              onTap: () {},
            ),
            y10,
            BasicTextField(
              hinttext: '03001234567',
              controller: TextEditingController(text: ' 03001234567'),
              icon: Icons.call,
              onTap: () {},
            ),
            y10,
            BasicTextField(
              hinttext: 'Business Type',
              controller: TextEditingController(text: 'Type'),
              icon: Icons.business_center,
              onTap: () {},
            ),
            y10,
            BasicTextField(
              hinttext: 'Business Category',
              controller: TextEditingController(text: 'Category'),
              icon: Icons.business_center,
              onTap: () {},
            ),
            y10,
            BasicTextField(
              hinttext: 'Business Address',
              controller: TextEditingController(text: 'Address'),
              icon: Icons.location_on,
              onTap: () {},
            ),
            y10,
            BasicTextField(
              hinttext: ' Email',
              controller: TextEditingController(text: 'Email'),
              icon: Icons.email,
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BasicButton(text: 'ADD DETAILS', onTap: () {}),
      ),
    );
  }
}



