import 'package:barbershop_app/app/widgets/bg_main_fon.dart';
import 'package:flutter/material.dart';

class EnrollView extends StatelessWidget {
  const EnrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BgMainFon(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.clear,
              size: 38,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/icons/scissor.jpg',
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Запись на услугу'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 18),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/icons/2390.jpg',
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Запись к мастеру'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
