import 'package:flutter/material.dart';
import 'package:flutter_pix/transferir_informa%C3%A7oes_2.dart';

class CopiaCola extends StatefulWidget {
  const CopiaCola({ Key? key }) : super(key: key);

  @override
  _CopiaColaState createState() => _CopiaColaState();
}

class _CopiaColaState extends State<CopiaCola> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 0,left: 90, right:90),
                child: Text('Informe o código do QR code para pagar', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15,left: 30, right:0),
            child: Text('Código',style: TextStyle(color:Colors.blue, fontSize: 25),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0,left: 50, right:50),
            child: TextField(
              style: TextStyle(fontSize: 28, color:Colors.black54,),textAlign:TextAlign.center,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 267.4, bottom: 0,left: 0, right: 0),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(onPressed: (){
                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => TransferirInformacoes2()),
                                );
                },
                child: Text('Continuar',style: TextStyle(color: Colors.white,fontSize: 18)),
                color: Colors.indigo.shade900,
                ),
              ),
            )
        ],
      ),
    );
  }
}