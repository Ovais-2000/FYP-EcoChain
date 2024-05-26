import 'package:echo_chain/screens/buyer_screen.dart';
import 'package:echo_chain/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final emailRegExp = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
  bool _isPasswordVisible = false;

  final String apiUrl = "http://194.233.83.152/api/ecochain/user/login";

  Future<void> loginUser() async {
    final String email = _emailController.text.trim();
    final String password = _passwordController.text.trim();

    try {
      final response = await http.post(
        Uri.parse('$apiUrl'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }),
      );


      if (response.statusCode == 201) {
        // Login successful
        final responseData = jsonDecode(response.body);
        String token = responseData['token'];
        print('User logged in successfully. Token: $token');

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const BuyerScreen(),
          ),
        );
      } else {

        print('User login failed. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');

      }
    } catch (e) {
      // Handle network or other errors
      print('Error during login: $e');
    }
  }


  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    if (!emailRegExp.hasMatch(value)){
      return 'Invalid email format';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    return null;

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff2E7D32), Colors.lightGreenAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(85),
                        bottomRight: Radius.circular(85),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 45.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Image(
                            image: AssetImage('images/echochainBlack.png'),
                            height: 125,
                            width: 125,
                          ),
                          const Text(
                            'Welcome Back',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const Text.rich(
                            TextSpan(
                              text: 'Sign In',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontFamily: 'Poppins',
                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: ' To Your Account',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                fillColor: const Color(0xffF8F9FA),
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  color: Color(0xff323F4B),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: _validateEmail,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                fillColor: const Color(0xffF8F9FA),
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.lock_open,
                                  color: Color(0xff323F4B),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                     });
                                  },
                                  child: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off_outlined,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: _validatePassword,
                              obscureText: !_isPasswordVisible,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 13,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    loginUser();
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     builder: (context) => const BuyerScreen(),
                                    //   ),
                                    // );
                                  }
                                },
                                child: const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const SignUpScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
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
                const SizedBox(
                  height: 120,
                  child: Image(
                    image: AssetImage("images/splashWhite.png"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
