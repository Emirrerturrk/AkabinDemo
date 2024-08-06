import 'package:akabin_demo/screens/login_screen.dart';
import 'package:akabin_demo/widgets/app_bar_widget.dart';
import 'package:akabin_demo/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
    /* return const Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              AkabinLogo(logoHeight: 175),
              CustomTextField(
                  obscureText: false,
                  textInputType: TextInputType.phone,
                  inputDecoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      labelText: "Telefon Numarası")),
            ],
          ),
        ),
      ),
    ); */
  }
}

class MyHomePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String? finalText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Zorunlu Alan',
                ),
                validator: (finalText) {
                  if (finalText == null || finalText.isEmpty) {
                    return 'Lütfen bu alanı doldurun';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Formu validate et ve sonuçları kontrol et
                  if (_formKey.currentState?.validate() ?? false) {
                    // Doğrulama başarılı
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Başarıyla Kayıt Oldunuz")));
                    Navigator.of(context).pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Lütfen gerekli alanları doldurun')),
                    );
                  }
                },
                child: Text('Gönder'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
