import 'package:equatable/equatable.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class RegOrSignState extends Equatable {
  // final Client newclient;
  final String username;
  final String email;
  final String password;

  const RegOrSignState({
    this.username = 'выбор файла',
    this.email = 'new format',
    this.password = '',
  });

  RegOrSignState copyWith({
    String? username,
    String? email,
    String? password,
  }) {
    return RegOrSignState(
      email: email ?? this.email,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [
        username,
        email,
        password,
      ];
}
