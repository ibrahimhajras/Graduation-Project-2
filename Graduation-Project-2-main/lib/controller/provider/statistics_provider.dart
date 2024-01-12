import 'package:flutter/cupertino.dart';
import 'package:gradproject2/Utils/Static/crud.dart';
import 'package:gradproject2/models/statistics_model.dart';
import '../../Utils/Static/links.dart';
import '../../models/statistics2_model.dart';

class StatisticsProvider extends ChangeNotifier {
  List<StatisticModel> statistic=[];
  List<Statistic2Model> statistic2=[];
  final Crud _crud = Crud();

  fetchStatistics(var Year, var Crops, var City, var Semester) async {
    try {
      statistic.clear();
      var response = await _crud.postRequest(linkGetStatistics, {
        'Year': Year,
        'Crops': Crops,
        'City': City,
        'Semester': Semester,
      });
      if (response is Map) {
        var data = response['data'];
        if (data != null && response['status'] == "s") {
          for (var i in response['data']) {
            statistic.add(StatisticModel.fromJson(i));
          }
          notifyListeners();
        }

      } else {
        print("Unexpected response type: ${response.runtimeType}");
      }
    } catch (e) {
      print("Error occurred: $e");
    }
  }
  fetchStatistics2(var Year, var Crops, var City, var Semester) async {
    try {
      statistic2.clear();
      var response = await _crud.postRequest(linkGetStatistics2, {
        'Year': Year,
        'Crops': Crops,
        'City': City,
        'Semester': Semester,
      });
      if (response is Map) {
        var data = response['data'];
        if (data != null && response['status'] == "s") {
          for (var i in response['data']) {
            statistic2.add(Statistic2Model.fromJson(i));
          }
          notifyListeners();
        }

      } else {
        print("Unexpected response type: ${response.runtimeType}");
      }
    } catch (e) {
      print("Error occurred: $e");
    }
  }
}
