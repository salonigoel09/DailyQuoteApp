// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:share_plus/share_plus.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String quote = "loading";
//   String author = "";

//   @override
//   void initState() {
//     super.initState();
//     getQuote();
//   }

//  Future<void> getQuote() async {
//   try {
//     final res = await http.get(
//       Uri.parse("https://zenquotes.io/api/random"),
//     );

//     print("STATUS: ${res.statusCode}");
//     print("BODY: ${res.body}");

//     if (res.statusCode == 200) {
//       final data = jsonDecode(res.body);
//       setState(() {
//         quote = data[0]["q"] ?? "No quote";
//         author = data[0]["a"] ?? "Unknown";
//       });
//     } else {
//       setState(() {
//         quote = "API Error";
//         author = "";
//       });
//     }
//   } catch (e) {
//     print("ERROR: $e");
//     setState(() {
//       quote = "Network error";
//       author = "";
//     });
//   }
// }




//   Future<void> saveFavorite() async {
//     final prefs = await SharedPreferences.getInstance();
//     List<String> favs = prefs.getStringList("favorites") ?? [];
//     favs.add("$quote — $author");
//     await prefs.setStringList("favorites", favs);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Daily Quote"),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.list),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => FavoritesScreen()),
//               );
//             },
//           )
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(quote, style: TextStyle(fontSize: 20)),
//             SizedBox(height: 10),
//             Text("- $author"),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.refresh),
//                   onPressed: getQuote,
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.favorite),
//                   onPressed: saveFavorite,
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.share),
//                   onPressed: () {
//                     Share.share("$quote — $author");
//                   },
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FavoritesScreen extends StatelessWidget {
//   Future<List<String>> getFavorites() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getStringList("favorites") ?? [];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Favorites")),
//       body: FutureBuilder<List<String>>(
//         future: getFavorites(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return Center(child: CircularProgressIndicator());
//           }
//           return ListView(
//             children: snapshot.data!
//                 .map((q) => ListTile(title: Text(q)))
//                 .toList(),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Quote',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomeScreen(),
    );
  }
}
