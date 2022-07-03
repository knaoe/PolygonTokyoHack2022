import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mover/app/pages/auth/views/signin_view.dart';
import 'package:mover/app/pages/auth/views/signup_view.dart';
import 'package:shimmer/shimmer.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text(
                AppLocalizations.of(context)!.welcome(""),
                style: Theme.of(context).textTheme.titleLarge,
              )),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Lottie.asset('assets/lottie/lottie-welcome.json')),
          TextButton(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 206, 219, 26),
                      Color.fromARGB(255, 113, 211, 34)
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                ),
                child: Shimmer.fromColors(
                    baseColor: Color.fromARGB(255, 102, 102, 102),
                    highlightColor: Color.fromARGB(255, 187, 187, 187),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.continueApp,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Icon(Icons.arrow_forward)
                      ],
                    )),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpView()),
                    (route) => false);
              }),
        ],
      )),
    );
  }
}
