import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(                                //Flutter sees that there is a previous page in the stack, so it adds the back arrow automatically.
        title: const Text('About Slinky'),
        backgroundColor: Colors.blue,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Text(
            '''About Slinky
We're on a mission to make the web more accessible by transforming long, complex URLs into clean, shareable links that work everywhere.

Our Story
Born from the frustration of sharing unwieldy URLs that broke in emails and looked unprofessional in presentations, Slinky was created to solve a simple but important problem: making links beautiful and manageable.

What started as a weekend project has grown into a reliable service trusted by thousands of users worldwide. We believe that great tools should be simple, fast, and accessible to everyone.

Whether you're a content creator, marketer, developer, or just someone who shares links regularly, Slinky is designed to make your digital life a little bit easier.''',
          ),
        ),
      ),
    );
  }
}
