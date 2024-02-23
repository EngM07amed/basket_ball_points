import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounters());
}

// ignore: must_be_immutable
class PointsCounters extends StatefulWidget {
  const PointsCounters({super.key});

  @override
  State<PointsCounters> createState() => _PointsCountersState();
}

class _PointsCountersState extends State<PointsCounters> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counters'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                          print(teamAPoints);
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                          print(teamAPoints);
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                          print(teamAPoints);
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                          print(teamAPoints);
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                          print(teamAPoints);
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                          print(teamAPoints);
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50)),
                onPressed: () {
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
