
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterInitialState());

  static CounterCubit get(context)=>BlocProvider.of(context);
  int counter =0;

  void incrementCounter(){
    counter++;
    emit(ChangeCounterSate());
  }

  void decrementCounter(){
    counter--;
    emit(DecrementCounterSate());
  }


}