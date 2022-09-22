import 'package:flutter/material.dart';
import 'package:myapp2/Screens/home.dart';
import 'package:myapp2/models/urlModel.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade500,
          centerTitle: true,
          title: Text("My Courses App"),
          bottom: TabBar(tabs: [
            IconButton(onPressed: () {}, icon: Icon(Icons.video_collection)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu_book_outlined)),
            IconButton(
                onPressed: () {}, icon: Icon(Ionicons.person_add_outline)),
          ]),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Latest  Courses",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                Image(
                    image: NetworkImage(
                        "https://www.appjetty.com/blog/wp-content/uploads/2021/02/Flutter-App-Development-Basics-and-Benefits-3-600x280.png")),
                ListTile(
                  title: Text(
                    "Flutter",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Based On Dart"),
                  leading: Icon(Icons.add_box_outlined),
                  textColor: Colors.indigoAccent.shade700,
                  iconColor: Colors.indigo,
                  tileColor: Colors.blue.shade200,
                ),
                SizedBox(
                  height: 5,
                ),
                Image(
                    image: NetworkImage(
                        "https://www.almrsal.com/wp-content/uploads/2021/09/the-benefits-of-reactjs-main-1.jpg")),
                ListTile(
                  title: Text(
                    "React",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Based On JS"),
                  leading: Icon(Icons.add_box_outlined),
                  textColor: Colors.indigoAccent.shade700,
                  iconColor: Colors.indigo,
                  tileColor: Colors.blue.shade200,
                ),
                SizedBox(
                  height: 5,
                ),
                Image(
                    image: NetworkImage(
                        "https://newtekslateassets.s3.us-west-2.amazonaws.com/wp-content/uploads/devops-training-09032022.png")),
                ListTile(
                  title: Text(
                    "DevOps",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Development Operations"),
                  leading: Icon(Icons.add_box_outlined),
                  textColor: Colors.indigoAccent.shade700,
                  iconColor: Colors.indigo,
                  tileColor: Colors.blue.shade200,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Latest  Books",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                Image(
                    image: NetworkImage(
                        "https://docs.flutter.dev/assets/images/homepage/DashWithApprenticeBook.png")),
                ListTile(
                  title: Text(
                    "Flutter Book",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle:
                      Text(" guide to building  applications with Flutter"),
                  leading: Icon(Icons.book),
                  textColor: Colors.indigoAccent.shade700,
                  iconColor: Colors.indigo,
                  tileColor: Colors.blue.shade200,
                ),
                SizedBox(
                  height: 5,
                ),
                Image(
                    image: NetworkImage(
                        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1602424550i/55625842._UY2245_SS2245_.jpg")),
                ListTile(
                  title: Text(
                    "React Book",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("React JS From Scratch  2nd Edition"),
                  leading: Icon(Icons.book),
                  textColor: Colors.indigoAccent.shade700,
                  iconColor: Colors.indigo,
                  tileColor: Colors.blue.shade200,
                ),
                SizedBox(
                  height: 5,
                ),
                Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/originals/fd/ba/d6/fdbad6deddfc44d9b0e19db443b67903.png")),
                ListTile(
                  title: Text(
                    "DevOps",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(" Complete DevOps Cookbook "),
                  leading: Icon(Icons.book),
                  textColor: Colors.indigoAccent.shade700,
                  iconColor: Colors.indigo,
                  tileColor: Colors.blue.shade200,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://t4.ftcdn.net/jpg/03/18/92/57/360_F_318925721_Lk0xALnTK2c2tq9mcYlZFTO2rovKFxiQ.jpg"))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Follow Us",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  URLClass(
                    myfunction: Github_Function,
                    myPlatformIcon: Ionicons.logo_github,
                    myPlatformSubTitle: "Follow me on GitHub ",
                    myPlatformTitle: "GitHub",
                  ),
                  URLClass(
                    myfunction: Linkedin_Function,
                    myPlatformIcon: Ionicons.logo_linkedin,
                    myPlatformSubTitle: "Follow me on  LinkedIn ",
                    myPlatformTitle: "LinkedIn",
                  ),
                  SizedBox(
                    height: 350,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo.shade500),
                      onPressed: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: ((context) {
                          return Home();
                        })));
                      },
                      icon: Icon(Ionicons.home),
                      label: Text("Back To Home Page"))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
