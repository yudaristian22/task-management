import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:taskapp/app/data/controller/auth_controller.dart';
import 'package:taskapp/app/routes/app_pages.dart';
import 'package:taskapp/app/utils/style/AppColors.dart';

class MyFriends extends StatelessWidget {
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'My Friends',
                    style: TextStyle(
                      color: AppColors.primaryBg,
                      fontSize: 30,
                    ),
                  ),
                  const Spacer(),
                  InkResponse(
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                    child: const Text(
                      'More',
                      style: TextStyle(
                        color: AppColors.primaryBg,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const Icon(
                    Ionicons.chevron_forward,
                    color: AppColors.primaryBg,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                stream: authCon.streamFriends(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  var myFriends = (snapshot.data!.data()
                      as Map<String, dynamic>)['emailFriends'] as List;

                  return GridView.builder(
                    shrinkWrap: true,
                    itemCount: myFriends.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: context.isPhone ? 2 : 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return StreamBuilder<
                              DocumentSnapshot<Map<String, dynamic>>>(
                          stream: authCon.streamUsers(myFriends[index]),
                          builder: (context, snapshot2) {
                            if (snapshot2.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }

                            var data = snapshot2.data!.data();

                            return Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: Get.height * 0.15,
                                    width: Get.width * 0.4,
                                    fit: BoxFit.cover,
                                    image: NetworkImage(data!['photo']),
                                  ),
                                ),
                                Text(
                                  data['name'],
                                  style: TextStyle(
                                    color: AppColors.primaryBg,
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
