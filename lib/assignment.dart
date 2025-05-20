/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Cards',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CourseGridScreen(),
    );
  }
}

class CourseGridScreen extends StatelessWidget {
  final List<Course> courses = [
    Course(
      title: "Full Stack Web Development with JavaScript (MERN)",
      duration: "৪.৫ মাসের কোর্স",
      hours: "৬০০+ ঘন্টার কোর্স",
      image: "assets/bd.jpg", // ✅ FIXED
    ),
    Course(
      title: "Full Stack Web Development with Python, Django & React",
      duration: "৬ মাসের কোর্স",
      hours: "৮০০+ ঘন্টার কোর্স",
      image: "assets/japan.png",
    ),
    Course(
      title: "App Development with Flutter",
      duration: "৫ মাসের কোর্স",
      hours: "৫৫০+ ঘন্টার কোর্স",
      image: "assets/france.png",
    ),
    Course(
      title: "Full Stack Web Development with PHP, Laravel & Vue Js",
      duration: "৫.৫ মাসের কোর্স",
      hours: "৭০০+ ঘন্টার কোর্স",
      image: "assets/turkey.png",
    ),
    Course(
      title: "Full Stack Web Development with ASP.Net Core",
      duration: "৫ মাসের কোর্স",
      hours: "৬৫০+ ঘন্টার কোর্স",
      image: "assets/arab.png",
    ),
    Course(
      title: "SQA: Manual & Automated Testing",
      duration: "৪ মাসের কোর্স",
      hours: "৫৫০+ ঘন্টার কোর্স",
      image: "assets/palestine.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 600;
              return GridView.count(
                crossAxisCount: isWide ? 3 : 2,
                childAspectRatio: 0.75, // Adjusted to reduce overflow
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: courses.map((course) => CourseCard(course)).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Course {
  final String title;
  final String duration;
  final String hours;
  final String image;

  Course({
    required this.title,
    required this.duration,
    required this.hours,
    required this.image,
  });
}

class CourseCard extends StatelessWidget {
  final Course course;

  CourseCard(this.course);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          // Top image
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              course.image,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Flexible content below
          Flexible(
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(course.duration,
                        style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
                    Text(course.hours,
                        style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
                    SizedBox(height: 6),
                    Flexible(
                      child: Expanded(
                        child: Text(
                          course.title,
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("বিস্তারিত দেখুন"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          textStyle: TextStyle(fontSize: 10),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/

