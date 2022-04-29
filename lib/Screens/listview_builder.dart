import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/themess.dart';

class ListViewBuilderScreen extends StatefulWidget {

  const ListViewBuilderScreen({ Key? key }) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {


  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isloading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      // print('${scrollController.position.pixels}');
      // print('${scrollController.position.maxScrollExtent}');
      if((scrollController.position.pixels + 500 >= scrollController.position.maxScrollExtent)){
         add5();
      }
    });
  }

    Future fetchData () async {
      

      if(isloading) return;

      isloading = true;
      setState(() {
        
      });
      await Future.delayed(const Duration(seconds: 4));

      add5();

      isloading = false;
      setState(() {
        
      });

      if(scrollController.position.pixels + 120 <= scrollController.position.maxScrollExtent) return;

      scrollController.animateTo(
        scrollController.position.pixels + 120, 
        duration: const Duration(milliseconds: 300), 
        curve: Curves.fastLinearToSlowEaseIn);
    }

  void add5(){
    final lastIds = imagesIds.last;
    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastIds + e)
    );
    setState(() {
      
    });
  }

  Future <void> onRefresh () async{


   await Future.delayed(const Duration(seconds: 2));

   final lastId = imagesIds.last;
   imagesIds.clear();
   imagesIds.add(lastId + 1);
   add5();
  }


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;


    return  Scaffold(
      backgroundColor:Colors.white,
      body: MediaQuery.removeViewPadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: Themess.second,
              onRefresh: onRefresh,
              child: ListView.builder (
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context , int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}'),
                    ) ;
                },
              ),
            ),


          if (isloading)
           Positioned(
             bottom: 40,
             left:size.width * 0.5 - 30,
             
             child: const _LoadingIcon()
             )


          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
     
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,

      ),
       child: const CircularProgressIndicator(color: Themess.primary,),
    );
  }
}