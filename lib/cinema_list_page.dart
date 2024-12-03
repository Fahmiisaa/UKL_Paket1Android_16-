import 'package:flutter/material.dart';

class CinemaListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bioskop di Sekitarmu'),
        backgroundColor: Color.fromARGB(255, 244, 244, 244),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Tandai bioskop favoritmu!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255,8, 27, 57),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildBioskopItem('Araya XXI', Icons.local_movies),
                _buildBioskopItem('DIENG', Icons.local_movies),
                _buildBioskopItem('LIPPO PLAZA BATU CINEPOLIS', Icons.local_movies),
                _buildBioskopItem('MALANG TOWN SQUARE CINEPOLIS', Icons.local_movies),
                _buildBioskopItem('MALANG CITY POINT CGV', Icons.local_movies),
                _buildBioskopItem('TRANSMART MX MALL XXI', Icons.local_movies),
                _buildBioskopItem('MANDALA', Icons.local_movies),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBioskopItem(String name, IconData icon) {
    bool isFavorite = false; // State variable to track favorite status

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, size: 40, color: const Color.fromARGB(255,8, 27, 57)),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            isFavorite ? Icons.star : Icons.star_border,
            color: isFavorite ? Colors.yellow : Colors.grey,
          ),
          onPressed: () {
            // Toggle favorite status
            isFavorite = !isFavorite; // Update the favorite status
          },
        ),
      ),
    );
  }
}