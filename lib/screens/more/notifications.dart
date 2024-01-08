import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text('Notifications'),
          bottom: TabBar(
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
              Tab(text: 'Entry'),
              Tab(text: 'Others'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('No notifications found!',
                      style: Theme.of(context).textTheme.bodyMedium),
                  y10,
                  Text(
                    'Here you\'ll see the entries made by your customers & suppliers in DigiKhata',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: AppColors.toast),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            Center(
              child: Text('No notifications found!',
                  style: Theme.of(context).textTheme.bodyMedium),
            )
          ],
        ),
      ),
    );
  }
}
