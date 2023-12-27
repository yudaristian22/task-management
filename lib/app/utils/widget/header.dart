import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task Management',
                    style:
                        TextStyle(fontSize: 30, color: AppColors.primaryBgText),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Manage Task Made Easy With Friends',
                    style:
                        TextStyle(fontSize: 12, color: AppColors.primaryBgText),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 1),
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.primaryBgText,
                  contentPadding: const EdgeInsets.only(left: 40, right: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        const BorderSide(color: AppColors.primaryBgText),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "Search",
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Ionicons.notifications,
              color: AppColors.primaryBgText,
              size: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  title: 'Sign Out',
                  content: const Text('Are ypu sure want to sign out?'),
                  cancel: ElevatedButton(
                    onPressed: () => Get.back(),
                    child: const Text('Cancel'),
                  ),
                  confirm: ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.LOGIN),
                    child: const Text('Sign Out'),
                  ),
                );
              },
              child: const Row(
                children: [
                  Text(
                    "Sign Out",
                    style:
                        TextStyle(color: AppColors.primaryBgText, fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Ionicons.log_out_outline,
                      color: AppColors.primaryBgText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
