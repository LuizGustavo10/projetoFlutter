import 'package:flutter/material.dart';

import '../my_app.dart';

class ContactList extends StatelessWidget {
  var lista = [
    {'nome':'Deku','telefone':'(44)91111-1111', 'avatar':'https://media.tenor.com/images/bd54bef392a04239c6b46a976a473a43/tenor.gif'},
    {'nome':'All-might','telefone':'(44)92222-2222', 'avatar':'https://giffiles.alphacoders.com/103/103159.gif'},
    {'nome':'Uraraka','telefone':'(44)933333-3333', 'avatar':'https://66.media.tumblr.com/8685b856b3495a119bf4913e4783a093/tumblr_o5s0bf6laz1qa94xto2_500.gif'},
  ];

  @override
  Widget build(BuildContext context) {
    //define componentes por padrão
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed:(){
              Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
            }
            )
        ],
        ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i){
          var contato = lista[i];
          var avatar = CircleAvatar(backgroundImage: NetworkImage(contato['avatar']),);
          return ListTile(
            leading: avatar,
            title: Text(contato['nome']),
            subtitle: Text(contato['telefone']),
            trailing: Container(
              width: 100,
              child:Row(
                children: [
                  IconButton(icon: Icon(Icons.edit), onPressed: null),
                  IconButton(icon: Icon(Icons.delete), onPressed: null),

                ],
              )
              ),
          );
        },
      ),
    );
  }
}