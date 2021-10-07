import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:seminar_meet/common/constans.dart';
import 'package:seminar_meet/page/login_page.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Image.asset(kImgLogo, width: 50),
          ),
        ),
      ),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: MaterialButton(
          color: Colors.red,
          child: const Text(
            'Ayo Daftar Sekarang!',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Daftar Anggota Perpustakaan",
          body:
              "Anda harus mendaftarkan diri terlebih dahulu untuk mengisi daftar hadir dan meminjam buku di perpustakaan!",
          image: Image.asset(kImg1, width: 350),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Dapat Meminjam Buku Di Perpustakaan",
          body:
              "Terdapat banyak buku di perpustakaan yang sangat menarik dan juga bermanfaat untuk semua kalangan ",
          image: Image.asset(kImg2, width: 350),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Mulailah membaca!",
          body:
              "Dapatkan inspirasi, lakukan dengan motivasi yang kuat dan dapatkanlah kesuksesan!",
          image: Image.asset(kImg3, width: 350),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text(
        'Skip',
        style: TextStyle(color: Colors.red),
      ),
      next: const Icon(Icons.arrow_forward, color: Colors.red),
      done: const Text('Done',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
