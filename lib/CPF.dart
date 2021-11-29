import 'package:flutter/material.dart';

import 'minhas_chaves.dart';

class CPF extends StatefulWidget {
  const CPF({ Key? key }) : super(key: key);

  @override
  _CPFState createState() => _CPFState();
}

class _CPFState extends State<CPF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova chave'),
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
                child: Text('Informe o CPF para criar a chave Pix', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
              ),
            ),
          
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 0,left: 50, right:50),
            child: TextField(
              style: TextStyle(fontSize: 28, color:Colors.black54,),textAlign:TextAlign.center,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 311.4, bottom: 0,left: 0, right: 0),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(onPressed: (){
               showModalBottomSheet(context: context, builder: (BuildContext bc){
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
                child: Text('Registrar chave',style: TextStyle(color: Colors.white,fontSize: 18)),
                color: Colors.indigo.shade900,
                ),
              ),
            )
        ],
      ),      
    );
  }
}