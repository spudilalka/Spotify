import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class RegOrSignEvent {
  const RegOrSignEvent();
  @override
  List<Object?> get props => [];
}

class GetUsername extends RegOrSignEvent {
  const GetUsername();
}

class GetEmail extends RegOrSignEvent {
  const GetEmail();
}

class GetPassword extends RegOrSignEvent {
  const GetPassword();
}
