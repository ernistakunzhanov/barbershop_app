import 'package:barbershop_app/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

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
        title: const Text('Вход'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Введите номер телефона, указанный при регистрации',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IntlPhoneField(
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
          ),
          const SizedBox(height: 25),
          CustomButton(
            title: 'Получить sms с кодом',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
