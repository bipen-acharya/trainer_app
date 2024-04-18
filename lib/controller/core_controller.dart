import 'dart:developer';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trainer_app/models/users.dart';
import 'package:trainer_app/utils/storage_keys.dart';
import 'package:trainer_app/views/auth/login_screen.dart';


class CoreController extends GetxController {
  Rx<User?> currentUser = Rxn<User>();

  @override
  void onInit() async {
    await loadCurrentUser();
    super.onInit();
  }

  Future<void> loadCurrentUser() async {
    currentUser.value = StorageHelper.getUser();
    log("current user----------------------- ${currentUser.value?.email}-");
    

    // accessToken.value = StorageHelper.getToken();
  }

  bool isUserLoggedIn() {
    return currentUser.value != null;
  }

  void logOut() async {
    final box = GetStorage();
    // await box.write(StorageKeys.ACCESS_TOKEN, null);
    await box.write(StorageKeys.USER, null);
    loadCurrentUser();
    Get.offAll(LogInScreen);
  }
}
