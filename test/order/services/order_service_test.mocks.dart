// Mocks generated by Mockito 5.1.0 from annotations
// in abc_tech_app_class/test/order/services/order_service_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:abc_tech_app_class/order/model/order.dart' as _i5;
import 'package:abc_tech_app_class/order/provider/order_provider_interface.dart'
    as _i3;
import 'package:get/get.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeResponse_0<T> extends _i1.Fake implements _i2.Response<T> {}

/// A class which mocks [OrderProviderInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockOrderProviderInterface extends _i1.Mock
    implements _i3.OrderProviderInterface {
  MockOrderProviderInterface() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Response<dynamic>> postOrder(_i5.Order? order) =>
      (super.noSuchMethod(Invocation.method(#postOrder, [order]),
              returnValue: Future<_i2.Response<dynamic>>.value(
                  _FakeResponse_0<dynamic>()))
          as _i4.Future<_i2.Response<dynamic>>);
}
