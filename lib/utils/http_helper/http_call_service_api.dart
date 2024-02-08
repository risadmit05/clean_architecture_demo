import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:trust_ride/utils/http/base.url.dart';
class HttpCallServiceAPiPOST {
  static post(
      {required String endpoint,
      Map<String, String>? headers,
      Object? body}) async {
    try {
      final response = await http.post(Uri.parse(BaseUrl.baseUrl + endpoint),
          headers: headers, body: body);

      if (response.statusCode == 200) {
        return response.body;
      } else {
        return Future.error('Server Bad Response ${response.statusCode}');
      }
    } on TimeoutException catch (_) {
      return Future.error('Timeout: Unable to connect to the server.');
    } on SocketException catch (e) {
      return Future.error(
          'No Internet: Check your internet connection.${e.message}');
    } on http.ClientException catch (e) {
      return Future.error('HTTP Client Exception: $e');
    } on FormatException catch (e) {
      return Future.error('Invalid JSON Exception: $e');
    } on http.Response catch (e) {
      return Future.error('HTTP Response Exception: $e');
    } catch (e) {
      return Future.error('Server  Exception: $e');
    }
  }
}
