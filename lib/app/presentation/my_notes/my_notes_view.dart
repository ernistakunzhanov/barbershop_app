import 'package:barbershop_app/app/presentation/sign_in/sign_in_view.dart';
import 'package:barbershop_app/app/presentation/sign_up.dart/sign_up_view.dart';
import 'package:barbershop_app/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MyNotesView extends StatelessWidget {
  const MyNotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.7),
              radius: 100,
              child: Image.asset(
                'assets/images/logo.png',
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 142),
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInView(),
                  ),
                );
              },
              title: 'Войти',
            ),
            const SizedBox(height: 10),
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpView(),
                  ),
                );
              },
              title: 'Зарегистрироваться',
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
