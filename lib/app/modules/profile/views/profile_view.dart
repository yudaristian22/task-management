import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:taskapp/app/data/controller/auth_controller.dart';
import 'package:taskapp/app/routes/app_pages.dart';
import 'package:taskapp/app/utils/style/AppColors.dart';
import 'package:taskapp/app/utils/widget/header.dart';
import 'package:taskapp/app/utils/widget/myTask.dart';
import 'package:taskapp/app/utils/widget/peopleYouMayKnow.dart';
import 'package:taskapp/app/utils/widget/profileW.dart';
import 'package:taskapp/app/utils/widget/sideBar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authConn = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(
        width: 120,
        child: const SideBar(),
      ),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(
                    flex: 2,
                    child: SideBar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  !context.isPhone
                      ? const header()
                      : Container(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: Icon(
                                  Icons.menu,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Task Management',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.primaryText,
                                    ),
                                  ),
                                  Text(
                                    'Manage task made easy',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.primaryText,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                    title: 'Sign Out',
                                    content: const Text(
                                        'Are You Sure Want to Sign Out?'),
                                    cancel: ElevatedButton(
                                      onPressed: () => Get.back(),
                                      child: const Text('Cancel'),
                                    ),
                                    confirm: ElevatedButton(
                                      onPressed: () => authConn.logout(),
                                      child: const Text('Sign Out'),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: const [
                                    Text(
                                      'Sign Out',
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Ionicons.log_out_outline,
                                      color: AppColors.primaryText,
                                      size: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                  // Content / Isi Page
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(50)
                          : const EdgeInsets.all(20),
                      margin: !context.isPhone
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileW(),
                          const Text(
                            'People You May Now',
                            style: TextStyle(
                              color: AppColors.primaryBg,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 250,
                            child: PeopleYouMayKnow(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
