import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true, // Center the title
        title: Row(
          mainAxisSize: MainAxisSize.min,// Keep row compact
          children: const [
            Icon(
              Icons.link,
              size: 30,
              color: Colors.blue,
            ),
            Text(
              'Slinky',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
           
            
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
