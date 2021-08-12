import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/Helper/GlobalVariable/global_variable.dart';
import 'package:package_info/package_info.dart';
import 'package:flutter_template/Helper/Routes/router.gr.dart' as ModuleRouter;

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 3), () {
      checkLoginStatus();
    });
    checkAppInfo();
  }

  Future checkLoginStatus() async {
    // final storage = FlutterSecureStorage();
    // String loggedIn = await storage.read(key: "loginstatus");
    // if (loggedIn == null || loggedIn == "loggedout") {
    //   Navigator.pushReplacement(context,
    //       MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
    // } else {
    //   if (loggedIn == "loggedin") {
    //     Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(
    //             builder: (BuildContext context) =>
    //                 InitializeProviderDataScreen()));
    //   }
    // }

    // GlobalVariable().removeTerminalSecret();
    // GlobalVariable().removePassCode();

    AutoRouter.of(context).push(ModuleRouter.Home());
  }

  void checkAppInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    GlobalVariable.setAppVersion = packageInfo.version;
    GlobalVariable.setBuildNumber = packageInfo.buildNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: Container(
          width: 130,
          height: 130,
          color: Colors.green[200],
          child: Image.asset(
            'assets/images/masjid-logo.png',
          ),
        ),
      ),
    );
  }
}