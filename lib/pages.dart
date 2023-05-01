import 'package:flutter/material.dart';
import 'package:log_in_app/main.dart';
import 'data.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Result'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          height: 200,
          alignment: Alignment.center,
          child: Column(children: [
            Text("Login Success!"),
            Text("Username: ${userData.username}"),
            Text("Status: ${userData.logStatus}"),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(200, 40)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepOrange),
              ),
              child: Text('Go Back'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}

// second page

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Result'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          heightFactor: 7,
          child: SizedBox(
            width: 500,
            height: 100,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Login Failed, Check your Password or Username"),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all<Size>(Size(200, 40)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepOrange),
                      ),
                      child: Text('Go Back'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
