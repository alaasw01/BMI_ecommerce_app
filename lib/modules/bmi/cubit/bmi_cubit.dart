import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());

  bool isMale = true;
  double height = 150.0;
  int weight = 60;
  int age = 20;
  void changeGnder(bool gender) {
    isMale = gender;
    emit(BmiChangeGender());
  }

  void chaangeHeight(value) {
    height = value;
    emit(BmiChangeHeight());
  }

  void ageIncrement(){
    age++;
    emit(BmiIncrementAgeState());
  }
  void ageDencrement(){
    age--;
    emit(BmiDecrementAgeState());
  }
  
  void weightIncrement(){
    weight++;
    emit(BmiIncrementWeightState());
  }
   void weightDecrement(){
    weight++;
    emit(BmiDecrementWeightState());
  }
}
