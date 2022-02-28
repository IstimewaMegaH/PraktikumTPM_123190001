import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LogoImageAssets(),

            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
                hintText: "Email",
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
                hintText: "Password",
              ),
              obscureText: true,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: const Text("Login"),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {},
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            TextButton(onPressed: () {},
                child: const Text("Forgot Password?"))
          ],
        ),
      ),
    );
  }
}

class LogoImageAssets extends StatelessWidget {
  const LogoImageAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('assets/img/flutterimage.jpg');

    Image image = Image(image: assetImage, height: 100, width: 100);
    return Container(
      child: image,
    );
  }
}