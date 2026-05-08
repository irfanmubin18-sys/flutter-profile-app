import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
      ),
      home: const MyHomePage(title: 'My Profile'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B2A41),
        foregroundColor: Colors.white,
        title: const Text('My Profile'),
      ),
      body: Center(
        child: Card(
          color: Color.fromARGB(255, 53, 53, 117),
          elevation: 10,
          margin: const EdgeInsets.all(150),
          shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

              // PROFILE IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/profile.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),

                // NAME
                const Text(
                  "Muhammad Irfan Mubin",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
  
                const SizedBox(height: 10),

                // DOB / STATE
                const Text(
                  "Born: 18 July 2003",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),

                const Text(
                  "State: Sabah",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 20),

                // CONTACT ICONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [

                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.red),
                        SizedBox(width: 8),
                        Text("irfanmubin18@gmail.com")
                      ],
                    ),

                    SizedBox(width: 20),

                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.green),
                        SizedBox(width: 8),
                        Text("014-366-6069")
                      ],
                    ),

                    SizedBox(width: 20),

                    Row(
                      children: [
                        Icon(Icons.facebook, color: Colors.blue),
                        SizedBox(width: 8),
                        Text("irfan.mubin")
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // BIO / QUOTE
                const Text(
                  '"I am a Semester 6, AC10 Student at UPSI"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


