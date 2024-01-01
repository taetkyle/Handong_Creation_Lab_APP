import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'pages/homepage.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "config/.env");
  final String apiKey = dotenv.env['ApiKey']!;
  final String apiId = dotenv.env['ApiId']!;
  final String messagingSenderId = dotenv.env['MessagingSenderId']!;
  final String projectId = dotenv.env['ProjectId']!;

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: apiKey,
          appId: apiId,
          messagingSenderId: messagingSenderId,
          projectId: projectId));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: Homepage(),
      home: Homepage(),
      getPages: [
        GetPage(
          name: '/',
          page: () => Homepage(),
        ),
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
//           // js.context
//           //     .callMethod('open', ['https://stackoverflow.com/questions/ask']);
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
