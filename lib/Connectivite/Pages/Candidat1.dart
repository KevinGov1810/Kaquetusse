import 'package:flutter/material.dart';

class Candidat1Screen extends StatefulWidget {
  final Function(int) onChangedStep;
  Candidat1Screen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  _Candidat1ScreenState createState() => _Candidat1ScreenState();
}

class _Candidat1ScreenState extends State<Candidat1Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: const Color.fromRGBO(250, 237, 205, 1),
          title: Text('Fiche candidat',
              style: TextStyle(
                  color: Color.fromRGBO(52, 78, 65, 1), fontSize: 30)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Color.fromRGBO(52, 78, 65, 1),
            onPressed: () => {
              widget.onChangedStep(7),
            },
          ),
        ),
        backgroundColor: const Color.fromRGBO(250, 237, 205, 1),
        body: Padding(
          padding:
              EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Kévin :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    SizedBox(height: 60.0),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur',
                        style: TextStyle(
                          fontSize: 12,
                        )),
                    Text(
                      '\nVisiter son site web :',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text('site.web.du.candidat \n\n\n',
                        style: TextStyle(
                            color: Color.fromRGBO(172, 113, 53, 1),
                            fontSize: 12,
                            decoration: TextDecoration.underline)),
                    Candidat_images(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

// ignore: camel_case_types
class Candidat_images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/Kévin.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      height: 250,
      width: 250,
    );
  }
}
