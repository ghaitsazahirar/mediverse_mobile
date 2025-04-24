import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SupabaseInit {
  static bool _isInitialized = false;

  static Future<void> initialize() async {
    if (_isInitialized) {
      return;  // Jika sudah diinisialisasi, tidak perlu dipanggil lagi
    }

    await dotenv.load(); 
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL']!,
      anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
    );

    _isInitialized = true;
  }
}


final supabaseClient = Supabase.instance.client;
