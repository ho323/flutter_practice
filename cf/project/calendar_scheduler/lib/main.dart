import 'package:calendar_schedule/database/drift_database.dart';
import 'package:calendar_schedule/screen/home_screen.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

const DEFAULT_COLORS = [
  'F44336', // 빨
  'FF9800', // 주
  'FFEB3B', // 노
  'FCAF50', // 초
  '2196F3', // 파
  '3F51B5', // 남
  '9C27B0', // 보
];

void main() async {
  // 플러터 프레임워크가 실행 될때까지 기다리라는 함수
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  final database = LocalDatabase();

  final colors = await database.getCategoryColors();

  if (colors.isEmpty) {
    for (String hexCode in DEFAULT_COLORS) {
      await database.createCategoryColor(
        CategoryColorsCompanion(
          hexCode: Value(hexCode),
        ),
      );
    }
  }

  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'NotoSans'),
      home: HomeScreen(),
    ),
  );
}
