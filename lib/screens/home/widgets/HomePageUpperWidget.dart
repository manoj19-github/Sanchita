import 'package:flutter/material.dart';
import 'package:sanchita/common/color_extensions.dart';
import 'package:sanchita/common/widgets/AppLogo.dart';
import 'package:sanchita/common/widgets/CustomArcPainter.dart';
import 'package:sanchita/screens/home/widgets/SmallAppLogo.dart';
import 'package:sanchita/screens/home/widgets/StatusButton.dart';
import 'package:sanchita/utils.dart';

class HomePageUpperWidget extends StatelessWidget {
  const HomePageUpperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.45,
      width: media.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: TColor.gray70.withOpacity(0.5),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: media.width * 0.96,
            clipBehavior: Clip.hardEdge,
            height: media.height * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              "assets/img/home_bg.png",
              fit: BoxFit.cover,
              width: media.width * 0.94,
              height: media.height * 1,
            ),
          ),
          Positioned(
            top: media.height * 0.18,
            child: Container(
                width: media.width * 0.63,
                height: media.height * 0.014,
                child: CustomPaint(painter: CustomArcPainter())),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SmallAppLogo(),
              Text(
                UTILMAIN.indianRupeesFormat("2604"),
                style: TextStyle(
                    color: TColor.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
              // const SizedBox(height:),
              Text(
                "Total expenses of this month",
                style: TextStyle(
                    color: TColor.white.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 19),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: TColor.border.withOpacity(0.15),
                    ),
                    color: TColor.gray70.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "See your budget",
                    style: TextStyle(
                        color: TColor.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
            child: Column(
              children: [
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: StatusButton(
                        title: "Total Budget",
                        value: "4500",
                        onTapHandler: () {},
                        statusColor: TColor.secondaryG,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: StatusButton(
                        subTitle: "(Highest Expense)",
                        value: "2300",
                        title: "Foods",
                        onTapHandler: () {},
                        statusColor: TColor.primary10,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: StatusButton(
                        value: "7500",
                        title: "Total Income",
                        onTapHandler: () {},
                        statusColor: TColor.secondary50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
