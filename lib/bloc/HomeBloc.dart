import 'package:rxdart/rxdart.dart';
import 'package:flutter_app/models/HomeModel.dart';
import 'package:flutter_app/api/ApiHome.dart';

class HomeBloc {
  ApiHome _repository = ApiHome();

  //Create a PublicSubject object responsible to add the data which is got from
  // the server in the form of WeatherResponse object and pass it to the UI screen as a stream.
  final _cumulativeCaseFetcher = PublishSubject<CumulativeCase>();

  //This method is used to pass the weather response as stream to UI
  Observable<CumulativeCase> get cumulativeCase => _cumulativeCaseFetcher.stream;

  fetchCumulativeCase() async {
    CumulativeCase weatherResponse = await _repository.fetchCumulativeCase();
    _cumulativeCaseFetcher.sink.add(weatherResponse);
  }

  dispose() {
    //Close the weather fetcher
    _cumulativeCaseFetcher.close();
  }
}

final homeBloc = HomeBloc();
