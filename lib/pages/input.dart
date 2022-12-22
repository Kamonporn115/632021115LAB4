import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _text1 = TextEditingController();
  final TextEditingController _text2 = TextEditingController();
  final TextEditingController _text3 = TextEditingController();

  String sex = "";

  bool food = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            const Text("TextFromFied #1"),
            TextFormField(
              controller: _text1,
              onChanged: (value) {
                setState(() {});
              },
            ),
            const Text("TextFromFied #2 KeyboardType and Password"),
            TextFormField(
              controller: _text2,
              keyboardType: TextInputType.phone,
              obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
            ),
            const Text("TextFromFied #3 Decoration"),
            TextFormField(
              controller: _text3,
              onChanged: (value) {
                setState(() {});
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_rounded),
                hintText: "This is LabelText",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 0, 182, 45),
                  ),
                ),
              ),
            ),
            Text("show input : ${_text1.text}"),
            Text("show input : ${_text2.text}"),
            Text("show input : ${_text3.text}"),
            const Text("เพศ"),
            RadioListTile(
              title: Text("ชาย"),
              value: "m",
              groupValue: sex,
              onChanged: (value) {
                setState(() {
                  sex = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("หญิง"),
              value: "f",
              groupValue: sex,
              onChanged: (value) {
                setState(() {
                  sex = value!;
                });
              },
            ),
            Text("show input : $sex"),
            CheckboxListTile(
              title: Text("อาหาร"),
              value: food,
              onChanged: (value) {
                setState(() {
                  food = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
