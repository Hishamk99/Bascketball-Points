import 'package:flutter/material.dart';

void main() {
  runApp(const BascketballPoints());
}

class BascketballPoints extends StatefulWidget {
  const BascketballPoints({super.key});

  @override
  State<BascketballPoints> createState() => _BascketballPointsState();
}

class _BascketballPointsState extends State<BascketballPoints> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamAPoints',
                      style: TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {},
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {},
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {},
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBPoints',
                      style: TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {},
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {},
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {},
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, minimumSize: Size(150, 50)),
              onPressed: () {},
              child: Text(
                'Reset',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
