import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 350,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 2),
              ),
              child: Column(
                children: [
                  // --- TITLE TRAGIE ---
                  Text(
                    "TRAGIE",
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 8,
                    ),
                  ),

                  const SizedBox(height: 5),

                  // --- Row thông tin nhỏ ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("31-10-2005",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("CN2305CLCA",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // --- Hình ảnh bo góc ---
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/nguyetanh_1.jpg",
                      height: 300,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // --- INTRO ---
                  const Text(
                    "I AM A THIRD-YEAR INFORMATION TECHNOLOGY STUDENT WITH A "
                    "PASSION FOR WEB DEVELOPMENT. I ENJOY BUILDING REAL-WORLD "
                    "PRODUCTS, CONTINUOUSLY LEARNING, AND STRIVING FOR "
                    "EFFICIENCY. MY GOAL IS TO BECOME A BACKEND DEVELOPER "
                    "WITHIN THE NEXT 1–2 YEARS.",
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 20),

                  // --- Tên đầy đủ ---
                  const Text(
                    "Fullname : Trần Thị Nguyệt Anh",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // --- Dòng cuối ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("SDT: 03835005455",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Text("VIET NAM",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("GITHUB: ANH-05-DEV",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

