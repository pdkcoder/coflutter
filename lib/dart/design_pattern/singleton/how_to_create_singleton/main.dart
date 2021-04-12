import 'package:coflutter/dart/design_pattern/singleton/how_to_create_singleton/singleton.dart';

void main() {
  // Using public static field
  SingletonUsingStaticField singletonUsingStaticField1 =
      SingletonUsingStaticField.instance;
  SingletonUsingStaticField singletonUsingStaticField2 =
      SingletonUsingStaticField.instance;
  print(singletonUsingStaticField1 == singletonUsingStaticField2);

  // Using private static field and getter
  SingletonUsingStaticFieldAndGetter singletonUsingStaticFieldAndGetter1 =
      SingletonUsingStaticFieldAndGetter.instance;
  SingletonUsingStaticFieldAndGetter singletonUsingStaticFieldAndGetter2 =
      SingletonUsingStaticFieldAndGetter.instance;
  print(singletonUsingStaticFieldAndGetter1 ==
      singletonUsingStaticFieldAndGetter2);

  // Using private static field and Factory constructor
  SingletonUsingFactoryConstructor singletonUsingFactoryConstructor1 =
      SingletonUsingFactoryConstructor();
  SingletonUsingFactoryConstructor singletonUsingFactoryConstructor2 =
      SingletonUsingFactoryConstructor();
  print(singletonUsingFactoryConstructor1 == singletonUsingFactoryConstructor2);
}
