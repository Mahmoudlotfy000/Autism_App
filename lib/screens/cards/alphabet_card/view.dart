import 'dart:ui';
import 'package:autism_app/screens/cards/alphabet_card/widget/view.dart';
import 'package:autism_app/screens/cards/dictionary_card/controller.dart';
import 'package:autism_app/screens/cards/widget/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'controller.dart';

class AlphabetCard extends StatefulWidget {
  const AlphabetCard({Key? key}) : super(key: key);

  @override
  _AlphabetCardState createState() => _AlphabetCardState();
}

class _AlphabetCardState extends State<AlphabetCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash screen (1).png'),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppBarItem(
                  nameOfCard: 'Alphabet',
                ),
                Transform.translate(
                  offset: const Offset(0, -10),
                  child: Container(
                    height: 650,
                    padding: const EdgeInsets.all(12),
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      children: List.generate(
                        context
                            .read<AlphabetController>()
                            .alphabetCardItems
                            .length,
                        (index) => InkWell(
                            onTap: () {
                              context
                                  .read<DictionaryController>()
                                  .updateSelectedItems(context
                                      .read<AlphabetController>()
                                      .alphabetCardItems[index]);
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  shape: const CircleBorder(),
                                  content: Container(
                                    height: 150,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Image.asset(
                                            'assets/images/${context.read<AlphabetController>().alphabetCardItems[index].image}'),
                                        Text(context
                                            .read<AlphabetController>()
                                            .alphabetCardItems[index]
                                            .name),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: AlphabetCardItem(
                              image1: 'uni.png',
                              image: context
                                  .read<AlphabetController>()
                                  .alphabetCardItems[index]
                                  .image,
                              name: context
                                  .read<AlphabetController>()
                                  .alphabetCardItems[index]
                                  .name,
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
