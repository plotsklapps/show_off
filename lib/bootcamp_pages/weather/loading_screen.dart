import 'package:showoff/all_imports.dart';

class WeatherLoadingScreen extends StatefulWidget {
  const WeatherLoadingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WeatherLoadingScreenState();
  }
}

class WeatherLoadingScreenState extends State<WeatherLoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    if (mounted) {
      await Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return LocationScreen(locationWeather: weatherData);
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
