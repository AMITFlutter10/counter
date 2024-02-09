// cubit
import 'package:counter/cubit_counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';
import 'cubit_counter/counter_state.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          // if(state is ChangeCounterSate){
          //    CircularProgressIndicator();
          // }
        },
        builder: (context, state) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( "${CounterCubit.get(context).counter}"
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: CounterCubit.get(context).incrementCounter,
                        child: Text("Incremnt")),
                    ElevatedButton(
                        onPressed: CounterCubit.get(context).decrementCounter,
                        child: Text("decrement"))
                  ],
                )
              ],
            ),
          );
        },
      );
  }
}


//provider
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'counter_provider.dart';
//
// class MyHome extends StatelessWidget {
//   const MyHome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Consumer<CounterProvider>(
//             builder: (context, provider, child) {
//               return Text(provider.counter.toString());
//             },
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton(
//                   onPressed:
//                       Provider.of<CounterProvider>(context).incrementCounter,
//                   child: Text("Incremnt")),
//               ElevatedButton(
//                   onPressed:
//                       Provider.of<CounterProvider>(context).decrementCounter,
//                   child: Text("decrement"))
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
