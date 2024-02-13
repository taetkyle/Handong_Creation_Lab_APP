import 'package:creationlab_app_front/pages/app_manage/administer_varify.dart';
import 'package:creationlab_app_front/pages/itemlist/itemlist.dart';
import 'package:creationlab_app_front/pages/tool_borrow/tool_borrow.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'pages/homepage.dart';
import 'package:get/get.dart';
import 'provider/eng_kor_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dotenv.load(fileName: "config/.env");
  // final String apiKey = dotenv.env['ApiKey']!;
  // final String apiId = dotenv.env['ApiId']!;
  // final String messagingSenderId = dotenv.env['MessagingSenderId']!;
  // final String projectId = dotenv.env['ProjectId']!;

  const String apiKey = "AIzaSyBI_VxUDaDpw39Y4_ZG07SZo6ZsQWnMWM0";
  const String apiId = "1:1049693809515:web:7562ee321be73c36957a2e";
  const String messagingSenderId = "1049693809515";
  const String projectId = "handongcreationlab";

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          // apiKey: dotenv.env['ApiKey']!,
          // appId: dotenv.env['ApiId']!,
          // messagingSenderId: dotenv.env['MessagingSenderId']!,
          // projectId: dotenv.env['ProjectId']!
          apiKey: apiKey,
          appId: apiId,
          messagingSenderId: messagingSenderId,
          projectId: projectId));
  runApp(ChangeNotifierProvider(
      create: (context) => LangProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // MaterialColor createMaterialColor(Color color) {
  //   List strengths = <double>[.05];
  //   Map<int, Color> swatch = {};
  //   final int r = color.red, g = color.green, b = color.blue;

  //   for (int i = 1; i < 10; i++) {
  //     strengths.add(0.1 * i);
  //   }
  //   for (var strength in strengths) {
  //     final double ds = 0.5 - strength;
  //     swatch[(strength * 1000).round()] = Color.fromRGBO(
  //       r + ((ds < 0 ? r : (255 - r)) * ds).round(),
  //       g + ((ds < 0 ? g : (255 - g)) * ds).round(),
  //       b + ((ds < 0 ? b : (255 - b)) * ds).round(),
  //       1,
  //     );
  //   }

  //   return MaterialColor(color.value, swatch);
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homepage(),
      home: Homepage(),
      // theme: ThemeData(
      //     primarySwatch: createMaterialColor(
      //   const Color.fromARGB(255, 2, 21, 104),
      // )),
      getPages: [
        GetPage(
          name: '/',
          page: () => Homepage(),
        ),
        GetPage(
          name: '/itemlist',
          page: () => const itemList(),
        ),
        GetPage(
          name: '/tool_borrow',
          page: () => const tool_borrow(),
        ),
        GetPage(
          name: '/administer_varify',
          page: () => const administer_varify(),
        ),

        // Gepublic
      ],
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Widget normal = Container(
//     constraints: BoxConstraints.tight(const Size(300.0, 200.0)),
//     color: Colors.red,
//     child: const Text("마우스 내린 상태입니다"),
//   );

//   void _incrementEnter(PointerEvent details) {
//     setState(() {
//       normal = Container(
//         constraints: BoxConstraints.tight(const Size(300.0, 200.0)),
//         color: Colors.amber,
//         child: const Text("마우스 올린 상태입니다"),
//       );
//     });
//   }

//   void _incrementExit(PointerEvent details) {
//     setState(() {
//       normal = Container(
//         constraints: BoxConstraints.tight(const Size(300.0, 200.0)),
//         color: Colors.red,
//         child: const Text("마우스 내린 상태입니다"),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               color: Colors.amber,
//             ),
//             MouseRegion(
//               onEnter: _incrementEnter,
//               onExit: _incrementExit,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // const Text(
//                   //     'You have entered or exited this box this many times:'),
//                   // Text(
//                   //   '$_enterCounter Entries\n$_exitCounter Exits',
//                   //   style: Theme.of(context).textTheme.headlineMedium,
//                   // ),
//                   // Text(
//                   //   'The cursor is here: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
//                   // ),
//                   normal
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           createData();
//           js.context
//               .callMethod('open', ['https://stackoverflow.com/questions/ask']);
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
