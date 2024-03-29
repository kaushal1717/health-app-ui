import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../widgets/buttons.dart';
import '../../widgets/navbar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: screenHeight,
          width: screenWidth,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: const Text(
                    'SKIP',
                    style: TextStyle(
                        color: Color.fromARGB(255, 229, 130, 136),
                        fontSize: 17),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NavBarWidget()));
                  },
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset('assets/doctors.png'),
              ),
              SizedBox(
                height: screenHeight * 0.06,
              ),
              const Text(
                'Doctor Appointment',
                style: TextStyle(
                    color: AppColors.primColor,
                    fontSize: 30,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const Text(
                'Appoint your Doctor',
                style: TextStyle(
                    color: AppColors.fontColor,
                    fontSize: 30,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              const Text(
                'Sign In using....',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    onpressed: () {
                      Navigator.pushNamed(context, '/signinscr');
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.mail),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'E-mail',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.1,
                    child: const Center(
                        child: Text(
                      'or',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                  CustomButton(
                    onpressed: () {
                      Navigator.pushNamed(context, '/navbar');
                    },
                    child: Row(
                      children: [
                        Tab(
                          icon: Image.asset('assets/google.jpg', height: 24),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Google',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?  "),
                  GestureDetector(
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
