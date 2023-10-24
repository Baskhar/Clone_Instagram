import 'package:flutter/material.dart';
import 'package:terceiro_projeto/Clone_Instagram/pagina_loja.dart';
import 'package:terceiro_projeto/Clone_Instagram/pagina_perfil.dart';
import 'package:terceiro_projeto/Clone_Instagram/pagina_procura.dart';
import 'package:terceiro_projeto/Clone_Instagram/pagina_videos.dart';
import 'package:terceiro_projeto/pages/button_navigator_bar/button_navigator_bar_page.dart';
import 'package:terceiro_projeto/pages/circle_avatar/circle_avatar_page.dart';

class HomeInsta extends StatefulWidget {
  const HomeInsta({Key? key}) : super(key: key);

  @override
  State<HomeInsta> createState() => _HomeInstaState();
}

class _HomeInstaState extends State<HomeInsta> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              child: Container(
                width: 36,
                height: 36,
                child: Image.asset('assets/images/post_active.png'),
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              child: Container(
                width: 36,
                height: 36,
                child: Image.asset('assets/images/heart.png'),
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              child: Container(
                width: 36,
                height: 36,
                child: Image.asset('assets/images/comment.png'),
              )),
        ],
        title: Row(
          children: [
            Container(
                width: 103,
                height: 39,
                child: Image(image: AssetImage('assets/images/title.png'))),
            // Text(
            //   'Instagram',
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontFamily: 'Pacifico',
            //   ),
            //  ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              indice = index;
            });
          },
          selectedItemColor: Colors.black,
          currentIndex: indice,
          showSelectedLabels: false,
          iconSize: 40,
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Procura',
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Vídeos',
                icon: Icon(
                  Icons.video_collection_outlined,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Shop',
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Perfil',
                //activeIcon: ,
                icon: CircleAvatar(radius: 20,backgroundImage: NetworkImage('https://tm.ibxk.com.br/2022/03/09/09151903947444.jpg?ims=1200x675'),)),
            //icon: Image.network('https://tm.ibxk.com.br/2022/03/09/09151903947444.jpg?ims=1200x675')),
            //icon: ImageInsta(Imageinsta: 'https://tm.ibxk.com.br/2022/03/09/09151903947444.jpg?ims=1200x675')),
            // BottomNavigationBarItem(label: '', icon: Container(height: 24,child: Image.asset('assets/images/profile.png',color: Colors.black,))),
            //BottomNavigationBarItem(label: 'Pagina 4', icon: Icon(Icons.add)),
          ]),
      body: IndexedStack(
        index: indice,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 130,
                  child: Container(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                ImageInsta(
                                    Imageinsta:
                                    'https://tm.ibxk.com.br/2022/03/09/09151903947444.jpg?ims=1200x675'),

                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17.5, top: 8),
                                  child: Text('Seu Story'),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ImageInsta(
                                    Imageinsta:
                                    'https://pbs.twimg.com/media/E-DNnY5XIAAVu_C.jpg'),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17.5, top: 8),
                                  child: Text('ronaldo'),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                ImageInsta(
                                    Imageinsta:
                                    'https://compass-ssl.xbox.com/assets/a9/d0/a9d03015-2760-43df-8056-d23af1969289.gif?n=xbox_facebook_200x200.gif'),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17.5, top: 8),
                                  child: Text('xbox'),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                ImageInsta(
                                    Imageinsta:
                                    'https://uploads.metropoles.com/wp-content/uploads/2021/10/13163417/GettyImages-1345932229-1024x684.jpg'),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17.5, top: 8),
                                  child: Text('messi'),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                ImageInsta(
                                    Imageinsta:
                                    'https://classic.exame.com/wp-content/uploads/2021/05/urn_newsml_afp.com_20210528_5bb63bc1-d03d-457b-833c-171af35bf6ce_ipad.jpg?quality=70&strip=info&w=1024'),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17.5, top: 8),
                                  child: Text('neymar'),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                ImageInsta(
                                    Imageinsta:
                                    'https://fdr.com.br/wp-content/uploads/2022/09/Alok.jpg'),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17.5, top: 8),
                                  child: Text('alok'),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                ImageInsta(
                                    Imageinsta:
                                    'https://cdn.xxl.thumbs.canstockphoto.com.br/bandeira-brasil-banco-de-ilustra%C3%A7%C3%A3o_csp7696258.jpg'),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17.5, top: 8),
                                  child: Text('brasil'),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    //conteiner storys
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Colors.black45, width: 1),
                          // top: BorderSide(color: Colors.white60, width: 1),
                        )),
                    // color: Color(0XFF666562),
                  ),
                ),
                Column(
                  children: [
                    Post(context)
                    // ListTile(
                    //   title: Text('Ronaldo'),
                    //   leading: CircleAvatar(
                    //     backgroundImage: NetworkImage('https://pbs.twimg.com/media/E-DNnY5XIAAVu_C.jpg'),
                    //   ),
                    //
                    // ),
                  ],
                ),
              ],
            ),
          ),
          PaginaProcura(),
          PaginaVideos(),
          PaginaLoja(),
          PaginaPerfil(),
        ],
      ),
    );
  }
}

Widget Post(context) {
  final mediaQuery = MediaQuery.of(context);
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/media/E-DNnY5XIAAVu_C.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('ronaldo'),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
        ),
        Container(
          width: mediaQuery.size.width,
          child: Image(image: NetworkImage(
              'https://pbs.twimg.com/media/E-DNnY5XIAAVu_C.jpg')),
        ),
        Row(children: [
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/images/heart.png')),
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/images/comment.png')),
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/images/message.png')),
          Spacer(),
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/images/save.png')),

        ],),

      ],
    ),
  );
}

Widget HomeScreen() {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 16),
            child: Column(
              children: [Stack()],
            ),
          )
        ],
      )
    ],
  );
}

// class ImageInsta extends StatelessWidget {
//   final String Imageinsta;
//
//   const ImageInsta({Key? key, required this.Imageinsta}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: 90,
//           height: 90,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(colors: [Colors.red, Colors.black]),
//             borderRadius: BorderRadius.circular(100),
//           ),
//         ),
//         Container(
//           width: 90,
//           height: 90,
//           padding: EdgeInsets.all(5),
//           child: CircleAvatar(
//             radius: 35,
//             backgroundImage: NetworkImage(Imageinsta),
//           ),
//         ),
//         Container(
//           width: 100,
//           height: 100,
//           child: Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               //decoration: BoxDecoration(
//               // color: Colors.red,
//               //borderRadius: BorderRadius.circular(5)
//               // ),
//               child: Text(
//                 'cristiano',
//                 style: TextStyle(fontSize: 8, color: Colors.white),
//               ),
//               //height: 20,
//
//               padding: EdgeInsets.symmetric(vertical: 0),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
class ImageInsta extends StatelessWidget {
  final String Imageinsta;

  const ImageInsta({Key? key, required this.Imageinsta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 16.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      //color: Colors.red,

                      image: DecorationImage(image: AssetImage(
                          'assets/images/storybackground.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                      //border: BorderRadius.circular(37),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(37),
                        //border: BorderRadius.circular(37),
                      ),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(Imageinsta),
                      ),
                    ),
                  ),

                ],

              ),
            )
          ],
        )

      ],
    );
  }
}

Widget Perfil() {
  return Container(
    //padding: EdgeInsets.all(.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2),
    ),
    child: Image(image: NetworkImage('https://tm.ibxk.com.br/2022/03/09/09151903947444.jpg?ims=1200x675'),fit: BoxFit.cover,),
  );
}
