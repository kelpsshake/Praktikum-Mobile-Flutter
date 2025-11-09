import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:h1d023051_tugas6/ui/data_form.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_add_alt_1, size: 80, color: Colors.blueAccent),
              const SizedBox(height: 20),
              Text(
                "Halo, Selamat Datang!",
                style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                "Jangan lupa daftarkan dirimu dulu ya 👋",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 13),
              ),
            
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DataForm()),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                label: Text(
                  "Mulai Daftar",
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
