import 'package:flutter/material.dart';
import 'package:lerning_all_in_one/provider/one_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class AllInOneApp extends StatefulWidget {
  const AllInOneApp({Key? key}) : super(key: key);

  @override
  State<AllInOneApp> createState() => _AllInOneAppState();
}

class _AllInOneAppState extends State<AllInOneApp> {
  LerningProvider? lpT;
  LerningProvider? lpF;
  @override
  Widget build(BuildContext context) {
    lpF=Provider.of<LerningProvider>(context,listen: false);
    lpT=Provider.of<LerningProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Learning App",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black54,
        elevation: 2,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'screen',arguments: index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50.w,
                    width: 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(image: AssetImage("${lpF!.appList[index].img}"),fit: BoxFit.cover)
                    ),
                  ),
                ),
              );
            },itemCount: lpF!.appList.length),
          )
        ],
      ),
    ));
  }
}
