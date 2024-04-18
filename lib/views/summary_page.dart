import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainer_app/utils/colors.dart';
import 'package:trainer_app/utils/custom_text_style.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 5,
        shadowColor: const Color(0xFF494949).withOpacity(0.06),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(4, 4),
                  blurRadius: 9,
                  color: const Color(0xFF494949).withOpacity(0.1),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Summary",
                  style: CustomTextStyles.f14W400(),
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: (BorderRadius.circular(10)),
                      child: Image.network(
                        "https://www.hamronirman.com/content/images/thumbs/5ed7760e32d5e70001d7ef8d_rubber-gloves.jpeg",
                        fit: BoxFit.fill,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "adasdasd",
                          style: CustomTextStyles.f14W400(),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          "asdasd",
                          style: CustomTextStyles.f14W400(),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Lakeside, Pokhara",
                          style: CustomTextStyles.f14W400(),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              size: 12,
                              color: AppColors.backGroundColor,
                            ),
                            Text(
                              "zasdsad",
                              style: CustomTextStyles.f14W400(),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.calendar_month,
                                size: 12, color: Colors.grey),
                            Text(
                              "asd",
                              style: CustomTextStyles.f14W400(),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 14,
                    ),
                    const CalculationRow(
                      title: 'Cost per hour',
                      calculation: "saddad",
                    ),
                    const CalculationRow(
                      title: 'Time',
                      calculation: "sadadsad",
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: List.generate(
                        150 ~/ 2,
                        (index) => Expanded(
                          child: Container(
                            color: index % 2 == 0
                                ? Colors.transparent
                                : Colors.grey,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: CustomTextStyles.f14W400(),
                        ),
                        Text(
                          "dsadasd",
                          style: CustomTextStyles.f14W400(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // ElevatedButton(
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
            width: double.infinity,
            // height: 54,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffF1F1F1),
            ),
            child: const Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info),
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: Text(
                    'Please note that you cannot cancel your booking.',
                    maxLines: 3,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CalculationRow extends StatelessWidget {
  const CalculationRow({
    super.key,
    required this.title,
    required this.calculation,
  });

  final String title;
  final String calculation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: CustomTextStyles.f14W400(),
          ),
          Text(
            calculation,
            style: CustomTextStyles.f14W400(),
          ),
        ],
      ),
    );
  }
}
