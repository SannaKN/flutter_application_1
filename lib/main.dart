import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//import 'package:http/http.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
void main() {
  runApp(const MaterialApp(
    title: 'Testing Accessibility',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Ensimäinen sivu'),
        backgroundColor: Colors.blueGrey[300],
      ),
      body: Center(
        child: 
          ElevatedButton(
            child: const Text('Avaa toinen sivu'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
            },
          ),



      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Koti',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Yritys',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Koulu',
          ),
        ],
        /* currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped, */
      ),
    );
  }
}

/*  */



class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toinen sivu'),
      ),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            label: const Text('Siirry takaisin!'),
            icon: const Icon(FontAwesomeIcons.backwardStep)),
      ),
      
          body: MyCustomForm(),  
  
  class MyCustomForm extends StatefulWidget {  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class. This class holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Name',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.calendar_today),  
            hintText: 'Enter your date of birth',  
            labelText: 'Dob',  
            ),  
           ),  
          new Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: new RaisedButton(  
                child: const Text('Submit'),  
                  onPressed: null,  
              )),  
        ],  
      ),  
      
      
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Koti',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Yritys',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Koulu',
          ),
        ],
        /* currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped, */
      ),

/* class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Flutter Form Demo';  
    return MaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),  
        body: MyCustomForm(),  
      ),  
    );  
  }  
}   */
// Create a Form widget.  
class MyCustomForm extends StatefulWidget {  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class. This class holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Name',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.calendar_today),  
            hintText: 'Enter your date of birth',  
            labelText: 'Dob',  
            ),  
           ),  
          new Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: new RaisedButton(  
                child: const Text('Submit'),  
                  onPressed: null,  
              )),  
        ],  
      ),  
    );  
  }  
}  






/*   class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
} */
    );
  }
}

/* import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Mun sovellus'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
       _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _counter,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.account_circle),
            title: Text('Name of item'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
     );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context)
              /* MaterialPageRoute(
                builder: (context) => MyHomePage(),
              ), */
            ),
          },
          child: const Text('Go back'),
        ),
      ),
    );
}

 */
