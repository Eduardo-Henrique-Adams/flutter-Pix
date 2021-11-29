import 'package:flutter/material.dart';
import 'package:flutter_pix/CPF.dart';
import 'package:flutter_pix/celular.dart';
import 'package:flutter_pix/email.dart';

class Chaves extends StatefulWidget {
  const Chaves({ Key? key }) : super(key: key);

  @override
  _ChavesState createState() => _ChavesState();
}

class _ChavesState extends State<Chaves> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Minhas chaves'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 0,),
        child: Column( 
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 0,left: 30, right: 30),
                child: Text('Gerencie suas chaves para receber transferências pelo Pix', style:TextStyle(color: Colors.white, fontSize:24, fontWeight: FontWeight.w600,),textAlign: TextAlign.center,
            ),
              )
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 0,left: 15),
                child: Text('Minhas chaves', style: TextStyle(color: Colors.blue.shade900,fontSize: 15,fontWeight: FontWeight.w600),),
              ),
            ),
             Container(
                width:MediaQuery.of(context).size.width, 
                color: Colors.white70,
                height: 60,
                child: Row(
                  children: [
                    Padding(
                           padding: const EdgeInsets.only(top: 0, bottom: 0,left: 10, right: 0),
                           child: Image.asset('assets/icons/shield_icon.png',width: 28, height: 28,),
                         ),  
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [   
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 0,left: 15, right: 0),
                          child: Text('Chave aleatória', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,)
                        ),
                        
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15),
                          child: Text('mdahdajsfb-jansdnenajsdja123dmas', style: TextStyle(fontSize: 13, color: Colors.grey.shade600),),
                        ),
                      ],
                    ),
                        Padding(
                           padding: const EdgeInsets.only(top: 0, bottom: 0,left: 105, right: 0),
                           child: InkWell(
                             onTap: (){
                               showModalBottomSheet(context: context,
                                builder: (BuildContext bc){
                                  return Container(
                                    height: 200,
                                   child: Column(
                                     children: [
                                       Container(
                                          height: 60,
                                           width: MediaQuery.of(context).size.width,
                                         child: Row(
                                           children: [
                                             Column(
                                               children: [
                                                  
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 12, bottom: 0,left: 120, right: 0),
                                                  child: Center(child: Text('Chave aleatoria',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,),)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 5, bottom: 0,left:  120, right: 0),
                                                  child: Text('mdahdajsfb-jansdnenajsdja123dmas',style: TextStyle(fontSize: 10, color: Colors.grey.shade600),),
                                                ),
                                                
                                               ],
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(top: 10, bottom: 25,left: 90, right: 0),
                                               child:InkWell(
                                                 onTap: (){
                                                   Navigator.pop(context);
                                            
                                                 },
                                                 child: Icon(Icons.close,)),
                                             )
                                           ],
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 15, bottom: 0,left: 0, right: 0),
                                         child: InkWell(
                                           onTap: (){},
                                           child: Container(
                                             
                                              width: MediaQuery.of(context).size.width,
                                              height: 40,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Image.asset('assets/icons/share_icon.png'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Text('Compartilhar chave',style: TextStyle(fontSize: 12),),
                                                )  
                                              ],
                                            ),
                                           ),
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 15, bottom: 0,left: 0, right: 0),
                                         child: InkWell(
                                           onTap: (){},
                                           child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 40,
                                              
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Image.asset('assets/icons/delete_icon.png'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Text('Excluir chave', style: TextStyle(color: Colors.red,fontSize: 12),),
                                                ),
                                              
                                              ],
                                            ),
                                              
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                                 );
                                }
                                );
                             },
                             child: Image.asset('assets/icons/pixoption_icon.png',width: 25, height:25,)),
                      ),
                   ], 
                ),  
              ),
               Container(
                width:MediaQuery.of(context).size.width, 
                color: Colors.white70,
                height: 60,
                child: Row(
                  children: [
                    Padding(
                           padding: const EdgeInsets.only(top: 0, bottom: 0,left: 10, right: 0),
                           child: Image.asset('assets/icons/email_icon.png',width: 28, height: 28,),
                         ),  
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [   
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 0,left: 15, right: 0),
                          child: Text('E-mail', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,)
                        ),
                        
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15),
                          child: Text('Email-fulano@email.com', style: TextStyle(fontSize: 13, color: Colors.grey.shade600),),
                        ),
                      ],
                    ),
                    
                        Padding(
                           padding: const EdgeInsets.only(top: 0, bottom: 0,left: 175, right: 0),
                           child: InkWell(
                             onTap: (){
                               showModalBottomSheet(context: context, 
                               builder: (BuildContext bc){
                                  return Container(
                                    height: 200,
                                   child: Column(
                                     children: [
                                       Container(
                                          height: 60,
                                           width: MediaQuery.of(context).size.width,
                                         child: Row(
                                           children: [
                                             Column(
                                               children: [
                                                  
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 12, bottom: 0,left: 160, right: 0),
                                                  child: Center(child: Text('E-mail',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,),)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 5, bottom: 0,left:  160, right: 0),
                                                  child: Text('Email-fulano@email.com',style: TextStyle(fontSize: 10, color: Colors.grey.shade600),),
                                                ),
                                                
                                               ],
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(top: 12, bottom: 25,left: 105, right: 0),
                                               child:InkWell(
                                                 onTap: (){
                                                  Navigator.pop(context);
                                            
                                                 },
                                                 child: Icon(Icons.close,)),
                                             )
                                           ],
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 15, bottom: 0,left: 0, right: 0),
                                         child: InkWell(
                                           onTap: (){},
                                           child: Container(
                                             
                                              width: MediaQuery.of(context).size.width,
                                              height: 40,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Image.asset('assets/icons/share_icon.png'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Text('Compartilhar chave',style: TextStyle(fontSize: 12),),
                                                )  
                                              ],
                                            ),
                                           ),
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 15, bottom: 0,left: 0, right: 0),
                                         child: InkWell(
                                           onTap: (){},
                                           child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 40,
                                              
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Image.asset('assets/icons/delete_icon.png'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Text('Excluir chave', style: TextStyle(color: Colors.red,fontSize: 12),),
                                                ),
                                              
                                              ],
                                            ),
                                              
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                                 );
                               }
                               );
                             },
                             child: Image.asset('assets/icons/pixoption_icon.png',width: 25, height:25,)),
                      ),
                   ], 
                ),  
              ),
              Container(
                width:MediaQuery.of(context).size.width, 
                color: Colors.white70,
                height: 60,
                child: Row(
                  children: [
                    Padding(
                           padding: const EdgeInsets.only(top: 0, bottom: 0,left: 10, right: 0),
                           child: Image.asset('assets/icons/document_icon.png',width: 28, height: 28,),
                         ),  
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [   
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 0,left: 15, right: 0),
                          child: Text('CPF', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,)
                        ),
                        
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15),
                          child: Text('123.123.123.-12', style: TextStyle(fontSize: 13, color: Colors.grey.shade600),),
                        ),
                      ],
                    ),
                    
                        Padding(
                           padding: const EdgeInsets.only(top: 0, bottom: 0,left: 225, right: 0),
                           child: InkWell(
                             
                             onTap: (){
                               showModalBottomSheet(context: context,
                                builder: (BuildContext bc){
                                return Container(
                                  height: 200,
                                   child: Column(
                                     children: [
                                       Container(
                                          height: 60,
                                           width: MediaQuery.of(context).size.width,
                                         child: Row(
                                           children: [
                                             Column(
                                               children: [
                                                  
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 12, bottom: 0,left: 175, right: 0),
                                                  child: Center(child: Text('CPF',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,),)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 5, bottom: 0,left:  175, right: 0),
                                                  child: Text('123.123.123-12',style: TextStyle(fontSize: 10, color: Colors.grey.shade600),),
                                                ),
                                                
                                               ],
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(top: 12, bottom: 25,left: 130, right: 0),
                                               child:InkWell(
                                                 onTap: (){
                                                  Navigator.pop(context);
                                            
                                                 },
                                                 child: Icon(Icons.close,)),
                                             )
                                           ],
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 15, bottom: 0,left: 0, right: 0),
                                         child: InkWell(
                                           onTap: (){},
                                           child: Container(
                                             
                                              width: MediaQuery.of(context).size.width,
                                              height: 40,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Image.asset('assets/icons/share_icon.png'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Text('Compartilhar chave',style: TextStyle(fontSize: 12),),
                                                )  
                                              ],
                                            ),
                                           ),
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 15, bottom: 0,left: 0, right: 0),
                                         child: InkWell(
                                           onTap: (){},
                                           child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 40,
                                              
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Image.asset('assets/icons/delete_icon.png'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Text('Excluir chave', style: TextStyle(color: Colors.red,fontSize: 12),),
                                                ),
                                              
                                              ],
                                            ),
                                              
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                                 );
                               }
                               );
                             },
                             child: Image.asset('assets/icons/pixoption_icon.png',width: 25, height:25,)),
                      ),
                   ], 
                ),  
              ),
              Container(
                width:MediaQuery.of(context).size.width, 
                color: Colors.white70,
                height: 60,
                child: Row(
                  children: [
                    Padding(
                           padding: const EdgeInsets.only(top: 0, bottom: 0,left: 10, right: 0),
                           child: Image.asset('assets/icons/phone_icon.png',width: 28, height: 28,),
                         ),  
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [   
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 0,left: 15, right: 0),
                          child: Text('Celuar', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,)
                        ),
                        
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15),
                          child: Text('(99) 999999999', style: TextStyle(fontSize: 13, color: Colors.grey.shade600),),
                        ),
                      ],
                    ),
                        Padding(
                           padding: const EdgeInsets.only(top: 0, bottom: 0,left: 227, right: 0),
                           child: InkWell(
                             
                             onTap: (){
                               showModalBottomSheet(context: context, 
                               builder: (BuildContext bc){
                                 return Container(
                                   height: 200,
                                   child: Column(
                                     children: [
                                       Container(
                                          height: 60,
                                           width: MediaQuery.of(context).size.width,
                                         child: Row(
                                           children: [
                                             Column(
                                               children: [
                                                  
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 12, bottom: 0,left: 175, right: 0),
                                                  child: Center(child: Text('Celular',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,),)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 5, bottom: 0,left:  175, right: 0),
                                                  child: Text('(99) 999999999',style: TextStyle(fontSize: 10, color: Colors.grey.shade600),),
                                                ),
                                                
                                               ],
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(top: 12, bottom: 25,left: 130, right: 0),
                                               child:InkWell(
                                                 onTap: (){
                                                   
                                            Navigator.pop(context);
                                                 },
                                                 child: Icon(Icons.close,)),
                                             )
                                           ],
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 15, bottom: 0,left: 0, right: 0),
                                         child: InkWell(
                                           onTap: (){},
                                           child: Container(
                                             
                                              width: MediaQuery.of(context).size.width,
                                              height: 40,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Image.asset('assets/icons/share_icon.png'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Text('Compartilhar chave',style: TextStyle(fontSize: 12),),
                                                )  
                                              ],
                                            ),
                                           ),
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 15, bottom: 0,left: 0, right: 0),
                                         child: InkWell(
                                           onTap: (){},
                                           child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 40,
                                              
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Image.asset('assets/icons/delete_icon.png'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0, bottom: 0,left: 15, right: 0),
                                                  child: Text('Excluir chave', style: TextStyle(color: Colors.red,fontSize: 12),),
                                                ),
                                              
                                              ],
                                            ),
                                              
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                                 );
                               }
                               );
                             },
                             child: Image.asset('assets/icons/pixoption_icon.png',width: 25, height:25,)),
                      ),
                   ], 
                ),  
              ),
            Padding(
              padding: const EdgeInsets.only(top: 108.4, bottom: 0,left: 0, right: 0),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(onPressed: (){
                  showModalBottomSheet(context: context, 
                  builder: (BuildContext bc){
                    return Container(
                      height: 218,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            
                             width:MediaQuery.of(context).size.width,
                             height: 30,
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 10, bottom: 0,left: 375, right: 0),
                                   child: InkWell(
                                     onTap: (){
                                        Navigator.pop(context);
                                                 
                                        
                                     },
                                     child: Icon(Icons.close,)),
                                 )
                               ],
                             ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, bottom: 0,left: 0, right: 0),
                            
                               child: Container(
                                 
                                   width:MediaQuery.of(context).size.width,
                                  height: 40,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => NumCelular()),
                                );
                                      },
                                      child: Row(
                                        children: [
                                    
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset('assets/icons/phone_icon.png', width: 25, height: 25,),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0, bottom: 0,left: 5, right: 0),
                                            child: Text('Celular', style: TextStyle( fontSize: 14),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),  
                            
                          Container(
                            
                            width:MediaQuery.of(context).size.width,
                            height: 40,
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => CPF()),
                                );
                              },
                              child: Row(
                                children: [
                                   Padding(
                                       padding: const EdgeInsets.only(top: 0, bottom: 0,left: 11, right: 0),
                                         child: Image.asset('assets/icons/document_icon.png', width: 25, height: 25,),
                                        ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0, bottom: 0,left: 11, right: 0),
                                    child: Text('CPF', style: TextStyle( fontSize: 14),),
                                  ),
                                 ],
                              ),
                            ),
                          ),
                          Container(
                            
                            width:MediaQuery.of(context).size.width,
                            height: 40,
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => CPF()),
                                );
                                },
                              child: Row(
                                children: [
                                   Padding(
                                       padding: const EdgeInsets.only(top: 0, bottom: 0,left: 11, right: 0),
                                         child: Image.asset('assets/icons/shield_icon.png', width: 25, height: 25,),
                                        ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0, bottom: 0,left: 11, right: 0),
                                    child: Text('Chave aleatória', style: TextStyle( fontSize: 14),),
                                  ),
                                 ],
                              ),
                            ),
                          ),
                          
                             Container(
                             
                              width:MediaQuery.of(context).size.width,
                              height: 40,
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => Email()),
                                );
                                },
                                child: Row(
                                  children: [
                                     Padding(
                                         padding: const EdgeInsets.only(top: 0, bottom: 0,left: 11, right: 0),
                                           child: Image.asset('assets/icons/email_icon.png', width: 25, height: 25,),
                                          ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0, bottom: 0,left: 11, right: 0),
                                      child: Text('E-mail', style: TextStyle( fontSize: 14),),
                                    ),
                                   ],
                                ),
                              ),
                            ),
                          
                        ],
                      ),
                    );
                  }
                  );
                },
                  
                color: Colors.indigo.shade900,
                child: Text('Registrar chave', style: TextStyle(color: Colors.white, fontSize: 19),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}