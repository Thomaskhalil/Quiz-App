// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//? Packages
import 'package:badges/badges.dart' as badges;

import 'package:moody/Core/Utils/app_colors.dart';
import 'package:moody/Core/Utils/my_theme.dart';
import 'package:moody/Core/Utils/app_assets.dart';

class MoodyHome extends StatelessWidget {
  MoodyHome({Key? key}) : super(key: key);

  static const String routeName = "MoodyHome";
  final List<ExerciseItem> exerciseItems = [
    ExerciseItem(
        img: "relaxation_icon", title: "Relaxation", color: Color(0xffF9F5FF)),
    ExerciseItem(
        img: "meditation_icon", title: "Meditation", color: Color(0xffFDF2FA)),
    ExerciseItem(
        img: "beathing_icon", title: "Beathing", color: Color(0xffFFFAF5)),
    ExerciseItem(img: "yoga_icon", title: "Yoga", color: Color(0xffF0F9FF)),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/moody_logo.png"),
                        SizedBox(width: 10),
                        Text(
                          "Moody",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    badges.Badge(
                      position: badges.BadgePosition.topEnd(top: -8, end: 3),
                      badgeContent: Text(
                        '',
                        style: TextStyle(fontSize: 15),
                      ),
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 30,
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 23),
                  child: Row(
                    children: [
                      Text(
                        "Hello, ",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        'Sarah Rose',
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 19),
                  child: Row(
                    children: [
                      Text(
                        "How are you feeling today ?",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/love_icon.png'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Love',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/images/cool_icon.png'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Cool',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/images/happy_icon.png'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Happy',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/images/sad_icon.png'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Sad',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Feature",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            'See more',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff027A48)),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xff027A48),
                            size: 25,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffECFDF3),
                            borderRadius: BorderRadius.circular(12)),
                        height: 180,
                        width: 326,
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Positive vibes",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff344054)),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Boost your mood with\npositive vibes",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            height: 1.5,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff344054)),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.play_circle,
                                        color: Color(0xff32D583),
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        "10 mins",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/walking_with_dog.png',
                              ),
                            ],
                          ),
                        ))),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "●",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Color(0xff98A2B3)),
                    ),
                    Text(
                      "● ● ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Color(0xffD9D9D9)),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exercise",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            'See more',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff027A48)),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xff027A48),
                            size: 25,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  width: 300,
                  height: 180,
                  child: Center(
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 9 / 4,
                      ),
                      itemCount: exerciseItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        ExerciseItem item = exerciseItems[index];

                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: item.color,
                          ),
                          height: 12,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/${item.img}.png"),
                                SizedBox(width: 10),
                                Text(
                                  item.title,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExerciseItem {
  final String img;
  final String title;
  final Color color;

  ExerciseItem({required this.img, required this.title, required this.color});
}
