import 'package:dolap_clone/mail_login.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        key: GlobalKey(),
        children: <Widget>[
          Column(
            children: <Widget>[
              AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/mail_login');
                  },
                  icon: Icon(Icons.arrow_back_sharp,
                      color: Color(0xFF282828), size: 30),
                ),
                title: Text(
                  "Giriş Yap",
                  style: TextStyle(color: Color(0xFF282828)),
                ),
                backgroundColor: Colors.white,
              )
            ],
          ),
          Column(
            children: <Widget>[
              //TODO: image responsive tasarım tüm sayfa
              Image.asset(
                'assets/images/dolap_image.png',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) =>
                  value!.isEmpty ? 'Kullanıcı adı veya E-posta girin' : null,
              onSaved: (value) => _username = value!,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı/E-posta',
                labelStyle: TextStyle(color: Color(0xFFECECEC)),
                hintText: 'Kullanıcı Adı/E-posta',
                hintStyle: TextStyle(color: Colors.black45),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFECECEC)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFECECEC)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) => value!.isEmpty ? 'Şifre girin' : null,
              onSaved: (value) => _password = value!,
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye_rounded,
                    color: Color(0xFFECECEC)),
                labelText: 'Şifre',
                labelStyle: TextStyle(color: Colors.black45),
                hintText: 'Şifre',
                hintStyle: TextStyle(color: Colors.black45),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFECECEC)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFECECEC)),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //? TextButton Align i desteklemediği için row la yaptım
              TextButton(
                  onPressed: null,
                  child: Expanded(
                    child: Text(
                      "Şifremi Unuttum",
                      style: TextStyle(
                        color: Color(0xFF25D6A2),
                      ),
                    ),
                  )),
            ],
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      //   _formKey.currentState!.save();
                      // }
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF25D6A2),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Giriş Yap',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        height: 1,
                        color: Color(0xFFD6D6D6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text(
                        "veya",
                        style: TextStyle(
                          color: Color(0xFFD6D6D6),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        height: 1,
                        color: Color(0xFFD6D6D6),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF27A1B),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Trendyol ile Giriş Yap',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        side: BorderSide(color: Color(0xFF2975D0)),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.facebook,
                              color: Color(0xFF2975D0),
                            ),
                          ),
                          Text(
                            'Facebook ile Giriş Yap',
                            style: TextStyle(
                                color: Color(0xFF2975D0),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Üye değil misin? ',
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                    TextSpan(
                        text: 'Üye Ol',
                        style: TextStyle(
                            color: Colors.teal[300],
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ])),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
