part of 'bmi_cubit.dart';

@immutable
abstract class BmiState {}

class BmiInitial extends BmiState {}
class BmiChangeGender extends BmiState {}
class BmiChangeHeight extends BmiState {}
class BmiIncrementAgeState extends BmiState {}
class BmiDecrementAgeState extends BmiState {}
class BmiIncrementWeightState extends BmiState {}
class BmiDecrementWeightState extends BmiState {}


