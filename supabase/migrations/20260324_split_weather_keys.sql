-- Split global_weather into separate fisher_weather and farmer_weather keys
-- so each game can have independent weather controlled by admins.

INSERT INTO platform_settings (key, value) VALUES
  ('fisher_weather', '{"condition": "clear", "intensity": 1}'),
  ('farmer_weather', '{"condition": "clear", "intensity": 1}')
ON CONFLICT (key) DO NOTHING;
