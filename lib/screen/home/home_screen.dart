import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:practice/style/color.dart';
import 'package:practice/style/fonts.dart';
import 'package:practice/style/size_config.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _controller=TextEditingController();
  final key=GlobalKey<FormState>();
  List<Map<String,dynamic>> todoList=[];

  void addTodo(){
    if(key.currentState!.validate()){
      if(_controller.text.isNotEmpty){
        Map<String,dynamic>data={
          "title":_controller.text,
          "date":DateTime.now(),
        };
        todoList.add(data);
        _controller.clear();
        setState(() {

        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.primary,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Todo Application"),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        todoList.clear();
        setState(() {

        });
      },
        child:const Icon(Icons.clear),),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getW(20)),
        child: Column(
          children: [
            SizedBox(height: getH(10)),

            SizedBox(
              height:70,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Form(
                      key: key,
                      child: TextField(
                        controller:_controller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(getW(5)),
                              borderSide: const BorderSide(color: Colors.transparent)
                          ),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(getW(5)),
                            borderSide: const BorderSide(color: Colors.transparent)
                          ),

                          fillColor: Colors.grey.shade100,
                          contentPadding: EdgeInsets.symmetric(horizontal: getW(15),vertical:getH(16)),
                          hintText: "Something write...",

                        ),
                      ),
                    ),
                  ),
                  
                  SizedBox(width: getW(15)),
                  
                  SizedBox(
                    width: getW(80),
                    height: getH(45),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shadowColor: Colors.transparent
                      ),
                        onPressed: (){addTodo();},
                        child:const Text("Add")),
                  ),


                ],
              ),
            ),

            const Divider(thickness: 1),

            Expanded(child:todoList.isEmpty? const Center(child: Text("Empty Todo"),):
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount:todoList.length,
                itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  child: Text(index.toString()),
                ),

                title:Text(todoList[index]['title'],style: AppFont.large.copyWith(
                  fontSize: getW(18)
                ),),
                subtitle: Text(DateFormat.yMMMd().format(todoList[index]['date'])),

                trailing: IconButton.filledTonal(
                    onPressed: (){todoList.removeAt(index);setState(() {});},
                    icon: const Icon(Icons.delete,color: Colors.red,)),
              );
            })
            ),
          ],
        ),
      ),
    );
  }
}





