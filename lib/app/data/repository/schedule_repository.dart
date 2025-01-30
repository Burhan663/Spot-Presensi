import 'package:spot_presensi/app/data/source/schedule_api_service.dart';
import 'package:spot_presensi/app/module/entity/schedule.dart';
import 'package:spot_presensi/app/module/repository/schedule_repository.dart';
import 'package:spot_presensi/core/network/data_state.dart';

class ScheduleRepositoryImpl extends ScheduleRepository {
  final ScheduleApiService _scheduleApiService;

  ScheduleRepositoryImpl(this._scheduleApiService);

  @override
  Future<DataState> banned() {
    // TODO: implement banned
    throw UnimplementedError();
  }

  @override
  Future<DataState<ScheduleEntity?>> get() {
    // TODO: implement get
    throw UnimplementedError();
  }
}