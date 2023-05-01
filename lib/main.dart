import 'package:flutter/material.dart';
import 'package:log_in_app/data.dart';
//

//Log in App

//
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,

      darkTheme: ThemeData.dark(), // to remove debug banner
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // text Control
  var userNameController = TextEditingController();
  var passController = TextEditingController();

  void onTyped(String userVal) {
    setState(() {
      userData.username = userVal;
    });
  }

  void onTypedPass(String passVal) {
    setState(() {
      userData.password = passVal;
    });
  }

  // pass peek
  bool _obscureText = true;
  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(
            child: Text(
          "Welcome !!!",
          style: TextStyle(
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(5.0, 5.0),
              ),
            ],
          ),
        )),
        automaticallyImplyLeading: false,
      ),
      //space
      body: Center(
        heightFactor: 2,
        child: SizedBox(
            width: 550,
            height: 500,
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Text("Login", style: TextStyle(fontSize: 50)),
                    SizedBox(height: 50),
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[700],
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white38,
                              blurRadius: 20,
                              offset: Offset(0, 10)),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(children: [
                          TextField(
                            controller: userNameController,
                            decoration: const InputDecoration(
                              labelText: 'Username',
                            ),
                            onSubmitted: onTyped,
                          ),
                          TextField(
                            controller: passController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Theme.of(context).primaryColorDark,
                                ),
                                onPressed: _togglePasswordVisibility,
                              ),
                            ),

                            onSubmitted: onTypedPass,
                            obscureText: _obscureText, // hide the password
                          )
                        ]),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(200, 40)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.deepOrange),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepOrange),
                      ),
                      onPressed: () {
                        setState(() {
                          onTyped(userNameController.text);
                          onTypedPass(passController.text);
                          functRoute.LogRoute(context);
                          functRoute.logStatus(context);
                        });
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
