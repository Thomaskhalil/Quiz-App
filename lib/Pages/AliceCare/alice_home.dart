import 'package:flutter/material.dart';
import 'package:moody/Widgets/CustomCard.dart';

class AliceHome extends StatelessWidget {
  AliceHome({Key? key}) : super(key: key);
  static const String routeName = "AliceHome";

  final List<CardItem> CardItems = [
    CardItem(img: "1", title: "Morning Yoga", decs: "Improve mental focus."),
    CardItem(
        img: "2",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/alice/alice_logo.png"),
                  Text(
                    "AliceCare",
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xffD0D5DD)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Icon(Icons.search, color: Color(0xff667085)),
                      hintText: "Articles, Video, Audio and More,...",
                      hintStyle: TextStyle(color: Color(0xff667085))),
                ),
              ),
              TabNavigationMenu(),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot topics",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5925DC)),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xff5925DC),
                          size: 25,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 230,
                margin: EdgeInsets.only(top: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: CardItems.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Image.asset(
                            "assets/images/alice/${CardItems[index].img}.png"));
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Get Tips",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              CustomCard(
                  title: "Connect with doctors",
                  description: "",
                  imagePath: "../alice/doctor"),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cycle Phases and Period",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5925DC)),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xff5925DC),
                          size: 25,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class TabNavigationMenu extends StatefulWidget {
  @override
  _TabNavigationMenuState createState() => _TabNavigationMenuState();
}

class _TabNavigationMenuState extends State<TabNavigationMenu> {
  List<String> tabNames = ["Discover", "News", "Most Viewed", "Saved"];
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
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: InkWell(
              onTap: () {
                // Handle item tap
                setState(() {
                  selectedIndex = index;
                });
                print('Tapped on $selectedIndex');
              },
              child: Container(
                // width: 99,
                height: 40,
                decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Color(0xffF4EBFF)
                        : Color(0xffff),
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(
                        width: 1,
                        color: selectedIndex == index
                            ? Color(0xffD6BBFB)
                            : Color(0xff667085))),
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Expanded(
                    child: Text(
                      tabNames[index],
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == index
                              ? Color(0xff6941C6)
                              : Color(0xff667085)),
                    ),
                  ),
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
