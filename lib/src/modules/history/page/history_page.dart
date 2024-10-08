import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controller/history_controller.dart';
import '../../home/components/address_list_component.dart';
import '../../home/model/address_model.dart';
import '../../home/repositories/address_local_repository.dart'; // Adicione esta importação se necessário

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late HistoryController controller;

  @override
  void initState() {
    super.initState();
    controller = HistoryController(AddressLocalRepository());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico de Consultas'),
      ),
      body: Observer(
        builder: (_) {
          if (controller.history.isEmpty) {
            return Center(
              child: Text('Nenhum histórico encontrado.'),
            );
          } else {
            return AddressListComponent(
              addresses: controller.history.toList(),
              onTap: (address) {
                // Implementar ação ao clicar no endereço, se necessário
              },
            );
          }
        },
      ),
    );
  }
}
