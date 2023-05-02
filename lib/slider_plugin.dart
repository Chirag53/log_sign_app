import 'package:circular/circular.dart';
import 'package:flutter/material.dart';

class SliderPlugin extends StatefulWidget {
  const SliderPlugin({Key? key}) : super(key: key);

  @override
  State<SliderPlugin> createState() => _SliderPluginState();
}

class _SliderPluginState extends State<SliderPlugin> {
  int angle = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffEEEEEE),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: CircularSlider(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(-10, -10),
                            color: Colors.white,
                            blurRadius: 20,
                            spreadRadius: 1),
                        BoxShadow(
                            offset: Offset(10, 10),
                            color: Color.fromARGB(255, 158, 158, 158),
                            blurRadius: 20,
                            spreadRadius: 1)
                      ]),
                  maxValue: 100,
                  radius: 100,
                  color: const Color(0xffEEEEEE),
                  sliderColor: const Color(0xff62CBDA),
                  unSelectedColor: const Color(0xffD7DEE7),
                  onDrag: (angle) {
                    setState(() {
                      this.angle = angle;
                    });
                  },
                  child: Text(
                    angle.toString(),
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
