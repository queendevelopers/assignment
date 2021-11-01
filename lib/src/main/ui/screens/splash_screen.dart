import 'package:flutter/material.dart';
import 'package:swivt/app/locator.dart';
import 'package:swivt/src/data/api/requests.dart';
import 'package:swivt/src/main/modules/homepage/homepage_view.dart';
import 'package:swivt/src/main/ui/widgets/widgets.dart';
import 'package:swivt/src/utils/utilities.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () => context.pushReplacement(HomepageView()),
    );
  }

  Future abc() async {
    var reqs = locator<Request>();
    var res = await reqs.dio.get('/list');
    print(res.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: text(
          'Splash Screen',
          fontweight: FontWeight.w600,
          size: context.textTheme.subtitle1?.fontSize,
        ),
      ),
    );
  }
}
