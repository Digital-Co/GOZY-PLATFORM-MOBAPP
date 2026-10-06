# Instructions initiales pour l'agent — affichage des remises dans l'application mobile

## Mission et périmètre

Adapter dans `GOZY-FLUTTER` la **première phase d'affichage** des remises de durée déjà réalisée dans `GOZY-WEB` (commit `4ded338`, « Display rental duration discounts across vehicle flows »). L'objectif est qu'un client repère les véhicules avec une remise, comprenne ce qu'il économise réellement et puisse prolonger sa réservation jusqu'au prochain palier lorsqu'il est atteignable. S'inspirer des maquettes Gozy fournies dans la conversation, mais adapter le rendu aux composants et contraintes de l'application mobile.

Cette phase concerne uniquement les remises existantes `weeklyDiscount` et `monthlyDiscount`. **Ne pas ajouter l'offre personnalisée**, ni changer les règles de tarification, les seuils, les pourcentages enregistrés, le calcul des frais ou le fonctionnement des codes promo. Ne pas recopier le prix fictif des maquettes : utiliser les données réelles de l'annonce et du calcul de réservation.

## Comportement produit à reproduire

1. Une offre hebdomadaire positive est présentée « −X % dès 7 jours » ; une offre mensuelle positive, « −Y % dès 28 jours ». Ignorer les valeurs absentes, nulles, négatives, non numériques ou supérieures à 100. Sans offre valide, ne montrer aucun badge ni panneau de remise.
2. **Sans dates choisies**, mettre en avant le plus grand pourcentage. En cas d'égalité, choisir le palier de 7 jours, plus accessible. Montrer les deux offres disponibles dans les détails de l'annonce, avec leurs seuils respectifs.
3. **Avec une durée choisie**, le badge promotionnel annonce le *prochain palier non atteint*, même si son pourcentage est inférieur à celui du palier précédent. Exemple avec 20 % dès 7 jours et 10 % dès 28 jours : à 4 jours, annoncer 20 % dès 7 jours ; de 7 à 27 jours, annoncer 10 % dès 28 jours ; à partir de 28 jours, annoncer l'offre mensuelle et ne plus proposer de prolongation. S'il n'existe qu'une seule offre, afficher le prochain palier s'il est à venir, sinon cette offre. Le badge d'une offre future ne doit jamais être présenté comme une remise déjà acquise.
4. Distinguer explicitement **remise acquise** et **remise à débloquer**. Lorsque le calcul de réservation renvoie une remise effective positive, afficher « Vous économisez [montant] » près du récapitulatif du prix, avec le bon montant et la bonne devise. Le montant réellement appliqué vient du calcul de facturation existant, pas du seul pourcentage du badge.
5. Si un palier supplémentaire est possible, placer un encart incitatif **immédiatement au-dessus du bouton de réservation** : « Prolongez de N jours et économisez M de plus. » avec une action « Ajouter N jours ». Calculer `M` comme l'économie projetée au nouveau palier moins l'économie actuelle. Si ce delta n'est pas positif mais que l'économie projetée est positive, formuler « … économisez M sur 28 jours » (montant total, jamais « de plus »). Si aucun montant fiable n'est disponible, rester sur une phrase courte fondée sur le pourcentage : « Ajoutez N jours, profitez de −X %. » Ne jamais inventer un montant ni suggérer un gain supplémentaire négatif.
6. L'action d'ajout de jours décale la **date de fin** jusqu'au prochain palier tout en conservant la date de début et les heures choisies. Elle doit relancer les contrôles de disponibilité et le calcul de prix, puis actualiser le récapitulatif avant de permettre la réservation. Ne pas proposer l'action si la prolongation enfreint une date bloquée, la durée maximale, l'horizon de réservation ou une autre contrainte existante. Si la disponibilité ou le tarif projeté ne peuvent pas être établis, ne pas promettre d'économie chiffrée.
7. Les remises hebdomadaire et mensuelle ne se cumulent pas. À 28 jours, la tarification existante donne priorité à la remise mensuelle lorsqu'elle est définie ; sinon la remise hebdomadaire peut continuer de s'appliquer. Les codes promo gardent leurs règles actuelles d'incompatibilité avec les remises de durée.

**Attention au comptage des jours :** le web utilise `dayDifferenceHelper` et peut compter différemment d'une simple soustraction des dates selon les heures (par exemple deux dates consécutives peuvent représenter 1 ou 2 jours). Dans Flutter, identifier le comptage utilisé par le moteur de réservation ou utiliser le champ `days` de `getBillingCalculation` pour l'état facturé. Les paliers doivent rester 7 et **28**, et l'annonce, le bouton et le prix doivent être cohérents avec la durée effectivement facturée.

## Surfaces mobiles à examiner et à couvrir

