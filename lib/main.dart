import 'package:flutter/material.dart';
import 'file1_stateless.dart';
import 'file2_stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Week 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HalamanUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int _indeksDipilih = 0;

  final List<Widget> _halaman = [
    const Latihan1DaftarMahasiswa(), // Dari file1_stateless.dart
    const Latihan3Profil(),          // Dari file1_stateless.dart
    const Latihan2Counter(),         // Dari file2_stateful.dart
  ];

  final List<String> _judulAppBar = [
    'Latihan 1 - Daftar Mahasiswa',
    'Latihan 3 - Profil',
    'Latihan 2 - Counter Stateful',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_judulAppBar[_indeksDipilih]),
        backgroundColor: Colors.teal.shade300,
      ),
      body: _halaman[_indeksDipilih],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Kartu'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Counter'),
        ],
        currentIndex: _indeksDipilih,
        selectedItemColor: Colors.teal.shade800,
        onTap: (indeks) => setState(() => _indeksDipilih = indeks),
      ),
    );
  }
}