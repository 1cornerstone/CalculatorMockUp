
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]).
  then((value) =>  runApp(MaterialApp(
    home: Calculator(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      visualDensity: VisualDensity.comfortable,
    ),

  )));
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> btnText = [
      'DEL','AC','%','/',
      '1','2','3','X',
      '4','5','6','-',
      '7','8','9','+',
      '.','0','+/-','=',
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor:Color(0xFF292D32),
        body: Column(
          children: <Widget>[

            Container(
              margin: EdgeInsets.fromLTRB(0.0,5.0, 5.0, 10.0),
              alignment: Alignment.topLeft,
              child: settingsbtn(),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              alignment: Alignment.topLeft,
              child: screen(context),
            ),
            Container(
              height: 470,
              margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
              alignment: Alignment.topLeft,
              child: GridView.count(crossAxisCount: 4,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(btnText.length, (index){
              return button(btnText[index]);
              }),),
            )
          ],
        ),
      ),
    );
  }
}

Widget button(String text){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: InkWell(
      splashColor: Colors.white,
      onTap: (){},
      child: Container(
        width:25,
        height: 25,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.1),
              offset: Offset(-2.0, -2.0),
              blurRadius: 10.0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: Offset(2.0, 2.0),
              blurRadius: 10.0,
            ),
          ],
          color: Color(0xFF292D32),
          borderRadius: BorderRadius.circular(42.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),
          ),
        ),
      ),
    ),
  );
}

Widget settingsbtn(){
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: InkWell(
      splashColor: Colors.white,
      onTap: (){},
      child: Container(
        width:50,
        height: 50,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.1),
              offset: Offset(-6.0, -6.0),
              blurRadius: 10.0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: Offset(6.0, 6.0),
              blurRadius: 10.0,
            ),
          ],
          color: Color(0xFF292D32),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Icon(
            Icons.settings,
            color: Colors.white,
            size: 30,
          )
        ),
      ),
    ),
  );
}



Widget screen(BuildContext context){
  return Container(
    width: double.infinity,
    height: 140,
    padding: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.1),
          offset: Offset(-3.0, -3.0),
          blurRadius: 16.0,
        ),
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          offset: Offset(3.0, 3.0),
          blurRadius: 16.0,
        ),
      ],
      color: Color(0xFF292D32),
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: Align(
      alignment: Alignment.bottomRight,
      child: Text(
       '23 + 22 \n\n 45',
        textAlign: TextAlign.end,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
        ),
      ),
    ),
  );
}




// color 2

//Container(
//width: 100,
//height: 100,
//decoration: BoxDecoration(
//boxShadow: [
//BoxShadow(
//color: Colors.white.withOpacity(0.8),
//offset: Offset(-6.0, -6.0),
//blurRadius: 16.0,
//),
//BoxShadow(
//color: Colors.black.withOpacity(0.1),
//offset: Offset(6.0, 6.0),
//blurRadius: 16.0,
//),
//],
//color: Color(0xFFEFEEEE),
//borderRadius: BorderRadius.circular(12.0),
//),
//),