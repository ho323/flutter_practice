import 'package:calendar_schedule/component/calendar.dart';
import 'package:calendar_schedule/component/schedule_card.dart';
import 'package:calendar_schedule/component/today_banner.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Calendar(
                selectedDay: selectedDay,
                focusedDay: focusedDay,
                onDaySelected: onDaySelected,
              ),
              SizedBox(height: 8.0),
              TodayBanner(
                selectedDay: selectedDay,
                scheduleCount: 3,
              ),
              SizedBox(height: 8.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView.separated(
                    itemCount: 100,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 8.0);
                    },
                    itemBuilder: (context, index) {
                      return ScheduleCard(
                        startTime: 8,
                        endTime: 14,
                        content: '프로그래밍 공부하기 $index',
                        color: Colors.red,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      this.focusedDay = selectedDay; // 다른 달 날짜 클릭하면 달 focus 변경
    });
  }
}
