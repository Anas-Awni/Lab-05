import 'package:flutter/material.dart';
import 'package:myapp2/Screens/courses.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade500,
          actions: [
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade500),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Courses();
                  })));
                },
                icon: Icon(Icons.arrow_right_alt_sharp),
                label: Text("Go to Courses "),
              ),
            )
          ],
          title: Row(
            children: [
              Text("My Courses App"),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.tv, size: 40),
            ],
          ),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://cdn.dribbble.com/users/99287/screenshots/3839839/work_work_work.gif"),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome To Home Page",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.home_rounded,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
