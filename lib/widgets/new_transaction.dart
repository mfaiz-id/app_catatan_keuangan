import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;

  NewTransaction({Key? key, required this.addTransaction}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(
                label: Text('Title'),
              ),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text('Amount'),
              ),
              controller: amountController,
            ),
            TextButton(
              child: const Text(
                'Record Data',
                style: TextStyle(color: Colors.purple),
              ),
              onPressed: () => {
                addTransaction(
                  titleController.text,
                  double.parse(amountController.text),
                )
              },
            )
          ],
        ),
      ),
    );
  }
}
