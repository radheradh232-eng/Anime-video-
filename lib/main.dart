import 'package:flutter/material.dart';

void main() {
  runApp(const AnimeStudio());
}

class AnimeStudio extends StatelessWidget {
  const AnimeStudio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF10101A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF191927),
        title: const Text(
          "ANIME AI STUDIO",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create Without Limits",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Your AI Anime & Video Editing Studio",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 25),

            featureCard(
              Icons.auto_awesome,
              "AI Anime Generator",
              "Create anime videos up to 30+ minutes",
            ),

            featureCard(
              Icons.movie_edit,
              "Professional Video Editor",
              "Edit videos with professional tools and effects",
            ),

            featureCard(
              Icons.flash_on,
              "Effects & Transitions",
              "Glitch, Shake, Blur, 3D Zoom and more",
            ),

            featureCard(
              Icons.music_note,
              "Music & Audio Studio",
              "AI Music, Voice and Sound Effects",
            ),

            featureCard(
              Icons.smart_toy,
              "AI Chat Assistant",
              "Trending topics, ideas and scripts",
            ),

            featureCard(
              Icons.video_library,
              "My Projects",
              "Manage your videos and editing projects",
            ),

            featureCard(
              Icons.download,
              "Export Video",
              "Export videos in HD and 4K",
            ),
          ],
        ),
      ),
    );
  }

  Widget featureCard(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Card(
      color: const Color(0xFF202035),
      margin: const EdgeInsets.only(bottom: 14),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: Icon(
          icon,
          color: Colors.purpleAccent,
          size: 32,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(subtitle),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
