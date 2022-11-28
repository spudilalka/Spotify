import 'package:flutter_bloc/flutter_bloc.dart';

import 'reg and sign event.dart';
import 'reg and sign state.dart';

class ConvertBloc extends Bloc<RegOrSignEvent, RegOrSignState> {
  ConvertBloc() : super(const RegOrSignState()) {
    on<RegOrSignEvent>((event, emit) async {
      if (event is GetUsername) {
        await getUsername(event, state, emit);
      } else if (event is GetEmail) {
        await getEmail(event, state, emit);
      } else if (event is GetPassword) {
        await getPassword(event, state, emit);
      }
    });
  }

  Future getUsername(
    GetUsername event,
    RegOrSignState state,
    Emitter<RegOrSignState> emit,
  ) async {
    print('username');
  }

  Future getPassword(
    GetPassword event,
    RegOrSignState state,
    Emitter<RegOrSignState> emit,
  ) async {
    print('Password');
  }

  Future getEmail(
    GetEmail event,
    RegOrSignState state,
    Emitter<RegOrSignState> emit,
  ) async {
    print('Email');
  }
}
