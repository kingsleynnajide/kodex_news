

// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsScreenWidget extends StatefulWidget {
  const NewsScreenWidget({super.key});

  @override
  State<NewsScreenWidget> createState() => _NewsScreenWidgetState();
}

class _NewsScreenWidgetState extends State<NewsScreenWidget> {
  List<Map<String, dynamic>> news = [
    {
      'author' : 'jin@ixbt.com (Jin)',
      'title'  : 'Ждём нового роста цен на связь? Операторам в 10 раз увеличат плату за использование сетей 4G',
      'description' : 'Расходы российских мобильных операторов на использование сети 4G могут возрасти в десять раз, а общие издержки на все частоты — вдвое. Эту информацию сообщают «Известия», ссылаясь на источники из сферы связи и государственных органов. Повышение стоимости испо…',
      "url": "https://www.ixbt.com/news/2023/10/31/zhdjom-novogo-rosta-cen-na-svjaz-operatoram-v-10-raz-uvelichat-platu-za-ispolzovanie-setej-4g.html",
       "urlToImage": "https://www.ixbt.com/img/n1/news/2023/9/2/ixbtmedia_sad_and_shocked_nice_girl_looking_at_Windows_PC_8064c9da-5be3-4f6c-9e53-33e1abeca563_large.png",
       "publishedAt": "2023-10-31T08:42:00Z",
    },
     {"author": "Bobby Green",
            "title": "Volkswagengruppen har sålt många elbilar i år",
            "description": "Men orderböckerna blir tunnare\n\n\n\n\n\n\nVolkswagengruppens första nio månader i år visade fina siffror när det kommer till elbilsförsäljningen. Totalt levererades 531.500 elbilar vilket är en ökning med 45 procent jämfört med samma period förra året. Elbilar sto…",
            "url": "https://feber.se/bil/volkswagengruppen-har-salt-manga-elbilar-i-ar/457652/",
            "urlToImage": "https://static.feber.se/article_images/57/48/32/574832.jpg",
            "publishedAt": "2023-10-31T08:40:00Z",
    },
     {            "author": "Camille Coirault",
            "title": "Les constructeurs automobile très inquiets sur l’avenir de la voiture électrique",
            "description": "L'industrie des véhicules électriques se dirigerait-elle vers un mur ? Maintes fois acclamée et considérée comme une révolution, elle se heurte aujourd'hui à des réalités plutôt rudes.",
            "url": "https://www.presse-citron.net/les-constructeurs-automobile-tres-inquiets-sur-lavenir-de-la-voiture-electrique/",
            "urlToImage": "https://www.presse-citron.net/app/uploads/2023/03/recharge-voiture-electrique-ioniq-6.jpg",
            "publishedAt": "2023-10-31T08:30:56Z",
    },
     {"author": "Portfolio.hu",
            "title": "22 órás tőzsdetanfolyam – tőzsdei hullámoktól a részvénykiválasztásig",
            "description": "A Portfolio.hu ismét tőzsdetanfolyamot szervez. A képzés 22 órás, és lehetőséget nyújt a résztvevőknek az árfolyammozgások és a befektetések alapjainak elsajátítására. A program során megvitatjuk a tőzsdei vagyonépítés kulisszatitkait, valamint lehetőséget kí…",
            "url": "https://www.portfolio.hu/befektetes/20231031/22-oras-tozsdetanfolyam-tozsdei-hullamoktol-a-reszvenykivalasztasig-458646",
            "urlToImage": "https://pcdn.hu/articles/images-xl/g/e/t/gettyimages-10699924485-632671.jpg",
            "publishedAt": "2023-10-31T08:30:00Z",
    },
     {
      "author": null,
            "title": "Toyota Prius confirmed for sensational UK comeback - pictures",
            "description": "Pictures of the new Toyota Prius",
            "url": "https://www.autoexpress.co.uk/news/361374/toyota-prius-confirmed-sensational-uk-comeback-pictures",
            "urlToImage": "https://media.autoexpress.co.uk/image/private/s--X-WVjvBW--/f_auto,t_content-image-full-desktop@1/v1698741024/autoexpress/2023/10/Toyota Prius 2024 UK.jpg",
            "publishedAt": "2023-10-31T08:28:20Z",
 
    },
     {
      "author": "Aymeric Geoffre-Rouland",
            "title": "Tesla s’ouvre enfin aux applications tierces avec son API Fleet : ce qui va changer",
            "description": "Tesla publie la documentation de son API Fleet, qui permet aux applications tierces d'accéder aux données et aux commandes des produits Tesla. Une opportunité pour les développeurs, mais aussi un signe d'ouverture de la part de la marque.\nL’article Tesla s’ou…",
            "url": "https://www.tomsguide.fr/tesla-souvre-enfin-aux-applications-tierces-avec-son-api-fleet-ce-qui-va-changer/",
            "urlToImage": "https://www.tomsguide.fr/content/uploads/sites/2/2023/10/Tesla-API-Fleet.jpg",
            "publishedAt": "2023-10-31T08:26:41Z",
    },
  ];

  Future getNews() async {
    http.Response response = await http.get(
      Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2023-10-01&sortBy=publishedAt&apiKey=36233515a11644a58fc12454bc6a91e0'));
      //  Map<String,dynamic> responseMap= jsonDecode(response.body) as Map<String, dynamic>;
      //  setState(() {
      
      //  news = responseMap['articles'] as List<Map<String, dynamic>>;
      // });

      print(response.body);
  }

  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
     getNews();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('NEWS'),
        leading: Icon(Icons.menu),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Text('hi'),
              title: Text('crude oil investment measure', style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              trailing: Icon(Icons.donut_large),
               
            ),
          );
        }
      )
      
      
    );
    
  }
}