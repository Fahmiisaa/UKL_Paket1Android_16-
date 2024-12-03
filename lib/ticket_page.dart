import 'package:flutter/material.dart';

class TicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Film')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Section for "Sedang Tayang"
            Text(
              'Sedang Tayang',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.65, // Adjust the aspect ratio for better fit
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildMovieItem(
                    context,
                    'assets/absolution.jpg',
                    'Absolution',
                    'Umur: 13+',
                    'Genre: Drama',
                    'Rating: 8.5',
                  ),
                  _buildMovieItem(
                    context,
                    'assets/Bila esok ibu telah tiada.webp',
                    'Bila esok ibu telah tiada',
                    'Umur: 16+',
                    'Genre: Action',
                    'Rating: 7.0',
                  ),
                  _buildMovieItem(
                    context,
                    'assets/Gladiator 2.webp',
                    'Gladiator 2',
                    'Umur: 7+',
                    'Genre: Animation',
                    'Rating: 9.0',
                  ),
                  _buildMovieItem(
                    context,
                    'assets/Kraven the hunter.jpg',
                    'Kraven the hunter',
                    'Umur: 13+',
                    'Genre: Horror',
                    'Rating: 6.5',
                  ),
                  _buildMovieItem(
                    context,
                    'assets/Megalopolis.jpg',
                    'Megalopolis',
                    'Umur: 16+',
                    'Genre: Thriller',
                    'Rating: 7.5',
                  ),
                  _buildMovieItem(
                    context,
                    'assets/Moana.jpg',
                    'Moana',
                    'Umur: 13+',
                    'Genre: Comedy',
                    'Rating: 8.0',
                  ),
                  _buildMovieItem(
                    context,
                    'assets/we live in time.jpg',
                    'we live in time',
                    'Umur: 18+',
                    'Genre: Sci-Fi',
                    'Rating: 7.8',
                  ),
                  _buildMovieItem(
                    context,
                    'assets/wicked.jpg',
                    'wicked',
                    'Umur: 13+',
                    'Genre: Romance',
                    'Rating: 8.2',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMovieItem(BuildContext context, String imagePath, String title, String age, String genre, String rating) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 128, 128, 128)),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                  width: 150, // Set width to a fixed value or based on your layout
                  height: 220, // Set height to a fixed value or based on your layout
                  fit: BoxFit.contain, // Maintain aspect ratio
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(age),
                        Text(genre),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(rating, style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 8,
          top: 8,
          child: IconButton(
            icon: Icon(Icons.favorite_border, color: Color.fromARGB(255, 165, 164, 164)),
            onPressed: () {
              // Handle the favorite action here
            },
          ),
        ),
      ],
    );
  }
}