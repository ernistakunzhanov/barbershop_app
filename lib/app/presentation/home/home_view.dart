import 'package:barbershop_app/app/presentation/enroll/enroll_view.dart';
import 'package:barbershop_app/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        builder: (context) => const EnrollView(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    showBottomSheet();
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

  void showBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                InkWell(
                  onTap: () async {
                    final Uri url = Uri(scheme: 'tel', path: '0 552 542 556');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      print('cannot launch this url');
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff202124),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            size: 30,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Вызов +996 (552) 542 556',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff202124),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Center(
                        child: Text(
                          'Отменить',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
