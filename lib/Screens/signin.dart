import 'package:day1/Screens/posts/posts.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email, password;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Sign in'),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: media.size.height * 0.06,
                  horizontal: media.size.width * 0.05),
              width: media.size.width * 0.9,
              height: media.size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        this.email = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email:',
                        hintText: 'example@example.com',
                      ),
                    ),
                    SizedBox(height: media.size.height * 0.03),
                    TextFormField(
                      onChanged: (value) {
                        this.password = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        labelText: 'Password:',
                        hintText: 'Password',
                      ),
                    ),
                    SizedBox(height: media.size.height * 0.03),
                    Container(
                      width: media.size.width * 0.6,
                      height: media.size.height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Posts(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'arial',
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: media.size.height * 0.03),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Posts(),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Need an account? Register',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'arial',
                            fontWeight: FontWeight.w600,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: media.size.height * 0.03),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Posts(),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'arial',
                            fontWeight: FontWeight.w600,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
