import 'package:bmi_calculator/CalculateBMI.dart';
import 'package:bmi_calculator/resultScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

void main() => runApp(BMICALCULATOR());

class BMICALCULATOR extends StatelessWidget {
  const BMICALCULATOR({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF24232F),
        accentColor: Color(0xFF1F1E29),
        scaffoldBackgroundColor: Color(0xFF2F2E3A),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color inactiveColor = Color(0xFF24232F);
  Color activeColor = Colors.blueGrey;
  Gender? selectedGender;
  int height = 180;
  int weight = 70;
  int age = 15;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI CALCULATOR",
            ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: selectedGender == Gender.male? activeColor: inactiveColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.male,
                                  color: Colors.white,
                                  size: 45.0,
                                ),

                                SizedBox(
                                  height: 10.0,
                                ),

                                Text(
                                  "MALE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                        ),
                      ),
                    ),

                    Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedGender = Gender.female;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: selectedGender == Gender.female? activeColor: inactiveColor,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.female,
                                    color: Colors.white,
                                    size: 45.0,
                                  ),

                                  SizedBox(
                                    height: 10.0,
                                  ),

                                  Text(
                                    "FEMALE",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ),
                ],
            ),
          ),

          SizedBox(
            height: 10.0
          ),

          Expanded(
              child: Container(
                margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: inactiveColor,
                    ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    SliderTheme(data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x291DE9B6),
                      inactiveTrackColor: Colors.grey,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 16.0
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0
                      ),
                      thumbColor: Colors.red,


                    ), child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 250.0,
                      onChanged: (double v) {
                        setState(() {
                          height = v.round();
                        });
                      },
                    ))

                  ],
                ),
            ),
          ),

          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: inactiveColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),

                            SizedBox(
                              height: 8.0,
                            ),

                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Colors.white,
                              ),
                            ),

                            SizedBox(
                              height: 8.0,
                            ),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color:  Colors.white,
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ),

                                SizedBox(
                                  width: 10.0,
                                ),

                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      color:  Colors.white,
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (weight > 10)
                                          weight--;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    ),
                  ),

                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: inactiveColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),

                            SizedBox(
                              height: 8.0,
                            ),

                            Text(
                              age.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Colors.white,
                              ),
                            ),

                            SizedBox(
                              height: 8.0,
                            ),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color:  Colors.white,
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                ),

                                SizedBox(
                                  width: 10.0,
                                ),

                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      color:  Colors.white,
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (age > 5)
                                          age--;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    ),
                  ),

                ],
            ),
          ),

          GestureDetector(
              child: Container(
                padding: EdgeInsets.only(bottom: 10.0),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
                color: Colors.red,
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),
            onTap: (){
              navigateToResultScreen();
            },
          ),

        ],
      ),
    );
  }

  void navigateToResultScreen(){
    CalculateBMI obj = CalculateBMI(weight, height);
    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(obj.calculateBMI(), obj.msg, obj.getDescription())));
  }

}