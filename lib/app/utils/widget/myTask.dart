import 'package:flutter/material.dart';
import 'package:taskapp/app/utils/style/AppColors.dart';

class MyTask extends StatelessWidget {
  const MyTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.primaryBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://i.ibb.co/y0524ZF/Hero-Image.jpg'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://i.ibb.co/y0524ZF/Hero-Image.jpg'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryText,
                      child: const Center(
                        child: Text(
                          '100%',
                          style: TextStyle(
                            color: AppColors.primaryBg,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryText,
                  child: const Center(
                    child: Text(
                      '10 / 10 Task',
                      style: TextStyle(
                        color: AppColors.primaryBg,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Pemrograman Mobile',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hari Lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.primaryBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://i.ibb.co/y0524ZF/Hero-Image.jpg'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://i.ibb.co/y0524ZF/Hero-Image.jpg'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryText,
                      child: const Center(
                        child: Text(
                          '100%',
                          style: TextStyle(
                            color: AppColors.primaryBg,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryText,
                  child: const Center(
                    child: Text(
                      '10 / 10 Task',
                      style: TextStyle(
                        color: AppColors.primaryBg,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Pemrograman Mobile',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hari Lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.primaryBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://i.ibb.co/y0524ZF/Hero-Image.jpg'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://i.ibb.co/y0524ZF/Hero-Image.jpg'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryText,
                      child: const Center(
                        child: Text(
                          '100%',
                          style: TextStyle(
                            color: AppColors.primaryBg,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryText,
                  child: const Center(
                    child: Text(
                      '10 / 10 Task',
                      style: TextStyle(
                        color: AppColors.primaryBg,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Pemrograman Mobile',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hari Lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.primaryBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://i.ibb.co/y0524ZF/Hero-Image.jpg'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://i.ibb.co/y0524ZF/Hero-Image.jpg'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryText,
                      child: const Center(
                        child: Text(
                          '100%',
                          style: TextStyle(
                            color: AppColors.primaryBg,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryText,
                  child: const Center(
                    child: Text(
                      '10 / 10 Task',
                      style: TextStyle(
                        color: AppColors.primaryBg,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Pemrograman Mobile',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hari Lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
