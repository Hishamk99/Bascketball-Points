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
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamBPoints = 0;
                  teamAPoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
