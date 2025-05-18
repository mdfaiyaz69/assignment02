import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI',
      debugShowCheckedModeBanner: false,
      home: flagPage(),
    );
  }
}

class flagPage extends StatelessWidget {
  final List<Map<String, String>> flags = [
    {'title': 'Bangladesh', 'type': 'Development', 'flag': 'assets/bd.jpg'},
    {'title': 'Japan', 'type': 'Automation Testing', 'flag': 'assets/japan.png'},
    {'title': 'Arab', 'type': 'DevOps', 'flag': 'assets/arab.png'},
    {'title': 'France', 'type': 'Interview', 'flag': 'assets/france.png'},
    {'title': 'Palestine', 'type': 'Safe Palestine', 'flag': 'assets/palestine.png'},
    {'title': 'Turkey', 'type': 'Dron', 'flag': 'assets/turkey.png'},
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = 2;

    if (screenWidth > 768 && screenWidth <= 1024) {
      crossAxisCount = 3;
    } else if (screenWidth > 1024) {
      crossAxisCount = 4;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: flags.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (context, index) {
            final course = flags[index];
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.asset(
                        course['flag']!,
                        height: 90,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        course['title']!,
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        course['type']!,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}