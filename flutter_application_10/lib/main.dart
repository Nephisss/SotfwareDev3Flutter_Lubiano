import 'package:flutter/material.dart';

void main() => runApp(MiniPortfolioApp());

class MiniPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Activity 10 - Mini Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
      home: PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatefulWidget {
  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    AboutPage(),
    SkillsPage(),
    ProjectsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Portfolio',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Skills'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projects'),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: ValueKey('about'),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Marlon Jay Lubiano',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Aspiring Flutter Developer from Cebu, Philippines. I enjoy building mobile apps and learning about UI/UX design.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  final List<String> skills = [
    'Flutter & Dart',
    'UI/UX Design',
    'HTML & CSS',
    'C# Programming',
    'Problem Solving',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: ValueKey('skills'),
      padding: EdgeInsets.all(16),
      itemCount: skills.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            leading: Icon(Icons.check_circle, color: Colors.indigo),
            title: Text(skills[index]),
          ),
        );
      },
    );
  }
}

class ProjectsPage extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Simple Calculator App',
      'description': 'A calculator app built using Flutter widgets.'
    },
    {
      'title': 'Tic Tac Toe Game',
      'description': 'A two-player game created in C# with basic AI logic.'
    },
    {
      'title': 'IoT Power Monitor',
      'description': 'A project for detecting power disturbances using AIoT.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: ValueKey('projects'),
      padding: EdgeInsets.all(16),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: ListTile(
            leading: Icon(Icons.apps, color: Colors.indigo),
            title: Text(project['title'] ?? ''),
            subtitle: Text(project['description'] ?? ''),
          ),
        );
      },
    );
  }
}
