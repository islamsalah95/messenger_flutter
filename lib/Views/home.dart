import 'package:flutter/material.dart';
import 'package:app/Models/chat.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:const Column(
            children: [
               Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 20,
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("images/p2.jpg")),
                    ),
                  ),
                  Text(
                    "Chats",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                width: double.infinity,
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return  CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      child: Padding(
                        padding:const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage(
                              chats[index].image
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
             SliverToBoxAdapter(
              child: Padding(
                padding:const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:const BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child:const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search, size: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

             SliverToBoxAdapter(
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return  ListTile(
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: CircleAvatar(
                              radius: 55,
                              backgroundImage: AssetImage(chats[index].image),
                            ),
                          ),
                        ),
                        title: Text(chats[index].name),
                        subtitle: Text("${chats[index].subtitle}   ${chats[index].date}"),
                        trailing: const Icon(Icons.check_circle)
                    );
                  },
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon:const Icon(Icons.message),
              onPressed: () {},
            ),
            IconButton(
              icon:const Icon(Icons.person),
              onPressed: () {},
            ),
            IconButton(
              icon:const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ),


    );
  }
}
