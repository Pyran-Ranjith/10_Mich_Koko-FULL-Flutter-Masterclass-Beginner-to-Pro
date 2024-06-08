import 'package:flutter/material.dart';

class ProgrammingFundamentals extends StatelessWidget {
  const ProgrammingFundamentals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      // 1st box
      body: Column(
        children: [
            // 1st box
          // Center(
             Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
              ),
            ),

            // 2nd box
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple[400],
              ),
            ),
   
            // 3rd box
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple[200],
              ),
            ),
     ],
      ),
    );
  }
}