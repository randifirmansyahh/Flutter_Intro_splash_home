import 'package:flutter/material.dart';
import 'package:seminar_meet/common/constans/image.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //variables
  bool _obscureText = true;

  //function
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  pesan(String head, String content) {
    var alertDialog = AlertDialog(
      title: Text(head),
      content: Text(content),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      elevation: 0, //shadow
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          icon: Icon(Icons.headset_mic),
          color: Colors.black26,
          onPressed: () => pesan("Hubungi kami !",
              "Anda dapat menghubungi kami melalui email atau telepon di bawah ini \n\nperpustakaan@pasim.com\n\n+62 851 5606 1121"),
        ),
      ],
    );

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset(kImgLogo),
      ),
    );

    final nim = TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: "NIM",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: _obscureText,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: "Password",
        suffixIcon: IconButton(
          onPressed: _toggle,
          icon: Icon(Icons.visibility),
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => HomePage()),
            );
          },
          color: Colors.green,
          child: Text('Masuk', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = TextButton(
      child: Text(
        'Lupa kata sandi?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final textRegist = Text(
      "Belum punya akun?",
      style: TextStyle(color: Colors.black54),
    );

    final registLabel = TextButton(
      child: Text(
        'Daftar',
        style: TextStyle(color: Colors.blue),
      ),
      onPressed: () {},
    );

    final regist = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        textRegist,
        registLabel,
      ],
    );

    return Scaffold(
      appBar: appbar,
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            nim,
            SizedBox(height: 12.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            SizedBox(height: 24.0),
            regist
          ],
        ),
      ),
    );
  }
}
