import 'package:flutter/material.dart';
import 'package:untitled1/login.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = "Screen_Two";
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('images/logo.png'),
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Maintenance',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Zaki Medium',
                              color: Color(0xff2d3142),
                            ),
                          ),
                          Text(
                            'Box',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Zaki Medium',
                              color: Color(0xfff9703b),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Zaki Medium',
                        color: Color(0xff2d3142),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    textAlign: TextAlign.center,
                    'This is my Second UI.Created\n by using Flutter by the lorem.',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Zaki Regular',
                      color: Color(0xff4c5980),
                    ),
                  ),
                  SizedBox(height: 30),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        fillColor: Color(0xfff8F9FA),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xff323f4b),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Contact',
                        fillColor: Color(0xfff8F9FA),
                        filled: true,
                        prefixIcon: Icon(Icons.call, color: Color(0xff323f4b)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: Color(0xfff8F9FA),
                        filled: true,
                        prefixIcon: Icon(Icons.email, color: Color(0xff323f4b)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Color(0xfff8F9FA),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.lock_open,
                          color: Color(0xff323f4b),
                        ),
                        suffixIcon: Icon(Icons.visibility_outlined),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xfff9703b),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Zaki Medium',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Zaki Regular',
                          color: Color(0xff4c5980),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontFamily: 'Zaki Medium',
                            color: Color(0xfff9703b),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
