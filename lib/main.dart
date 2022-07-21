import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Work(),
    );
  }
}

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Textfield'),
      ),
      body: Center(
        child: Container(
          width: 250,
          child: TextField(
            obscuringCharacter: 'q',
            maxLength: 5,
            onSubmitted: (value) => print(value),
            obscureText: true,
            keyboardType: TextInputType.text,
            // onChanged: (value) {
            //   print(value);
            // },
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Введите имя',
              hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
              labelText: 'Имя',
              labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.deepOrange,
              ),
              prefixIcon: Icon(
                Icons.adb_sharp,
                color: Colors.purple,
              ),
              suffixIcon: Icon(Icons.close),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 10,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 5,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(controller.text);
        },
      ),
    );
  }
}
