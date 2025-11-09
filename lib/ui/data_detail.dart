import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataDetail extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahunLahir;

  const DataDetail({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int umur = DateTime.now().year - tahunLahir;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      appBar: AppBar(
        title: Text(
          'Perkenalan',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color(0xFF87CBB9),
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          'Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun.',
          style: GoogleFonts.poppins(
            fontSize: 16,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
