import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_template/Helper/AppTheme/app_theme.dart';
import 'package:flutter_template/Helper/Routes/router.gr.dart';
import 'package:flutter_template/Helper/Webservice/api_manager.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(
      Phoenix(
          child: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => ApiManager()),
            ],
            child: AppRootMain(),
          ),
        ),
      );
  });
}

class AppRootMain extends StatelessWidget {
  final _rootRouter = AppRouter();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Template',
      theme: AppThemeGlobal.appThemeGlobal,
      routerDelegate: _rootRouter.delegate(),  
      routeInformationParser: _rootRouter.defaultRouteParser(),
    );
  }
}