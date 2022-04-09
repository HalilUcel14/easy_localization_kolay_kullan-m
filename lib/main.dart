import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_packages_tested/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: const MyApp(),
    supportedLocales: const [
      LocaleConstants.enLocale,
      LocaleConstants.trLocale,
    ],
    saveLocale: true,
    fallbackLocale: LocaleConstants.enLocale,
    path: LocaleConstants.localePath,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        //
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(LocaleConstants.merhaba),
            Text(LocaleConstants.nasilsin),
            const SizedBox(
              height: 200,
            ),
            TextButton(
              onPressed: () {
                context.setLocale(LocaleConstants.enLocale);
              },
              child: const Text("İngilizce Yazar"),
            ),
            TextButton(
              onPressed: () {
                context.setLocale(LocaleConstants.trLocale);
              },
              child: const Text("Türkçe Yazar"),
            ),
          ],
        ),
      ),
    );
  }
}

























// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await EasyLocalization.ensureInitialized();
//   runApp(EasyLocalization(
//     child: const MyApp(),
//     supportedLocales: const [
//       LocaleConstant.enLocale,
//       LocaleConstant.trLocale,
//     ],
//     saveLocale: true,
//     fallbackLocale: LocaleConstant.enLocale,
//     path: LocaleConstant.langPath,
//   ));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'EasyLocalization Kolay Kullanım',
//       //
//       localizationsDelegates: context.localizationDelegates,
//       supportedLocales: context.supportedLocales,
//       locale: context.locale,
//       debugShowCheckedModeBanner: false,
//       //
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: "/",
//       routes: {
//         "/": (context) => const HomePage(),
//       },
//     );
//   }
// }

// ///
// ///

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(LocaleConstant.selam),
//             Text(LocaleConstant.nasilsin),
//             const SizedBox(height: 200),
//             TextButton(
//               onPressed: () {
//                 context.setLocale(LocaleConstant.trLocale);
//               },
//               child: const Text("Türkçe Yazılır"),
//             ),
//             TextButton(
//               onPressed: () {
//                 context.setLocale(LocaleConstant.enLocale);
//               },
//               child: const Text("İngilizce Yazılır"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
