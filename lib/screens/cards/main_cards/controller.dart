import 'package:autism_app/screens/cards/alphabet_card/view.dart';
import 'package:autism_app/screens/cards/animals_card/view.dart';
import 'package:autism_app/screens/cards/body_card/view.dart';
import 'package:autism_app/screens/cards/clothes_card/view.dart';
import 'package:autism_app/screens/cards/colors_card/view.dart';
import 'package:autism_app/screens/cards/describe_card/view.dart';
import 'package:autism_app/screens/cards/drink_card/view.dart';
import 'package:autism_app/screens/cards/emotions_card/view.dart';
import 'package:autism_app/screens/cards/family_card/view.dart';
import 'package:autism_app/screens/cards/food_card/view.dart';
import 'package:autism_app/screens/cards/hygiene_card/view.dart';
import 'package:autism_app/screens/cards/jobs_card/view.dart';
import 'package:autism_app/screens/cards/numbers_card/view.dart';
import 'package:autism_app/screens/cards/plants_card/view.dart';
import 'package:autism_app/screens/cards/position_card/view.dart';
import 'package:autism_app/screens/cards/pronous_card/view.dart';
import 'package:autism_app/screens/cards/questions_card/view.dart';
import 'package:autism_app/screens/cards/shapes_card/view.dart';
import 'package:autism_app/screens/cards/sports_card/view.dart';
import 'package:autism_app/screens/cards/time_card/view.dart';
import 'package:autism_app/screens/cards/toys_card/view.dart';
import 'package:autism_app/screens/cards/transport_card/view.dart';
import 'package:autism_app/screens/cards/verbs_card/view.dart';
import 'package:autism_app/screens/cards/weather_card/view.dart';

class CardsController {
  // late final  String image ,name ;
  //  CardsModel({  required this.image, required this.name});
  List<String> cardsImage = [
    'numbers.png',
    'alphabet.png',
    'verbs.png',
    'pronous.png',
    'food.png',
    'coffee0.png',
    'emotions.png',
    'weather.png',
    'family.png',
    'colors.png',
    'clothes.png',
    'body.png',
    'animal.png',
    'time.png',
    'shape.png',
    'sport.png',
    'transport.png',
    'toy.png',
    'question.png',
    'position.png',
    'describe.png',
    'hygiene.png',
    'plant.png',
    'job.png',
  ];
  List<String> cardsName = [
    'numbers',
    'alphabet',
    'verbs',
    'pronouns',
    'food',
    'drink',
    'emotions',
    'weather',
    'family',
    'colors',
    'clothes',
    'body',
    'animals',
    'time',
    'shapes',
    'sports',
    'transports',
    'toys',
    'questions',
    'position',
    'describe',
    'hygiene',
    'plants',
    'jobs',
  ];
  List cards = [
    const NumbersCard(),
    AlphabetCard(),
    VerbsCard(),
    PronousCard(),
    FoodCard(),
    DrinkCard(),
    EmotionsCard(),
    WeatherCard(),
    const FamilyCard(),
    ColorsCard(),
    ClothesCard(),
    BodyCard(),
    AnimalsCard(),
    TimeCard(),
    ShapesCard(),
    SportsCard(),
    TransportCard(),
    ToysCard(),
    QuestionsCard(),
    PositionCard(),
    DescribeCard(),
    HygieneCard(),
    PlantsCard(),
    JobsCard()
  ];
}

// final String name,image;
// NumberModel({
//   required this.image,
//   required this.name,
//
// });
