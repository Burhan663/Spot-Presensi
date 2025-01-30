import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spot_presensi/core/constant/constant.dart';
import 'package:spot_presensi/core/network/data_state.dart';

part 'attendance_api_service.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class AttendanceApiService {
  factory AttendanceApiService(Dio dio) {
    return _AttendanceApiService(dio);
  }

@GET('http://127.0.0.1:8000/api/get-schedule')
  Future<HttpResponse<DataState>> getAttendanceToday();

  @POST('http://127.0.0.1:8000/api/store-attendance')
  Future<HttpResponse<DataState>> sendAttendance(
      {@Body() required Map<String, dynamic> body});

}

