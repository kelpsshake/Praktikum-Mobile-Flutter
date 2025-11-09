import 'package:flutter/material.dart';
import 'package:h1d023051_tugas6/ui/data_detail.dart';
import 'package:google_fonts/google_fonts.dart';

class DataForm extends StatefulWidget {
  const DataForm({Key? key}) : super(key: key);

  @override
  _DataFormState createState() => _DataFormState();
}

class _DataFormState extends State<DataForm> {
  final _namaDataController = TextEditingController();
  final _nimDataController = TextEditingController();
  final _tahunDataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB), // pastel background
      appBar: AppBar(
        title: Text(
          'Input Data',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color(0xFF87CBB9), // pastel mint
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Silakan isi data diri kamu:',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20),
            _textboxNama(),
            const SizedBox(height: 12),
            _textboxNim(),
            const SizedBox(height: 12),
            _textboxTahun(),
            const SizedBox(height: 24),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        labelStyle: GoogleFonts.poppins(),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _namaDataController,
    );
  }

  _textboxNim() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        labelStyle: GoogleFonts.poppins(),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _nimDataController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        labelStyle: GoogleFonts.poppins(),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.white,
      ),
      controller: _tahunDataController,
      keyboardType: TextInputType.number,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFB9E5E8),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
      onPressed: () {
        String nama = _namaDataController.text;
        String nim = _nimDataController.text;
        int tahun = int.parse(_tahunDataController.text);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DataDetail(
              nama: nama,
              nim: nim,
              tahunLahir: tahun,
            ),
          ),
        );
      },
      child: Text(
        'Simpan',
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
