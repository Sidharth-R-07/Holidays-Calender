import 'package:get_it/get_it.dart';
import 'package:holidays_calender/common/di/injection.config.dart';
import 'package:injectable/injectable.dart';

final GetIt sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default init
  preferRelativeImports: true, // default true
  asExtension: false,
)
Future<void> configureDependency() async =>
    init(sl, environment: Environment.prod);

// @InjectableInit(preferRelativeImports: true)
// configureDependency({
//   String? env,
//   EnvironmentFilter? environmentFilter,
// }) async {
//   return getIt.init(
//     environmentFilter: environmentFilter,
//     environment: env,
//   );
// }
