import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/controller/provider/current_weather_provider.dart';
import 'package:gradproject2/controller/provider/weather_controller.dart';
import 'package:gradproject2/models/dropdown_model.dart';
import 'package:provider/provider.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    getWeather();
    super.initState();
  }
  getWeather(){
    Provider.of<WeatherProvider>(context,listen: false).getProduct(ss);
    Provider.of<CurrentWeather>(context,listen: false).getProduct(ss);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomDropDown(selectedValue: dropdownlist[1].value, menuItems: dropdownlist[1].item, func: (String? s) {  },),
            SizedBox(height: getProportionateScreenHeight(25)),
            CustomButton(text: "show", onTap: (){
              getWeather();
            }),
            SizedBox(height: getProportionateScreenHeight(25),),
            Container(
              padding: const EdgeInsets.all(10),
              width: getProportionateScreenWidth(375),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black54,spreadRadius: 2,blurRadius: 10),
                ],
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Consumer<CurrentWeather>(
                    builder: (BuildContext context, CurrentWeather value, Widget? child) => Row(
                      children: [
                        const SizedBox(width: 10,),
                        Text('Date : ${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                        const Spacer(),
                        Text('Temp : ${value.currentList.main!.temp!.toInt()}°C',style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                        const SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                  SizedBox(
                    height: getProportionateScreenHeight(160),
                    width: getProportionateScreenWidth(300),
                    child: Consumer<WeatherProvider>(
                      builder: (BuildContext context, WeatherProvider value, Widget? child) {
                        return ListView.builder(
                        itemCount: value.weatherlist.list!.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var date=value.weatherlist.list![index].dtTxt!.substring(9,10);
                          if(DateTime.now().day.toString()==date) {
                            String hour = value.weatherlist.list![index].dtTxt!
                                .substring(10, 16);
                            var temp1 = value.weatherlist.list![index].main!
                                .temp;
                            var temp = temp1.toInt();
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                children: [
                                  Text('$temp°C',style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                                  Image.asset('assets/icons/${value.weatherlist
                                      .list![index].weather![0].icon}.png'),
                                  Text(hour,style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                                ],
                              ),
                            );
                          }
                          return null;
                      },);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
