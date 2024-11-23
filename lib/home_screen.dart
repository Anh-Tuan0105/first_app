import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color backgrounds = Colors.white;
  double result = 0;
  final TextEditingController control = TextEditingController();
  void changeColor() {
    setState(() {
      backgrounds = backgrounds == Colors.white ? Colors.blue : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgrounds,
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 20,
          centerTitle: true,
          title: const Text("My App"),
          //centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
                child: TextField(
                  controller: control,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    hintText: 'Number Convert',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(control.text) * 25;
                    });
                    //result = double.parse(control.text) * 25;
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), // Square corners
                    ),
                  ),
                  child: const Text('Convert'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
                child: TextButton(
                    onPressed: changeColor,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(5), // Square corners
                      ),
                    ),
                    child: const Text('Change Color')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
