import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainer_app/utils/custom_text_style.dart';
import 'package:trainer_app/widgets/custom/elevated_button.dart';
import '../utils/colors.dart';

class SinglePage extends StatelessWidget {
  static const routeName = "/single_page";
  const SinglePage({
    super.key,
  });

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
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 37,
              ),
              child: Text(
                "Gloves",
                style: CustomTextStyles.f18W600(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  fit: BoxFit.fill,
                  height: Get.height / 2.5,
                  imageUrl: "",
                  errorWidget: (context, url, error) => Image.asset(
                    'assets/common/logo.png',
                    height: MediaQuery.of(context).size.height / 2.7,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Container(
              height: Get.height / 2.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(4, 4),
                    blurRadius: 9,
                    color: const Color(0xFF494949).withOpacity(0.2),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 235, 235),
            boxShadow: [
              BoxShadow(
                offset: const Offset(4, 4),
                blurRadius: 9,
                color: const Color(0xFF494949).withOpacity(0.4),
              ),
            ],
          ),
          height: 90,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: CustomElevatedButton(
              onTap: () {
               
              },
              title: "Continue...",
            ),
          )),
    );
  }
}
