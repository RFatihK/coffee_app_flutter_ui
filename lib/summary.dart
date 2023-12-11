import 'package:coffee_app_flutter_ui/common_widget.dart';
import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Summary",
            style: TextStyle(color: Colors.brown, fontSize: 30)),
        backgroundColor: Colors.brown[50],
        elevation: 0,
        toolbarHeight: 100,
      ),
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset('assets/image.png'),
          ),
          const SizedBox(height: 20),
          Column(children: [
            const Text(
              "Order :",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    "Latte",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "x1",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "---------------------------------------------",
              style: TextStyle(color: Colors.brown),
            ),
            const SizedBox(height: 20),
            summaryDisplay("Total", "XXX.XX"),
            const SizedBox(height: 20),
            summaryDisplay("Tax", "XX.XX"),
            const SizedBox(height: 20),
            summaryDisplay("Discount", "X.XX"),
            const SizedBox(height: 100),
            submitButton("Pay")
          ])
        ],
      ),
    );
  }
}
