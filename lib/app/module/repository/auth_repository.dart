import 'package:spot_presensi/app/module/entity/auth.dart';
import 'package:spot_presensi/core/network/data_state.dart';

abstract class AuthRepository {
  Future<DataState> login(AuthEntity param);
}