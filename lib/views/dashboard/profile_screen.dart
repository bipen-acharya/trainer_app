import 'package:flutter/material.dart';
import 'package:trainer_app/utils/colors.dart';
import 'package:trainer_app/utils/custom_text_style.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile_screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        toolbarHeight: 200,
        backgroundColor: AppColors.primaryColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("My Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/common/logo.png"))),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Micheal Sam",
                            style:
                                CustomTextStyles.f16W400(color: Colors.white)),
                        const SizedBox(height: 7),
                        Text("+01 6584152265",
                            style:
                                CustomTextStyles.f16W400(color: Colors.white)),
                        const SizedBox(height: 7),
                        Text("email",
                            style:
                                CustomTextStyles.f16W400(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                // SizedBox(
                //   height: 45,
                //   width: 113,
                //   child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //           backgroundColor:
                //               const Color.fromARGB(255, 239, 235, 235)
                //                   .withOpacity(0.35)),
                //       onPressed: () {},
                //       child: const Text("Edit Profile",
                //           style: TextStyle(color: Colors.white, fontSize: 12))),
                // ),
              ],
            )
          ],
        ),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 15,
          ),
          ProfileCard(
            content: "asdasdsad",
            iconData: Icons.person_2_outlined,
            title: 'Name',
          ),
          ProfileCard(
            content: "asdasdsad",
            iconData: Icons.mail,
            title: 'Mail',
          ),
          ProfileCard(
            content: "asdasdsad",
            iconData: Icons.phone,
            title: 'Contact',
          ),
          ProfileCard(
            content: "asdasdsad",
            iconData: Icons.person_2_outlined,
            title: 'Name',
          ),
          ProfileCard(
            content: "asdasdsad",
            iconData: Icons.mail,
            title: 'Mail',
          ),
          ProfileCard(
            content: "asdasdsad",
            iconData: Icons.phone,
            title: 'Contact',
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.title,
    required this.content,
    required this.iconData,
  });

  final String title;
  final String content;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF828282).withOpacity(0.2),
            blurRadius: 9,
            offset: const Offset(4, 4),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(iconData),
              const SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
          )
        ],
      ),
    );
  }
}
