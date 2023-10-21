import 'package:echo_chain/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String fullName = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full Name is required';
    }
    if (value.length < 10 || value.length > 50) {
      return 'Full Name must be between 2 and 50 characters';
    }
    if (!RegExp(r"^[a-zA-Z\s-]+$").hasMatch(value)) {
      return 'Full Name can only contain alphabets';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(value)) {
      return 'Invalid email format';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (!RegExp(r"^[a-zA-Z0-9_.,@#$%^&*!]+$").hasMatch(value)) {
      return 'Password can contain letters, numbers, and symbols (e.g., _ , . @ # \$ % ^ & * !)';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (password != value) {
      return 'Passwords do not match';
    }
    else if (password == value) {
      return 'Passwords Matched';

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
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const Text.rich(
                            TextSpan(
                              text: 'Create',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3A5F0B),
                                fontFamily: 'Poppins',
                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: ' Account',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Full Name',
                                fillColor: const Color(0xffF8F9FA),
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.account_circle,
                                  color: Color(0xff323F4B),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: validateFullName,
                              onSaved: (value) {
                                fullName = value ?? '';
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Email',
                                fillColor: const Color(0xffF8F9FA),
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  color: Color(0xff323F4B),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: validateEmail,
                              onSaved: (value) {
                                email = value ?? '';
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: TextFormField(
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
                                  borderSide: const BorderSide(
                                      color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: _validatePassword,
                              obscureText: !_isPasswordVisible,
                              onSaved: (value) {
                                password = value ?? '';
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                fillColor: const Color(0xffF8F9FA),
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.lock_open,
                                  color: Color(0xff323F4B),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                                    });
                                  },
                                  child: Icon(
                                    _isConfirmPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off_outlined,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: validateConfirmPassword,
                              obscureText: !_isConfirmPasswordVisible,

                              onSaved: (value) {
                                confirmPassword = value ?? '';
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Form is valid, perform sign-up logic with
                                  // the user input stored in fullName, email, password, and confirmPassword
                                }
                              },
                              child: const Text(
                                "SIGN UP",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
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
                                "Already have an account?",
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ));
                                },
                                child: const Text(
                                  "Sign In",
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
    );
  }
}
