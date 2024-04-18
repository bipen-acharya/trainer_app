// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../widgets/custom/custom_password_fields.dart';

// class RegisterScreen extends StatelessWidget {
//   RegisterScreen({super.key});

//   final c = Get.put(RegisterController());

//   final FocusNode focusNode = FocusNode();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//           child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Column(
//                 children: [
//                   // SizedBox(
//                   //   height: Get.height / 10,
//                   //   width: Get.width / 2,
//                   //   child: const Image(
//                   //     image: AssetImage("assets/common/logo-black.png"),
//                   //     fit: BoxFit.fill,
//                   //   ),
//                   // ),
//                   Center(
//                     child: SizedBox(
//                       height: Get.height / 5,
//                       width: Get.width / 2,
//                       child: const Image(
//                         image: AssetImage("assets/common/logo.png"),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                   // Text(
//                   //   "The GIANT And FITNESS CLUB and HEALTH CLUB",
//                   //   maxLines: 2,
//                   //   style: CustomTextStyles.f16W400(
//                   //     color: AppColors.primaryColor,
//                   //   ),
//                   // ),
//                   Text(
//                     "Unforgettable Journeys Await!",
//                     style: CustomTextStyles.f16W400(
//                       color: AppColors.primaryColor,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(18.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Create New Account",
//                     style: TextStyle(
//                         fontFamily: "WorkSans",
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: AppColors.primaryColor),
//                   ),
//                   Text(
//                     "Let's start a journey with us",
//                     style: CustomTextStyles.f14W400(
//                       color: AppColors.secondaryTextColor,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Full Name",
//                     style: CustomTextStyles.f14W400(),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const CustomTextField(
//                     preIconPath: Icons.person_outline_sharp,
//                     hint: "Full Name",
//                     textInputAction: TextInputAction.next,
//                     textInputType: TextInputType.name,
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     "Email Address",
//                     style: CustomTextStyles.f14W400(),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const CustomTextField(
//                     preIconPath: Icons.email,
//                     hint: "Email",
//                     textInputAction: TextInputAction.next,
//                     textInputType: TextInputType.name,
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     "Phone Number",
//                     style: CustomTextStyles.f14W400(),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const CustomTextField(
//                     preIconPath: Icons.phone,
//                     hint: "Email",
//                     textInputAction: TextInputAction.next,
//                     textInputType: TextInputType.name,
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   const Text(
//                     "Gender",
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Obx(
//                     () => Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         CustomRadioWidget(
//                           title: "Male",
//                           value: "Male",
//                           groupValue: c.selectedGender.value,
//                           onChange: (val) {
//                             c.selectedGender.value = "Male";
//                           },
//                         ),
//                         CustomRadioWidget(
//                           title: "Female",
//                           value: "Female",
//                           groupValue: c.selectedGender.value,
//                           onChange: (val) {
//                             c.selectedGender.value = "Female";
//                           },
//                         ),
//                         CustomRadioWidget(
//                           title: "Others",
//                           value: "Others",
//                           groupValue: c.selectedGender.value,
//                           onChange: (val) {
//                             c.selectedGender.value = "Others";
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     "Password",
//                     style: CustomTextStyles.f14W400(),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Obx(
//                     () => CustomPasswordField(
//                       hint: "Password",
//                       eye: c.passwordObscure.value,
//                       onEyeClick: c.onEyeCLick,
//                       controller: c.passwordController,
//                       textInputAction: TextInputAction.next,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     "Confirm Password",
//                     style: CustomTextStyles.f14W400(),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Obx(
//                     () => CustomPasswordField(
//                       hint: "Confirm Password",
//                       eye: c.passwordObscure.value,
//                       onEyeClick: c.onEyeCLick,
//                       controller: c.passwordController,
//                       textInputAction: TextInputAction.done,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   CustomElevatedButton(
//                     title: 'Register',
//                     onTap: () {
//                       Get.offAll(() => DashScreen());
//                     },
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Already have an account?",
//                         style: CustomTextStyles.f14W400(),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Get.off(LogInScreen());
//                         },
//                         child: Text(
//                           " Log In",
//                           style: CustomTextStyles.f14W400(
//                             color: AppColors.primaryColor,
//                           ),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
