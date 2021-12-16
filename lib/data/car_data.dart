import 'package:car_app_ui/car_model.dart';
import 'package:car_app_ui/theme/app_colors.dart';

class CarData {
  static final data = [
    CarModel(
        title: 'Spring wood',
        status: 'PICK UP',
        time: '11:25 AM',
        dotColor: AppColors.blue),
    CarModel(
        title: 'Bridge Farm',
        status: 'DROP OFF',
        time: '12:05 PM',
        dotColor: AppColors.green),
  ];
}
