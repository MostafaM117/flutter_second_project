import 'package:flutter/material.dart';
import 'package:hotel_booking_app/second_page.dart';


class SearchBar extends StatefulWidget{
  const SearchBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchBarState createState() => _SearchBarState();
}
class _SearchBarState extends State<SearchBar> {
  // ignore: unused_field
  String _searchtext = '';
  @override
  Widget build (BuildContext context){
    return Container(
      decoration: BoxDecoration(color:const Color(0xffE6F2F4),
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.transparent)),
      child: TextField(
      onChanged: (value){
        setState(() {
          _searchtext = value;
        });
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric( horizontal: 16, vertical: 14),
        hintText: 'Search places ...',
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: Icon(Icons.search, color: const Color(0xff3ABBE2), size: 30,shadows: [Shadow(color: const Color(0xff3ABBE2), offset: Offset.fromDirection(1.2))], ),
        border: InputBorder.none
      ),
    ),
    );
  }
}

class MyHomePage extends StatelessWidget{
const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 60,
                            //backgroundColor: Colors.black,
        title:Row(
        children:[  
        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          color: const Color(0xffE6F2F4),),
          child: const Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Icon(Icons.location_on, color: Color(0xff3ABBE2),),
              Text(' Chicago, USA', 
              style: TextStyle(fontSize: 16),)
            ],
          ),
        ),
        ]),
        actions: const [
          Row(
            children: [
            CircleAvatar(radius: 28,
          backgroundImage: AssetImage('assets/myphoto.jpg'),
          ),
          SizedBox(
            height: 20,
            width: 20,
          )
            ],
          )
        ],
        )
        ,
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
        children: [
          
          Container(
            color: Theme.of(context).primaryColor,
            width: 400,
            height: 120,
                                      //color: Colors.red,
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: const Text('Welcome to USA, Georgina!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 50,
            width: 400,
                                      //color: Colors.yellow,
            child: const Center(
              child: SearchBar(),
            ),
          ),
          Container(
            width: 400,
            height: 60,
                                      //color: Colors.red,
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: const Text('Favorite Places',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          ),
          const SizedBox(
            height: 10,
            width: 20,
          ),
          Row(
            children: [
            const SizedBox(
            height: 20,
            width: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: 230,
              width: 220,
              child:
              Image.asset('assets/Lincoln Park.jpeg', 
              fit: BoxFit.cover,
              )
              ),
              ),
            const SizedBox(
            height: 20,
            width: 20,
          ),
            const SizedBox(
            height: 20,
            width: 20,
          ),
            ],
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          Container(
            width: 400,
            height: 40,
                                      // color: Colors.red,
            padding: const EdgeInsets.only(left: 20),
            child: const Text('Nearest Places',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          ),
          Container(
            width: 350,
            height: 70,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,),
            child: Row(
              children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                height: 70,
                width: 70,
                child:
                Image.asset('assets/1st Hotel.jpg',
                fit: BoxFit.cover,
                )
                ),
                ),
                const SizedBox(
                height: 20,
                width: 20,
                ),
              const SizedBox(
                width: 200,
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                children: [
                Icon(Icons.hotel, color: Colors.grey,),
                Text(' Royal Albert Hotel',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),),
                        ]
                      ),
                      Text('231 East 95th Street, HK',
                      style: TextStyle(color: Colors.grey),)
                    ],
                  )
              ),
              const SizedBox(
                height: 20,
                width: 20,
                ),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffDFF3F9),),
                  child: const Icon(Icons.arrow_forward, color: Color(0xff3ABBE2),),
                )
              ],
            ),
          )
        ],
      ),
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondPage()), 
          );
        
        },
        backgroundColor: const Color(0xff3ABBE2),
        child: const Icon(Icons.qr_code_scanner, color: Colors.white,),
        ),
      
    );
  }
}