import 'package:calendar_schedule/component/calendar.dart';
import 'package:calendar_schedule/component/schedule_bottom_sheet.dart';
import 'package:calendar_schedule/component/schedule_card.dart';
import 'package:calendar_schedule/component/today_banner.dart';
import 'package:calendar_schedule/const/colors.dart';
import 'package:calendar_schedule/database/drift_database.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDay = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: renderFloatingActionButton(),
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
              _ScheduleList(),
            ],
          ),
        ),
      ),
    );
  }

  FloatingActionButton renderFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (_) {
            return ScheduleBottomSheet(
              selectedDate: selectedDay,
            );
          },
        );
      },
      backgroundColor: PRIMARY_COLOR,
      child: Icon(
        Icons.add,
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

class _ScheduleList extends StatelessWidget {
  const _ScheduleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: StreamBuilder<List<Schedule>>(
          stream: GetIt.I<LocalDatabase>().watchSchedules(),
          builder: (context, snapshot) {
            print(snapshot.data);
            return ListView.separated(
              itemCount: 50,
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
            );
          }
        ),
      ),
    );
  }
}
