import 'package:spot_presensi/app/module/entity/attendance.dart';
import 'package:spot_presensi/app/module/use_case/attendance_get_today.dart';
import 'package:spot_presensi/core/provider/app_provider.dart';

class HomeNotifier extends AppProvider{
  final AttendanceGetTodayUseCase _attendanceGetTodayUseCase;

  HomeNotifier(this._attendanceGetTodayUseCase){
    init();
  }

  AttendanceEntity? _attendanceToday;

  AttendanceEntity? get attendanceToday => _attendanceToday;
  
  @override
  void init() {
    _getAttendanceToday();
  }

  _getAttendanceToday() async{
    showLoading();
    final response = await _attendanceGetTodayUseCase();
    if (response.success){
      _attendanceToday = response.data;
    }else{
      errorMeesage = response.message;
    }

    hideLoading();
  }
}