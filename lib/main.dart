import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'common/gen/colors.gen.dart';
import 'common/styles.dart';
import 'src/injections.dart' as di;
import 'src/onboarding_page.dart';

void main() async {
  di.init();
  await dotenv.load(fileName: '.env');
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.black
      ..loadingStyle = EasyLoadingStyle.custom
      ..backgroundColor = Colors.white
      ..textColor = ColorName.midnight
      ..indicatorColor = ColorName.grape;

    return MultiBlocProvider(
      providers: [],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: ColorName.background,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blueGrey,
          appBarTheme: Styles.appBarTheme,
          textTheme: TextStyles.textTheme,
        ),
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        home: const OnboardingPage(),
      ),
    );
  }
}
