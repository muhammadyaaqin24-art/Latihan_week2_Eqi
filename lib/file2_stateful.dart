import 'package:flutter/material.dart';

class Latihan2Counter extends StatefulWidget {
  const Latihan2Counter({super.key});

  @override
  State<Latihan2Counter> createState() => _Latihan2CounterState();
}

class _Latihan2CounterState extends State<Latihan2Counter> {
  int _hitung = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Angka saat ini:', style: TextStyle(fontSize: 20)),
          Text(
            '$_hitung',
            style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => setState(() => _hitung--),
                child: const Text('Kurang (-)'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () => setState(() => _hitung = 0),
                child: const Text('Reset'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () => setState(() => _hitung++),
                child: const Text('Tambah (+)'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}