extension IsNullOrNotNullExtension<T> on T? {
  dynamic isNullOrNotNull({
    required dynamic Function(T) ifNotNull,
    required dynamic Function() ifNull,
  }) =>
      (this != null) ? ifNotNull(this as T) : ifNull();
}
