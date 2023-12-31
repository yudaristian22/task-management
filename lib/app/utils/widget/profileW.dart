import 'package:flutter/material.dart';
import 'package:taskapp/app/data/controller/auth_controller.dart';
import 'package:taskapp/app/utils/style/AppColors.dart';
import 'package:get/get.dart';

class ProfileW extends StatelessWidget {
  final authConn = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage:
                          NetworkImage(authConn.auth.currentUser!.photoURL!),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        authConn.auth.currentUser!.displayName!,
                        style: TextStyle(
                          color: AppColors.primaryBg,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        authConn.auth.currentUser!.email!,
                        style: TextStyle(
                          color: AppColors.primaryBg,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 100,
                      foregroundImage:
                          NetworkImage(authConn.auth.currentUser!.photoURL!),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    authConn.auth.currentUser!.displayName!,
                    style: TextStyle(
                      color: AppColors.primaryBg,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    authConn.auth.currentUser!.email!,
                    style: TextStyle(
                      color: AppColors.primaryBg,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
