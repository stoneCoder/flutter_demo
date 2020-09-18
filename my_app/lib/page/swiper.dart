import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatelessWidget{

  List<Map> imageList = [
    {
      "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600336030552&di=b81293ceb5284c41dcbcd093ec906525&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3Dabbf8f972d738bd4c421b239918b876c%2F8169ca8065380cd7e02852a7a244ad3459828159.jpg"
    },
    {
      "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600336165713&di=965c101ff6fc8d99a4aa7caa427cbf81&imgtype=0&src=http%3A%2F%2Fku.90sjimg.com%2Fback_pic%2F03%2F72%2F08%2F1557b88ef37a19b.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播页面'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: AspectRatio(aspectRatio: 16/9,
            child: new Swiper(
              itemBuilder: (BuildContext context,int index){
                return new Image.network(imageList[index]["url"],fit: BoxFit.fill,);
              },
              itemCount: imageList.length,
              pagination: new SwiperPagination(
              ),//分页器
              // control: new SwiperControl(),//左右箭头
              autoplay: true,
            )
            )
          )
        ],
      )
    );
  }

}