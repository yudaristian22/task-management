import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:taskapp/app/routes/app_pages.dart';
import 'package:taskapp/app/utils/style/AppColors.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: Get.height,
        color: Color(0xFF176B87),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                padding: const EdgeInsets.only(top: 50),
                alignment: Alignment.topCenter,
                child: const Image(
                  image: AssetImage('assets/icons/Group 5.png'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/home'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.primaryText,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/home'
                                ? Ionicons.home
                                : Ionicons.home_outline,
                            color: Color(0xFF86B6F6),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.HOME),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/task'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.primaryText,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/task'
                                ? Ionicons.cube
                                : Ionicons.cube_outline,
                            color: Color(0xFF86B6F6),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Task',
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.TASK),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/friends'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.primaryText,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/friends'
                                ? Ionicons.heart
                                : Ionicons.heart_outline,
                            color: Color(0xFF86B6F6),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Friends',
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/profile'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.primaryText,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/profile'
                                ? Ionicons.person
                                : Ionicons.person_outline,
                            color: Color(0xFF86B6F6),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Profile',
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.PROFILE),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
