import 'package:raven_flutter_sdk/src/api/api_provider.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'package:raven_flutter_sdk/src/models/device.dart';
import 'package:raven_flutter_sdk/src/models/user.dart';
import 'package:raven_flutter_sdk/src/api/dto/delivery_status.dart';
import 'package:raven_flutter_sdk/src/api/dto/raven_message.dart';

part 'api_endpoints.g.dart';

@RestApi(baseUrl: ApiProvider.baseUrl)
abstract class ApiEndpoints {
  factory ApiEndpoints({String? baseUrl}) {
    return _ApiEndpoints(ApiProvider.getHttpClient(), baseUrl: baseUrl);
  }

  @POST("v1/apps/{appId}/users")
  Future<User?> createUpdateUser(@Path("appId") String appId, @Body() User? user);

  @GET("v1/apps/{appId}/users/{userId}")
  Future<User?> getUser(@Path("appId") String appId, @Path("userId") String userId);

  @POST("v1/apps/{appId}/events/send")
  Future<User?> sendCommunication(@Path("appId") String appId, @Body() RavenMessage? msg);

  @POST("v1/apps/{appId}/users/{userId}/devices")
  Future<Device?> addDeviceToken(@Path("appId") String appId, @Path("userId") String userId, @Body() Device? device);

  @POST("v1/apps/{appId}/users/{userId}/devices/{deviceId}")
  Future<Device?> updateDeviceToken(
      @Path("appId") String appId,
      @Path("userId") String userId,
      @Path("deviceId") String deviceId,
      @Body() Device? device);

  @DELETE("v1/apps/{appId}/users/{userId}/devices/{deviceId}")
  Future<void> removeDeviceToken(@Path("appId") String appId, @Path("userId") String userId, @Path("deviceId") String deviceId);

  @POST("v1/apps/{appId}/push/status")
  Future<void> setDeliveryStatus(@Path("appId") String appId, @Body() DeliveryStatus status);
}
