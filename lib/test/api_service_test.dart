// ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import 'package:trendora/Service/api_service.dart';

void main() {
  test('Fetch notifications from API', () async {
    final api = ApiService();
    final data = await api.fetchNotification();
    expect(data.isNotEmpty, true);
  });
}
