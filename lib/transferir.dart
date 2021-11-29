import 'package:flutter/material.dart';
import 'package:flutter_pix/transferir_chavepix.dart';

class Transferir extends StatefulWidget {
  const Transferir({ Key? key }) : super(key: key);

  @override
  _TransferirState createState() => _TransferirState();
}

class _TransferirState extends State<Transferir> {
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
                child: Text('Qual é o valor da transferência?', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 0,left: 25, right: 0),
              child: Text('Digite um valor', style: TextStyle(color: Colors.blue.shade500, fontSize: 20),),
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
              padding: const EdgeInsets.only(top: 0, bottom: 7,left: 0, right: 0),
              child: Container(child: Center(child: Text('ou adicione',style: TextStyle(fontSize: 12,color: Colors.black54),))),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0,left: 45, right: 10),
                child: SizedBox(
                  height: 30,
                  width: 66,
                  child: RaisedButton(onPressed: (){},
                  color: Colors.blue,
                  child: Text('+10',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ),
                
              ),
               Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0,left: 5, right: 10),
                child: SizedBox(
                  height: 30,
                  width: 66,
                  child: RaisedButton(onPressed: (){},
                   color: Colors.blue,
                    child: Text('+25',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0,left: 5, right: 10),
                child: SizedBox(
                  height: 30,
                  width: 66,
                  child: RaisedButton(onPressed: (){},
                   color: Colors.blue,
                    child: Text('+50',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0,left: 5, right: 20),
                child: SizedBox(
                  height: 30,
                  width: 78,
                  child: RaisedButton(onPressed: (){},
                   color: Colors.blue,
                    child: Text('+100',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ),
              ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 0,left: 25, right: 0),
                    child: Text('Saldo disponível em conta:',style: TextStyle(fontSize: 15, color: Colors.blue),),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 0,left: 10, right: 0),
                    child: Text('R\$ 1.000,00',style: TextStyle(fontSize: 16, color: Colors.blue.shade900)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 183.4, bottom: 0,left: 0, right: 0),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(onPressed: (){
                Navigator.of(context).push(
                 MaterialPageRoute(builder: (context) => TransferirChavePix()),
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