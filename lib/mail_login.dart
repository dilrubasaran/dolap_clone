import 'package:flutter/material.dart';

class mailLogin extends StatefulWidget {
  @override
  State<mailLogin> createState() => _mailLoginState();
}

class _mailLoginState extends State<mailLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment
                      .topRight, // Align widget'ı ile pozisyonunu ayarlıyoruz
                  child: Container(
                    child: Icon(Icons.clear, color: Colors.black, size: 30),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset(
                'assets/images/dolap_image.png',
              ),
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
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        side: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child:
                                Icon(Icons.mail_outline, color: Colors.black),
                          ),
                          SizedBox(width: 8), // İkon ile metin arasında boşluk
                          Expanded(
                            child: Text(
                              'E-Posta ile Giriş Yap',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
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
                    onPressed: () {
                      // Butona tıklandığında yapılacak işlem
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        side: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Icon(
                              Icons.text_fields_rounded,
                              color: Color.fromARGB(255, 216, 122, 6),
                            ),
                          ),
                          SizedBox(width: 8), // İkon ile metin arasında boşluk
                          Expanded(
                            child: Text(
                              'Trendyol ile Giriş Yap',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
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
                    onPressed: () {
                      // Butona tıklandığında yapılacak işlem
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        side: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child:
                                Icon(Icons.facebook, color: Colors.blue[700]),
                          ),
                          SizedBox(width: 8), // İkon ile metin arasında boşluk
                          Expanded(
                            child: Text(
                              'Facebook ile Giriş Yap',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
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
