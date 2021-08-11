import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BillCalculator(),
    );
  }
}

class BillCalculator extends StatefulWidget {
  const BillCalculator({Key? key}) : super(key: key);

  @override
  _BillCalculatorState createState() => _BillCalculatorState();
}

class _BillCalculatorState extends State<BillCalculator> {
  int currentindex = 0;
  String FinalBill = "";
  double goldleaf = 0;
  double lucky = 0;
  double royal = 0;
  double tea = 0;
  double anonymous = 0;
  TextEditingController GoldleafController = TextEditingController();
  TextEditingController LuckyStrikeController = TextEditingController();
  TextEditingController RoyalController = TextEditingController();
  TextEditingController TeaController = TextEditingController();
  TextEditingController AnonymousController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        appBar: AppBar(
          title: Text("Bill Calculator",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          elevation: 0.0,
          backgroundColor: Colors.teal,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    radioButton("Sultaner Dokan", Colors.cyan.shade500, 0),
                    radioButton("Pannur Dokan", Colors.teal, 1),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Gold Leaf Switch:",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: GoldleafController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Total Gold Leaf Switch",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.teal[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Lucky Strike:",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: LuckyStrikeController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Total Lucky Strike",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.teal[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Royal:",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: RoyalController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Total Royals",
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white),
                    fillColor: Colors.teal.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Tea:",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: TeaController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Total Tea Cups",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.teal.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Anonymous Bill:",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: AnonymousController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Enter the Amount of Taka Here",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.blue[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {
                      goldleaf = double.parse(GoldleafController.value.text);
                      lucky = double.parse(LuckyStrikeController.value.text);
                      royal = double.parse(RoyalController.value.text);
                      tea = double.parse(TeaController.value.text);
                      anonymous = double.parse(AnonymousController.value.text);
                      CalculateBill(goldleaf, royal, lucky, tea, anonymous);
                    },
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Text(
                      "Calculate",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Your Bill is:",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "$FinalBill",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void CalculateBill(double goldleaf, double royal, double lucky, double tea,
      double anonymous) {
    double Bill =
        (goldleaf * 11) + (royal * 5) + (lucky * 10) + (tea * 5) + anonymous;
    String totabill = Bill.toStringAsFixed(2);
    setState(() {
      FinalBill = totabill;
    });
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        height: 80.0,
        child: FlatButton(
          color: currentindex == index ? color : Colors.grey[200],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          onPressed: () {
            changeIndex(index);
          },
          child: Text(
            value,
            style: TextStyle(
              color: currentindex == index ? Colors.white : color,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
