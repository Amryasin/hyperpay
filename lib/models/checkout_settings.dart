import 'package:hyperpay/extensions/brands_ext.dart';

/// This class wraps the required params to get a `checkoutID`
/// from HyperPay **server-to-server**, meaning that these params
/// are sent later in the body of your call to get a `checkoutID`
/// to your server.
///
/// See [HyperpayPlugin]
///
/// @params
///

///
/// `additionalParams`: HyperPay allows sending additional params
/// to help you identify payments on your own DB.
/// Insert them as key/valye pairs.
///
/// Check [here](https://wordpresshyperpay.docs.oppwa.com/reference/parameters#customer) for full list of allowed parameters.
///
class CheckoutSettings {
  CheckoutSettings({
    required this.brand,
    required this.amount,
    this.additionalParams = const {},
  });

  /// The brand has the type and entity ID of the
  /// card the user will pay with.
  BrandType brand;

  /// a [Brand] that has the type and entity ID of the
  /// card the user will pay with.
  double amount;

  /// `additionalParams`: HyperPay allows sending additional params
  /// to help you identify payments on your own DB.
  /// Insert them as key/valye pairs.
  ///
  /// Check [here](https://wordpresshyperpay.docs.oppwa.com/reference/parameters#customer) for full list of allowed parameters.
  Map<String, dynamic> additionalParams;

  clear() {
    brand = BrandType.none;
    amount = 0.0;
    additionalParams = {};
  }
}