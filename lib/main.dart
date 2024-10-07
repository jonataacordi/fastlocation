import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'src/http/dio_client.dart';

void main() {
  runApp(FastLocationApp());
}

class FastLocationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FastLocation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController cepController = TextEditingController();
  String? address;
  List<String> searchHistory = []; // Histórico de endereços

  void buscarEndereco(String cep) async {
    try {
      final response = await DioClient.dio.get('/$cep/json/');
      if (response.statusCode == 200) {
        String foundAddress =
            '${response.data['logradouro']}, ${response.data['bairro']}, ${response.data['localidade']}';
        setState(() {
          address = foundAddress;
          searchHistory.add(foundAddress); // Adiciona ao histórico
        });
      } else {
        throw Exception('Erro ao buscar endereço');
      }
    } catch (e) {
      print('Erro: $e');
      setState(() {
        address = null;
      });
    }
  }

  void abrirGoogleMaps() async {
    if (address != null) {
      final url = 'https://www.google.com/maps/search/?api=1&query=$address';
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalApplication, // Abre no app do navegador ou Google Maps
        );
      } else {
        throw 'Não foi possível lançar $url';
      }
    } else {
      print('Endereço não disponível');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/src/shared/img/background.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fast Location',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    TextField(
                      controller: cepController,
                      decoration: InputDecoration(
                        labelText: 'Digite seu CEP',
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        String cep = cepController.text;
                        buscarEndereco(cep);
                      },
                      child: Text('Buscar'),
                    ),
                    if (address != null) ...[
                      SizedBox(height: 20),
                      Text(
                        'Endereço: $address',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: abrirGoogleMaps,
                        child: Text('Ver Rota no Google Maps'),
                      ),
                    ],
                    if (searchHistory.isNotEmpty) ...[
                      SizedBox(height: 20),
                      Text(
                        'Endereços pesquisados recentemente:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      for (var addr in searchHistory.reversed) // Exibe do mais recente
                        ListTile(
                          title: Text(addr),
                          onTap: () {
                            setState(() {
                              address = addr;
                            });
                          },
                        ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
