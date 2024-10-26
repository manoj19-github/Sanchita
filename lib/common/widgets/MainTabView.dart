import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/screens/addDataPage/AddDataPageMain.dart';
import 'package:sanchita/screens/budget/BudgetScreenMain.dart';
import 'package:sanchita/screens/calendar/CalendarScreenMain.dart';
import 'package:sanchita/screens/home/HomeScreenMain.dart';
import 'package:sanchita/screens/subject/SubjectScreenMain.dart';
import 'package:sanchita/screens/yearWiseRecords/YearWiseRecordsMain.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectedTab = 0;
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentTabView = HomeScreenMain();
  void onTabChange(int selectedTabIndex) {
    switch (selectedTabIndex) {
      case 0:
        {
          setState(() {
            selectedTab = selectedTabIndex;
            currentTabView = HomeScreenMain();
          });

          break;
        }
      case 1:
        {
          setState(() {
            selectedTab = selectedTabIndex;
            currentTabView = BudgetScreenMain();
          });
          break;
        }
      case 2:
        {
          setState(() {
            selectedTab = selectedTabIndex;
            currentTabView = AddDataPageMain();
          });
          break;
        }
      case 3:
        {
          setState(() {
            selectedTab = selectedTabIndex;
            currentTabView = CalendarScreenMain();
          });
          break;
        }
      case 4:
        {
          setState(() {
            selectedTab = selectedTabIndex;
            currentTabView = YearWiseRecordsMain();
          });
          break;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TColor.gray,
        body: Stack(children: [
          PageStorage(bucket: pageStorageBucket, child: currentTabView),
          Column(
            children: [
              const Spacer(),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Stack(children: [
                    Image.asset(
                      "assets/img/bottom_bar_bg.png",
                      fit: BoxFit.fill,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () => onTabChange(0),
                          icon: Image.asset(
                            "assets/img/home.png",
                            width: 25,
                            height: 25,
                              color: selectedTab == 0
                                  ? TColor.white
                                  : TColor.gray30
                          ),
                        ),
                        IconButton(
                          onPressed: () => onTabChange(1),
                          icon: Image.asset(
                            "assets/img/budgets.png",
                            width: 25,
                            height: 25,
                              color: selectedTab == 1
                                  ? TColor.white
                                  : TColor.gray30
                          ),
                        ),
                        SizedBox(
                          width: 55,
                          height: 55,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 14),
                            child: InkWell(
                              onTap: () => onTabChange(2),
                              child: CircleAvatar(
                                backgroundColor: TColor.secondary,
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                    color: selectedTab == 2
                                        ? TColor.white
                                        : TColor.gray30
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => onTabChange(3),
                          icon: Image.asset(
                            "assets/img/calendar.png",
                            width: 25,
                            height: 25,
                              color: selectedTab == 3
                                  ? TColor.white
                                  : TColor.gray30
                          ),
                        ),
                        IconButton(
                          onPressed: () => onTabChange(4),
                          icon: Image.asset(
                            "assets/img/creditcards.png",
                            width: 25,
                            height: 25,
                              color: selectedTab == 4
                                  ? TColor.white
                                  : TColor.gray30
                          ),
                        ),
                      ],
                    )
                  ]))
            ],
          )
        ]));
  }
}
