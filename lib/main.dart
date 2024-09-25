import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfile(),
    ));

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
              padding: EdgeInsets.all(20.0),
              height: MediaQuery.of(context).size.shortestSide,
              child: Center(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
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
                            radius: 75.0,
                            backgroundImage:
                                AssetImage("assets/image/profile.jpg"),
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
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Vocational High School Student at SMK Wikrama Bogor",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        SizedBox(height: 1.0),
                        TextButton(
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
                                    borderRadius: BorderRadius.circular(3.0)))),
                      ],
                    ),
                  ),
                ),
              ),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
