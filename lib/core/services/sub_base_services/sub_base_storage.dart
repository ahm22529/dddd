import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final SupabaseClient _client = Supabase.instance.client;

  Future<void> insertData({
    required String tableName,
    required Map<String, dynamic> data,
  }) async {
    try {
      final response = await _client.from(tableName).insert(data);

      if (response.error != null) {
        throw Exception('Error inserting data: ${response.error!.message}');
      }

      print('Data inserted successfully: ${response.data}');
    } catch (e) {
      print('Error: $e');
    }
  }
}
