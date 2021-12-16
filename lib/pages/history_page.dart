import 'package:car_app_ui/theme/app_colors.dart';
import 'package:car_app_ui/widget/timeline_widget.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: ElevatedButton(
                  child: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'History',
                style: TextStyle(fontSize: 26),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const TimelineWidget(),
                        Image.asset('assets/images/car_image.png'),
                        const ListTile(
                          title: Text(
                            'Audi Q7',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            '23 \$',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    right: MediaQuery.of(context).size.width / 2.65,
                    left: MediaQuery.of(context).size.width / 2.65,
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        child: const RotationTransition(
                            turns: AlwaysStoppedAnimation(90 / 360),
                            child: Icon(Icons.arrow_back_ios_new)),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Card(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: TimelineWidget(),
              )),
              const SizedBox(
                height: 20,
              ),
              const Card(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: TimelineWidget(),
              )),
            ],
          ),
        ));
  }
}
