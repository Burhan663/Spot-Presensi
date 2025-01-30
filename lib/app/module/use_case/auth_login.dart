import 'package:spot_presensi/app/module/entity/auth.dart';
import 'package:spot_presensi/app/module/repository/auth_repository.dart';
import 'package:spot_presensi/core/network/data_state.dart';
import 'package:spot_presensi/core/use_case/app_use_case.dart';

class AuthLoginUseCase extends AppUseCase<Future<DataState>, AuthEntity>{
  final AuthRepository _authRepository;

  AuthLoginUseCase(this._authRepository);
  
  @override
  Future<DataState> call({AuthEntity? param}) {
    return _authRepository.login(param!);
  }

  
}