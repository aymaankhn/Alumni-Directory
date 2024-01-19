import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recent Events')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/logos/logo.png"),
              ),
              SizedBox(width: 30),
              Text(
                "Sunburn Campus at ADYPU",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF861A52),
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                      "Ajeenkya DY Patil University in collaboration with Sunburn festival & Red Bull organized one of the biggest music event in the campus. Attracting more than 1000 people from different colleges and universities participated in the festival.",
                      style: TextStyle(
                        color: Color(0xFF861A52),
                      )),
                ),
              ),
              // Add some space between the image and the text
              SizedBox(
                height: 16,
              ),
              Image.asset('assets/eveimg/1.jpg', width: 350),
              SizedBox(
                height: 16,
              ),
              Image.asset('assets/eveimg/2.jpg', width: 350),
              SizedBox(
                height: 16,
              ),
              Image.asset('assets/eveimg/3.jpg', width: 350),
              SizedBox(
                height: 16,
              ),
              Image.asset('assets/eveimg/4.jpg', width: 350),
              SizedBox(
                height: 16,
              ),
              Image.asset('assets/eveimg/5.jpg', width: 350),
              SizedBox(
                height: 16,
              ), // Use your image path here
            ],
          ),
        ),
      ),
    );
  }
}
