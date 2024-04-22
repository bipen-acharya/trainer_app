import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainer_app/controller/dashboard/home_screen_controller.dart';
import 'package:trainer_app/models/users.dart';
import 'package:trainer_app/utils/colors.dart';
import 'package:trainer_app/utils/custom_text_style.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });

  final c = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      image: const AssetImage(
                        "assets/common/logo.gif",
                      ),
                      height: Get.width / 3,
                      width: Get.width / 3,
                    ),
                  ],
                ),

                // child: Text('Drawer Header'),
              ),
              // ProfileTile(
              //   onTap: () {
              //     Get.back();
              //     // Get.toNamed(EditProfileScreen.routeName);
              //   },
              //   leadingIcon: Icons.person_2_outlined,
              //   title: "Edit Profile",
              //   showTrailing: false,
              // ),
              // ProfileTile(
              //   onTap: () {
              //     Get.back();
              //     // Get.toNamed(FavoritesScreen.routeName);
              //   },
              //   leadingIcon: Icons.favorite_border,
              //   title: "Favorites",
              //   showTrailing: false,
              // ),
              // ProfileTile(
              //   onTap: () {
              //     Get.back();
              //     // Get.toNamed(ChangeThemeScreen.routeName);
              //   },
              //   leadingIcon: Icons.brightness_6_outlined,
              //   title: "Theme",
              //   showTrailing: false,
              // ),
              // ProfileTile(
              //   onTap: () {
              //     Get.back();
              //     // Get.toNamed(ChangePasswordScreen.routeName);
              //   },
              //   leadingIcon: Icons.lock_outline,
              //   title: "Change Password",
              //   showTrailing: false,
              // ),
              ProfileTile(
                onTap: () {},
                leadingIcon: Icons.logout,
                title: "Log Out",
                showTrailing: false,
                color: AppColors.errorColor,
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          elevation: 0.5,
          centerTitle: true,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image(
              //   image: AssetImage(
              //     ImagePath.logo,
              //   ),
              //   height: 100,
              //   width: 160,
              // )
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 19,
                left: 19,
                top: 010,
              ),
              child: Text(
                "My Details",
                style: CustomTextStyles.f18W600(),
              ),
            ),
            SizedBox(
              height: Get.height / 1.9,
              width: double.infinity,
              // color: Colors.blueAccent,
              child: Stack(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        height: Get.height / 2.2,
                        width: Get.width / 1.1,
                        child: Image(
                          image: NetworkImage(c.user.value!.photo ?? ""),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: Get.height / 2.8,
                    left: Get.width / 8.3,
                    child: Stack(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(15),
                            width: Get.width / 1.3,
                            height: Get.height / 6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(4, 4),
                                  blurRadius: 9,
                                  color: const Color(0xFF494949).withOpacity(1),
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name: ${(c.user.value!.name ?? "")}",
                                  style: CustomTextStyles.f16W400(),
                                ),
                                Text(
                                  "Email: ${(c.user.value!.name ?? "")}",
                                  style: CustomTextStyles.f16W400(),
                                ),
                                Text(
                                  "Cost: ${(c.user.value!.costPerMonth ?? "")}",
                                  style: CustomTextStyles.f16W400(),
                                ),
                                Text(
                                  "Experince: ${(c.user.value!.experience ?? "")}",
                                  style: CustomTextStyles.f16W400(),
                                ),
                                // Text(
                                //   "Name : kjdkasjd jkl jasdlkjasd",
                                //   style: CustomTextStyles.f16W400(),
                                // ),
                              ],
                            )),
                        // Positioned(
                        //   right: -12,
                        //   bottom: 0,
                        //   child: TextButton(
                        //     style: TextButton.styleFrom(
                        //       backgroundColor:
                        //           const Color.fromARGB(255, 223, 222, 222),
                        //       shape: const CircleBorder(),
                        //     ),
                        //     child: const Icon(
                        //       Icons.edit,
                        //     ),
                        //     onPressed: () {},
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 19, left: 19, top: 010, bottom: 15),
              child: Text(
                "My Clients",
                style: CustomTextStyles.f18W600(),
              ),
            ),
            Obx(
              () => (c.loading.value)
                  ? const Center(child: CircularProgressIndicator())
                  : SizedBox(
                      // height: 100,
                      child: ListView.builder(
                          // scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: c.user.value!.bookings!.data!.length,
                          itemBuilder: (context, index) {
                            Data data = c.user.value!.bookings!.data![index];
                            return ClientListCard(
                              book: data,
                            );
                          }),
                    ),
            ),
          ],
        ));
  }
}

class ProfileTile extends StatelessWidget {
  final Color? color;
  final bool showTrailing;
  final String title;
  final IconData leadingIcon;
  final VoidCallback onTap;
  const ProfileTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.onTap,
    this.color,
    this.showTrailing = true,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListTile(
      onTap: onTap,
      leading: Icon(
        leadingIcon,
        color: color ?? theme.colorScheme.onBackground,
      ),
      trailing: showTrailing
          ? Icon(
              Icons.chevron_right,
              color: color ?? theme.colorScheme.onBackground,
            )
          : null,
      title: Text(
        title,
        style: CustomTextStyles.f16W400(
            color: color ?? theme.colorScheme.onBackground),
      ),
    );
  }
}

class ClientListCard extends StatelessWidget {
  const ClientListCard({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Data book;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 19, left: 19, bottom: 15),
          // padding: const EdgeInsets.only(right: 1),
          // height: 71,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(4, 4),
                blurRadius: 9,
                color: AppColors.shadowColor,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 15, top: 11, bottom: 11, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: "asdasd",
                    errorWidget: (context, url, error) => Image.asset(
                      "assets/common/logo.png",
                      height: 67,
                      fit: BoxFit.contain,
                    ),
                    height: 67,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Client id: ${book.clientId.toString()}",
                      style: CustomTextStyles.f16W400(),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "From: ${book.from ?? ""}",
                      style: CustomTextStyles.f16W400(),
                    ),
                    Text(
                      "To: ${book.to ?? ""}",
                      style: CustomTextStyles.f16W400(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
