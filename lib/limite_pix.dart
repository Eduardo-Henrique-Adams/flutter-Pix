import 'package:flutter/material.dart';
import 'package:flutter_pix/area_pix.dart';

class LimitePix extends StatefulWidget {
  const LimitePix({ Key? key }) : super(key: key);

  @override
  _LimitePixState createState() => _LimitePixState();
}

class _LimitePixState extends State<LimitePix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu limite Pix'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 145,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 0,left: 35, right: 35),
              child: Text('Informe o valor de limite diario para o Pix', style:TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600,),textAlign: TextAlign.center,),

            ),
          ),
          
       Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 0,left: 40, right: 0),
            child: Text('Digite um valor',style: TextStyle(color: Colors.blue.shade500,fontSize: 22))
          ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5,left: 45, right: 51),
            child: TextField(
              style: TextStyle(fontSize: 28,color: Colors.black54),textAlign:TextAlign.center
            ),  
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 3,left: 0, right: 0),
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
        
           Padding(
             padding: const EdgeInsets.only(top: 238.4, bottom: 0,left: 0, right: 0),
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
                                 Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => Area()),
                                );
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

                color: Colors.indigo.shade900,
                  child: Text('Definir valor',style: TextStyle(color: Colors.white,fontSize: 18)),
                ),
              ),
           ),
          
        ],  
         
      ),
    );
  }
}