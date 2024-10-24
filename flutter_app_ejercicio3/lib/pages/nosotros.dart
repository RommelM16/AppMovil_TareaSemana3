import 'package:flutter/material.dart';

// Clase principal página Nosotros
class NosotrosPage extends StatefulWidget {
  const NosotrosPage({super.key});

  @override
  State<NosotrosPage> createState() => _NosotrosPageState();
}

class _NosotrosPageState extends State<NosotrosPage> {
  double _opacidad = 0; // Inicializa la opacidad en 0

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacidad = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nosotros'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Center(
              child: AnimatedOpacity(
                opacity: _opacidad, //nivel de opacidad del widget hijo
                duration: const Duration(
                    seconds:
                        6), // establece la duración de la animación.
                child: Card.filled(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'images/1.png',
                          width: 200,
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "¿Quiénes somos?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            fontFamily: 'RocknRoll One',
                            color: Colors.amber,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "En EsenTICs, somos un equipo apasionado de profesionales en tecnología, "
                          "dedicados a ofrecer soluciones de software personalizadas y soporte técnico de primer nivel. "
                          "Con años de experiencia en el sector, entendemos las necesidades de nuestros clientes y trabajamos "
                          "para crear productos que se adapten a sus requerimientos específicos. Nuestra misión es ser tu aliado "
                          "estratégico en el mundo digital, garantizando eficiencia y calidad en cada proyecto.",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "¡Conócenos y únete a nuestra comunidad!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 13, 35, 53),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.home,
          color: Colors.blue,
        ),
      ),
    );
  }
}
