import 'package:spot_presensi/app/module/entity/schedule.dart';
import 'package:spot_presensi/core/network/data_state.dart';

abstract class ScheduleRepository {
  Future<DataState<ScheduleEntity?>> get();
  Future<DataState> banned();
}
