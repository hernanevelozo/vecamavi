//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'personal_page.dart';
//import 'contact_page.dart';
//import 'credentials_page.dart';

import 'package:clicktravel/share/navBar.dart';
//import 'package:clicktravel/login/presentation/pages/login_page.dart';

import 'package:clicktravel/home/presentation/widgets/place_list.dart';
import 'package:clicktravel/search/database/search_operations.dart';
//import 'package:clicktravel/search/models/place_element.dart';

class Home extends StatefulWidget {
  Home({
    Key key,
  }) : super(
          key: key,
        );


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SearchOperations searchOperations = SearchOperations();
  String keyword;
  var _myState = 0;

  @override
  Widget build(BuildContext context) {
    //var _myState = 0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavBar(index: 0),
      //backgroundColor: Color(0xf9f9f9ff),
      backgroundColor: Colors.white,
      body: Container(
        //padding: EdgeInsets.only(left: 16, top: 10, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Container(child: Row(
            //children: <Widget>[
            //SizedBox(
              //height: 50,
            //),


              Container(
              //padding: EdgeInsets.only(bottom: 100),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  //color: Colors.transparent,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/assets%2Ffront-page.png?alt=media&token=aef5cbd5-e027-44c4-9a25-d1bab1981c0c",
                    ),
                    fit: BoxFit.cover,
                  ),
                  //borderRadius: BorderRadius.only(
                      //bottomLeft: Radius.circular(35),
                      //bottomRight: Radius.circular(35))
                  ),
                  child: Column(
                        children: [
                          //Text("Put your Text Here!!!!"),
                          Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: 360,
                          height: 230,
                          //color: Colors.blue,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Explorar',
                              maxLines: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),]
                      ),
                  //child: Row(children: [
                    //Container(
                    //alignment: Alignment.bottomLeft,
                    ////child: IntrinsicWidth(
                    //color: Colors.red,
                    //child: Column(
                      //children: [
                        ////ListTile(title: Text('Explorar', style: TextStyle(fontWeight: FontWeight.bold),), subtitle: Text('Aguarde')),
                      //Column( 
                        //children: [Text('boo')],
                      //)
                        ////ListTile(title: Text('${placeElements[index].placeCountry}'))
                      //]
                    ////)
                  //),),]
                 //)
            ),

            Row(
              children: [
              //Image.network(
                //"https://firebasestorage.googleapis.com/v0/b/clicktravel-f2302.appspot.com/o/assets%2Ffront-page.png?alt=media&token=aef5cbd5-e027-44c4-9a25-d1bab1981c0c",
                ////height: _size.height / 1.8,
                //fit: BoxFit.cover,
                //width: double.infinity,
              //),


                //Icon(
                  //Icons.search,
                  //color: Colors.blue,
                //),
                //SizedBox(
                  //width: 10,
                //),
                //Text(
                  //"Pesquisar local",
                  //style: TextStyle(
                    ////color: Colors.black,
                    //fontSize: 22,
                    //fontWeight: FontWeight.bold,
                  //),
                //),
                
              ],
            ),
            //SizedBox(
              //height: 20.0,
            //),
            //TextField(
              //style: TextStyle(color: Colors.lightBlue),
              //decoration: InputDecoration(
                //filled: true,
                //fillColor: Colors.white,
                //border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(8.0),
                  //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  ////borderSide: BorderSide.none
                //),
                //hintText: "Ex: Machu Picchu",
                //prefixIcon: Icon(Icons.search),
                //prefixIconColor: Colors.lightBlue,
              //),
              //onChanged: (value) {
                //keyword = value;
                //print('boo');
                //print(keyword);
                //setState(() {
                  //if (keyword == "") {
                    //_myState = 0;
                    ////print(myState);
                  //} else {
                    //_myState = 1;
                    ////print(myState);
                  //}
                //});
              //},
            //),

            //SizedBox(height: 20.0),
            //Divider(
              //height: 0,
              //thickness: 1,
            //),

            //]
            //),),
            Column(children: [
              //if (_myState == 0)
                FutureBuilder(
                  future: searchOperations.getAllPlaces(),
                  builder: (context, snapshot) {
                    var data = snapshot.data;
                    print(_myState);
                    return snapshot.hasData
                        ? PlacesList(data)
                        : new Center(
                            child: Text('Destino não encontrado'),
                          );
                  },
                ),
              //if (_myState == 1)
                //FutureBuilder(
                  //future: searchOperations.searchPlaces(keyword),
                  //builder: (context, snapshot) {
                    //if (snapshot.hasError) print('error');
                    //var data = snapshot.data;
                    //print(_myState);
                    //return snapshot.hasData
                        //? PlacesList(data)
                        //: new Center(
                            //child: Text('Destino não encontrado'),
                          //);
                  //},
                //),
            ]),
          ],
        ),
      ),
    );
  }























































