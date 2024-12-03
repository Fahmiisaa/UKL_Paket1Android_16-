import 'package:flutter/material.dart';
import 'cinema_list_page.dart';
import 'my_ticket_page.dart';
import 'ticket_page.dart';
import 'my_tickets_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  // Updated to use the instance method
  List<Widget> get _pages => [
    _buildHomePage(),
    CinemaListPage(),
    TicketPage(),
    MyTicketsPage(),
  ];

  Widget _buildHomePage() {
  return SingleChildScrollView(
    child: Stack(
      children: [
        Column(
          children: [
            // Scrollable Banner Section
            Container(
              height: 225, // Height for the scrollable banners
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildHorizontalBanner('assets/bannerpromo.webp'), // Replace with your first banner image
                  SizedBox(width: 10),
                  _buildHorizontalBanner('assets/promo jajan.jpg'), // Replace with your second banner image
                  SizedBox(width: 10),
                  _buildHorizontalBanner('assets/cinepolispromo.jpg'), // Replace with your third banner image
                ],
              ),
            ),
            SizedBox(height: 10),

            // Add the additional banner here
          _buildFoodPromoBanner('assets/Screenshot 2024-12-02 132916.jpg'), // Replace with your additional banner image
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sedang Tayang',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildMovieCard('assets/Bila esok ibu telah tiada.webp', 'Bila esok ibu telah tiada'),
                        SizedBox(width: 30),
                        _buildMovieCard('assets/Megalopolis.jpg', 'Megalopolis'),
                        SizedBox(width: 30),
                        _buildMovieCard('assets/Kraven the hunter.jpg', 'Kraven the hunter'),
                        SizedBox(width: 30),
                        _buildMovieCard('assets/Moana.jpg', 'Moana'),
                        SizedBox(width: 30),
                        _buildMovieCard('assets/we live in time.jpg', 'We Live in Time'),
                        SizedBox(width: 30),
                        _buildMovieCard('assets/Gladiator 2.webp', 'Gladiator 2'),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),

                  Text(
                    'Spotlight',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 120, // Set a fixed height for the spotlight section
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildSpotlightBanner('assets/spotlight1.webp'),
                        SizedBox(width: 10),
                        _buildSpotlightBanner('assets/spotlight2.webp'),
                        SizedBox(width: 10),
                        _buildSpotlightBanner('assets/spotlight3.webp'),
                        SizedBox(width: 10),
                        _buildSpotlightBanner('assets/spotlight4.webp'),
                      ],
                    ),
                  ),

                  // Add the news section here
                  _buildNewsSection(),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

  static Widget _buildHorizontalBanner(String imagePath) {
    return Container(
      width: 550, // Set a fixed width for the horizontal banner
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  static Widget _buildFoodPromoBanner(String imagePath) {
    return Container(
      height: 100, // Set a height for the food promo banner
      decoration
      : BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

 
  static Widget _buildNewsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 35),
        Text(
          'Berita Terbaru',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          height: 200, // Increased height for better scrolling
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Added padding for better spacing
            children: [
              _buildNewsCard('assets/news1.webp', 'Teror Death Whisperer Kembali Lagi', 'Sukses dengan film pertamanya, film Death Whisperer yang diperankan Nadech Kugimiya kembali lagi. Setelah kematian Yam, adiknya tiga tahun yang lalu.'),
              SizedBox(height: 10), // Added spacing between news cards
              _buildNewsCard('assets/news2.webp', 'Saksikan Kembalinya Teror Guna-Guna Istri Muda', 'Guna-Guna Istri Muda menceritakan kisah Burhan (Anjasmara), seorang pria yang hidupnya berubah drastis setelah menikahi istri muda bernama Angel.'),
              SizedBox(height: 10), // Added spacing between news cards
              _buildNewsCard('assets/news3.webp', 'Seorang Ayah Nekat Menyimpan Jasad Anaknya Yang Sudah Meninggal Dunia', 'Korea Selatan semakin kreatif dalam menghadirkan hiburan untuk para penikmat film. Sebentar lagi akan hadir film Devils Stay yang diperankan oleh Lee Min-ki.'),
               SizedBox(height: 10), // Added spacing between news cards
              _buildNewsCard('assets/news5.webp', 'Gladiator II Hadirkan Hiu Buas di Koloseum!', 'Sutradara ternama Ridley Scott akhirnya kembali lagi dengan film terbarunya, kali ini ia melanjutkan kisah dari Gladiator yang pertama tayang pada tahun 2000 silam dan kini kembali lagi setelah 24 tahun berlalu sejak film sebelumnya.'),
              SizedBox(height: 10), // Added spacing between news cards
              _buildNewsCard('assets/news4.webp', 'Sinopsis ‘MEGALOPOLIS’ Film Terbaru Francis Ford Coppola', 'Bayangkan kota Roma baru harus berubah, menyebabkan konflik utama antara Cesar Catilina (Adam Driver), seorang seniman jenius yang mendukung masa depan yang utopis dan idealis'),          
            ],
          ),
        ),
      ],
    );
  }

  static Widget _buildNewsCard(String imagePath, String title, String description) {
    return Container(
      width: double.infinity, // Set to full width for better layout
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              height: 120,
              width: 80, // Fixed width for the image
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildSpotlightBanner(String imagePath) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  static Widget _buildMovieCard(String imagePath, String title) {
    return Container(
      width: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              height: 120,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _selectedLocation = 'Malang';
  final List<String> _locations = [
    'Malang',
    'Surabaya',
    'Jakarta',
    'Bali',
    'Semarang',
    'Bandung',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        flexibleSpace: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: 
                      InputDecoration(
                        hintText: 'Cari di TIX ID',
                        hintStyle: TextStyle(color: Color.fromARGB(255, 98, 98, 98)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 26, 58),
                            width: 1.0,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      style: TextStyle(color: Color.fromARGB(150,  217, 168, 83)),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 0, 26, 58)),
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Color.fromARGB(255, 0, 26, 58)),
                  SizedBox(width: 8),
                  Expanded(
                    child: DropdownButton<String>(
                      value: _selectedLocation,
                      icon: Icon(Icons.arrow_drop_down, color: Color.fromARGB(255, 0, 26, 58)),
                      underline: SizedBox(),
                      isExpanded: true,
                      items: _locations.map<DropdownMenuItem<String>>((String location) {
                        return DropdownMenuItem<String>(
                          value: location,
                          child: Text(location, style: TextStyle(color: Color.fromARGB(255, 0, 26, 58))),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedLocation = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.local_movies), label: 'Bioskop'),
          BottomNavigationBarItem(icon: Icon(Icons.confirmation_number), label: 'Tiket'),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_rounded), label: 'Tiketku'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 0, 26, 58),
        unselectedItemColor: const Color.fromARGB(150, 217, 168, 83),
        onTap: _onItemTapped,
      ),
    );
  }
}