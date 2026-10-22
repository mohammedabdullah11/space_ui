import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:space_ui/models/planet_model.dart';
import 'package:space_ui/ui/planets_screen.dart';

class PlanetsDetails extends StatefulWidget {
  final PlanetModel planet;

  const PlanetsDetails({super.key, required this.planet});
  static const String routesName = 'PlanetsDetails';

  @override
  State<PlanetsDetails> createState() => _PlanetsDetailsState();
}

class _PlanetsDetailsState extends State<PlanetsDetails> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                
                Image.asset("assets/images/backgaroundimages.png"),
                Positioned(
      top: 30,
      left: 8,
      child:  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xffEE403D),
        ),
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.popAndPushNamed(context, PlanetsScreen.routesName);
          },
        ),
      ),
    ),

                Positioned(
                  top: 30,
                  child: Text(
                    widget.planet.name,
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
                    widget.planet.name,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              child: ModelViewer(
                src: widget.planet.image3d ?? '',
                alt: "3D model of ${widget.planet.name}",
                ar: true,
                autoRotate: true,
                cameraControls: true,
                backgroundColor: Colors.transparent,
                 disableZoom: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "About",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            
            SizedBox(
              height: 10,
            ),
            Text(widget.planet.description,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w300)),
            SizedBox(
              height: 10,
            ),
           
             _buildInfoRow("Distance from Sun",widget. planet.distanceFromSun),
            _buildInfoRow("Length of Day",widget. planet.lengthOfDay),
            _buildInfoRow("Orbital Period",widget. planet.orbitalPeriod),
            _buildInfoRow("Radius", widget.planet.radius),
            _buildInfoRow("Mass",widget. planet.mass),
            _buildInfoRow("Gravity",widget. planet.gravity),
            _buildInfoRow("Surface Area",widget. planet.surfaceArea),
          ],
        ),
      ),
    );
  }
}
Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(color: Colors.white70, fontSize: 16)),
          Text(value,
              style: const TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
