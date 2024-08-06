import 'package:akabin_demo/screens/main_screen.dart';
import 'package:akabin_demo/screens/register_screen.dart';
import 'package:akabin_demo/utils/images_strings.dart';
import 'package:akabin_demo/widgets/app_bar_widget.dart';
import 'package:akabin_demo/widgets/custom_textfield.dart';
import 'package:akabin_demo/widgets/obscured_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObsecured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            heightBox(),
            const AkabinLogo(logoHeight: 250),
            loginText(),
            heightBox(),
            phoneField(),
            heightBox(),
            PasswordField(isObsecured: isObsecured),
            heightBox(),
            forgetButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loginButton(),
                const SizedBox(width: 20),
                registerButton(),
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox registerButton() {
    const registerText = "Kayıt Ol";
    return SizedBox(
      width: 120,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const RegisterScreen();
            },
          ));
        },
        child: const Text(
          registerText,
        ),
      ),
    );
  }

  SizedBox loginButton() {
    const loginText = "Giriş Yap";
    return SizedBox(
      width: 120,
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const MainScreen();
              },
            ));
          },
          child: const Text(
            loginText,
          )),
    );
  }

  Padding forgetButton() {
    const forgetText = "Şifremi Unuttum";
    const fBtnPadding = EdgeInsets.only(left: 135);
    return Padding(
      padding: fBtnPadding,
      child: TextButton(
          onPressed: () {},
          child: const Text(
            forgetText,
          )),
    );
  }

  CustomTextField phoneField() {
    String phoneText = "Telefon Numarası";
    return CustomTextField(
        obscureText: false,
        textInputType: TextInputType.phone,
        inputDecoration: InputDecoration(
            prefixIcon: const Icon(Icons.phone), labelText: phoneText));
  }

  SizedBox heightBox() => const SizedBox(height: 25);

  Text loginText() {
    var display = "Atığınız AKAbin'de Kazanca Dönüşsün";
    return Text(
      display,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

class AkabinLogo extends StatelessWidget {
  const AkabinLogo({super.key, required this.logoHeight});
  final double logoHeight;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.onBoardingImage1,
      height: logoHeight,
    );
  }
}
