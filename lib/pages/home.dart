import 'package:flutter/material.dart';
import 'package:slinky/pages/about.dart';

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
        title: Row(
          mainAxisSize: MainAxisSize.min, // Keep row compact
          children: const [
            Icon(
              Icons.link,
              size: 30,
              color: Colors.blue,
            ),
            SizedBox(width: 8), // add spacing between icon and text
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
        actions: [
          
          const IconButton(
            icon:Icon(Icons.home,color: Colors.blue,),
            tooltip: 'Home',
            
            onPressed: null,
          ),
          IconButton(
          icon: const Icon(Icons.info,color: Colors.blue,),
          tooltip: 'About',
          onPressed:() {
              Navigator.push(        //Navigates to the New Page,pushes the new page on top of the stack
                context,
                MaterialPageRoute(builder: (context)=>const About()),
              );
            },
          ),
          
        ],
      ),
     body: Padding(
  padding: const EdgeInsets.only(top: 24), // space below AppBar
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center, 
    mainAxisSize: MainAxisSize.min,
    children: [
      const Icon(
        Icons.link,
        size: 50,
        color: Colors.blue,
      ),
      const SizedBox(height: 16),
      const Text(
        'Shorten Your URLs',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 40, color: Colors.blue),
      ),
      const SizedBox(height: 10),
      const Text(
        'Transform long, complex URLs into clean, shareable links in seconds. Fast, secure, and completely free.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
      const SizedBox(height: 20),
     Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchAnchor(
        builder: (BuildContext context,SearchController controller){
          return SearchBar(
            controller: controller,
            leading: const Icon(Icons.search),
            onTap: () => controller.openView(),
            onChanged: (value) => controller.openView(),
          );
        },
        suggestionsBuilder: (context,controller){
          return List.generate(3, (index){
            return ListTile(
              title:Text('https://example.com/very-long-url-that needs-shortening$index'),
           onTap: () {
    controller.closeView(
    'https://example.com/very-long-url-that-needs-shortening$index'
  );
},
            );
          }
          );
        },
      ),

      
     )
    ]  
  ),
     )
     );
  }
}
