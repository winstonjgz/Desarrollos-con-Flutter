import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_app/theme/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Locale _locale = const Locale('en');
  ThemeMode _themeMode = ThemeMode.light;

  void _changeTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    setState(() {});
  }

  void _changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner:
              false, // Banner que sale a la derecha "Debug"
          locale: _locale,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            AppLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('es'),
          ],
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: MaterialTheme.lightScheme(),
          ), //Se agrega el tema o colores a utilizar
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: MaterialTheme.darkMediumContrastScheme(),
          ),
          themeMode: _themeMode,
          home: child,
        );
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: IconButton.outlined(
                onPressed: _changeTheme,
                icon: _themeMode == ThemeMode.light
                    ? const Icon(Icons.dark_mode)
                    : const Icon(Icons.light_mode),
              ),
            ),
          ],
          elevation: 5,
          title: const Text('App Responsive'),
        ),
        body: MyApp(changeLanguage: _changeLanguage),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final Function(Locale) changeLanguage;

  const MyApp({super.key, required this.changeLanguage});

  @override
  Widget build(BuildContext context) {
    //Color c1 = const Color.fromARGB(255, 23, 47, 185).withOpacity(0.7);
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.surface,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.titleApp,
          //style: TextStyle(color: theme.onPrimaryContainer),
        ),
        actions: [
          DropdownButton<Locale>(
            value: Localizations.localeOf(context),
            icon: const Icon(Icons.language),
            items: const [
              DropdownMenuItem(
                value: Locale('en'),
                child: Text('English'),
              ),
              DropdownMenuItem(
                value: Locale('es'),
                child: Text('Español'),
              ),
            ],
            onChanged: (Locale? newLocale) {
              if (newLocale != null) {
                changeLanguage(newLocale);
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.helloWorld,
              style: TextStyle(
                color: theme.onPrimaryContainer,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: theme.primaryContainer,
              ),
              height: 200.h,
              width: 200.w,
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.quoteLan,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
