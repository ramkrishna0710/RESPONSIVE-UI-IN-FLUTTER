import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      appBar: AppBar(
        title: const Text('D E S K T O P', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo,
      ),
      body: Row(

        //  FIRST COLUMN
        children: [
          Expanded(
            child: Column(
              children: [
                //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      height: 250,
                      color: Colors.deepPurple[400],
                    ),
                  ),
                ),
            
                //
            
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.deepPurple[300],
                          height: 120,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),

          // SECOND COLUMN
          Container(
            width: 200,
            color: Colors.deepPurple[300],
          )
        ],
      ),
    );
  }
}
