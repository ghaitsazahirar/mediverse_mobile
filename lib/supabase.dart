import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> initSupabase() async {
  await Supabase.initialize(
    url: 'https://xdcxhsauitzcxrytmicy.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhkY3hoc2F1aXR6Y3hyeXRtaWN5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQxMDc2MjIsImV4cCI6MjA1OTY4MzYyMn0.nn9Tt9irvY5bsLidCjFwuB_PpakPbPLcfjnKBBF8Fss',
  );

  print("✅ Supabase initialized!");
}