import 'package:auto_route/annotations.dart';
import 'package:flutter_template/Class/AppRoot/app_root.dart';
import 'package:flutter_template/Class/Home/home.dart';

// ##### NEED TO RUN TO GENERATE ROUTES ######
// flutter packages pub run build_runner watch --delete-conflicting-outputs
// ###########################################

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[  
    AutoRoute(page: AppRoot, initial: true),
    AutoRoute(page: Home),
  ],  
)  
class $AppRouter {}  