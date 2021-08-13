import 'package:flutter/material.dart';
import 'package:flutter_template/Helper/ShowDialog/dialog_helper.dart';
import 'package:flutter_template/Helper/Webservice/api_manager.dart';
import 'package:provider/provider.dart';

late ApiManager apiManager;

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //===================================== [START] API SERVICES ===================================================//

  Future onGetAllPosts() async {
    Future.delayed(Duration.zero, () => DialogHelper.loadingDialog(context));
     await apiManager.getAllPosts().then((res) {
      Navigator.of(context).pop();
      onReadResponse(true, res);
    }).catchError((res) {
      Navigator.of(context).pop();
      onReadResponse(false, res);
    });
  }

  //===================================== [END] API SERVICES ===================================================//

  @override
  void initState() {
    super.initState();
    apiManager = Provider.of<ApiManager>(context, listen: false);

    // calling api function
    // onGetAllPosts();
  }

  void onReadResponse(bool status, res) {
    if(status) {

    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: SafeArea(
            child: Container(
              child: Text(''),
            ),
          ),
      ),
      onWillPop: () async => true,
    );
  }
}