
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String url = 'assets/images/100.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 195, 225),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const _TabWelcomeTitle(),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: _InputWidget(
                title: 'E-Mail',
                obscureText: false,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: _InputWidget(
                title: 'Password',
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: _SignInButton(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                _RegisterText(
                  registerText: 'Üye Değil Miniz ?',
                  color: Colors.black26,
                ),
                _RegisterText(
                  registerText: 'Kayıt OLun ',
                  color: Color.fromARGB(255, 174, 97, 184),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _RegisterText extends StatelessWidget {
  const _RegisterText({
    Key? key,
    required this.registerText,
    required this.color,
  }) : super(key: key);
  final String registerText;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      registerText,
      style: TextStyle(fontWeight: FontWeight.bold, color: color),
    );
  }
}

class _TabWelcomeTitle extends StatelessWidget {
  const _TabWelcomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hoşgeldin !',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: Colors.white,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(5.0, 5.0),
              blurRadius: 25.0,
              color: Color.fromARGB(255, 128, 99, 207),
            )
          ]),
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 128, 99, 207),
          borderRadius: BorderRadius.circular(12)),
      child: const Center(
        child: Text(
          'Sign In',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}

class _InputWidget extends StatelessWidget {
  const _InputWidget({
    Key? key,
    required this.title,
    required this.obscureText,
  }) : super(key: key);
  final String title;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white30, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: title,
          ),
        ),
      ),
    );
  }
}
