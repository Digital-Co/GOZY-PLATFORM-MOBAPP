import 'package:gozy/constant.dart';

/// What the check-in / check-out screens need to know about the reservation
/// they belong to (shown in the summary card, used for the review).
class InspectionContext {
  const InspectionContext({
    required this.reservationId,
    required this.isOwner,
    this.listId = 0,
    this.title = '',
    this.photoName = '',
    this.place = '',
    this.checkIn,
    this.checkOut,
    this.startTime,
    this.endTime,
    this.guestName = '',
    this.hostName = '',
    this.guestId,
    this.hostId,
    this.guestPhone = '',
    this.hostPhone = '',
    this.reservationState,
    this.securityDeposit,
    this.currency,
  });

  final int reservationId;
  final bool isOwner;
  final int listId;
  final String title;
  final String photoName;
  final String place;

  /// Dates as sent by the API (milliseconds as text), formatted by the card.
  final dynamic checkIn;
  final dynamic checkOut;
  final dynamic startTime;
  final dynamic endTime;
  final String guestName;
  final String hostName;
  final String? guestId;
  final String? hostId;
  final String guestPhone;
  final String hostPhone;
  final String? reservationState;
  final num? securityDeposit;
  final String? currency;

  /// The other party of the reservation (the one a review is written for).
  String? get receiverId => isOwner ? guestId : hostId;
  String get receiverName => isOwner ? guestName : hostName;

  String get photoUrl => photoName.isEmpty ? '' : imgListingMedium + photoName;

  /// Reads a reservation of the trips list / detail (generated fragment data).
  /// Every field is optional: a missing one is just left empty.
  factory InspectionContext.fromReservation(dynamic r, {required bool isOwner}) {
    T? pick<T>(T? Function() read) {
      try {
        return read();
      } catch (_) {
        return null;
      }
    }

    String join(List<String?> parts) =>
        parts.where((part) => part != null && part.trim().isNotEmpty).map((p) => p!.trim()).join(', ');
    String personName(dynamic profile) =>
        pick<String>(() => profile?.displayName?.toString()) ??
        join([pick(() => profile?.firstName?.toString()), pick(() => profile?.lastName?.toString())]).replaceAll(', ', ' ');

    return InspectionContext(
      reservationId: pick<int>(() => r?.id) ?? 0,
      isOwner: isOwner,
      listId: pick<int>(() => r?.listId) ?? 0,
      title: pick<String>(() => r?.listTitle?.toString()) ?? '',
      photoName: pick<String>(() => r?.listData?.listPhotoName?.toString()) ?? '',
      place: join([
        pick(() => r?.listData?.street?.toString()),
        pick(() => r?.listData?.city?.toString()),
      ]),
      checkIn: pick(() => r?.checkIn),
      checkOut: pick(() => r?.checkOut),
      startTime: pick(() => r?.startTime),
      endTime: pick(() => r?.endTime),
      guestName: personName(pick(() => r?.guestData)),
      hostName: personName(pick(() => r?.hostData)),
      guestId: pick<String>(() => r?.guestData?.id?.toString()),
      hostId: pick<String>(() => r?.hostData?.id?.toString()),
      guestPhone: pick<String>(() => r?.guestData?.fullPhoneNumber?.toString()) ?? '',
      hostPhone: pick<String>(() => r?.hostData?.fullPhoneNumber?.toString()) ?? '',
      reservationState: pick<String>(() => r?.reservationState?.toString()),
      securityDeposit: pick<num>(() => r?.securityDeposit),
      currency: pick<String>(() => r?.currency?.toString()),
    );
  }
}
