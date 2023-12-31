import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:taskapp/app/utils/style/AppColors.dart';
import 'package:taskapp/app/utils/widget/header.dart';
import 'package:taskapp/app/utils/widget/myFriends.dart';
import 'package:taskapp/app/utils/widget/myTask.dart';
import 'package:taskapp/app/utils/widget/peopleYouMayKnow.dart';
import 'package:taskapp/app/utils/widget/sideBar.dart';
import 'package:taskapp/app/utils/widget/upcomingTask.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
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
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(
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
                                children: const [
                                  Text(
                                    'Task ',
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
                              const Icon(
                                Ionicons.notifications,
                                color: AppColors.primaryText,
                                size: 30,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 25,
                                  foregroundImage: NetworkImage(
                                      'https://i.ibb.co/y0524ZF/Hero-Image.jpg'),
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
                            : BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height * 0.32,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'People You May Now',
                                  style: TextStyle(
                                    color: AppColors.primaryBg,
                                    fontSize: 30,
                                  ),
                                ),

                                // My Task
                                PeopleYouMayKnow(),
                              ],
                            ),
                          ),
                          // Upcoming Task
                          !context.isPhone
                              ? Expanded(
                                  child: Row(
                                    children: [
                                      UpcomingTask(),
                                      MyFriends(),
                                    ],
                                  ),
                                )
                              : const UpcomingTask(),
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
