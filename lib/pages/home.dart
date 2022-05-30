import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController controller = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  bool mobile = false;

  void _openDrawer() {
    _scaffoldkey.currentState!.openDrawer();
  }

  @override
  void initState() {
    var size = MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size;

    if (size.width < 800) {
      setState(() {
        mobile = true;
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'HellowChat',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Início'),
              onTap: () {
                Navigator.pop(context);
                controller.animateTo(
                  0.0, // change 0.0 {double offset} to corresponding widget position
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                );
              },
            ),
            ListTile(
              title: const Text('Preços'),
              onTap: () {
                Navigator.pop(context);
                controller.animateTo(
                  700, // change 0.0 {double offset} to corresponding widget position
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                );
              },
            ),
            ListTile(
              title: const Text('Canais'),
              onTap: () {
                Navigator.pop(context);
                controller.animateTo(
                  1200, // change 0.0 {double offset} to corresponding widget position
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                );
              },
            ),
            ListTile(
              title: const Text('Serviços'),
              onTap: () {
                Navigator.pop(context);
                controller.animateTo(
                  1700, // change 0.0 {double offset} to corresponding widget position
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        actions: [
          mobile
              ? SizedBox(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          'HellowChat',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _openDrawer();
                        },
                        icon: const Icon(Icons.menu),
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'HellowChat',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          TextButton(
                            child: const Text(
                              "Início",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            onPressed: () {
                              controller.animateTo(
                                0.0, // change 0.0 {double offset} to corresponding widget position
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeOut,
                              );
                            },
                          ),
                          TextButton(
                            child: const Text(
                              "Preços",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            onPressed: () {
                              controller.animateTo(
                                400.0, // change 0.0 {double offset} to corresponding widget position
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeOut,
                              );
                            },
                          ),
                          TextButton(
                            child: const Text(
                              "Canais",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            onPressed: () {
                              controller.animateTo(
                                1200.0, // change 0.0 {double offset} to corresponding widget position
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeOut,
                              );
                            },
                          ),
                          TextButton(
                            child: const Text(
                              "Serviços",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            onPressed: () {
                              controller.animateTo(
                                2000.0, // change 0.0 {double offset} to corresponding widget position
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeOut,
                              );
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Theme.of(context).primaryColor)),
                              onPressed: () {
                                html.window.open(
                                    'https://app.hellowchat.com/', "_blank");
                              },
                              child: Container(
                                  height: 35,
                                  color: Theme.of(context).primaryColor,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text('Login'),
                                    ],
                                  )))
                        ],
                      )
                    ],
                  ),
                )
        ],
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //step 01
              mobile
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: size.width,
                                child: Column(
                                  children: const [
                                    Text(
                                        'A um chat de distância de seus clientes e equipes.',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: EdgeInsets.only(top: 13.0),
                                      child: Text(
                                          'Simplifique a comunicação de suas equipes a partir da mesma ferramenta. Monitore, coordene e desfrute de uma equipe mais produtiva e eficiente.',
                                          style: TextStyle(fontSize: 16)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Theme.of(context)
                                                    .primaryColor)),
                                    onPressed: () {
                                      html.window.open(
                                          'https://wa.me/05563992086480?text=Estou%20interessado%20no%20hellowchat%20para%20minha%20empresa',
                                          "_blank");
                                    },
                                    child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Experimentar',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.9,
                          child: Lottie.asset('assets/1.json'),
                        )
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  'A um chat de distância de seus clientes e equipes.',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                              const Padding(
                                padding: EdgeInsets.only(top: 18.0),
                                child: Text(
                                    'Simplifique a comunicação de suas equipes a partir da mesma ferramenta. Monitore, coordene e desfrute de uma equipe mais produtiva e eficiente.',
                                    style: TextStyle(fontSize: 16)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Theme.of(context)
                                                    .primaryColor)),
                                    onPressed: () {
                                      html.window.open(
                                          'https://wa.me/05563992086480?text=Estou%20interessado%20no%20hellowchat%20para%20minha%20empresa',
                                          "_blank");
                                    },
                                    child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Experimentar',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.3,
                          child: Lottie.asset('assets/1.json'),
                        )
                      ],
                    ),
              const SizedBox(height: 100),
              //step 02

              mobile
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * 0.9,
                          child: Lottie.asset('assets/3.json'),
                        ),
                        SizedBox(
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                  'Preços de vários agentes do Whatsapp e tarifas acessíveis',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              const Padding(
                                padding: EdgeInsets.only(top: 18.0),
                                child: Text(
                                    'Todos nós merecemos mais produtividade sem gastar demais! Definimos os preços mais competitivos do mercado para que você possa começar hoje mesmo.',
                                    style: TextStyle(fontSize: 13)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Theme.of(context)
                                                    .primaryColor)),
                                    onPressed: () {
                                      html.window.open(
                                          'https://wa.me/05563992086480?text=Estou%20interessado%20no%20hellowchat%20para%20minha%20empresa',
                                          "_blank");
                                    },
                                    child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Experimentar',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * 0.3,
                          child: Lottie.asset('assets/3.json'),
                        ),
                        SizedBox(
                          width: size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                  'Preços de vários agentes do Whatsapp e tarifas acessíveis',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                              const Padding(
                                padding: EdgeInsets.only(top: 18.0),
                                child: Text(
                                    'Todos nós merecemos mais produtividade sem gastar demais! Definimos os preços mais competitivos do mercado para que você possa começar hoje mesmo.',
                                    style: TextStyle(fontSize: 16)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Theme.of(context)
                                                    .primaryColor)),
                                    onPressed: () {
                                      html.window.open(
                                          'https://wa.me/05563992086480?text=Estou%20interessado%20no%20hellowchat%20para%20minha%20empresa',
                                          "_blank");
                                    },
                                    child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Experimentar',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
              const SizedBox(height: 100),
              //step 03
              mobile
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  'Gerencie os chats dos seus canais de mensagens',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              const Padding(
                                padding: EdgeInsets.only(top: 18.0),
                                child: Text(
                                    'CRM multiagente, Bate-papos gratuitos ilimitados, Contatos ilimitados, Histórico de bate-papo ilimitado, chatbot, Monitoramento de bate-papo',
                                    style: TextStyle(fontSize: 13)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Theme.of(context)
                                                    .primaryColor)),
                                    onPressed: () {
                                      html.window.open(
                                          'https://wa.me/05563992086480?text=Estou%20interessado%20no%20hellowchat%20para%20minha%20empresa',
                                          "_blank");
                                    },
                                    child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Experimentar',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.3,
                          child: Lottie.asset('assets/4.json'),
                        )
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  'Gerencie os chats dos seus canais de mensagens',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                              const Padding(
                                padding: EdgeInsets.only(top: 18.0),
                                child: Text(
                                    'CRM multiagente, Bate-papos gratuitos ilimitados, Contatos ilimitados, Histórico de bate-papo ilimitado, chatbot, Monitoramento de bate-papo',
                                    style: TextStyle(fontSize: 16)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Theme.of(context)
                                                    .primaryColor)),
                                    onPressed: () {
                                      html.window.open(
                                          'https://wa.me/05563992086480?text=Estou%20interessado%20no%20hellowchat%20para%20minha%20empresa',
                                          "_blank");
                                    },
                                    child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Experimentar',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.3,
                          child: Lottie.asset('assets/4.json'),
                        )
                      ],
                    ),
              const SizedBox(height: 100),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      'Alguns dos nossos serviços',
                      style: mobile
                          ? const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)
                          : const TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 200,
                              width: 250,
                              child: Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Transferência de Atendimentos',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.social_distance,
                                      color: Theme.of(context).primaryColor,
                                      size: 36,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Faça transferência de chats entre operadores e setores dentro da plataforma.',
                                        textAlign: TextAlign.left,
                                        softWrap: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 200,
                              width: 250,
                              child: Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text('Múltiplos Atendentes',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Icon(
                                      Icons.switch_account,
                                      color: Theme.of(context).primaryColor,
                                      size: 36,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                          'Atenda a diversos clientes com diversos atendentes ao mesmo tempo, não perca nenhum chat.',
                                          textAlign: TextAlign.left),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 200,
                              width: 250,
                              child: Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text('Múltiplos Números de Whatsapp',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Icon(
                                      Icons.whatshot,
                                      color: Theme.of(context).primaryColor,
                                      size: 36,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Tenha vários números em um único painel. Poderoso recurso!',
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 200,
                              width: 250,
                              child: Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text('Setorização De Chats',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Icon(
                                      Icons.dynamic_feed,
                                      color: Theme.of(context).primaryColor,
                                      size: 36,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                          'Setorize seus chats, envie os chats certos para cada setor do sistema.',
                                          textAlign: TextAlign.left),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 200,
                              width: 250,
                              child: Card(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text('Relatórios E Dashboars',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Icon(
                                      Icons.leaderboard,
                                      color: Theme.of(context).primaryColor,
                                      size: 36,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Visualize relatórios de atendimentos e veja dashboards sobre seu sistema.',
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
//step 04
              mobile
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * 0.9,
                          child: Lottie.asset('assets/5.json'),
                        ),
                        SizedBox(
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                  'Agende aconselhamento com um especialista',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              const Padding(
                                padding: EdgeInsets.only(top: 18.0),
                                child: Text(
                                    ' E se nos conhecermos um pouco melhor antes de dar o grande passo, agende uma consulta gratuita e avalie junto com nosso consultor se o Whaticket atende às necessidades do seu negócio. Queremos que você tenha 100% de certeza de que nossa ferramenta',
                                    style: TextStyle(fontSize: 13)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Theme.of(context)
                                                    .primaryColor)),
                                    onPressed: () {
                                      html.window.open(
                                          'https://wa.me/05563992086480?text=Estou%20interessado%20no%20hellowchat%20para%20minha%20empresa',
                                          "_blank");
                                    },
                                    child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Experimentar',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * 0.3,
                          child: Lottie.asset('assets/5.json'),
                        ),
                        SizedBox(
                          width: size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                  'Agende aconselhamento com um especialista',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                              const Padding(
                                padding: EdgeInsets.only(top: 18.0),
                                child: Text(
                                    ' E se nos conhecermos um pouco melhor antes de dar o grande passo, agende uma consulta gratuita e avalie junto com nosso consultor se o Whaticket atende às necessidades do seu negócio. Queremos que você tenha 100% de certeza de que nossa ferramenta',
                                    style: TextStyle(fontSize: 16)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Theme.of(context)
                                                    .primaryColor)),
                                    onPressed: () {
                                      html.window.open(
                                          'https://wa.me/05563992086480?text=Estou%20interessado%20no%20hellowchat%20para%20minha%20empresa',
                                          "_blank");
                                    },
                                    child: SizedBox(
                                      height: 40,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Experimentar',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
              const SizedBox(
                height: 100,
              ),

              Container(
                height: size.height * 0.3,
                width: double.infinity,
                color: Theme.of(context).primaryColorDark,
                child: mobile
                    ? Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'Entre Em Contato Com A Gente',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                      'Que será um prazer em apresentar a plataforma.',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(top: 18.0),
                                  child: Text(
                                    'Telefone: 63 - 991000032',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Email: app.hellowchat@gmail.com',
                                      style: TextStyle(color: Colors.white)),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.0, bottom: 8.0),
                                  child: Text(
                                      'Endereço: JK business center - Palmas TO',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)),
                                      onPressed: () {
                                        html.window.open(
                                            'https://wa.me/05563991000032?text=Estou%20interessado%20no%20hellowchat%20para%20minha%20empresa',
                                            "_blank");
                                      },
                                      child: Text('Contate-nos',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor))),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Entre Em Contato Com A Gente',
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                    'Que será um prazer em apresentar a plataforma.',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Telefone: 63 - 991000032',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Email: app.hellowchat@gmail.com',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                    'Endereço: JK business center - Palmas TO',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)),
                                      onPressed: () {
                                        html.window.open(
                                            'https://wa.me/05563991000032?text=Estou%20interessado%20no%20hellowchat%20para%20minha%20empresa',
                                            "_blank");
                                      },
                                      child: Text('Contate-nos',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor))),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
