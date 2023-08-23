import 'package:barbershop_app/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Регистрация'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              const Text(
                'Представьтесь, пожалуйста',
                style: TextStyle(fontSize: 18),
              ),
              TextFormField(
                onChanged: (value) {},
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  iconColor: Colors.black,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: 'Имя',
                  hintStyle: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 25),
              IntlPhoneField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  iconColor: Colors.black,
                ),
                initialCountryCode: 'KG',
                showDropdownIcon: false,
                showCountryFlag: false,
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              TextFormField(
                onChanged: (value) {},
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail),
                  iconColor: Colors.black,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 25),
              CustomButton(
                title: 'Зарегистрироваться',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
