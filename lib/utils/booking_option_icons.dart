import 'package:flutter/material.dart';

/// Icon library of the booking options. The keys are stored by the API
/// (24 characters max) and are the SAME as on the website: never rename or
/// reuse a key, only add new ones. An unknown or missing key is a star.
const String bookingOptionFallbackIcon = 'star';

const Map<String, IconData> bookingOptionIcons = {
  // Fixed services
  'truck': Icons.local_shipping_outlined,
  'driver': Icons.badge_outlined,
  // Comfort and equipment
  'child_seat': Icons.child_friendly_outlined,
  'gps': Icons.navigation_outlined,
  'wifi': Icons.wifi,
  'usb_charger': Icons.usb,
  'ac': Icons.ac_unit,
  'umbrella': Icons.beach_access_outlined,
  'cooler': Icons.kitchen_outlined,
  'paw': Icons.pets_outlined,
  'users': Icons.groups_outlined,
  // Transport and services
  'roof_rack': Icons.directions_car_outlined,
  'bike_rack': Icons.pedal_bike,
  'wheel': Icons.tire_repair,
  'fuel': Icons.local_gas_station_outlined,
  'wash': Icons.local_car_wash_outlined,
  'wrench': Icons.build_outlined,
  'key': Icons.key_outlined,
  'map': Icons.map_outlined,
  'airport': Icons.flight_takeoff,
  'clock': Icons.schedule,
  // Events and decoration
  'gift': Icons.card_giftcard,
  'flower': Icons.local_florist_outlined,
  'heart': Icons.favorite_border,
  'music': Icons.music_note_outlined,
  'camera': Icons.photo_camera_outlined,
  'ribbon': Icons.workspace_premium_outlined,
  'star': Icons.star_border,
  'tag': Icons.sell_outlined,
  // Technology and travel
  'phone': Icons.smartphone,
  'bluetooth': Icons.bluetooth,
  'speaker': Icons.volume_up_outlined,
  'monitor': Icons.desktop_windows_outlined,
  'luggage': Icons.luggage_outlined,
  'shield': Icons.shield_outlined,
};

/// An icon group of the owner picker. [titleKey] is a translation key.
class BookingOptionIconGroup {
  const BookingOptionIconGroup(this.titleKey, this.keys);
  final String titleKey;
  final List<String> keys;
}

const List<BookingOptionIconGroup> bookingOptionIconGroups = [
  BookingOptionIconGroup('bo_icon_group_comfort', [
    'child_seat', 'gps', 'wifi', 'usb_charger', 'ac', 'umbrella', 'cooler',
    'paw', 'users',
  ]),
  BookingOptionIconGroup('bo_icon_group_transport', [
    'roof_rack', 'bike_rack', 'wheel', 'fuel', 'wash', 'wrench', 'key', 'map',
    'airport', 'clock',
  ]),
  BookingOptionIconGroup('bo_icon_group_events', [
    'gift', 'flower', 'heart', 'music', 'camera', 'ribbon', 'star', 'tag',
  ]),
  BookingOptionIconGroup('bo_icon_group_tech', [
    'phone', 'bluetooth', 'speaker', 'monitor', 'luggage', 'shield',
  ]),
];

bool isKnownBookingOptionIcon(String? key) =>
    key != null && bookingOptionIcons.containsKey(key);

/// Icon for a stored key, star when the key is unknown or absent.
IconData bookingOptionIconData(String? key) =>
    bookingOptionIcons[key] ?? bookingOptionIcons[bookingOptionFallbackIcon]!;
