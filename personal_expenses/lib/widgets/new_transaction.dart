import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleInputController = TextEditingController();
  final amountInputContoller = TextEditingController();

  NewTransaction(this.addTx);

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
          ),
          FlatButton(
            onPressed: () {
              addTx(titleInputController.text,
                  double.parse(amountInputContoller.text));
            },
            child: Text("Add Transaction"),
            textColor: Colors.purple,
          )
        ]),
      ),
    );
  }
}
