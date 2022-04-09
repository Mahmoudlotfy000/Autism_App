import 'package:autism_app/screens/cards/alphabet_card/controller.dart';
import 'package:autism_app/screens/cards/animals_card/controller.dart';
import 'package:autism_app/screens/cards/body_card/controller.dart';
import 'package:autism_app/screens/cards/clothes_card/controller.dart';
import 'package:autism_app/screens/cards/colors_card/controller.dart';
import 'package:autism_app/screens/cards/describe_card/controller.dart';
import 'package:autism_app/screens/cards/dictionary_card/controller.dart';
import 'package:autism_app/screens/cards/drink_card/controller.dart';
import 'package:autism_app/screens/cards/emotions_card/controller.dart';
import 'package:autism_app/screens/cards/family_card/controller.dart';
import 'package:autism_app/screens/cards/food_card/controller.dart';
import 'package:autism_app/screens/cards/hygiene_card/controller.dart';
import 'package:autism_app/screens/cards/jobs_card/controller.dart';
import 'package:autism_app/screens/cards/numbers_card/controller.dart';
import 'package:autism_app/screens/cards/plants_card/controller.dart';
import 'package:autism_app/screens/cards/position_card/controller.dart';
import 'package:autism_app/screens/cards/pronous_card/controller.dart';
import 'package:autism_app/screens/cards/questions_card/controller.dart';
import 'package:autism_app/screens/cards/shapes_card/controller.dart';
import 'package:autism_app/screens/cards/sports_card/controller.dart';
import 'package:autism_app/screens/cards/time_card/controller.dart';
import 'package:autism_app/screens/cards/toys_card/controller.dart';
import 'package:autism_app/screens/cards/transport_card/controller.dart';
import 'package:autism_app/screens/cards/verbs_card/controller.dart';
import 'package:autism_app/screens/cards/weather_card/controller.dart';
import 'package:autism_app/screens/splash/view.dart';
import 'package:autism_app/screens/test/widget/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Question()),
        ChangeNotifierProvider(create: (context) => DictionaryController()),
        ChangeNotifierProvider(create: (context) => FamilyController()),
        ChangeNotifierProvider(create: (context) => NumbersController()),
        ChangeNotifierProvider(create: (context) => DrinkController()),
        ChangeNotifierProvider(create: (context) => AlphabetController()),
        ChangeNotifierProvider(create: (context) => AnimalsController()),
        ChangeNotifierProvider(create: (context) => BodyController()),
        ChangeNotifierProvider(create: (context) => ClothesController()),
        ChangeNotifierProvider(create: (context) => ColorsController()),
        ChangeNotifierProvider(create: (context) => DescribeController()),
        ChangeNotifierProvider(create: (context) => EmotionsController()),
        ChangeNotifierProvider(create: (context) => FoodController()),
        ChangeNotifierProvider(create: (context) => HygieneController()),
        ChangeNotifierProvider(create: (context) => JobsController()),
        ChangeNotifierProvider(create: (context) => PlantsController()),
        ChangeNotifierProvider(create: (context) => PositionController()),
        ChangeNotifierProvider(create: (context) => PronousController()),
        ChangeNotifierProvider(create: (context) => QuestionsController()),
        ChangeNotifierProvider(create: (context) => ShapesController()),
        ChangeNotifierProvider(create: (context) => SportsController()),
        ChangeNotifierProvider(create: (context) => TimeController()),
        ChangeNotifierProvider(create: (context) => ToysController()),
        ChangeNotifierProvider(create: (context) => TransportsController()),
        ChangeNotifierProvider(create: (context) => VerbsController()),
        ChangeNotifierProvider(create: (context) => WeatherController()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'SignikaNegative-VariableFont',
          primarySwatch: Colors.blue,
        ),
        home: ScreenUtilInit(builder: () => const SplashScreen()),


        ),

    );
  }
}
