# Version 2.0.4 (build 13) — tests internes

Contenu : options et services de réservation (livraison, chauffeur, options personnalisées), côté locataire et propriétaire. L'API et le Web correspondants doivent être déployés sur l'environnement visé.

## Environnement visé
Les tests internes se font contre la **QA** (`https://qa.gozyapp.com`). Ne pas distribuer de build pointant sur la production tant que l'API et le Web de production n'ont pas reçu la fonctionnalité (migrations comprises).

## Numéros de version
| Fichier | Valeur |
|---|---|
| `pubspec.yaml` | `2.0.4+13` |
| `android/app/build.gradle` | `versionCode 13`, `versionName '2.0.4'` |
| `ios/Flutter/AppEnvConfig.xcconfig` | `APP_VERSION = 2.0.4`, `BUILD_VERSION = 13` |

Chaque nouvelle distribution doit augmenter le numéro de build (13, 14, …) dans ces trois fichiers.

## Construire (sur la machine qui détient les fichiers de signature)
```bash
flutter pub get
# Android (Play Console, piste « test interne »)
flutter build appbundle --release --dart-define-from-file=env/qa.json
# iOS (TestFlight) : archive depuis Xcode ou
flutter build ipa --release --dart-define-from-file=env/qa.json
```
Sous Xcode récent (SDK iOS 27), préfixer les commandes iOS par `FLUTTER_XCODE_ARCHS=arm64 FLUTTER_XCODE_ONLY_ACTIVE_ARCH=YES`. Les clés de signature, profils et certificats restent dans le dépôt privé : ne jamais les copier dans un rapport ou un message.

## À tester (testeurs internes)
- Fiche d'un véhicule : « Options et services disponibles », aucune case cochée, description au toucher de l'icône « i ».
- Réservation : cocher des options, lieu de livraison obligatoire (5 à 255 caractères), total recalculé (frais de service 5 % sur location + options).
- Paiement en mode test uniquement ; vérifier ensuite le détail de réservation, le reçu et l'annulation.
- Propriétaire (étape « Fixer les prix ») : services Livraison et Chauffeur, options personnalisées (plafond défini par l'administrateur), choix d'icône, désactivation, suppression.
- Anciennes annonces avec livraison : une seule ligne « Livraison », total inchangé.
- Français et anglais ; mode sombre ; petits écrans (iPhone SE), texte agrandi.

## Connu
- Le test `test/widget_test.dart` « extension panel stays bounded on small screens » échoue déjà avant cette version.
- Le sous-total « véhicule » n'est pas affiché (l'API ne le renvoie pas).
- Le détail des options n'apparaît pas dans l'écran d'annulation (l'API ne renvoie que des totaux de remboursement).
- Les traductions mobiles de cette version existent en français et en anglais ; les autres langues affichent un texte de repli.
