import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleInputController = TextEditingController();

  final amountInputContoller = TextEditingController();

  void submittedData() {
    final enteredTitle = titleInputController.text;
    final enteredAmount = double.parse(amountInputContoller.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.addTx(
      enteredTitle,
      enteredAmount,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleInputController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountInputContoller,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => submittedData(),
          ),
          FlatButton(
            onPressed: () => submittedData(),
            child: Text("Add Transaction"),
            textColor: Colors.purple,
          )
        ]),
      ),
    );
  }
}