//class Home extends StatefulWidget {
  //@override
  //_HomeState createState() => _HomeState();
//}

//class _HomeState extends State<Home> {
  //bool valNotify1 = true;
  //bool valNotify2 = false;
  //bool valNotify3 = false;
  //bool valNotify4 = false;

  ////final prefs

  //onChangedFunction1(bool newValue1) {
    //setState(() {
      //valNotify1 = newValue1;
    //});
  //}

  //onChangedFunction2(bool newValue2) {
    //setState(() {
      //valNotify2 = newValue2;
    //});
  //}

  //onChangedFunction3(bool newValue3) {
    //setState(() {
      //valNotify3 = newValue3;
    //});
  //}

  //onChangedFunction4(bool newValue4) {
    //setState(() {
      //valNotify4 = newValue4;
    //});
  //}

  //@override
  //Widget build(BuildContext context) {
    //return Scaffold(
      //bottomNavigationBar: BottomNavBar(index: 0),
      ////backgroundColor: Color(0xf9f9f9ff),
      //backgroundColor: Colors.white,
      //body: Container(
          //padding: const EdgeInsets.all(10),
          //child: ListView(
            //children: [
              ////SizedBox(
                ////height: 20,
              ////),
              ////Row(
                ////children: [
                  ////Icon(
                    ////Icons.person,
                    ////color: Colors.blue,
                  ////),
                  ////SizedBox(
                    ////width: 10,
                  ////),
                  ////Text("Configurações",
                      ////style:
                          ////TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ////],
              ////),
              //Divider(
                //height: 20,
                //thickness: 1,
              //),
              //SizedBox(
                //height: 10,
              //),

              ////SizedBox(
                //////mainAxisSize: MainAxisSize.max, 
                ////width: double.infinity, // <-- match_parent,  
                ////height: 45, // <-- match_parent,  
                //////children: [
                  //////Icon(
                    //////Icons.person,
                    //////color: Colors.blue,
                  //////),
                  //////SizedBox(
                    //////width: 10,
                  //////),
                  //////Text("Informações Pessoais",
                      //////style:
                          //////TextStyle(fontSize: 20))
                  ////child: TextButton(
                    //////MainAxisSize: MainAxisAlignment.spaceBetween,
                    ////style: ElevatedButton.styleFrom(
                      ////backgroundColor: Colors.white,
                      //////primary: Colors.black,
                      //////minimumSize: const Size.fromWidth(90), // NEW
                    ////),
                    ////child: Row(
                      ////mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ////children: <Widget>[
                      ////Text('Informações Pessoais',
                        ////style: TextStyle(color: Colors.black, fontSize: 18),
                        ////),
                      ////Icon(
                        ////Icons.arrow_forward_ios,
                        ////color: Colors.blue,
                      ////),
                    ////],),
                  ////onPressed: () {
                    ////Navigator.push(context,
                        ////MaterialPageRoute(builder: (context) => Personal()));
                  ////},
                    ////),
                //////],
              ////),

              ////Divider(
                ////height: 10,
                ////thickness: 1,
              ////),

              //////SizedBox(
                //////height: 10,
              //////),

              ////SizedBox(
                //////mainAxisSize: MainAxisSize.max, 
                ////width: double.infinity, // <-- match_parent,  
                ////height: 45, // <-- match_parent,  
                //////children: [
                  //////Icon(
                    //////Icons.person,
                    //////color: Colors.blue,
                  //////),
                  //////SizedBox(
                    //////width: 10,
                  //////),
                  //////Text("Informações Pessoais",
                      //////style:
                          //////TextStyle(fontSize: 20))
                  ////child: TextButton(
                    //////MainAxisSize: MainAxisAlignment.spaceBetween,
                    ////style: ElevatedButton.styleFrom(
                      ////backgroundColor: Colors.white,
                      //////primary: Colors.black,
                      //////minimumSize: const Size.fromWidth(90), // NEW
                    ////),
                    ////child: Row(
                      ////mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ////children: <Widget>[
                      ////Text('Dados de Contato',
                        ////style: TextStyle(color: Colors.black, fontSize: 18),
                        ////),
                      ////Icon(
                        ////Icons.arrow_forward_ios,
                        ////color: Colors.blue,
                      ////),
                    ////],),
                  ////onPressed: () {
                    ////Navigator.push(context,
                        ////MaterialPageRoute(builder: (context) => Contact()));
                  ////},
                    ////),
                //////],
              ////),


              //////Row(
                //////children: [
                  ////////Icon(
                    ////////Icons.person,
                    ////////color: Colors.blue,
                  ////////),
                  ////////SizedBox(
                    ////////width: 10,
                  ////////),
                  //////Text("Dados de Contato",
                      //////style:
                          //////TextStyle(fontSize: 20))
                //////],
              //////),
              
              ////Divider(
                ////height: 10,
                ////thickness: 1,
              ////),

              //////SizedBox(
                //////height: 10,
              //////),

              ////SizedBox(
                //////mainAxisSize: MainAxisSize.max, 
                ////width: double.infinity, // <-- match_parent,  
                ////height: 45, // <-- match_parent,  
                //////children: [
                  //////Icon(
                    //////Icons.person,
                    //////color: Colors.blue,
                  //////),
                  //////SizedBox(
                    //////width: 10,
                  //////),
                  //////Text("Informações Pessoais",
                      //////style:
                          //////TextStyle(fontSize: 20))
                  ////child: TextButton(
                    //////MainAxisSize: MainAxisAlignment.spaceBetween,
                    ////style: ElevatedButton.styleFrom(
                      ////backgroundColor: Colors.white,
                      //////primary: Colors.black,
                      //////minimumSize: const Size.fromWidth(90), // NEW
                    ////),
                    ////child: Row(
                      ////mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ////children: <Widget>[
                      ////Text('Credenciais',
                        ////style: TextStyle(color: Colors.black, fontSize: 18),
                        ////),
                      ////Icon(
                        ////Icons.arrow_forward_ios,
                        ////color: Colors.blue,
                      ////),
                    ////],),
                  ////onPressed: () {
                    ////Navigator.push(context,
                        ////MaterialPageRoute(builder: (context) => Credentials()));
                  ////},
                    ////),
                //////],
              ////),


              //////Row(
                //////children: [
                  ////////Icon(
                    ////////Icons.person,
                    ////////color: Colors.blue,
                  ////////),
                  ////////SizedBox(
                    ////////width: 10,
                  ////////),
                  //////Text("Credenciais",
                      //////style:
                          //////TextStyle(fontSize: 20))
                //////],
              //////),
              
              ////Divider(
                ////height: 10,
                ////thickness: 1,
              ////),

              //////buildAccountOption(context, "Usuário"),
              //////buildAccountOption(context, "Alterar Senha"),
              //////buildAccountOption(context, "Conteúdo"),
              //////buildAccountOption(context, "Social"),
              //////buildAccountOption(context, "Idioma"),
              //////buildAccountOption(context, "Privacidade e Segurança"),
              ////SizedBox(height: 20,),
              ////Center(
                ////child: OutlinedButton(
                  ////style: OutlinedButton.styleFrom(
                      ////padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                      ////shape: RoundedRectangleBorder(
                        ////borderRadius: BorderRadius.circular(20),
                      ////)),
                  ////onPressed: () {
                    ////Navigator.push(context,
                        ////MaterialPageRoute(builder: (context) => Login()));
                  ////},
                  ////child: Text("Sair",
                      ////style: TextStyle(
                        ////fontSize: 16,
                        ////letterSpacing: 2.2,
                        ////color: Colors.red,
                        ////fontWeight: FontWeight.bold,
                      ////)),
                ////),
              ////),
              ////SizedBox(
                ////height: 40,
              ////),

              ////Row(
                ////children: [
                  ////Icon(
                    ////Icons.volume_up_outlined,
                    ////color: Colors.blue,
                  ////),
                  ////SizedBox(
                    ////width: 10,
                  ////),
                  ////Text("Notificações",
                      ////style:
                          ////TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ////],
              ////),

              ////Divider(height: 20, thickness: 1),

              ////SizedBox(
                ////height: 10,
              ////),

              ////buildNotificationOption(
                  ////"Ofertas", valNotify1, onChangedFunction1),
              ////buildNotificationOption(
                  ////"Novidades", valNotify2, onChangedFunction2),
              ////buildNotificationOption(
                  ////"Recomendações", valNotify3, onChangedFunction3),

              ////SizedBox(
                ////height: 40,
              ////),

              ////Row(
                ////children: [
                  ////Icon(
                    ////Icons.more,
                    ////color: Colors.blue,
                  ////),
                  ////SizedBox(
                    ////width: 10,
                  ////),
                  ////Text("Opções",
                      ////style:
                          ////TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ////],
              ////),

              ////Divider(height: 20, thickness: 1),

              ////SizedBox(
                ////height: 10,
              ////),

              ////buildNotificationOption(
                  ////"Modo Escuro", valNotify4, onChangedFunction4),
            //],
          //)),
    //);
  //}

  //Padding buildNotificationOption(
      //String title, bool value, Function onChangeMethod) {
    //return Padding(
      //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      //child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //children: [
          //Text(title,
              //style: TextStyle(
                  //fontSize: 20,
                  //fontWeight: FontWeight.w500,
                  //color: Colors.grey[600])),
          //Transform.scale(
            //scale: 0.7,
            //child: CupertinoSwitch(
              //activeColor: Colors.blue,
              //trackColor: Colors.grey,
              //value: value,
              //onChanged: (bool newValue) {
                //onChangeMethod(newValue);
              //},
            //),
          //)
        //],
      //),
    //);
  //}

  //GestureDetector buildAccountOption(BuildContext context, String title) {
    //return GestureDetector(
      //onTap: () {
        //showDialog(
            //context: context,
            //builder: (BuildContext context) {
              //return AlertDialog(
                //shape: RoundedRectangleBorder(
                    //borderRadius:
                        //BorderRadius.circular(20.0)), //this right here
                //title: Text(title),
                //content: Column(
                  //mainAxisSize: MainAxisSize.min,
                  //children: [

                    //buildAlteracaoUsuario(context, title),

                    ////Text("Opção 1"),
                    ////Text("Opção 2"),
                  //],
                //),
                //actions: [
                  //TextButton(
                      //onPressed: () {
                        //Navigator.of(context).pop();
                      //},
                      //child: Text("Fechar"))
                //],
              //);
            //});
      //},
      //child: Padding(
        //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        //child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //children: [
            //Text(title,
                //style: TextStyle(
                  //fontSize: 20,
                  //fontWeight: FontWeight.w500,
                  //color: Colors.grey[600],
                //)),
            //Icon(
              //Icons.arrow_forward_ios,
              //color: Colors.blue,
            //)
          //],
        //),
      //),
    //);
  //}

  //Padding buildAlteracaoUsuario(BuildContext context, title) {
    //if (title == "Usuário")
      //return Padding(
          //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          ////child: ListView(children: <Widget>[
          //child: Column(children: [
            ////SizedBox(
            ////height: 20,
            ////),
            //Row(
              //children: [
                //Text("Nome",
                    //style:
                        //TextStyle(fontSize: 18, fontWeight: FontWeight.normal))
              //],
            //),
            //SizedBox(
              //height: 10,
            //),
            //TextField(
              //style: TextStyle(color: Colors.lightBlue),
              //decoration: InputDecoration(
                //filled: true,
                //fillColor: Colors.white,
                //border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(8.0),
                  //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  ////borderSide: BorderSide.none
                //),
              //),
              //onChanged: (value) {
              //},
            //),

            //Row(
              //children: [
                //Text("Email",
                    //style:
                        //TextStyle(fontSize: 18, fontWeight: FontWeight.normal))
              //],
            //),
            //SizedBox(
              //height: 10,
            //),
            //TextField(
              //style: TextStyle(color: Colors.lightBlue),
              //decoration: InputDecoration(
                //filled: true,
                //fillColor: Colors.white,
                //border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(8.0),
                  //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                //),
              //),
              //onChanged: (value) {
              //},
            //),
          //]));

    //if (title == "Alterar Senha")
      //return Padding(
          //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          //child: Column(children: [
            //Row(
              //children: [
                //Text("Senha",
                    //style:
                        //TextStyle(fontSize: 18, fontWeight: FontWeight.normal))
              //],
            //),
            //SizedBox(
              //height: 10,
            //),
            //TextField(
              //style: TextStyle(color: Colors.lightBlue),
              //decoration: InputDecoration(
                //filled: true,
                //fillColor: Colors.white,
                //border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(8.0),
                  //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                //),
              //),
              //onChanged: (value) {
              //},
            //),
          //]));

    //if (title == "Conteúdo")
      //return Padding(
        //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        //child: TextField(
          //style: TextStyle(color: Colors.lightBlue),
          //decoration: InputDecoration(
            //filled: true,
            //fillColor: Colors.white,
            //border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(8.0),
              //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
            //),
          //),
          //onChanged: (value) {
          //},
        //),
      //);

    //if (title == "Social")
      //return Padding(
        //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        //child: TextField(
          //style: TextStyle(color: Colors.lightBlue),
          //decoration: InputDecoration(
            //filled: true,
            //fillColor: Colors.white,
            //border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(8.0),
              //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
            //),
          //),
          //onChanged: (value) {
          //},
        //),
      //);

    //if (title == "Privacidade e Segurança")
      //return Padding(
        //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        //child: TextField(
          //style: TextStyle(color: Colors.lightBlue),
          //decoration: InputDecoration(
            //filled: true,
            //fillColor: Colors.white,
            //border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(8.0),
              //borderSide: const BorderSide(color: Colors.grey, width: 0.0),
            //),
          //),
          //onChanged: (value) {
          //},
        //),
      //);
  //}
}

//child: Drawer(
//child: SafeArea(
//child:Column(
//children: [
//ExpansionTile(
//title: Text("Usuário"),
//leading: Icon(Icons.person), //add icon
//childrenPadding: EdgeInsets.only(left:60), //children padding
//children: [
//ListTile(
//title: Text("Cadastro"),
//onTap: (){
////action on press
//},
//),

//ListTile(
//title: Text("Alterar Senha"),
//onTap: (){
////action on press
//},
//),

//ListTile(
//title: Text("Conteúdo"),
//onTap: (){
////action on press
//},
//),

//ListTile(
//title: Text("Social"),
//onTap: (){
////action on press
//},
//),

//ListTile(
//title: Text("Idioma"),
//onTap: (){
////action on press
//},
//),

////more child menu
//],
//),

//ExpansionTile(
//title: Text("Parent Category 2"),
//leading: Icon(Icons.person), //add icon
//childrenPadding: EdgeInsets.only(left:60), //children padding
//children: [
//ListTile(
//title: Text("Child Category 1"),
//onTap: (){
////action on press
//},
//),

//ListTile(
//title: Text("Child Category 2"),
//onTap: (){
////action on press
//},
//),

////more child menu
//],
//)
//],
//)
//),
//)
