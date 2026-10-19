import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header Section with Stack for overlap
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Cover Photo with city image from network
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  'https://th.bing.com/th/id/OIP.8b_sYmbssUkK88BHMxFXOwHaEo?w=300&h=180&c=7&r=0&o=7&pid=1.7&rm=3', // Example city image URL
                  fit: BoxFit.cover,
                ),
              ),
              // Top Action Icons
              Positioned(
                top: 40,
                right: 10,
                child: Row(
                  children: const [
                    Icon(Icons.menu, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.edit, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.more_horiz, color: Colors.white),
                  ],
                ),
              ),
              // Profile Picture (Overlapping)
              Positioned(
                bottom: -50,
                left: 20,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 46,
                    backgroundColor: Colors.blue[200], // Placeholder
                    child: const Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 60), // Space for profile picture overlap
          // Profile Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "John Doe",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "100 Posts | Iloilo City",
                  style: TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 15),

                // Action Buttons
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Add to story"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text("Edit profile"),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // Privacy Notice
                const Text(
                  "Your profile is private. Learn more.",
                  style: TextStyle(color: Colors.blue),
                ),

                const SizedBox(height: 20),

                // Profile Tabs
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("AI", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Photos"),
                    Text("Reels"),
                  ],
                ),
                const Divider(),

                // Personal Details Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Personal Details",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.edit),
                  ],
                ),

                const SizedBox(height: 10),

                // Personal Info List
                ListTile(
                  leading: const Icon(Icons.location_on),
                  title: const Text("Iloilo City"),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("123 Street, Iloilo City"),
                ),
                ListTile(
                  leading: const Icon(Icons.cake),
                  title: const Text("January 1, 1990"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
