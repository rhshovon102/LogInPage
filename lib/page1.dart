import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RAKIB HASAN',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),backgroundColor: Colors.lightGreen,),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [

                  SizedBox(height: 40.0),
                  Image(
                    image: AssetImage('files/me.png'),
                    height: 300,
                    width: 300,
                  ),

                  SizedBox(height: 20.0),
                  Text('As-salamu Alaykum, my name is Rakib Hasan. I was born in Shariatpur, a district in Bangladesh, and currently reside in the bustling capital city. I am a student pursuing a Bachelor of Science degree in Computer Science and Engineering at Daffodil International University. I come from a Muslim family.\n\nI possess proficiency in programming languages such as C, Java, Python, and Assembly.  I have also gained a strong understanding of Data Structures and Algorithms and Object-Oriented Programming. These skills have enabled me to successfully complete several projects, where I have applied my knowledge to solve real-world problems. My key strengths include being self-motivated, hard-working, disciplined, and a quick learner. My immediate objective is to graduate with a high grade, and my long-term goal is to secure an esteemed position where I can advance my career and serve my nation.\n\nIn my leisure time, I enjoy engaging in photography, music, travel, cycling, solving problems on online platforms like URI and Toph, and culinary pursuits. I have an insatiable curiosity for exploring new places and learning new things. Additionally, I am an avid reciter of the holy Quran, and I relish watching films and playing outdoor, indoor, and online games with my peers.\n\nThank you.',
                  textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 20.0),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
