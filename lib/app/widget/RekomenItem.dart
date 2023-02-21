import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RekomenItem extends StatelessWidget {
  final String gambar;
  final String nama;
  final String deskripsi;
  final String harga;

  const RekomenItem({
    Key? key,
    required this.gambar,
    required this.nama,
    required this.deskripsi,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
      child: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          color: Color(0xFFAF7E5A),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 7, 16),
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(),
                child: Image.asset(
                  gambar,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(7, 16, 16, 16),
              child: Container(
                width: 150,
                height: 300,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                      child: Text(
                        deskripsi,
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 7),
                      child: Text(
                        "Harga: $harga",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    Text(
                      'Dapatkan di Cafe',
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
