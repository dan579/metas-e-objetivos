import 'package:flutter/material.dart';
import 'package:flutter1/util/app_bar.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});


  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int _counter = 0;




  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.grey,
      body: PageOne(),
    );
  }
}

PageOne(){
  return Center(
    child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
    AppBar(
    backgroundColor: Colors.teal[900],
      leading: IconButton(
        icon: Icon(Icons.person_outline),
        onPressed: () {
          // Adicione aqui a ação desejada
        },
      ),
      title: Text('Metas 2023'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Adicione aqui a ação desejada
          },
        ),
      ],
    ),
        ListView.builder(
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
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(25.0),
                  image: DecorationImage(
                      image:NetworkImage(images[index],
                      ),
                      fit: BoxFit.cover,
                      opacity: 0.5
                  ),
                  border: Border.all(color: Colors.black, width: 3),
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
      ],
    )

  );
}

List<String> names = ['Carro', 'Noteboobk', 'Viagens', 'Tenis', 'Estilo', "Emprego Tech"];

List<String> images = [
  'https://p4.wallpaperbetter.com/wallpaper/84/411/622/2013-hyundai-azera-wallpaper-preview.jpg',
  'https://www.hardware.com.br/static/wp/2021/08/16/notebook-gamer.jpg?fm=pjpg&ixlib=php-3.3.0',
  'https://destinosnotaveis.com.br/wp-content/uploads/2016/08/Amsterdam-1-1024x640.jpg',
  'https://wallpapercave.com/wp/wp2595347.jpg',
  'https://img.freepik.com/fotos-gratis/jovem-escolhendo-panos-na-loja-de-moda-masculina_1303-30756.jpg?w=900&t=st=1680278327~exp=1680278927~hmac=42c61e884e4c642ed4b3c7d04d904aa721c80895ff9a124855dcc022fbd29153',
  "https://alexrosa.net/wp-content/uploads/2016/07/wallpaper_1366x768_book-1.jpg"
];