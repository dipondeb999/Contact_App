import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget contactDetails(String name, String description){
    return ListTile(
      title: Text(
          name,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
          description,
        style: TextStyle(
          color: Colors.grey[500],
        ),
      ),
      leading: CircleAvatar(
        child: Text(name[0]),
      ),
      trailing: const Icon(
          Icons.phone,
        color: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                  'Contact',
              style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                contactDetails('Dipon Deb', 'Bangladesh'),
                contactDetails('Jibon Deb', 'Qatar'),
                contactDetails('Sourov Deb', 'Bangladesh'),
                contactDetails('Choyon Deb', 'Bangladesh'),
                contactDetails('Dipto Deb', 'Bangladesh'),
                contactDetails('Apon Deb', 'Bangladesh'),
                contactDetails('Dibbo Deb', 'Bangladesh'),
                contactDetails('Gobindo Deb', 'Bangladesh'),
                contactDetails('Bikash Deb', 'Qatar'),
                contactDetails('Kallan Deb', 'Qatar'),
                contactDetails('Juthish Deb', 'Soudi Arob'),
                contactDetails('Dijesh Deb', 'Soudi Arob'),
            ]),
          ),
        ],
      ),
    );
  }
}
