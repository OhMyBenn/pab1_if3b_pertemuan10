import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Demo'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue, 
      ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Ini adalah contoh penggunaan Container',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // Tombol Elevated
              ElevatedButton(
                onPressed: () {
                  // Arahkan ke halaman Galeri Foto
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GaleriFoto()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 12),
                ),
                child: const Text(
                  'Tombol Elevated',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 8),
                  Text(
                    'Rating: 4.5',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Gambar dari URL
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  'https://picsum.photos/id/7/300/200',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }


class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Foto'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar dari URL
            Image.network(
              'https://picsum.photos/id/88/300/200',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),

            // Konten teks
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Jalan di Barcelona',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Row(
                    children: const [
                      Icon(Icons.place, color: Colors.red),
                      SizedBox(width: 4),
                      Text('Lokasi: Barcelona, Spanyol'),
                    ],
                  ),
                  const SizedBox(height: 4),

                  Row(
                    children: const [
                      Icon(Icons.calendar_month, color: Colors.blue),
                      SizedBox(width: 4),
                      Text('Publikasi: 13 Agustus 2013'),
                    ],
                  ),

                  const Divider(height: 24, thickness: 1),

                  const Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Sebuah persimpangan jalan di Barcelona, Spanyol. '
                    'Foto ini menampilkan berbagai kendaraan yang bergerak dalam '
                    'arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.',
                    style: TextStyle(fontSize: 16, height: 1.4),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
