import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_color/home_bloc.dart';

/// This class has text and change backGroundColor by onPress on screen
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<HomeBloc>(
      create: (BuildContext context) => HomeBloc(),
      dispose: (context, bloc) => bloc.dispose(),
      builder: (context, _) {
        return Scaffold(
          body: GestureDetector(
            onTap: context.read<HomeBloc>().colorChange,
            child: StreamBuilder<Color>(
              initialData: Colors.white,
              stream: context.read<HomeBloc>().changeColorStream,
              builder: (context, snapshot) {
                return Container(
                  color: snapshot.data,
                  child: const Center(
                    child: Text(
                      'Hey there',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
