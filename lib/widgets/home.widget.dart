import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorWidgetPage extends StatelessWidget {
  PageController controller;
  int pageLength;
  IndicatorWidgetPage({Key? key,required this.controller,required this.pageLength}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: pageLength,
      effect:   CustomizableEffect(
        dotDecoration: const DotDecoration(
          color: Colors.grey,
        ),
        activeDotDecoration: DotDecoration(
            color: Colors.red,
            width: 15,
            height: 10,
            borderRadius: BorderRadius.circular(5),
            rotationAngle: 0,
            verticalOffset: -10.0
        ),
      ),
    );
  }
}

class CardBusiness extends StatelessWidget {
  final String title;
  final String imagePath;
  Function consultFunction;
  CardBusiness({Key? key,required this.title, required this.imagePath, required this.consultFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        const SizedBox(height: 5,),
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(imagePath.toString()),
                fit: BoxFit.cover
            ),
          ),
          child: Center(
            child: ElevatedButton(
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(10.0),
              ),
              onPressed: (){
                consultFunction();
              },
              child: const Text("Consulter",style: TextStyle(color: Colors.red),),
            ),
          ),
        ),
      ],
    );
  }
}

