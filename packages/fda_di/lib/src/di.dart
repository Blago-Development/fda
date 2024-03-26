import 'package:get_it/get_it.dart';

final diProvider = GetIt.instance;

T di<T extends Object>() => diProvider.get<T>();

T diWithParam<T extends Object, P>(P param) => diProvider.get<T>(param1: param);

T diWithParams<T extends Object, P1, P2>({
  required P1 param1,
  required P1 param2,
}) =>
    diProvider.get<T>(param1: param1, param2: param2);
