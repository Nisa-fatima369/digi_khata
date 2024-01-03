// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:digi_khata/config/routes.dart';
import 'package:digi_khata/widgets/basic_button.dart';
import 'package:digi_khata/widgets/basic_card.dart';
import 'package:flutter/material.dart';

import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Navigator.pushNamed(context, Routes.notifications);
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              BasicCard(
                onTap: () {
                  Navigator.pushNamed(context, Routes.businessDetail);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: AppColors.border,
                            child: Text(
                              'B1',
                              style: TextStyle(color: AppColors.primaryText),
                            ),
                          ),
                          x10,
                          Text(
                            'Business 1',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              'Update',
                              style: TextStyle(color: AppColors.primary),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.primary,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              y10,
              Row(
                children: [
                  Expanded(
                    child: BasicCard(
                      child: ListTile(
                        title: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.users,
                            color: AppColors.primary,
                          ),
                        ),
                        subtitle: Text(
                          'Staff Book',
                          style: Theme.of(context).textTheme.bodySmall,
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
                          icon: const Icon(FontAwesomeIcons.idCard,
                              color: AppColors.primary),
                        ),
                        subtitle: Text(
                          'Business Card',
                          style: Theme.of(context).textTheme.bodySmall,
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
                          icon: const Icon(FontAwesomeIcons.calculator,
                              color: AppColors.primary),
                        ),
                        subtitle: Text(
                          'Calculator',
                          style: Theme.of(context).textTheme.bodySmall,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                            color: AppColors.primary,
                          ),
                        ),
                        subtitle: Text(
                          'Cash Book',
                          style: Theme.of(context).textTheme.bodySmall,
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
                              color: AppColors.primary),
                        ),
                        subtitle: Text(
                          'Stock Book',
                          style: Theme.of(context).textTheme.bodySmall,
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
                              color: AppColors.primary),
                        ),
                        subtitle: Text(
                          'Bill Book',
                          style: Theme.of(context).textTheme.bodySmall,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              y20,
              BasicCard(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.backup,
                        color: AppColors.primary,
                      ),
                      title: const Text('Backup'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(color: AppColors.grey),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.devices_other_sharp,
                        color: AppColors.primary,
                      ),
                      title: const Text('Multi Devices'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(color: AppColors.grey),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.key_sharp,
                        color: AppColors.primary,
                      ),
                      title: const Text('Change Login PIN'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(color: AppColors.grey),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.settings,
                        color: AppColors.primary,
                      ),
                      title: const Text('Settings'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(color: AppColors.grey),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.help,
                        color: AppColors.primary,
                      ),
                      title: const Text('Help & Support'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(color: AppColors.grey),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.info,
                        color: AppColors.primary,
                      ),
                      title: const Text('About Us'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(color: AppColors.grey),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.logout,
                        color: AppColors.primary,
                      ),
                      title: const Text('Logout'),
                    ),
                  ],
                ),
              ),
              y40,
              Text(
                'Version 1.0.0',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'Made in Pakistan',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'Developed by:',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'Nisa Fatima',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

