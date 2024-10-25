import 'package:flutter/material.dart';

class DateTimePickerExample extends StatefulWidget {
  const DateTimePickerExample({super.key});

  @override
  State<DateTimePickerExample> createState() => _DateTimePickerExampleState();
}

class _DateTimePickerExampleState extends State<DateTimePickerExample> {
  DateTime? _selectedDate; // Armazena a data selecionada
  TimeOfDay? _selectedTime; // Armazena a hora selecionada

  // Função para mostrar o DatePicker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Data inicial
      firstDate: DateTime(2000),   // Data mínima
      lastDate: DateTime(2100),    // Data máxima
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate; // Atualiza a data selecionada
      });
    }
  }

  // Função para mostrar o TimePicker
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(), // Hora inicial
    );
    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime; // Atualiza a hora selecionada
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time Picker Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Exibe a data selecionada ou uma mensagem padrão
            Text(
              _selectedDate == null
                  ? 'Nenhuma data selecionada'
                  : 'Data selecionada: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),

            // Botão para selecionar a data
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Selecione uma data'),
            ),

            const SizedBox(height: 32),

            // Exibe a hora selecionada ou uma mensagem padrão
            Text(
              _selectedTime == null
                  ? 'Nenhuma tempo selecionado'
                  : 'Tempo selecionado: ${_selectedTime!.format(context)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),

            // Botão para selecionar a hora
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: const Text('Tempo selecionado'),
            ),
          ],
        ),
      ),
    );
  }
}