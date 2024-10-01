import 'package:demolinkedin/pages/linkedfeed.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(LinkedIn());
}
class LinkedIn extends StatelessWidget {
  const LinkedIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C5603AQFvd6g79GMO1w/profile-displayphoto-shrink_200_200/0/1657689442007?e=2147483647&v=beta&t=hKAzNCI86ZzkTENcRdmZMIT1kddZ7TRrDEkXZAGNU4g"),
              ),
              SizedBox(
                width: 230,
                height: 40,
                child: SearchBar(leading: Icon(Icons.search),
                  hintText: "Search",
                  shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder()
                  ),
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.medical_services_sharp),color: Colors.blueGrey,),
              IconButton(onPressed: (){}, icon: Icon(Icons.message),color: Colors.blueGrey,)
            ],
          )
        ),
        body:Linkedfeed()
      ),
    );
  }
}
