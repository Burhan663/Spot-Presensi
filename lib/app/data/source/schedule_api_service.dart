import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:spot_presensi/core/constant/constant.dart';
import 'package:spot_presensi/core/network/data_state.dart';


part 'schedule_api_service.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class ScheduleApiService {
  factory ScheduleApiService(Dio dio) {
    return _ScheduleApiService(dio);
  }

  @GET('/api/get-schedule')
  Future<HttpResponse<DataState>> get();

  @POST('/api/banned')
  Future<HttpResponse<DataState>> banned();
}
