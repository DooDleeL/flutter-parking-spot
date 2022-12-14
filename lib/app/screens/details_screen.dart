import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/menu_component.dart';
import '../controllers/parking_spot_controller.dart';
import '../models/parking_spot_model.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.object}) : super(key: key);

  final ParkingSpotModel object;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var controller = ParkingSpotController.parkingSpotController;

  TextEditingController _parkingSpotNumberController = TextEditingController();
  TextEditingController _licensePlateCarController = TextEditingController();
  TextEditingController _brandCarController = TextEditingController();
  TextEditingController _modelCarController = TextEditingController();
  TextEditingController _colorCarController = TextEditingController();
  TextEditingController _responsibleNameController = TextEditingController();
  TextEditingController _apartamentController = TextEditingController();
  TextEditingController _blockController = TextEditingController();

  void initState() {
    super.initState();

    _parkingSpotNumberController.text = widget.object.parkingSpotNumber;
    _licensePlateCarController.text = widget.object.licensePlateCar;
    _brandCarController.text = widget.object.brandCar;
    _modelCarController.text = widget.object.modelCar;
    _colorCarController.text = widget.object.colorCar;
    _responsibleNameController.text = widget.object.responsibleName;
    _apartamentController.text = widget.object.apartment;
    _blockController.text = widget.object.block;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      drawer: Menu(context),
      body: Column(
        children: [
          Text(
            'Número da Vaga',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          TextField(
            enabled: false,
            textAlign: TextAlign.center,
            controller: _parkingSpotNumberController,
          ),
          Text(
            'Placa',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 16),
          TextField(
            enabled: false,
            textAlign: TextAlign.center,
            controller: _licensePlateCarController,
          ),
          Text(
            'Marca do Carro',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 16),
          TextField(
            enabled: false,
            textAlign: TextAlign.center,
            controller: _brandCarController,
          ),
          Text(
            'Modelo do Carro',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 16),
          TextField(
            enabled: false,
            textAlign: TextAlign.center,
            controller: _modelCarController,
          ),
          Text(
            'Cor do Carro',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 16),
          TextField(
            enabled: false,
            textAlign: TextAlign.center,
            controller: _colorCarController,
          ),
          Text(
            'Responsável',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 16),
          TextField(
            enabled: false,
            textAlign: TextAlign.center,
            controller: _responsibleNameController,
          ),
          Text(
            'Apartamento',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 16),
          TextField(
            enabled: false,
            textAlign: TextAlign.center,
            controller: _apartamentController,
          ),
          Text(
            'Bloco',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 16),
          TextField(
            enabled: false,
            textAlign: TextAlign.center,
            controller: _blockController,
          ),
        ],
      ),
    );
  }
}
