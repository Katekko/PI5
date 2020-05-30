import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context0){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 370,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill
                )
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 1,
                    width: 180,
                    height: 245,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/light.png')
                        )
                      ),
                    ),
                  ),
                  Positioned(
                    left: 128,
                    width: 180,
                    height: 185,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/light.png')
                        )
                      ),
                    ),
                  ),
                  Positioned(
                    left: 260,
                    child: Container(
                      margin: EdgeInsets.only(top: 210),
                      child: Center(
                        child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 37, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  )
                ],
              ),
            ),


            Padding(
              padding: EdgeInsets.only(
                top: 55,
                left: 25,
                right: 25,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 700,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, 0.6),
                          blurRadius: 20.0,
                          offset: Offset(0, 10)
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey[100]))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "E-mail",
                              hintStyle: TextStyle(color: Colors.grey[400])
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Senha",
                              hintStyle: TextStyle(color: Colors.grey[400])
                            ),
                          ),
                        )
                      ],
                    ),
                  ),


                  SizedBox(height: 50,),
                  ButtonTheme(
                    minWidth: 220,
                    height: 60,
                    child: RaisedButton(
                      onPressed: () => {
                        print("Pressionei o Botão")
                      },
                      child: Text("Entrar", style: TextStyle(color: Colors.white,  fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      color: Colors.indigo[400],
                    ),
                  ),
                  SizedBox(
              height: 20,
            ),
            
            Container(
              padding: EdgeInsets.only(
                left: 3,
                //right: 50,
              ),
              child: Text(
                "Esqueceu sua senha?", style: TextStyle(color: Colors.grey[600], fontSize: 15)
              ),
            ),
            SizedBox(
              height: 70,
            ),

            Container(
              height: 40,
              width: 550,
              padding: EdgeInsets.only(
                left: 20,
                top: 8,
                //right: 50,
              ),
              child: Text(
                "Criar uma nova conta do OhGás", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Montserrat')
              ),
              color: Color.fromRGBO(143, 148, 251, 3),
            ),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}