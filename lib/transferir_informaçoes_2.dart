import 'package:flutter/material.dart';

import 'area_pix.dart';

class TransferirInformacoes2 extends StatefulWidget {
  const TransferirInformacoes2({ Key? key }) : super(key: key);

  @override
  _TransferirInformacoes2State createState() => _TransferirInformacoes2State();
}

class _TransferirInformacoes2State extends State<TransferirInformacoes2> {
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
                child: Text('Transferindo R\$ 150.00 para Fulano de tal', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0,left: 20, right: 20),
            child: TextField(
              decoration: 
              InputDecoration(
                labelText: ('Escreva uma mensagem'),
                labelStyle: TextStyle(color: Colors.grey,fontSize: 20),
              ),
              style: TextStyle(fontSize: 20,color: Colors.grey),
            ),
          ),
           Padding(
              padding: const EdgeInsets.only(top: 45, bottom: 0,left: 25, right: 0),
              child: Text('Informações adicionais', style: TextStyle(color: Colors.blue.shade500, fontSize: 20),),
            ),
            Row(
              children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 35, bottom: 0,left: 35, right: 0),
                   child: Text('CPF:',style: TextStyle(color: Colors.grey, fontSize: 18)),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 35, bottom: 0,left: 25, right: 0),
                   child: Text('CPF do Fulano',style: TextStyle(color: Colors.black87, fontSize: 18)),
                 )
              ],
            ),
            Row(
              children: [
                
                 Padding(
                   padding: const EdgeInsets.only(top: 30, bottom: 0,left: 35, right: 0),
                   child: Text('Instituição:',style: TextStyle(color: Colors.grey, fontSize: 18)),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 30, bottom: 0,left: 25, right: 0),
                   child: Text('Banco do Fulano',style: TextStyle(color: Colors.black87, fontSize: 18)),
                 )
              ],
            ),
             Row(
              children: [
                
                 Padding(
                   padding: const EdgeInsets.only(top: 30, bottom: 0,left: 35, right: 0),
                   child: Text('Identificador:',style: TextStyle(color: Colors.grey, fontSize: 18)),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 30, bottom: 0,left: 25, right: 0),
                   child: Text('Codidentif',style: TextStyle(color: Colors.black87, fontSize: 18)),
                 )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 96.4, bottom: 0,left: 0, right: 0),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(onPressed: (){
                showModalBottomSheet(context: context,
                   builder: (BuildContext bc){
                     return Container(
                       height: 290,
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Center(child: Text('VALIDAR SENHA',style: TextStyle(color: Colors.white,fontSize: 16),)),
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, bottom: 0,left: 20, right: 20),
                              child: TextField(  
                                
                                decoration:  
                                InputDecoration(
                                  suffixIcon: Icon(Icons.visibility_off),
                                   
                                  labelText: 'Senha do aplicativo',
                                  labelStyle: TextStyle(color: Colors.grey.shade700,fontSize: 15)
                                ),
                                style: TextStyle(fontSize: 20,color: Colors.grey),  
                                obscureText: true, obscuringCharacter: "*",
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top: 102.7, bottom: 0,left: 0, right: 0),
                            child: Container(
                              height: 65,
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(onPressed: (){
                                Navigator.pop(context);
                                
                              },
                                
                              
                              child: Text('Confirmar',style: TextStyle(color: Colors.white,fontSize: 18),),
                              color: Colors. indigo.shade900,
                             )
                            )
                            ,
                          )
                        ],
                      ),
                     );
                   }
                   );
                },
                child: Text('Transferir',style: TextStyle(color: Colors.white,fontSize: 18)),
                color: Colors.indigo.shade900,
                ),
              ),
            )
        ],
      ),
    );
  }
}