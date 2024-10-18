import 'package:azkaban_bulletin/data/repositories/posts_repo.dart';
import 'package:azkaban_bulletin/data/repositories/repositories.dart';
import 'package:azkaban_bulletin/data/repositories/tags_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/themes/app_themes.dart'; // Ensure this file exists with proper theme setup
import 'presentation/routers/router_import.dart'; // Your router setup
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(RepositoryProvider(
    create: (context) => Repositories(tagsRepo: TagsRepo(), postsRepo: PostsRepo()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter(); // Initialize AppRouter

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'AzkabanBulletin',
            theme: AppThemes.dark, // Apply the dark theme
            routerConfig:
                _appRouter.config(), // Use the auto_route configuration
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
