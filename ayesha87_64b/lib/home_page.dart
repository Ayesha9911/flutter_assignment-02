import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage 64B"),
        backgroundColor: const Color.fromARGB(255, 4, 17, 87),
        foregroundColor: const Color.fromARGB(255, 236, 231, 231),
        //leading: Icon(icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Ayesha"),
              accountEmail: Text("ab8509911@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              hoverColor: const Color.fromARGB(255, 231, 175, 155),
              title: Text("homepage"),
              onTap: () {},
            ),
            
            Divider(),

            ListTile(
              leading: Icon(Icons.settings),
              hoverColor: const Color.fromARGB(255, 231, 175, 155),
              title: Text("Setting"),
              onTap: () {},
            ),

            Divider(),

            Spacer(),
            
            ListTile(
              leading: Icon(Icons.person),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              hoverColor: Color.fromARGB(255, 231, 175, 155),
              title: InkWell(child: Text("Profile"), onTap: () {},),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Welcome to homepage",
          style: GoogleFonts.lobster(
            textStyle: TextStyle(
              fontSize: 40, 
              color: const Color.fromARGB(255, 4, 13, 185),
            ),
          ),
        ),
      ),
    );
  }
}