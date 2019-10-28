import 'package:enuchat/models/model_message.dart';
import 'package:flutter/material.dart';

class Mensagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5.0),
      itemCount: listaMensagens.length,
      itemBuilder: (BuildContext context, int position) {
        return Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                radius: 25.0,
                backgroundImage:
                    NetworkImage(listaMensagens[position].imageUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    listaMensagens[position].nome,
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(listaMensagens[position].horario,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black45,
                      )),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(listaMensagens[position].mensagem,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black45
                    )),
              ),
            ),
            Divider(height: 5.0, indent: 70.0,),
          ],
        );
      },
    );
  }
}
