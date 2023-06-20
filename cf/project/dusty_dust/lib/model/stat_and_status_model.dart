import 'package:dusty_dust/model/stat_model.dart';
import 'package:dusty_dust/model/status_model.dart';

class StatAndStatusModel {
  final ItemCode itemCode;
  final StatusModel status;
  final StatModel stat;

  StatAndStatusModel({
    required this.itemCode,
    required this.status,
    required this.stat,
  });
}
