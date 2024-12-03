import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MyTicketsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tiketku')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildTicketItem(
            context,
            'assets/Kraven the hunter.jpg', 
            'Kraven The Hunter',
            'Genre: Action',
            'Umur: 17+',
            'Rating: 8.5',
          ),
          SizedBox(height: 10),
          _buildTicketItem(
            context,
            'assets/Bila esok ibu telah tiada.webp', 
            'Bila esok ibu telah tiada',
            'Genre: Drama',
            'Umur: 16+',
            'Rating: 7.0',
          ),
        ],
      ),
    );
  }

 Widget _buildTicketItem(BuildContext context, String imagePath, String title, String genre, String age, String rating) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey), // Warna border
      borderRadius: BorderRadius.circular(8.0), // Sudut border
    ),
    child: Stack(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagePath,
                width: 80, // Lebar gambar
                height: 120, // Tinggi gambar
                fit: BoxFit.cover, // Mengatur cara gambar ditampilkan
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(genre),
                    Text(age),
                    Text(rating),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 8.0,
          top: 8.0,
          child: Icon(
            Icons.favorite,
            color: Colors.red, // Warna ikon hati
          ),
        ),
      ],
    ),
  );
 }}