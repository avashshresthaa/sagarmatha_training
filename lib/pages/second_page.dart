import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Icon(Icons.abc),
          Text('Hiii'),
          Text('Hii'),
          Container(
            height: 500,
            width: double.infinity,
            margin: EdgeInsets.all(24),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: Offset(
                      1.0,
                      6.0,
                    ),
                  )
                ],
                // borderRadius: BorderRadius.circular(24),
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1592743263126-bb241ee76ac7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80'),
                )),
            child: Center(
                child: Text(
              'Hiiiiiiii',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            )),
          ),
          //Image.network(''),
        ],
      ),
    );
  }
}
