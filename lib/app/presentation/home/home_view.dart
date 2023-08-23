import 'package:barbershop_app/app/presentation/enroll/enroll_view.dart';
import 'package:barbershop_app/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            const SizedBox(height: 120),
            Column(
              children: [
                CustomButton(
                  title: 'Записаться',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EnrollView(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ElevatedButton(
                                  child: const Text('Вызов +996 (552) 542 556'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                ElevatedButton(
                                  child: const Text('Отменить'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/phone.svg',
                      fit: BoxFit.none,
                    ),
                  ),
                ),
                const SizedBox(height: 7),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
