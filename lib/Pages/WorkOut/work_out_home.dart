import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:image_card/image_card.dart';
import 'package:moody/Widgets/CustomCard.dart';

class WorkOutHome extends StatefulWidget {
  const WorkOutHome({Key? key}) : super(key: key);

  static const String routeName = "workoutHome";
  @override
  State<WorkOutHome> createState() => _WorkOutHomeState();
}

class _WorkOutHomeState extends State<WorkOutHome> {
  final List<CardItem> CardItems = [
    CardItem(
        img: "yoga_woman",
        title: "Morning Yoga",
        decs: "Improve mental focus."),
    CardItem(
        img: "yoga_woman_2",
        title: "Plank Exercise",
        decs: "Improve posture and\nstability."),
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildHeader(context),
                _buildStatsContainer(context),
                _buildWorkoutPrograms(context),
                TabNavigationMenu(),
                Container(
                  height:
                      screenHeight, // Remove this line or adjust the height as needed
                  child: ListView.builder(
                    itemCount: CardItems.length,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        title: CardItems[index].title,
                        description: CardItems[index].decs,
                        imagePath: CardItems[index].img,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildProfileInfo(context),
        _buildNotificationIcon(),
      ],
    );
  }

  Widget _buildProfileInfo(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/workout/profile_icon.png"),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Jade",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              "Ready to workout?",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildNotificationIcon() {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -8, end: 3),
      badgeContent: Text(
        '',
        style: TextStyle(fontSize: 15),
      ),
      child: Icon(
        Icons.notifications_outlined,
        size: 30,
      ),
    );
  }

  Widget _buildStatsContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 242, 243, 248),
        borderRadius: BorderRadius.circular(8),
      ),
      width: 326,
      height: 100,
      margin: EdgeInsets.only(top: 27),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildStatColumn(
                context, Icons.favorite_outline, "Heart Rate", "81 BPM"),
            _buildDivider(),
            _buildStatColumn(context, Icons.list, "To-do", "32,5 %"),
            _buildDivider(),
            _buildStatColumn(
                context, Icons.whatshot_outlined, "Calo", "1000Cal"),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(
      BuildContext context, IconData icon, String label, String value) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon),
                Text(
                  label,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 13),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                value,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(width: 5),
              // Text(
              //   "BPM",
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodyLarge!
              //       .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
              // ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 50,
      width: 2,
      color: Color(0xffD9D9D9), // You can customize the color of the divider
      margin: EdgeInsets.only(right: 8),
    );
  }

  Widget _buildWorkoutPrograms(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Text("Workout Programs",
          style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}

class TabNavigationMenu extends StatefulWidget {
  @override
  _TabNavigationMenuState createState() => _TabNavigationMenuState();
}

class _TabNavigationMenuState extends State<TabNavigationMenu> {
  List<String> tabNames = ["All Type", "Full Body", "Upper", "Lower"];
  int? selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabNames.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: () {
                // Handle item tap
                setState(() {
                  selectedIndex = index;
                });
                print('Tapped on $selectedIndex');
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 3,
                            color: selectedIndex == index
                                ? Color(0xff363F72)
                                : Color(0xff667085)))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  tabNames[index],
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: selectedIndex == index
                          ? Color(0xff363F72)
                          : Color(0xff667085)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CardItem {
  final String img;
  final String title;
  final String decs;

  CardItem({required this.img, required this.title, required this.decs});
}