- Résultats de recherche et cartes de carte : badge vert compact sur la photo du véhicule, avec icône issue de la bibliothèque déjà utilisée dans Flutter. Réagir aux dates de recherche sélectionnées.
- Cartes d'accueil, véhicules recommandés, listes de favoris et toute surface réutilisant la carte d'annonce : même badge et même règle de sélection ; éviter un traitement limité aux résultats de recherche. Couvrir les véhicules similaires si cette surface existe sur le parcours mobile. Propager les dates sélectionnées lorsque le contexte les fournit.
- Fiche véhicule : présenter clairement les offres 7/28 jours et leurs conditions ; garder un rappel visuel des économies lorsque les dates sont connues.
- Sélecteur de dates / récapitulatif avant réservation : montant **réellement économisé** quand la remise s'applique ; encart du prochain palier et action d'ajout juste au-dessus du bouton de réservation. Le message doit être bref, naturel, incitatif et lisible sur petit écran.
- Étapes suivantes (paiement, confirmation, reçus) : vérifier la cohérence des montants et libellés déjà affichés, sans refaire les calculs de facturation.

Pistes de code à auditer avant modification : `lib/widgets/explore_list_item.dart`, `lib/widgets/explore_listing_item_widgets.dart`, `lib/screens/views/guest/searched/searched_listings.dart`, `lib/screens/views/guest/searched/filter_map_listings_page.dart`, `lib/screens/views/guest/wishlist/wishlist_group_item/wishlist_group_item.dart` et le parcours `lib/screens/views/booking/confirm_pay/`. Localiser aussi l'écran de fiche véhicule et ses éventuels véhicules similaires par leurs usages réels, sans supposer leur emplacement.

## Données et références techniques

- Flutter possède déjà `weeklyDiscount` et `monthlyDiscount` dans `lib/graphql/listing_data_fragment.graphql`. Vérifier que **chaque requête concrète** qui alimente les cartes et la fiche transporte ces champs ; si une requête ne reprend pas le fragment, l'étendre et régénérer les types GraphQL selon la procédure du projet.
- `lib/graphql/booking/getBillingCalculation/get_billing_calculation.graphql` fournit notamment `days`, `discount`, `discountLabel`, `currency`, `specialPricing`, `priceForDays` et `total`. Privilégier cette réponse pour les économies **appliquées** et la projection. Vérifier l'état de disponibilité avant toute suggestion interactive.
- Le mobile affiche déjà des remises dans le récapitulatif de paiement et certains reçus : conserver ces points de vérité et supprimer les doublons éventuels, sans recalcul concurrent.
- Référence web pour la règle de choix : `GOZY-WEB/src/helpers/discountPresentation.js`. Pour la possibilité de prolonger : `GOZY-WEB/src/helpers/discountExtension.js`. Pour l'interface : `GOZY-WEB/src/components/ListingDiscounts/ListingDiscounts.js`, `GOZY-WEB/src/components/ViewListing/Calendar/BookingForm.js` et `BillDetails.js`. Les tests de scénarios sont dans `GOZY-WEB/test/discount-presentation.test.cjs`.
- L'interface web utilise un badge vert, un panneau vert clair pour les économies, une icône de remise ou d'idée et un bouton de prolongation. Reprendre cette hiérarchie visuelle avec les couleurs, icônes, thèmes et composants natifs déjà présents dans Flutter ; prévoir les petits écrans, le texte agrandi et les langues de l'application.

## Travail attendu de l'agent mobile

1. Cartographier les écrans, les requêtes et le calcul de durée/prix existants ; signaler les différences réelles avec le web.
2. Centraliser la sélection de l'offre à mettre en avant et la détermination du prochain palier dans une fonction testable, puis réutiliser un composant visuel commun sur les cartes concernées.
3. Intégrer les offres, l'économie appliquée et l'encart de prolongation dans la fiche et le parcours de réservation. Faire recalculer disponibilité et prix après l'action.
4. Ajouter les textes dans la localisation mobile existante, au minimum pour les langues déjà supportées par le parcours concerné. Ne pas insérer de texte français en dur dans les widgets.
5. Tester les cas sans remise, une seule remise, deux remises, pourcentages égaux, 4/7/8/27/28 jours, horaires qui changent le nombre de jours, dates bloquées, limite de durée, prix spéciaux, conversion de devise et échec du calcul projeté. Vérifier manuellement les cartes, la fiche et l'encart sur un petit écran.

**Critère de livraison :** un client voit la remise avant d'ouvrir une annonce, comprend quelle remise est seulement disponible et laquelle s'applique à ses dates, voit son économie exacte lorsqu'elle est calculée, et peut atteindre le prochain palier depuis un bouton placé immédiatement avant la réservation. Le total facturé reste identique à celui du moteur existant pour les mêmes dates et options.
