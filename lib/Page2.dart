import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.2,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 3,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              height: MediaQuery.of(context).size.height * 3,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green.shade200,
                            width: 4.0,
                          )),
                      padding: EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage("assets/image/profile.jpg"),
                      ),
                    ),
                    Text(
                      "Aryanti Raihana",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10.0),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.green.shade100,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "About",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.green.shade900,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "My preferred name is Aryanti or Hana. I am student of Wikrama Bogor Vocational Highschool, majoring in Software Engineering and Game Development.",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.green.shade900),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "History",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  "Wikrama Vocational High School (2023 - Now)",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "Intern at PT. Exorty Indonesia (2024)",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            )),
                      )),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade200,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(15.0),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 6.0, left: 15.0),
                                    child: Text(
                                      "Skill",
                                      style: TextStyle(
                                        color: Colors.green.shade900,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HTML",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "CSS",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "React JS",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Figma",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
