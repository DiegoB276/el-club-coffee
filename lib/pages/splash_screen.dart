import 'package:el_club/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(226, 199, 174, 1),
      body: SafeArea(
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                /*Text(
                  "GODI COFFEE",
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )
                )*/
                Image.asset("assets/logo/logo.png")
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Text("Powered by GodiApps",
          style: GoogleFonts.ibmPlexMono(color: Colors.black45)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
