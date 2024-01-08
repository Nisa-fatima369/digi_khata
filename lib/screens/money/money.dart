import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/basic_button.dart';
import 'package:digi_khata/widgets/basic_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Money extends StatefulWidget {
  const Money({super.key});

  @override
  State<Money> createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BasicCard(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Digi Cash',
                                style: Theme.of(context).textTheme.bodyMedium),
                            Text(
                              'View Report',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: AppColors.primary),
                            ),
                          ],
                        ),
                        Text('Rs. 0',
                            style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    ),
                    y10,
                    Row(
                      children: [
                        Expanded(
                          child: BasicButton(
                            color: AppColors.failure,
                            text: 'MONEY OUT',
                            onTap: () {},
                          ),
                        ),
                        x10,
                        Expanded(
                          child: BasicButton(
                            color: AppColors.success,
                            text: 'MONEY IN',
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            y10,
            Text('Request & Send Money',
                style: Theme.of(context).textTheme.bodyLarge),
            y20,
            Row(
              children: [
                Expanded(
                  child: BasicCard(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/money_request.png',
                              height: 50),
                          Text('Request Money',
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                    ),
                  ),
                ),
                x10,
                Expanded(
                  child: BasicCard(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/mobile-money.png',
                              height: 50),
                          Text('Send Money',
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
