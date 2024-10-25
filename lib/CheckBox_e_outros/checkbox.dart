import 'package:flutter/material.dart';

class WidgetExample extends StatefulWidget {
  const WidgetExample({super.key});

  @override
  State<WidgetExample> createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetExample> {
  // Estado dos widgets
  bool _isChecked = false;  // Estado do Checkbox
  bool _isSwitched = false; // Estado do Switch
  double _sliderValue = 0;  // Valor do Slider
  String _selectedRadio = 'Opção 1'; // Valor selecionado do Radio

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox, Switch, Slider, Radio Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Checkbox
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Text('Checkbox: ${_isChecked ? "Checked" : "Unchecked"}'),
              ],
            ),

            const SizedBox(height: 20),

            // Switch
            Row(
              children: [
                Switch(
                  value: _isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                ),
                Text('Switch: ${_isSwitched ? "On" : "Off"}'),
              ],
            ),

            const SizedBox(height: 20),

            // Slider
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Slider value: ${_sliderValue.toStringAsFixed(1)}'),
                Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: _sliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Radio buttons
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Selected Radio: $_selectedRadio'),
                ListTile(
                  title: const Text('Opção 1'),
                  leading: Radio<String>(
                    value: 'Opção 1',
                    groupValue: _selectedRadio,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedRadio = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Opção 2'),
                  leading: Radio<String>(
                    value: 'Opção 2',
                    groupValue: _selectedRadio,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedRadio = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}