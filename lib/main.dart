import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh TextField")),
        body: const Padding(
          // Menambahkan Padding agar TextField tidak terlalu mepet ke tepi layar
          padding: EdgeInsets.all(16.0),
          child: TextField(
            // obscureText: false berarti teks yang diketik akan terlihat.
            // Gunakan 'true' untuk input password.
            obscureText: false,
            // decoration digunakan untuk menata tampilan TextField.
            decoration: InputDecoration(
              // border: OutlineInputBorder() memberikan bingkai di sekeliling TextField.
              border: OutlineInputBorder(),
              // labelText adalah teks placeholder yang akan naik ke atas saat TextField diisi.
              labelText: 'Nama',
            ),
          ),
        ),
      ),
    );
  }
}