import 'package:flutter/material.dart';
import 'package:http/http.dart';

class IpPage extends StatefulWidget {
  const IpPage({super.key});

  @override
  State<IpPage> createState() => _IpPageState();
}

class _IpPageState extends State<IpPage> {
  String ipAddress = "radu's ip";

  Future<void> getIpAddress() async {
    // apelez https://api.ipify.org/
    // raspuns: 188.27.131.157

    // final Uri url = Uri(
    //   scheme: 'https',
    //   host: 'api.ipify.org',
    //   // path: 'claudiu',
    //   // queryParameters: <String, dynamic>{
    //   //   'name': 'claudiu',
    //   // },
    // );

    final Uri url2 = Uri.https('api.ipify.org');
    final Client client = Client();

    final Response response = await client.get(url2);

    if (response.statusCode == 200) {
      setState(() {
        ipAddress = response.body;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ip address'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: getIpAddress,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Text(ipAddress),
      ),
    );
  }
}
