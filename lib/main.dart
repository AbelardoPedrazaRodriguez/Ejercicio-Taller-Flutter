import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    botton(Icons.book, 'Agenda', () {}),
                    botton(Icons.add, 'Añadir Nueva tarea', () {}),
                    botton(Icons.switch_access_shortcut_outlined, 'Compartir tarea',
                        () {}),
                    const Spacer(),
                    botton(Icons.settings, 'Ajustes', () {}),
                    botton(Icons.alarm, 'Programar Alarma', () {}),
                    botton(Icons.archive, 'Ver Tareas Archivadas', () {}),
                    botton(Icons.calendar_month, 'Ver Calendario', () {}),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Tareas Programadas',
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 35,
                          ),
                          SizedBox(width: 800),
                          Icon(Icons.link),
                          SizedBox(width: 20),
                          Text('Compartir'),
                          SizedBox(width: 20),
                          Icon(Icons.more_vert),
                          //
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          nota(),
                          const SizedBox(width: 40),
                          nota(),
                          const SizedBox(width: 40),
                          nota(),
                          const SizedBox(width: 40),
                          nota(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/RockstarFreddyNightCompleteUCN.png',
                  width: 200, // Escala menor para la imagen
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  nota() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 131, 128, 128),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 134, 28, 255),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              const Text('Tarea Pendiente'),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'Actividad Pendiente del día'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[100]),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'Completar',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(text),
          ],
        ),
      ),
    );
  }
}
