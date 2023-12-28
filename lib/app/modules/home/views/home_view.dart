import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/SideBar.dart';
import 'package:task_management_app/app/utils/widget/UpcomingTask.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _drawerKey,
        drawer: const Sidebar(),
        backgroundColor: AppColors.primaryBg,
        body: SafeArea(
          child: Row(
            children: [
              !context.isPhone
                  ? const Expanded(
                      flex: 2,
                      child: Sidebar(),
                    )
                  : const SizedBox(),
              Expanded(
                flex: 15,
                child: Column(
                  children: [
                    !context.isPhone
                        ? const header()
                        : Container(
                            // Sesuaikan
                            padding: const EdgeInsets.only(
                                top: 40, right: 5, bottom: 25),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _drawerKey.currentState!.openDrawer();
                                  },
                                  icon: const Icon(
                                    Icons.menu,
                                    color: AppColors.primaryBgText,
                                  ),
                                ),
                                const Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Task Management',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: AppColors.primaryBgText),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      'Manage Task Made Easy With Friends',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: AppColors.primaryBgText),
                                    ),
                                  ],
                                ),
                                const SizedBox(),
                                const Icon(
                                  Ionicons.notifications,
                                  color: AppColors.primaryBgText,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: const CircleAvatar(
                                    radius: 25,
                                    foregroundImage: NetworkImage(
                                        'https://i.ibb.co/KXZD6vt/pexels-wendy-wei-1656684.jpg'),
                                  ),
                                )
                              ],
                            ),
                          ),
                    // Content
                    Expanded(
                      child: Container(
                        padding: !context.isPhone
                            ? const EdgeInsets.all(30)
                            : const EdgeInsets.all(20),
                        margin: !context.isPhone
                            ? const EdgeInsets.all(20)
                            : const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: !context.isPhone
                              ? BorderRadius.circular(20)
                              : BorderRadius.circular(30),
                        ),
                        // My Task
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'My Task',
                                    style: TextStyle(
                                      color: AppColors.primaryBg,
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 175,
                                    child: ListView(
                                      clipBehavior: Clip.antiAlias,
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      children: [
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: AppColors.primaryBg),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: const CircleAvatar(
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://i.ibb.co/KXZD6vt/pexels-wendy-wei-1656684.jpg'),
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: const CircleAvatar(
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://i.ibb.co/KXZD6vt/pexels-wendy-wei-1656684.jpg'),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 25,
                                                    width: 80,
                                                    color:
                                                        AppColors.secondaryBg,
                                                    child: const Center(
                                                      child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryBgText,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.secondaryBg,
                                                child: const Center(
                                                  child: Text(
                                                    '10/10 Task',
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .primaryBgText,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                'Pemrograman Mobile',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryBgText,
                                                    fontSize: 20),
                                              ),
                                              const Text(
                                                'Deadline 2 Hari Lagi',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryBgText,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: AppColors.primaryBg),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: const CircleAvatar(
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://i.ibb.co/KXZD6vt/pexels-wendy-wei-1656684.jpg'),
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: const CircleAvatar(
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://i.ibb.co/KXZD6vt/pexels-wendy-wei-1656684.jpg'),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 25,
                                                    width: 80,
                                                    color:
                                                        AppColors.secondaryBg,
                                                    child: const Center(
                                                      child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryBgText,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.secondaryBg,
                                                child: const Center(
                                                  child: Text(
                                                    '10/10 Task',
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .primaryBgText,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                'Pemrograman Mobile',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryBgText,
                                                    fontSize: 20),
                                              ),
                                              const Text(
                                                'Deadline 2 Hari Lagi',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryBgText,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: AppColors.primaryBg),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: const CircleAvatar(
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://i.ibb.co/KXZD6vt/pexels-wendy-wei-1656684.jpg'),
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: const CircleAvatar(
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://i.ibb.co/KXZD6vt/pexels-wendy-wei-1656684.jpg'),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 25,
                                                    width: 80,
                                                    color:
                                                        AppColors.secondaryBg,
                                                    child: const Center(
                                                      child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryBgText,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.secondaryBg,
                                                child: const Center(
                                                  child: Text(
                                                    '10/10 Task',
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .primaryBgText,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                'Pemrograman Mobile',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryBgText,
                                                    fontSize: 20),
                                              ),
                                              const Text(
                                                'Deadline 2 Hari Lagi',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryBgText,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: AppColors.primaryBg),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: const CircleAvatar(
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://i.ibb.co/KXZD6vt/pexels-wendy-wei-1656684.jpg'),
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    child: const CircleAvatar(
                                                      radius: 20,
                                                      foregroundImage: NetworkImage(
                                                          'https://i.ibb.co/KXZD6vt/pexels-wendy-wei-1656684.jpg'),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 25,
                                                    width: 80,
                                                    color:
                                                        AppColors.secondaryBg,
                                                    child: const Center(
                                                      child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryBgText,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.secondaryBg,
                                                child: const Center(
                                                  child: Text(
                                                    '10/10 Task',
                                                    style: TextStyle(
                                                      color: AppColors
                                                          .primaryBgText,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                'Pemrograman Mobile',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryBgText,
                                                    fontSize: 20),
                                              ),
                                              const Text(
                                                'Deadline 2 Hari Lagi',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryBgText,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Upcoming Task
                            const Expanded(
                              child: Row(
                                children: [
                                  UpcomingTask(),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'My Friends',
                                              style: TextStyle(
                                                color: AppColors.primaryBg,
                                                fontSize: 30,
                                              ),
                                            ),
                                            Text(
                                              'More',
                                              style: TextStyle(
                                                color: AppColors.primaryBg,
                                                fontSize: 30,
                                              ),
                                            ),
                                            Icon(
                                              Ionicons.arrow_forward,
                                              color: AppColors.primaryBg,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
