import 'package:flutter/material.dart';
import 'package:flutter_pix/limite_pix.dart';
import 'package:flutter_pix/minhas_chaves.dart';

class Area extends StatefulWidget {
  const Area({ Key? key }) : super(key: key);

  @override
  _AreaState createState() => _AreaState();
}

class _AreaState extends State<Area> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text('Área Pix'),
      ),
    body:Padding(
      padding: const EdgeInsets.only(bottom: 200,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(  
            height: 160,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue.shade700,            
            child: Row(   
              mainAxisAlignment: MainAxisAlignment.spaceBetween,    
              children: [  
                InkWell(            
                  onTap: (){},     
                 child: Padding(
                   padding: const EdgeInsets.only(top: 35, bottom: 0,right: 25,left: 25),
                       child:Column(   
                         children: [  
                               Image.asset(
                                  'assets/icons/icon_transfer.png',height: 60,width: 70,                          
                                ),     
                          Padding(
                            padding: const EdgeInsets.only(top: 0, bottom: 40,),
                            child: Text('Transferir',style: TextStyle(color: Colors.white),),
                          ),
                         ]
                       ),
                 ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, bottom: 0,),
                    child: InkWell(
                    onTap: (){},
                     child: Row(
                       children: [
                             Column(   
                               children: [                                     
                                     Image.asset(
                                        'assets/icons/icon_copying.png',height: 60,width: 70,                          
                                      ),         
                                   Text('Pix Copia e Cola',style: TextStyle(color: Colors.white),),       
                               ] 
                             ),
                             InkWell(
                    onTap: (){},
                 child: Padding(
                     padding: const EdgeInsets.only(top: 0, bottom: 10,right: 30,left: 50),   
                           child: Column(   
                               children: [                        
                                     Image.asset(
                                        'assets/icons/icon_qrcode.png',height: 60,width: 70,                          
                                      ),                                
                                Padding(
                                  padding: const EdgeInsets.only(top: 0, bottom: 30,),
                                  
                                  child: Text('Ler QR code',style: TextStyle(color: Colors.white),),
                               ), 
                             ]  
                           ),
                          ),
                        ), 
                       ]                 
                     ), 
                   ) 
                  ),
                 ],          
               ),    
             ),
              Container(
                 width: MediaQuery.of(context).size.width,
                 height: 50,
                 color: Colors.grey.shade200,
                 child: Padding(
                   padding: const EdgeInsets.only(top: 15, bottom: 0,left: 15),
                   child: Text('Configurações Pix', style: TextStyle(color: Colors.blue.shade900,fontSize: 15,fontWeight: FontWeight.w600),),
                 ),
               ),   
               InkWell(
                 onTap: (){
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Chaves()),
                      );
                 },
                 child: Container(
                   color: Colors.white70,
                   alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                  child: Column(
                    children: [  
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 4,left: 0,right: 70),
                        child: Text('Minhas chaves',style: TextStyle(fontSize:17,fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15),
                        child: Text('Gerendie todas as suas chaves Pix',style: TextStyle(fontSize: 13,color: Colors.grey.shade600),),
                      )
                    ],
                  ), 
                 ),
               ),
                 InkWell(
                   onTap: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LimitePix()),
                      );
                   },
                   child: Container(
                     color: Colors.white70,
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 4,left: 0,right: 182),
                          child: Text('Meu limite Pix', style: TextStyle(fontSize:17,fontWeight: FontWeight.w600,),),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15),
                            child: Text('Defina o seu limite diario para transferências com Pix',style: TextStyle(fontSize: 13,color: Colors.grey.shade600),),
                         ),
                      ],
                    ),
                   ),
                 ),
               ], 
              ),
            ),
            backgroundColor: Colors.grey.shade200,
          );
       }
     }

