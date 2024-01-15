import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greenleaf/shared/base.dart';
import 'package:greenleaf/shared/const.dart';
import 'package:greenleaf/views/tanya/tanya_search.dart';
import 'package:page_transition/page_transition.dart';

class TanyaScreen extends ConsumerStatefulWidget {
  const TanyaScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TanyaScreenState();
}

class _TanyaScreenState extends ConsumerState<TanyaScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseApp.inAppBackground(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(children: [
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Constants.colorGreenLeaf)),
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const TanyaSearchScreen(),
                        type: PageTransitionType.fade));
              },
              child: const TextField(
                enabled: false,
                decoration: InputDecoration(
                    hintText: "Cari panduan yang Anda butuhkan disini!",
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Constants.colorGreenLeaf,
                    )),
              )),
          const SizedBox(
            height: 20,
          ),
          const Column(
            children: [
              ExpansionTile(
                title: Text(
                  "Apakah memelihara maggot sulit?",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                ),
                collapsedIconColor: Constants.colorGreenLeaf,
                iconColor: Constants.colorGreenLeaf,
                subtitle: Text(
                  "Ditanyakan oleh 1.000 pengguna",
                  style: TextStyle(fontSize: 8),
                ),
                children: [
                  ListTile(
                    title: Text(
                      "Lorem Ipsum Dolor Sit Amet",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                        "Lorem Ipsum Dolor Sit Amet, Consectectur Adispiscing Elit",
                        style: TextStyle(fontSize: 8)),
                  )
                ],
              ),
            ],
          )
        ]),
      ),
    ));
  }
}
