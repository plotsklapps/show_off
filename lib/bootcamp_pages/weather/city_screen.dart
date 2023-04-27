import 'package:showoff/all_imports.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  CityScreenState createState() {
    return CityScreenState();
  }
}

class CityScreenState extends State<CityScreen> {
  late String cityName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter City Name',
                ),
                onChanged: (value) {
                  cityName = value;
                },
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                child: const Text(
                  'Get Current Weather',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
