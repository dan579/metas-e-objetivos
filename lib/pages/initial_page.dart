import 'package:flutter/material.dart';

PageOne(){
  return Center(
    child: ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      itemCount: names.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2.5),
          child: Container(
            width: 150,
            height: 55,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                  image:NetworkImage(images[index],
                  ),
                  fit: BoxFit.cover,
                  opacity: 0.5
              ),
              border: Border.all(color: Colors.deepPurple, width: 5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  names[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],),
          ),
        );
      },
    ),
  );
}

List<String> names = ['Carro', 'Noteboobk', 'Viagens', 'Tenis', 'Estilo', "Emprego Tech"];

List<String> images = [
  'http://1.bp.blogspot.com/-ibbSQj_fm2s/U2CTueO_PuI/AAAAAAABUgI/UAtsPgllatg/s1600/novo-Honda-Fit-LX-2015+(7).jpg',
  'https://www.hardware.com.br/static/wp/2021/08/16/notebook-gamer.jpg?fm=pjpg&ixlib=php-3.3.0',
  'https://destinosnotaveis.com.br/wp-content/uploads/2016/08/Amsterdam-1-1024x640.jpg',
  'https://wallpapercave.com/wp/wp2595347.jpg',
  'https://img.freepik.com/fotos-gratis/jovem-escolhendo-panos-na-loja-de-moda-masculina_1303-30756.jpg?w=900&t=st=1680278327~exp=1680278927~hmac=42c61e884e4c642ed4b3c7d04d904aa721c80895ff9a124855dcc022fbd29153',
  "https://alexrosa.net/wp-content/uploads/2016/07/wallpaper_1366x768_book-1.jpg"
];