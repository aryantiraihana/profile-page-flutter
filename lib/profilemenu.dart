import 'package:flutter/material.dart';
import 'Page2.dart';

// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyProfile(),
//     ));

class MyProfile extends StatelessWidget {
  const MyProfile({super.key, required this.name, required this.role, required this.description, required this.school});
  final String name;
  final String role;
  final String description;
  final String school;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20.0),
              height: MediaQuery.of(context).size.shortestSide,
              child: SingleChildScrollView(
                child: Center(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
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
                              radius: 65.0,
                              backgroundImage:
                                  AssetImage("assets/images/profile.jpg"),
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              role,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.green.shade700,
                                fontWeight: FontWeight.w900),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                            school,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Page2()),
                                );
                              },
                              child: Text('See More',
                                  style: TextStyle(color: Colors.white)),
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.green.shade700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3.0)))
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
              // ),
            )
          ],
        ),
      ),
    );
  }
}
