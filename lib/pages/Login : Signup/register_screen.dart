import 'package:flutter/material.dart';
import '../../widgets/buttons.dart';
import '../../consts/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isObscured = false;
  final TextEditingController _userNamecontroller = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final _formKey = GlobalKey<State>();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset('assets/doctors.png'),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          const Text(
            'Healthcare App',
            style: TextStyle(
              fontSize: 30,
              letterSpacing: 1,
              wordSpacing: 2,
              fontWeight: FontWeight.bold,
              color: AppColors.primColor,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Form(
              key: _formKey,
              child: Container(
                width: screenWidth * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: _userNamecontroller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter username";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: 'Enter the username',
                          prefixIcon: const Icon(Icons.person)),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter username";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: 'Enter the username',
                          prefixIcon: const Icon(Icons.mail)),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    TextFormField(
                      obscureText: _isObscured,
                      controller: _pwdController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter password";
                        }
                        if (value.length < 8) {
                          return 'Password length must be 8 characters';
                        }
                        if (!value.contains(RegExp('[0-9]'))) {
                          return 'Password must contains at least 1 digit';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: 'Enter the username',
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(_isObscured
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscured = !_isObscured;
                              });
                            },
                          )),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    CustomButton(
                      onpressed: () {},
                      width: screenWidth * 0.9,
                      child: const Text('Submit'),
                    )
                  ],
                ),
              ))
        ]),
      ),
    ));
  }
}
