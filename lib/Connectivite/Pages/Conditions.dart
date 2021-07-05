import 'package:flutter/material.dart';

class ConditionScreen extends StatefulWidget {
  final Function(int) onChangedStep;
  ConditionScreen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  _ConditionScreenState createState() => _ConditionScreenState();
}

class _ConditionScreenState extends State<ConditionScreen> {
  late ScrollController _scrollController;
  bool _termsReaded = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() => _termsReaded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Mentions légales',
              style: TextStyle(color: Color.fromRGBO(52, 78, 65, 1))),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Color.fromRGBO(52, 78, 65, 1),
            onPressed: () => widget.onChangedStep(0),
          ),
        ),
        body: Padding(
          padding:
              EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Kaquetusse - Mentions légales',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              decoration: TextDecoration.underline)),
                      SizedBox(height: 20.0),
                      Text(
                          "L'utilisateur par accès, la navigation et/ou l'utilisation du site (le 'site') accepte les conditions suivantes : ",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "La société Kaquetusse, le service Kaquetusse, le logo Kaquetusse et tout nom de produit ou service de Kaquetusse auquel il est fait référence sur le site sont des marques déposées par la société Kaquetusse.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "Les autres produits ou noms mentionnés sur ce Site peuvent être des marques déposées ou des noms de marque de leurs propriétaires respectifs. L’accès au Site par l’utilisateur ne saurait être interprété comme lui conférant, de manière implicite ou autrement, la moindre licence ou autorisation sur les marques qui y apparaissent sans l’accord préalable écrit de la société Kaquetusse ou du tiers qui en est détenteur.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "Le contenu figurant sur le Site ou mis à disposition par l’intermédiaire du Site est fourni par la société Kaquetusse, des fournisseurs de contenu indépendants ou des tiers. Il est soumis au droit sur la propriété intellectuelle de la société Kaquetusse, des fournisseurs de contenu indépendants ou de ces tiers. Toute reproduction, modification, transfert, distribution ou stockage de tout ou partie de ce contenu, sous quelque forme ou par quelque procédé que ce soit pour d’autre motif que le seul accès et la consultation du Site, sans l’autorisation préalable écrite de la société Kaquetusse est interdite. L’accès à certains services, éléments ou sections individuels du Site peut être sujet à des conditions supplémentaires, lesquelles seront mentionnées dans ces services, éléments ou parties.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "Le Site et son contenu sont mis à la disposition de l’utilisateur à des fins pratiques. Le contenu du Site est fourni « tel quel » et « selon sa disponibilité ». Kaquetusse ne garantit pas que ses pages Internet fonctionnent sans interruption ou sans erreur ni qu’elles soient adéquates pour un usage en particulier.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "Kaquetusse se réserve le droit de réviser les pages de son Site ou de supprimer l’accès à son Site ou à toute partie de celui-ci à tout moment.Aucune garantie explicite ou implicite d’aucune sorte, y compris sans s’y limiter, les garanties de titre, de non-violation ou les garanties implicites de commerciabilité ou d’adéquation à un usage particulier n’est donnée quant à la disponibilité, l’exactitude, la fiabilité ou le contenu du site. La société Kaquetusse ne peut être tenu responsable des dommages directs ou indirects, spéciaux ou consécutifs, des pertes de bénéfices ou des interruptions d’exploitation découlant de l’utilisation ou de l’impossibilité d’utiliser ce site, et ce même si Kaquetusse a été averti de l’occurrence potentielle de ces dommages. Certaines juridictions n’autorisent pas l’exclusion de certaines garanties ou limitations de responsabilité de sorte que les limitations ou exclusions susmentionnées peuvent ne pas s’appliquer à certains utilisateurs. Dans ce cas, la responsabilité de la société Kaquetusse se limitera à toute la mesure permise par la loi.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "L’utilisateur bénéficie, conformément à la loi Informatique et Libertés du 6 janvier 1978 modifiée, d’un droit d’accès, d’opposition et de rectification des données personnelles le concernant (ci-après les «Données ») qu’il est susceptible de communiquer. Pour l’exercer il devra envoyer un e-mail contenant une copie de sa carte d’identité à contact@Kaquetusse.com",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "En outre, des cookies peuvent être placés dans le navigateur de l’utilisateur. En cliquant sur le lien ci-après « cookies », l’utilisateur pourra accéder à des informations détaillées sur ces cookies et notamment les moyens permettant de paramétrer les navigateurs pour neutraliser ou refuser le placement de ces cookies. Pour plus d’information sur les engagements de la société Kaquetusse en matière de données personnelles, l’utilisateur est invité à consulter les conditions générales d’utilisation de Kaquetusserelative à la protection des données personnelles et de la vie privée.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "Transmission d’informations autres que des données personnelles. Les informations relatives à l’utilisateur qui ne sont pas des données personnelles ne seront utilisées à aucune autre fin et resteront confidentielles au sein de la société Kaquetusse.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "Pour faciliter l’accès, la société Kaquetusse peut inclure des liens vers des sites Internet appartenant à ou gérés par des tiers. L’utilisateur s’engage à consulter et accepter les règles de ces sites avant de les utiliser. Il convient également que la société Kaquetusse n’exerce aucun contrôle sur le contenu de ces sites et ne pourra pas être tenu responsable des données créées ou publiées par ces sites tiers. En outre, un lien vers un site n’appartenant pas à la société Kaquetusse ne présume pas que la société Kaquetusse approuve le site tiers considéré ni les produits ou services qui y sont référencés.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "Le Site est accessible via le réseau Internet, lequel est indépendant de la société Kaquetusse. L’utilisation d’Internet est sous l’unique responsabilité de l’utilisateur et sujette à toutes les lois et réglementations nationales et internationales en vigueur. La société Kaquetusse n’est aucunement responsable des informations ou services obtenus ou transmis par l’utilisateur sur le réseau Internet.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "La société Kaquetusse peut interrompre ou modifier tout ou partie du Site pour quelque raison que ce soit, à tout moment et à son entière discrétion.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "La société Kaquetusse se réserve à l’occasion le droit de modifier les conditions du présent contrat, ces modifications prenant effet immédiatement, dès leur affichage sur le Site dans leur version modifiée. L’utilisateur sera réputé avoir accepté les conditions générales du Site dans leur version mise à jour et disponible sur le Site, chaque fois qu’il accède au Site ou qu’il l’utilise.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "Les présentes conditions générales seront régies et interprétées conformément au droit français.",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 20.0),
                      Text(
                          "L’utilisateur et La société Kaquetusse conviennent de soumettre à la compétence des tribunaux de Paris (France) tout(e) plainte ou litige survenant dans le cadre du ou se rapportant au présent contrat.",
                          style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                  color: Color.fromRGBO(145, 202, 22, 1),
                  elevation: 0,
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  onPressed:
                      !_termsReaded ? null : () => {widget.onChangedStep(7)},
                  child: Text('Accepter'.toUpperCase()))
            ],
          ),
        ),
      ),
    );
  }
}
