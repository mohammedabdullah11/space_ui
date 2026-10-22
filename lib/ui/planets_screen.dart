import 'package:flutter/material.dart';
import 'package:space_ui/core/custom_button.dart';
import 'package:space_ui/core/page_view.dart';
import 'package:space_ui/models/planet_model.dart';
import 'package:space_ui/ui/planets_details.dart';

class PlanetsScreen extends StatefulWidget {
  const PlanetsScreen({super.key});
  static const String routesName = 'Planets_screen';

  @override
  State<PlanetsScreen> createState() => _PlanetsScreenState();
}
class _PlanetsScreenState extends State<PlanetsScreen> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset("assets/images/backgaroundimages.png" ,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  ),
                
                  Positioned(
                    top: 30,
                    child: Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                
                  Positioned(
                    top: 150,
                    left: 20,
                    child: Text(
                      "Which planet\nwould you like to explore..?",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
             Expanded(child: PageViewScreen(
              onPageChanged: (index){
                  setState(() {
                      currentIndex = index;
                    });
              },
                
             )),
                
            CustomButton(
                          text: planets[currentIndex].name,
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (_) => PlanetsDetails(planet: planets[currentIndex])),
                          );
                          },
                        ),
                
            ],
          ),
        ),
      ),
    );
  }
}
