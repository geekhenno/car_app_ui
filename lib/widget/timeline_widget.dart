import 'package:car_app_ui/data/car_data.dart';
import 'package:car_app_ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TimelineWidget extends StatelessWidget {
  const TimelineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: FixedTimeline.tileBuilder(
        mainAxisSize: MainAxisSize.min,
        theme: TimelineThemeData(
          nodePosition: 0,
          indicatorTheme: const IndicatorThemeData(
            position: 0.05,
            size: 18.0,
          ),
          connectorTheme: const ConnectorThemeData(
            thickness: 2,
          ),
        ),
        builder: TimelineTileBuilder.connected(
          itemCount: CarData.data.length,
          contentsBuilder: (_, index) {
            return Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  title: Text(
                    CarData.data[index].status,
                    style: TextStyle(color: AppColors.white.withOpacity(0.6)),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      CarData.data[index].title,
                      style:
                          const TextStyle(color: AppColors.white, fontSize: 18),
                    ),
                  ),
                  trailing: Text(
                    CarData.data[index].time,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: AppColors.white.withOpacity(0.6), fontSize: 14),
                  ),
                ),
                if (index < CarData.data.length - 1)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Divider(
                      color: AppColors.blue,
                    ),
                  ),
              ],
            );
          },
          indicatorBuilder: (_, index) {
            return DotIndicator(
              color: CarData.data[index].dotColor,
            );
          },
          connectorBuilder: (_, index, ___) => const DashedLineConnector(
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
