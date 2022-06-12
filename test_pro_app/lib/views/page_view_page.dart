import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_pro_app/widgets/app_button.dart';
import 'package:test_pro_app/widgets/app_logo.dart';
import 'package:test_pro_app/widgets/app_padding.dart';
import 'package:test_pro_app/widgets/app_spacer.dart';

import '../widgets/app_text.dart';


class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final controller = PageController();

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  int newvalue = 0 ;

  bool isSex = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Stack(

          children: [


            Container(
              padding: const EdgeInsets.only(bottom: 80),
              child: PageView(
                controller: controller,
                children: [
                  Center(
                    child: Container(
                      color: Colors.white,
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const AppText(text: 'What is your sex?',fontSize: 23,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        isSex = true ;

                                      });

                                    },
                                    child: Container(

                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 10,
                                              offset: const Offset(0, 5),
                                            ),
                                          ],
                                          color: Colors.white,borderRadius: BorderRadius.circular(15)),
                                      height: 150,
                                      width: 150,
                                      child: Icon(Icons.female_outlined,color: isSex ?  Colors.red : Colors.grey,size: 100,),

                                    ),
                                  ),
                                  const SizedBox(height: 15,),
                                  const Text('Woman',style: TextStyle(color: Colors.grey,fontSize: 17),),
                                ],
                              ),
                              const SizedBox(width: 20 ,),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        isSex = false ;
                                      });

                                    },
                                    child: Container(

                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 10,
                                              offset: const Offset(0, 5),
                                            ),
                                          ],
                                          color: Colors.white,borderRadius: BorderRadius.circular(15)),
                                      height: 150,
                                      width: 150,
                                      child: Icon(Icons.male_outlined,color: isSex ?  Colors.grey : Colors.blue,size: 100,),

                                    ),
                                  ),
                                  const SizedBox(height: 15,),
                                  const Text('Man',style: TextStyle(color: Colors.grey,fontSize: 17),),
                                ],
                              ),

                            ],),

                        ],),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppText(text: "How old are you?",fontSize: 23),
                      const AppSpacer(height: 150),
                      SizedBox(
                        height: 200,
                        child: CupertinoPicker(
                          itemExtent: 40,
                          onSelectedItemChanged: (selcted) {
                            print(selcted);
                            // TODO: add 15 age
                          },
                          backgroundColor: Colors.transparent,
                          children: List.generate(
                            80,
                                (index) => SizedBox(
                              height: 40,
                              child: Column(
                                children: [
                                  AppText.subtitle(text: "${index + 15}", fontSize: 24),
                                  const Divider(height: 5, thickness: 3),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppText(text: "How much is your lenght?",fontSize: 23),
                      const AppSpacer(height: 150),
                      SizedBox(
                        height: 200,
                        child: CupertinoPicker(
                          itemExtent: 40,
                          onSelectedItemChanged: (selcted) {
                            print(selcted);
                            // TODO: add 15 age
                          },
                          backgroundColor: Colors.transparent,
                          children: List.generate(
                            50,
                                (index) => SizedBox(
                              height: 40,
                              child: Column(
                                children: [
                                  AppText.subtitle(text: "${index + 150}", fontSize: 24),
                                  const Divider(height: 5, thickness: 3),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppText(text: "How much is your weight?",fontSize: 23),
                      const AppSpacer(height: 150),
                      SizedBox(
                        height: 200,
                        child: CupertinoPicker(
                          itemExtent: 40,
                          onSelectedItemChanged: (selcted) {
                            print(selcted);
                            // TODO: add 15 age
                          },
                          backgroundColor: Colors.transparent,
                          children: List.generate(
                            80,
                                (index) => SizedBox(
                              height: 40,
                              child: Column(
                                children: [
                                  AppText.subtitle(text: "${index + 40}", fontSize: 24),
                                  const Divider(height: 5, thickness: 3),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),






                ],
              ),
            ),
            Positioned(
                left: 5,
                top: 25,
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_sharp,color: Colors.grey,))),
            const Positioned(

              left: 180,
              top: 30,
              child: AppLogo(height: 40,width: 40,),
            ),

          ],),
        bottomSheet: AppPadding(
          child: SizedBox(

            height: 80,
            child: Column(
              children: [
                AppButton(text: 'Next', color: Colors.blue, onPressed: (){
                  controller.nextPage(duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);

                }),
                const AppSpacer(height: 10,),
                Center(child: SmoothPageIndicator(

                  controller: controller,
                  count:4,
                  effect: const WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 5,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.blueGrey
                  ),
                ),)


              ],
            ),
          ),
        ),
      ),
    );
  }
}
