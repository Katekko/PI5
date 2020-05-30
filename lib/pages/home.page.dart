import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context0){
    return Scaffold(
      backgroundColor: Colors.lightBlue[800],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/images/percent.png',
                  width: 110,
                  height: 100,
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white, 
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ]
            ),
          ),

          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context0).size.height - 130.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 20.0, right: 15.0),
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                  left: 70,
                  top: 20,
                  ),
                  child: Text(
                    "Fornecedores próximo a você", style: TextStyle(color: Colors.amber[900],  fontSize: 17)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Container(
                    height: MediaQuery.of(context0).size.height - 245.0,
                    child: ListView(
                      children: [
                        buildproviderItem('assets/images/gas.png', 'UltraGás', '\$70,00', '\Planalto - Serra'),
                        buildproviderItem('assets/images/gas.png', 'Flash Gás', '\$80,00', '\Jardim Camburi - Vitória'),
                        buildproviderItem('assets/images/gas.png', 'Consigaz', '\$60,00', '\Serra Centro - Serra'),
                        buildproviderItem('assets/images/gas.png', 'Brasil Gás', '\$90,00', '\Praia do Canto - Vitória'),
                        buildproviderItem('assets/images/gas.png', 'Alo Gás', '\$65,00', '\Divinópolis - Serra'),
                        buildproviderItem('assets/images/gas.png', 'Serra Gás', '\$100,00', '\Caçaroca - Serra'),
                        buildproviderItem('assets/images/gas.png', 'Gás', '\$100,00', '\Belvedere - Serra'),
                      ]
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context0).size.height - 130.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[800],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(55.0)),
                  ),
                ),
              ]
            ),
          )
        ]
      ),
    );
  }
}

Widget buildproviderItem(String imgPath, String providerName, String price, String address){
  return Padding(
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: InkWell(
      onTap: () {

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 65.0,
                    width: 65.0,
                  ),
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      providerName,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        color: Colors.grey
                      )
                    ),
                    Text(
                      address,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        color: Colors.grey
                      )
                    )
                  ]
                )
              ]
            )
          ),
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.amber[900],
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}