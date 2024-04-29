import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  @override
  _DropdownListState createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  List<String> dropdownValues = ['Option 1', 'Option 2', 'Option 3'];
  List<String> dropdownDescriptions = [
    'Description for Option 1',
    'Description for Option 2',
    'Description for Option 3'
  ];
  List<DropdownMenuItem<String>> dropdownItems = [];

  @override
  void initState() {
    super.initState();
    dropdownItems = dropdownValues
        .map((value) => DropdownMenuItem<String>(
              value: value,
              child: ListTile(
                title: Text(value),
                subtitle: Text(dropdownDescriptions[
                    dropdownValues.indexOf(value)]), // Exibir a descrição correspondente
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown List Example'),
      ),
      body: ListView.builder(
        itemCount: dropdownValues.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<String>(
              value: dropdownValues[index],
              items: dropdownItems,
              onChanged: (value) {
                setState(() {
                  dropdownValues[index] = value!;
                });
              },
            ),
          );
        },
      ),
    );
  }
}