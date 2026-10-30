import 'package:flutter/material.dart';

class Latihan1DaftarMahasiswa extends StatelessWidget {
  const Latihan1DaftarMahasiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        // Ganti dengan nama dan data Anda sendiri
        KartuMahasiswa(nama: 'Muhammad Nurul Yaaqin', nim: '3012410002', prodi: 'Informatika'),
        KartuMahasiswa(nama: 'Fajar Rizky Andiansyah', nim: '3012410014', prodi: 'Informatika'),
        KartuMahasiswa(nama: 'Dimas Alfaruq', nim: '3012410080', prodi: 'Informatika'),
      ],
    );
  }
}

class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      color: Colors.grey.shade100,
      child: ListTile(
        leading: const Icon(Icons.person, size: 30),
        title: Text(nama, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('NIM $nim\n$prodi'),
        trailing: const Icon(Icons.info),
        isThreeLine: true,
      ),
    );
  }
}

class Latihan3Profil extends StatelessWidget {
  const Latihan3Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            child: Icon(Icons.person, size: 60),
          ),
          const SizedBox(height: 16),

          const Text(
            'Muhammad Nurul Yaaqin',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            'NIM: 3012410002',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
          ),
          const SizedBox(height: 4),
          Text(
            'Informatika',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
          ),

          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.teal.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.phone, color: Colors.teal),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.teal.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.email, color: Colors.teal),
              ),
            ],
          ),
        ],
      ),
    );
  }
}