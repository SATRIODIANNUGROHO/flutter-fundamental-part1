import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp membungkus seluruh aplikasi.
    return const MaterialApp(
      // Scaffold menyediakan struktur dasar halaman.
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Padding memberikan jarak di sekitar tombol.
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // Center menempatkan tombol di tengah layar.
      child: Center(
        child: ElevatedButton(
          child: const Text('Show alert'),
          onPressed: () {
            // Memanggil fungsi untuk menampilkan dialog saat tombol ditekan.
            showAlertDialog(context);
          },
        ),
      ),
    );
  }
}

// Fungsi ini bertanggung jawab untuk membuat dan menampilkan AlertDialog.
showAlertDialog(BuildContext context) {
  // 1. Membuat tombol aksi untuk dialog.
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      // Navigator.pop(context) digunakan untuk menutup dialog.
      Navigator.pop(context);
    },
  );

  // 2. Mengkonfigurasi AlertDialog dengan judul, konten, dan tombol aksi.
  AlertDialog alert = AlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // 3. Menampilkan dialog ke layar menggunakan fungsi showDialog.
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}