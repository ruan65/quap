///
//  Generated code. Do not modify.
//  source: qua.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'qua.pb.dart' as $0;
export 'qua.pb.dart';

class QuaClient extends $grpc.Client {
  static final _$quaInterview =
      $grpc.ClientMethod<$0.QuaMessage, $0.QuaMessage>(
          '/Qua/quaInterview',
          ($0.QuaMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.QuaMessage.fromBuffer(value));

  QuaClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.QuaMessage> quaInterview(
      $async.Stream<$0.QuaMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$quaInterview, request, options: options);
  }
}

abstract class QuaServiceBase extends $grpc.Service {
  $core.String get $name => 'Qua';

  QuaServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QuaMessage, $0.QuaMessage>(
        'quaInterview',
        quaInterview,
        true,
        true,
        ($core.List<$core.int> value) => $0.QuaMessage.fromBuffer(value),
        ($0.QuaMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$0.QuaMessage> quaInterview(
      $grpc.ServiceCall call, $async.Stream<$0.QuaMessage> request);
}
