import 'package:flutter/material.dart';
import '../widgets/menu_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showFeatureNotAvailable(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('¡Esta función estará disponible próximamente!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'MVP APP',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1a1a1a),
              Color(0xFF0D0D0D),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                MenuCard(
                  title: 'MVPs',
                  icon: Icons.star,
                  color: Colors.amber,
                  onTap: () => _showFeatureNotAvailable(context),
                ),
                MenuCard(
                  title: 'Moderadores',
                  icon: Icons.security,
                  color: Colors.cyan,
                  onTap: () => _showFeatureNotAvailable(context),
                ),
                MenuCard(
                  title: 'Memes',
                  icon: Icons.emoji_emotions,
                  color: Colors.purple,
                  onTap: () => _showFeatureNotAvailable(context),
                ),
                MenuCard(
                  title: 'Configuración',
                  icon: Icons.settings,
                  color: Colors.blue,
                  onTap: () => _showFeatureNotAvailable(context),
                ),
                MenuCard(
                  title: 'Estadísticas',
                  icon: Icons.bar_chart,
                  color: Colors.green,
                  onTap: () => _showFeatureNotAvailable(context),
                ),
                MenuCard(
                  title: 'Perfil',
                  icon: Icons.person,
                  color: Colors.orange,
                  onTap: () => _showFeatureNotAvailable(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}