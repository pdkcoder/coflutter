class SingletonUsingStaticField {
  SingletonUsingStaticField._private();

  static final SingletonUsingStaticField instance =
      SingletonUsingStaticField._private();
}

class SingletonUsingStaticFieldAndGetter {
  SingletonUsingStaticFieldAndGetter._private();

  static final SingletonUsingStaticFieldAndGetter _instance =
      SingletonUsingStaticFieldAndGetter._private();

  static SingletonUsingStaticFieldAndGetter get instance => _instance;
}

class SingletonUsingFactoryConstructor {
  SingletonUsingFactoryConstructor._private();

  static final SingletonUsingFactoryConstructor _instance =
      SingletonUsingFactoryConstructor._private();

  factory SingletonUsingFactoryConstructor() {
    return _instance;
  }
}
