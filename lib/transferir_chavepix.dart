import 'package:flutter/material.dart';
import 'package:flutter_pix/transferir_informa%C3%A7oes.dart';

class TransferirChavePix extends StatefulWidget {
  const TransferirChavePix({ Key? key }) : super(key: key);

  @override
  _TransferirChavePixState createState() => _TransferirChavePixState();
}

class _TransferirChavePixState extends State<TransferirChavePix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferir'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 0,left: 60, right:60),
                child: Text('Para quem você quer transferir R\$ 150.00 ?', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
              ),
          ),
           Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 0,left: 25, right: 0),
              child: Text('Chave Pix', style: TextStyle(color: Colors.blue.shade500, fontSize: 20),),
            ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5,left: 45, right: 51),
              child: TextField(
                style: TextStyle(fontSize: 28, color:Colors.black54,),textAlign:TextAlign.center,
              ),
            ),
          ),
           Padding(
              padding: const EdgeInsets.only(top: 283.4, bottom: 0,left: 0, right: 0),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(onPressed: (){
                Navigator.of(context).push(
                 MaterialPageRoute(builder: (context) => TransferirInformacoes()),
                );
                },
                child: Text('Transferir para este CPF',style: TextStyle(color: Colors.white,fontSize: 18)),
                color: Colors.indigo.shade900,
                ),
              ),
            )
        ],
      ),
    );
  }
}