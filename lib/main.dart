import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/books/book_list_screen.dart';
import 'screens/dashboards/anggota_dashboard.dart';
import 'screens/books/favorite_books_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/history_screen.dart';
import 'screens/books/book_form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perpustakaan',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/login':
            return MaterialPageRoute(builder: (_) => const LoginScreen());

          case '/register':
            return MaterialPageRoute(builder: (_) => RegisterScreen());

          case '/book_list':
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
              builder:
                  (_) => BookListScreen(
                    userId: int.parse(args['userId']),
                    category: args['category'] as String,
                    role: args['role'] as String,
                  ),
            );
          case '/anggota_dashboard':
            final args = settings.arguments as Map<String, String>;
            return MaterialPageRoute(
              builder:
                  (_) => AnggotaDashboardScreen(
                    userId: args['userId']!,
                    userName: args['userName']!,
                  ),
            );

          case '/profile':
            final token = settings.arguments as String;
            return MaterialPageRoute(builder: (_) => ProfileScreen());

          case '/history':
            return MaterialPageRoute(builder: (_) => HistoryScreen());

          case '/add-book':
            return MaterialPageRoute(builder: (_) => const BookFormScreen());

          
            return null; // jika route tidak dikenal
        }
      },
    );
  }
}
