import 'package:dusty_dust/const/status_level.dart';
import 'package:dusty_dust/model/stat_model.dart';
import 'package:dusty_dust/model/status_model.dart';

class DataUtils {
  static String getTimeFromDateTime({required DateTime dateTime}) {
    return '${dateTime.year}년 ${dateTime.month}월 ${dateTime.day}일 ${getTimeFormat(dateTime.hour)}시';
  }

  static String getTimeFormat(int number) {
    return number.toString().padLeft(2, '0');
  }

  static String getUnitFromItemCode({
    required ItemCode itemCode,
  }) {
    switch (itemCode) {
      case ItemCode.PM10:
        return '㎍/㎥';

      case ItemCode.PM25:
        return '㎍/㎥';

      default:
        return 'ppm';
    }
  }

  static String getItemCodeKrString({
    required ItemCode itemCode,
  }) {
    switch (itemCode) {
      case ItemCode.PM10:
        return '미세먼지';

      case ItemCode.PM25:
        return '초미세먼지';

      case ItemCode.NO2:
        return '이산화질소';

      case ItemCode.CO:
        return '일산화탄소';

      case ItemCode.O3:
        return '오존';

      case ItemCode.SO2:
        return '이황산가스';
    }
  }

  static StatusModel getStatusFromItemCodeAndValue({
    required double value,
    required ItemCode itemCode,
  }) {
    return statusLevel.where(
      (status) {
        if (itemCode == ItemCode.PM10) {
          return status.minFineDust < value;
        } else if (itemCode == ItemCode.PM25) {
          return status.minUltraFineDust < value;
        } else if (itemCode == ItemCode.CO) {
          return status.minCO < value;
        } else if (itemCode == ItemCode.O3) {
          return status.minO3 < value;
        } else if (itemCode == ItemCode.NO2) {
          return status.minNO2 < value;
        } else if (itemCode == ItemCode.SO2) {
          return status.minSO2 < value;
        } else {
          throw Exception('알 수 없는 ItemCode!');
        }
      },
    ).last;
  }
}
