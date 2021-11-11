import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConnectivityManager {
  final Connectivity _connectivity = Connectivity();
  
  init() async {
    final result = await _connectivity.checkConnectivity();
    resultHandler(result);
  }
  
  resultHandler(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      Future.delayed(const Duration(seconds: 1)).then((value) {
        Get.snackbar(
          "當前狀態無網路",
          "請檢查網路連線",
          duration: const Duration(days: 1),
          icon: const Icon(Icons.signal_wifi_bad),
        );
      });
    } else {
      if (Get.isSnackbarOpen != null) {
        if (Get.isSnackbarOpen!) {
          Get.back();
        }
      }
    }
  }
}