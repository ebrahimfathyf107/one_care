// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login as a guest`
  String get skip {
    return Intl.message(
      'Login as a guest',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get shop {
    return Intl.message(
      'Shop',
      name: 'shop',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Ai`
  String get Ai {
    return Intl.message(
      'Ai',
      name: 'Ai',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offer {
    return Intl.message(
      'Offers',
      name: 'offer',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Everything you need to manage your account and learn about our services and policies.`
  String get settings_description {
    return Intl.message(
      'Everything you need to manage your account and learn about our services and policies.',
      name: 'settings_description',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get account {
    return Intl.message(
      'My Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Manage your account and personal information`
  String get account_desc {
    return Intl.message(
      'Manage your account and personal information',
      name: 'account_desc',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about_us {
    return Intl.message(
      'About Us',
      name: 'about_us',
      desc: '',
      args: [],
    );
  }

  /// `Learn more about our company`
  String get about_us_desc {
    return Intl.message(
      'Learn more about our company',
      name: 'about_us_desc',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message(
      'Contact Us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `Ways to get in touch with us`
  String get contact_us_desc {
    return Intl.message(
      'Ways to get in touch with us',
      name: 'contact_us_desc',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `How we protect your data and privacy`
  String get privacy_policy_desc {
    return Intl.message(
      'How we protect your data and privacy',
      name: 'privacy_policy_desc',
      desc: '',
      args: [],
    );
  }

  /// `Return & Exchange Policy`
  String get return_policy {
    return Intl.message(
      'Return & Exchange Policy',
      name: 'return_policy',
      desc: '',
      args: [],
    );
  }

  /// `Terms and conditions for returns and exchanges`
  String get return_policy_desc {
    return Intl.message(
      'Terms and conditions for returns and exchanges',
      name: 'return_policy_desc',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about_us_title {
    return Intl.message(
      'About Us',
      name: 'about_us_title',
      desc: '',
      args: [],
    );
  }

  /// `Baqdu Plan, Prince Muqrin Ibn Abdulaziz, Shadhah District, Madinah 42361, Saudi Arabia`
  String get address_des {
    return Intl.message(
      'Baqdu Plan, Prince Muqrin Ibn Abdulaziz, Shadhah District, Madinah 42361, Saudi Arabia',
      name: 'address_des',
      desc: '',
      args: [],
    );
  }

  /// `Refund, Returns, and Cancellations Policy`
  String get return_new_heading {
    return Intl.message(
      'Refund, Returns, and Cancellations Policy',
      name: 'return_new_heading',
      desc: '',
      args: [],
    );
  }

  /// `We Reserve the Right to Cancel Orders`
  String get return_new_rights_title {
    return Intl.message(
      'We Reserve the Right to Cancel Orders',
      name: 'return_new_rights_title',
      desc: '',
      args: [],
    );
  }

  /// `Products availability`
  String get return_new_rights_point_1 {
    return Intl.message(
      'Products availability',
      name: 'return_new_rights_point_1',
      desc: '',
      args: [],
    );
  }

  /// `Errors in the description or prices for products`
  String get return_new_rights_point_2 {
    return Intl.message(
      'Errors in the description or prices for products',
      name: 'return_new_rights_point_2',
      desc: '',
      args: [],
    );
  }

  /// `Errors in your order`
  String get return_new_rights_point_3 {
    return Intl.message(
      'Errors in your order',
      name: 'return_new_rights_point_3',
      desc: '',
      args: [],
    );
  }

  /// `Errors or change in promotions, coupon code, etc.`
  String get return_new_rights_point_4 {
    return Intl.message(
      'Errors or change in promotions, coupon code, etc.',
      name: 'return_new_rights_point_4',
      desc: '',
      args: [],
    );
  }

  /// `Serviceable delivery area, zones, cities`
  String get return_new_rights_point_5 {
    return Intl.message(
      'Serviceable delivery area, zones, cities',
      name: 'return_new_rights_point_5',
      desc: '',
      args: [],
    );
  }

  /// `Incomplete or fraudulent profile`
  String get return_new_rights_point_6 {
    return Intl.message(
      'Incomplete or fraudulent profile',
      name: 'return_new_rights_point_6',
      desc: '',
      args: [],
    );
  }

  /// `Suspicion of fraud or an unauthorized or illegal transaction`
  String get return_new_rights_point_7 {
    return Intl.message(
      'Suspicion of fraud or an unauthorized or illegal transaction',
      name: 'return_new_rights_point_7',
      desc: '',
      args: [],
    );
  }

  /// `Suspicious activities or historical order pattern`
  String get return_new_rights_point_8 {
    return Intl.message(
      'Suspicious activities or historical order pattern',
      name: 'return_new_rights_point_8',
      desc: '',
      args: [],
    );
  }

  /// `Defective Items`
  String get return_new_defective_title {
    return Intl.message(
      'Defective Items',
      name: 'return_new_defective_title',
      desc: '',
      args: [],
    );
  }

  /// `For defective items supplied from the manufacturer, you are eligible for an exchange, refund, coupon, or voucher if the item(s) is returned within 7 days of delivery with e-payment confirmation.`
  String get return_new_defective_body {
    return Intl.message(
      'For defective items supplied from the manufacturer, you are eligible for an exchange, refund, coupon, or voucher if the item(s) is returned within 7 days of delivery with e-payment confirmation.',
      name: 'return_new_defective_body',
      desc: '',
      args: [],
    );
  }

  /// `Promotional & Gift Items`
  String get return_new_promotional_title {
    return Intl.message(
      'Promotional & Gift Items',
      name: 'return_new_promotional_title',
      desc: '',
      args: [],
    );
  }

  /// `Promotional and free gift items are NOT refundable unless there's a manufacturing defect at one care's discretion.`
  String get return_new_promotional_body {
    return Intl.message(
      'Promotional and free gift items are NOT refundable unless there\'s a manufacturing defect at one care\'s discretion.',
      name: 'return_new_promotional_body',
      desc: '',
      args: [],
    );
  }

  /// `Non-Defective Products`
  String get return_new_non_defective_title {
    return Intl.message(
      'Non-Defective Products',
      name: 'return_new_non_defective_title',
      desc: '',
      args: [],
    );
  }

  /// `No exchange or refund will be made for non-defective, correctly delivered products.`
  String get return_new_non_defective_body {
    return Intl.message(
      'No exchange or refund will be made for non-defective, correctly delivered products.',
      name: 'return_new_non_defective_body',
      desc: '',
      args: [],
    );
  }

  /// `Pricing Errors`
  String get return_new_pricing_title {
    return Intl.message(
      'Pricing Errors',
      name: 'return_new_pricing_title',
      desc: '',
      args: [],
    );
  }

  /// `We strive for accurate pricing. If an error occurs, we are not bound by the incorrect price and may cancel the purchase.`
  String get return_new_pricing_body {
    return Intl.message(
      'We strive for accurate pricing. If an error occurs, we are not bound by the incorrect price and may cancel the purchase.',
      name: 'return_new_pricing_body',
      desc: '',
      args: [],
    );
  }

  /// `Exchange Requests`
  String get return_new_exchange_request_title {
    return Intl.message(
      'Exchange Requests',
      name: 'return_new_exchange_request_title',
      desc: '',
      args: [],
    );
  }

  /// `Exchange requests for non-defective, correctly delivered products must be made within 7 days of delivery.`
  String get return_new_exchange_request_body {
    return Intl.message(
      'Exchange requests for non-defective, correctly delivered products must be made within 7 days of delivery.',
      name: 'return_new_exchange_request_body',
      desc: '',
      args: [],
    );
  }

  /// `Hygiene & Safety`
  String get return_new_hygiene_title {
    return Intl.message(
      'Hygiene & Safety',
      name: 'return_new_hygiene_title',
      desc: '',
      args: [],
    );
  }

  /// `one care reserves the right to deny any exchange for hygiene-related cases.`
  String get return_new_hygiene_body {
    return Intl.message(
      'one care reserves the right to deny any exchange for hygiene-related cases.',
      name: 'return_new_hygiene_body',
      desc: '',
      args: [],
    );
  }

  /// `Product Eligibility`
  String get return_new_eligibility_title {
    return Intl.message(
      'Product Eligibility',
      name: 'return_new_eligibility_title',
      desc: '',
      args: [],
    );
  }

  /// `Each product detail page states whether an item is eligible for return. Please review before purchase.`
  String get return_new_eligibility_body {
    return Intl.message(
      'Each product detail page states whether an item is eligible for return. Please review before purchase.',
      name: 'return_new_eligibility_body',
      desc: '',
      args: [],
    );
  }

  /// `Initiate a Return`
  String get return_new_initiate_title {
    return Intl.message(
      'Initiate a Return',
      name: 'return_new_initiate_title',
      desc: '',
      args: [],
    );
  }

  /// `Contact Customer Service within 7 days of delivery (phone, email, live chat, or WhatsApp). We'll guide you and schedule pickup from the original delivery location.`
  String get return_new_initiate_body {
    return Intl.message(
      'Contact Customer Service within 7 days of delivery (phone, email, live chat, or WhatsApp). We\'ll guide you and schedule pickup from the original delivery location.',
      name: 'return_new_initiate_body',
      desc: '',
      args: [],
    );
  }

  /// `Refund Processing`
  String get return_new_refund_title {
    return Intl.message(
      'Refund Processing',
      name: 'return_new_refund_title',
      desc: '',
      args: [],
    );
  }

  /// `Refunds are processed to the original payment method after inspection and approval. Transfers may take 3–7 business days depending on your bank.`
  String get return_new_refund_body {
    return Intl.message(
      'Refunds are processed to the original payment method after inspection and approval. Transfers may take 3–7 business days depending on your bank.',
      name: 'return_new_refund_body',
      desc: '',
      args: [],
    );
  }

  /// `Return Acceptance Conditions`
  String get return_new_acceptance_title {
    return Intl.message(
      'Return Acceptance Conditions',
      name: 'return_new_acceptance_title',
      desc: '',
      args: [],
    );
  }

  /// `Product not damaged while in your possession.`
  String get return_new_acceptance_point_1 {
    return Intl.message(
      'Product not damaged while in your possession.',
      name: 'return_new_acceptance_point_1',
      desc: '',
      args: [],
    );
  }

  /// `Product matches what was shipped to you.`
  String get return_new_acceptance_point_2 {
    return Intl.message(
      'Product matches what was shipped to you.',
      name: 'return_new_acceptance_point_2',
      desc: '',
      args: [],
    );
  }

  /// `Product returned in original condition (sealed/unopened if applicable, with box, manuals, warranty card, accessories).`
  String get return_new_acceptance_point_3 {
    return Intl.message(
      'Product returned in original condition (sealed/unopened if applicable, with box, manuals, warranty card, accessories).',
      name: 'return_new_acceptance_point_3',
      desc: '',
      args: [],
    );
  }

  /// `Refund & Return Conditions`
  String get return_new_conditions_title {
    return Intl.message(
      'Refund & Return Conditions',
      name: 'return_new_conditions_title',
      desc: '',
      args: [],
    );
  }

  /// `Refund/exchange for defective products within 7 days of receipt.`
  String get return_new_conditions_point_1 {
    return Intl.message(
      'Refund/exchange for defective products within 7 days of receipt.',
      name: 'return_new_conditions_point_1',
      desc: '',
      args: [],
    );
  }

  /// `Printed or electronic invoice required.`
  String get return_new_conditions_point_2 {
    return Intl.message(
      'Printed or electronic invoice required.',
      name: 'return_new_conditions_point_2',
      desc: '',
      args: [],
    );
  }

  /// `Physically damaged or missing items must be reported at delivery time.`
  String get return_new_conditions_point_3 {
    return Intl.message(
      'Physically damaged or missing items must be reported at delivery time.',
      name: 'return_new_conditions_point_3',
      desc: '',
      args: [],
    );
  }

  /// `Items needing special storage (e.g., temperature-controlled prescriptions) are not returnable.`
  String get return_new_conditions_point_4 {
    return Intl.message(
      'Items needing special storage (e.g., temperature-controlled prescriptions) are not returnable.',
      name: 'return_new_conditions_point_4',
      desc: '',
      args: [],
    );
  }

  /// `No returns/exchanges for insurance receipt sales.`
  String get return_new_conditions_point_5 {
    return Intl.message(
      'No returns/exchanges for insurance receipt sales.',
      name: 'return_new_conditions_point_5',
      desc: '',
      args: [],
    );
  }

  /// `All items in a multi-item offer must be returned together.`
  String get return_new_conditions_point_6 {
    return Intl.message(
      'All items in a multi-item offer must be returned together.',
      name: 'return_new_conditions_point_6',
      desc: '',
      args: [],
    );
  }

  /// `Refund covers product price only; shipping and payment processing fees are non-refundable.`
  String get return_new_conditions_point_7 {
    return Intl.message(
      'Refund covers product price only; shipping and payment processing fees are non-refundable.',
      name: 'return_new_conditions_point_7',
      desc: '',
      args: [],
    );
  }

  /// `Pickup fee may apply for non-defective exchanges.`
  String get return_new_conditions_point_8 {
    return Intl.message(
      'Pickup fee may apply for non-defective exchanges.',
      name: 'return_new_conditions_point_8',
      desc: '',
      args: [],
    );
  }

  /// `After inspection, eligible faulty items proceed to refund; incomplete/damaged returns are sent back.`
  String get return_new_conditions_point_9 {
    return Intl.message(
      'After inspection, eligible faulty items proceed to refund; incomplete/damaged returns are sent back.',
      name: 'return_new_conditions_point_9',
      desc: '',
      args: [],
    );
  }

  /// `one care may deny exchanges for hygiene-related cases.`
  String get return_new_conditions_point_10 {
    return Intl.message(
      'one care may deny exchanges for hygiene-related cases.',
      name: 'return_new_conditions_point_10',
      desc: '',
      args: [],
    );
  }

  /// `Coupons, discounts, vouchers, or special offers applied are deducted proportionally.`
  String get return_new_conditions_point_11 {
    return Intl.message(
      'Coupons, discounts, vouchers, or special offers applied are deducted proportionally.',
      name: 'return_new_conditions_point_11',
      desc: '',
      args: [],
    );
  }

  /// `Promotional and free gift items not refundable unless manufacturing defect at one care's discretion.`
  String get return_new_conditions_point_12 {
    return Intl.message(
      'Promotional and free gift items not refundable unless manufacturing defect at one care\'s discretion.',
      name: 'return_new_conditions_point_12',
      desc: '',
      args: [],
    );
  }

  /// `one care may amend these terms without prior notice.`
  String get return_new_conditions_point_13 {
    return Intl.message(
      'one care may amend these terms without prior notice.',
      name: 'return_new_conditions_point_13',
      desc: '',
      args: [],
    );
  }

  /// `Protecting Your Privacy`
  String get privacy_protection {
    return Intl.message(
      'Protecting Your Privacy',
      name: 'privacy_protection',
      desc: '',
      args: [],
    );
  }

  /// `3ALab values your trust and aims to make you feel comfortable and secure when using our website and sharing your information with us. We take pride in our commitment to protecting your privacy. Please read the following policy to understand how we handle your personal information.`
  String get privacy_protection_desc {
    return Intl.message(
      '3ALab values your trust and aims to make you feel comfortable and secure when using our website and sharing your information with us. We take pride in our commitment to protecting your privacy. Please read the following policy to understand how we handle your personal information.',
      name: 'privacy_protection_desc',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Guarantee`
  String get privacy_guarantee {
    return Intl.message(
      'Privacy Guarantee',
      name: 'privacy_guarantee',
      desc: '',
      args: [],
    );
  }

  /// `3ALab commits not to sell, rent, or share your personal information with any third party (except as mentioned in this 'Privacy Policy') without your consent.`
  String get privacy_guarantee_desc {
    return Intl.message(
      '3ALab commits not to sell, rent, or share your personal information with any third party (except as mentioned in this \'Privacy Policy\') without your consent.',
      name: 'privacy_guarantee_desc',
      desc: '',
      args: [],
    );
  }

  /// `Service Providers`
  String get service_providers {
    return Intl.message(
      'Service Providers',
      name: 'service_providers',
      desc: '',
      args: [],
    );
  }

  /// `3ALab may use other companies or individuals to perform tasks on its behalf, such as website designers, data analysts, marketing assistants, or search result providers. These service providers may have access to personal information necessary to perform their functions, which will not be used for other purposes. Any information shared with service providers is only used for the purpose of delivering products and ensuring they properly protect your privacy. The information you provide while using the site is shared only when necessary and includes:`
  String get service_providers_desc {
    return Intl.message(
      '3ALab may use other companies or individuals to perform tasks on its behalf, such as website designers, data analysts, marketing assistants, or search result providers. These service providers may have access to personal information necessary to perform their functions, which will not be used for other purposes. Any information shared with service providers is only used for the purpose of delivering products and ensuring they properly protect your privacy. The information you provide while using the site is shared only when necessary and includes:',
      name: 'service_providers_desc',
      desc: '',
      args: [],
    );
  }

  /// `Collected Information`
  String get collected_information {
    return Intl.message(
      'Collected Information',
      name: 'collected_information',
      desc: '',
      args: [],
    );
  }

  /// `The 3ALab website collects information you provide during registration and when placing orders. Additional data may be collected when you participate in any offers we provide. We also monitor traffic patterns and visitor presence on the site to improve our services. If you do not agree to this 'Privacy Policy,' do not accept it during registration. Your personal identity will remain anonymous while browsing the site without logging in using your username and password. However, 3ALab collects and stores the following information even without login:`
  String get collected_information_desc {
    return Intl.message(
      'The 3ALab website collects information you provide during registration and when placing orders. Additional data may be collected when you participate in any offers we provide. We also monitor traffic patterns and visitor presence on the site to improve our services. If you do not agree to this \'Privacy Policy,\' do not accept it during registration. Your personal identity will remain anonymous while browsing the site without logging in using your username and password. However, 3ALab collects and stores the following information even without login:',
      name: 'collected_information_desc',
      desc: '',
      args: [],
    );
  }

  /// `Our Responsibility`
  String get responsibility {
    return Intl.message(
      'Our Responsibility',
      name: 'responsibility',
      desc: '',
      args: [],
    );
  }

  /// `While 3ALab strives to maintain the confidentiality of your personal information, online transmissions and operations cannot be completely secure. By using this site, you agree that 3ALab is not responsible for information disclosures due to transmission errors, unauthorized actions by third parties, or other incidents beyond our control. 3ALab is also not responsible for any damages resulting from violations, errors, or unauthorized actions affecting the site.`
  String get responsibility_desc {
    return Intl.message(
      'While 3ALab strives to maintain the confidentiality of your personal information, online transmissions and operations cannot be completely secure. By using this site, you agree that 3ALab is not responsible for information disclosures due to transmission errors, unauthorized actions by third parties, or other incidents beyond our control. 3ALab is also not responsible for any damages resulting from violations, errors, or unauthorized actions affecting the site.',
      name: 'responsibility_desc',
      desc: '',
      args: [],
    );
  }

  /// `Policy Updates`
  String get policy_updates {
    return Intl.message(
      'Policy Updates',
      name: 'policy_updates',
      desc: '',
      args: [],
    );
  }

  /// `We reserve the right to modify or update this 'Privacy Policy' at any time. Changes become effective immediately upon being posted on the site, and this notice informs you of updates.`
  String get policy_updates_desc {
    return Intl.message(
      'We reserve the right to modify or update this \'Privacy Policy\' at any time. Changes become effective immediately upon being posted on the site, and this notice informs you of updates.',
      name: 'policy_updates_desc',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Identity Data`
  String get identity_data {
    return Intl.message(
      'Identity Data',
      name: 'identity_data',
      desc: '',
      args: [],
    );
  }

  /// `Business Registration Data (if applicable)`
  String get business_registration_data {
    return Intl.message(
      'Business Registration Data (if applicable)',
      name: 'business_registration_data',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobile_number {
    return Intl.message(
      'Mobile Number',
      name: 'mobile_number',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Contact Numbers`
  String get contact_numbers {
    return Intl.message(
      'Contact Numbers',
      name: 'contact_numbers',
      desc: '',
      args: [],
    );
  }

  /// `Bank Account Numbers and Credit Cards`
  String get bank_accounts_credit_cards {
    return Intl.message(
      'Bank Account Numbers and Credit Cards',
      name: 'bank_accounts_credit_cards',
      desc: '',
      args: [],
    );
  }

  /// `IP Address`
  String get ip_address {
    return Intl.message(
      'IP Address',
      name: 'ip_address',
      desc: '',
      args: [],
    );
  }

  /// `Date and Time of Website Usage`
  String get website_usage_date_time {
    return Intl.message(
      'Date and Time of Website Usage',
      name: 'website_usage_date_time',
      desc: '',
      args: [],
    );
  }

  /// `Device Type, Operating System, or Browser You Use`
  String get device_type_os_browser {
    return Intl.message(
      'Device Type, Operating System, or Browser You Use',
      name: 'device_type_os_browser',
      desc: '',
      args: [],
    );
  }

  /// `Operating System Information, Such as Applications and Language Settings`
  String get os_information {
    return Intl.message(
      'Operating System Information, Such as Applications and Language Settings',
      name: 'os_information',
      desc: '',
      args: [],
    );
  }

  /// `Services We Provided to You or That You Browsed`
  String get services_browsed_or_provided {
    return Intl.message(
      'Services We Provided to You or That You Browsed',
      name: 'services_browsed_or_provided',
      desc: '',
      args: [],
    );
  }

  /// `Site Usage Country`
  String get site_usage_country {
    return Intl.message(
      'Site Usage Country',
      name: 'site_usage_country',
      desc: '',
      args: [],
    );
  }

  /// `Default Browser Language`
  String get default_browser_language {
    return Intl.message(
      'Default Browser Language',
      name: 'default_browser_language',
      desc: '',
      args: [],
    );
  }

  /// `At 3ALab, your satisfaction is our priority! If you are not completely satisfied with your purchase, we are here to help. Please review our return and exchange policy below:`
  String get customer_satisfaction {
    return Intl.message(
      'At 3ALab, your satisfaction is our priority! If you are not completely satisfied with your purchase, we are here to help. Please review our return and exchange policy below:',
      name: 'customer_satisfaction',
      desc: '',
      args: [],
    );
  }

  /// `User Operating System`
  String get user_operating_system {
    return Intl.message(
      'User Operating System',
      name: 'user_operating_system',
      desc: '',
      args: [],
    );
  }

  /// `Return and Exchange Conditions`
  String get return_exchange_conditions {
    return Intl.message(
      'Return and Exchange Conditions',
      name: 'return_exchange_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Exchange: Accepted within 7 days of receiving the order.`
  String get exchange_accepted {
    return Intl.message(
      'Exchange: Accepted within 7 days of receiving the order.',
      name: 'exchange_accepted',
      desc: '',
      args: [],
    );
  }

  /// `Return: Accepted within 3 days of receiving the order.`
  String get return_accepted {
    return Intl.message(
      'Return: Accepted within 3 days of receiving the order.',
      name: 'return_accepted',
      desc: '',
      args: [],
    );
  }

  /// `Products must be unopened, unused, and in their original packaging.`
  String get products_condition {
    return Intl.message(
      'Products must be unopened, unused, and in their original packaging.',
      name: 'products_condition',
      desc: '',
      args: [],
    );
  }

  /// `Products must be in their original condition.`
  String get products_original_condition {
    return Intl.message(
      'Products must be in their original condition.',
      name: 'products_original_condition',
      desc: '',
      args: [],
    );
  }

  /// `Products that have been opened, tampered with, damaged, or partially used cannot be returned or exchanged.`
  String get non_returnable_products {
    return Intl.message(
      'Products that have been opened, tampered with, damaged, or partially used cannot be returned or exchanged.',
      name: 'non_returnable_products',
      desc: '',
      args: [],
    );
  }

  /// `If the return or exchange conditions are not fully met, we reserve the right to reject the request.`
  String get return_rejection_rights {
    return Intl.message(
      'If the return or exchange conditions are not fully met, we reserve the right to reject the request.',
      name: 'return_rejection_rights',
      desc: '',
      args: [],
    );
  }

  /// `Non-Returnable Products`
  String get non_returnable_items {
    return Intl.message(
      'Non-Returnable Products',
      name: 'non_returnable_items',
      desc: '',
      args: [],
    );
  }

  /// `Products requiring special storage conditions (such as baby food).`
  String get storage_conditions {
    return Intl.message(
      'Products requiring special storage conditions (such as baby food).',
      name: 'storage_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Products purchased during special offers or discounts.`
  String get special_offers {
    return Intl.message(
      'Products purchased during special offers or discounts.',
      name: 'special_offers',
      desc: '',
      args: [],
    );
  }

  /// `Return and Exchange Process`
  String get return_exchange_process {
    return Intl.message(
      'Return and Exchange Process',
      name: 'return_exchange_process',
      desc: '',
      args: [],
    );
  }

  /// `Step 1: Initiating the Request`
  String get step_1 {
    return Intl.message(
      'Step 1: Initiating the Request',
      name: 'step_1',
      desc: '',
      args: [],
    );
  }

  /// `Contact customer support via:`
  String get contact_support {
    return Intl.message(
      'Contact customer support via:',
      name: 'contact_support',
      desc: '',
      args: [],
    );
  }

  /// `Email: info@3alab-cosmo.com`
  String get email_address {
    return Intl.message(
      'Email: info@3alab-cosmo.com',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `Please provide the order number and reason for return or exchange.`
  String get provide_order_details {
    return Intl.message(
      'Please provide the order number and reason for return or exchange.',
      name: 'provide_order_details',
      desc: '',
      args: [],
    );
  }

  /// `Step 2: Approval`
  String get step_2 {
    return Intl.message(
      'Step 2: Approval',
      name: 'step_2',
      desc: '',
      args: [],
    );
  }

  /// `After reviewing your request, we will provide you with instructions to return the product. The review and approval process may take up to 2 business days.`
  String get review_process {
    return Intl.message(
      'After reviewing your request, we will provide you with instructions to return the product. The review and approval process may take up to 2 business days.',
      name: 'review_process',
      desc: '',
      args: [],
    );
  }

  /// `Step 3: Shipping`
  String get step_3 {
    return Intl.message(
      'Step 3: Shipping',
      name: 'step_3',
      desc: '',
      args: [],
    );
  }

  /// `The customer bears the return shipping costs unless the reason is a defective or incorrect product.`
  String get shipping_costs {
    return Intl.message(
      'The customer bears the return shipping costs unless the reason is a defective or incorrect product.',
      name: 'shipping_costs',
      desc: '',
      args: [],
    );
  }

  /// `Refund and Exchange`
  String get refund_exchange {
    return Intl.message(
      'Refund and Exchange',
      name: 'refund_exchange',
      desc: '',
      args: [],
    );
  }

  /// `Refund:`
  String get refund {
    return Intl.message(
      'Refund:',
      name: 'refund',
      desc: '',
      args: [],
    );
  }

  /// `Approved refunds will be processed to the original payment method within 7-10 business days after receiving the returned product. Shipping costs are non-refundable.`
  String get refund_process {
    return Intl.message(
      'Approved refunds will be processed to the original payment method within 7-10 business days after receiving the returned product. Shipping costs are non-refundable.',
      name: 'refund_process',
      desc: '',
      args: [],
    );
  }

  /// `Exchange:`
  String get exchange {
    return Intl.message(
      'Exchange:',
      name: 'exchange',
      desc: '',
      args: [],
    );
  }

  /// `If you wish to exchange a product, please specify the replacement product. Exchange is subject to product availability.`
  String get exchange_process {
    return Intl.message(
      'If you wish to exchange a product, please specify the replacement product. Exchange is subject to product availability.',
      name: 'exchange_process',
      desc: '',
      args: [],
    );
  }

  /// `Damaged or Incorrect Products`
  String get damaged_incorrect_products {
    return Intl.message(
      'Damaged or Incorrect Products',
      name: 'damaged_incorrect_products',
      desc: '',
      args: [],
    );
  }

  /// `If you receive a damaged or incorrect product, please contact us within 48 hours of receipt. We will replace the product immediately at no additional cost.`
  String get damaged_incorrect_products_process {
    return Intl.message(
      'If you receive a damaged or incorrect product, please contact us within 48 hours of receipt. We will replace the product immediately at no additional cost.',
      name: 'damaged_incorrect_products_process',
      desc: '',
      args: [],
    );
  }

  /// `Need Help?`
  String get customer_support {
    return Intl.message(
      'Need Help?',
      name: 'customer_support',
      desc: '',
      args: [],
    );
  }

  /// `We strive to provide an enjoyable shopping experience. If you have any inquiries, do not hesitate to contact our support team:`
  String get customer_support_message {
    return Intl.message(
      'We strive to provide an enjoyable shopping experience. If you have any inquiries, do not hesitate to contact our support team:',
      name: 'customer_support_message',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for choosing 3ALab! We appreciate your trust and satisfaction.`
  String get thank_you {
    return Intl.message(
      'Thank you for choosing 3ALab! We appreciate your trust and satisfaction.',
      name: 'thank_you',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get comm_us {
    return Intl.message(
      'Contact Us',
      name: 'comm_us',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Instagram`
  String get instagram {
    return Intl.message(
      'Instagram',
      name: 'instagram',
      desc: '',
      args: [],
    );
  }

  /// `Twitter`
  String get twitter {
    return Intl.message(
      'Twitter',
      name: 'twitter',
      desc: '',
      args: [],
    );
  }

  /// `TikTok`
  String get tiktok {
    return Intl.message(
      'TikTok',
      name: 'tiktok',
      desc: '',
      args: [],
    );
  }

  /// `Snapchat`
  String get snapchat {
    return Intl.message(
      'Snapchat',
      name: 'snapchat',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp`
  String get whatsapp {
    return Intl.message(
      'WhatsApp',
      name: 'whatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Contact us quickly and easily on WhatsApp!`
  String get whatsapp_desc {
    return Intl.message(
      'Contact us quickly and easily on WhatsApp!',
      name: 'whatsapp_desc',
      desc: '',
      args: [],
    );
  }

  /// `Join us and be part of our community on Facebook!`
  String get facebook_desc {
    return Intl.message(
      'Join us and be part of our community on Facebook!',
      name: 'facebook_desc',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy the latest photos and updates on Instagram!`
  String get instagram_desc {
    return Intl.message(
      'Enjoy the latest photos and updates on Instagram!',
      name: 'instagram_desc',
      desc: '',
      args: [],
    );
  }

  /// `Follow our tweets and join the conversation on Twitter!`
  String get twitter_desc {
    return Intl.message(
      'Follow our tweets and join the conversation on Twitter!',
      name: 'twitter_desc',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy the latest videos on TikTok!`
  String get tiktok_desc {
    return Intl.message(
      'Enjoy the latest videos on TikTok!',
      name: 'tiktok_desc',
      desc: '',
      args: [],
    );
  }

  /// `Watch our exclusive daily stories on Snapchat!`
  String get snapchat_desc {
    return Intl.message(
      'Watch our exclusive daily stories on Snapchat!',
      name: 'snapchat_desc',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get contact_phone {
    return Intl.message(
      'Phone',
      name: 'contact_phone',
      desc: '',
      args: [],
    );
  }

  /// `Call us directly for quick assistance`
  String get contact_phone_desc {
    return Intl.message(
      'Call us directly for quick assistance',
      name: 'contact_phone_desc',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get contact_email {
    return Intl.message(
      'Email',
      name: 'contact_email',
      desc: '',
      args: [],
    );
  }

  /// `Send us an email and we'll get back to you`
  String get contact_email_desc {
    return Intl.message(
      'Send us an email and we\'ll get back to you',
      name: 'contact_email_desc',
      desc: '',
      args: [],
    );
  }

  /// `Musa Bin Nusayr Street, Riyadh`
  String get contact_address {
    return Intl.message(
      'Musa Bin Nusayr Street, Riyadh',
      name: 'contact_address',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language_title {
    return Intl.message(
      'Language',
      name: 'language_title',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get language_subtitle {
    return Intl.message(
      'English',
      name: 'language_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Choose Language`
  String get choose_language {
    return Intl.message(
      'Choose Language',
      name: 'choose_language',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Why We're Your Best Choice`
  String get about_new_why_best_title {
    return Intl.message(
      'Why We\'re Your Best Choice',
      name: 'about_new_why_best_title',
      desc: '',
      args: [],
    );
  }

  /// `We deliver integrated digital healthcare and beauty solutions with a customer-first mindset, combining reliability, innovation, and a focus on real everyday needs.`
  String get about_new_why_best_body {
    return Intl.message(
      'We deliver integrated digital healthcare and beauty solutions with a customer-first mindset, combining reliability, innovation, and a focus on real everyday needs.',
      name: 'about_new_why_best_body',
      desc: '',
      args: [],
    );
  }

  /// `Our Mission`
  String get about_new_message_title {
    return Intl.message(
      'Our Mission',
      name: 'about_new_message_title',
      desc: '',
      args: [],
    );
  }

  /// `To enhance personal wellbeing by providing trusted products and seamless digital services that empower healthier, happier lifestyles.`
  String get about_new_message_body {
    return Intl.message(
      'To enhance personal wellbeing by providing trusted products and seamless digital services that empower healthier, happier lifestyles.',
      name: 'about_new_message_body',
      desc: '',
      args: [],
    );
  }

  /// `Our Vision`
  String get about_new_vision_title {
    return Intl.message(
      'Our Vision',
      name: 'about_new_vision_title',
      desc: '',
      args: [],
    );
  }

  /// `To be the leading integrated platform for smart, accessible, and holistic care across the region.`
  String get about_new_vision_body {
    return Intl.message(
      'To be the leading integrated platform for smart, accessible, and holistic care across the region.',
      name: 'about_new_vision_body',
      desc: '',
      args: [],
    );
  }

  /// `Our Core Values`
  String get about_new_values_title {
    return Intl.message(
      'Our Core Values',
      name: 'about_new_values_title',
      desc: '',
      args: [],
    );
  }

  /// `Integrity & Trust`
  String get about_new_value1_title {
    return Intl.message(
      'Integrity & Trust',
      name: 'about_new_value1_title',
      desc: '',
      args: [],
    );
  }

  /// `We commit to honesty, transparency, and ethical standards in everything we do.`
  String get about_new_value1_body {
    return Intl.message(
      'We commit to honesty, transparency, and ethical standards in everything we do.',
      name: 'about_new_value1_body',
      desc: '',
      args: [],
    );
  }

  /// `Customer-Centered`
  String get about_new_value2_title {
    return Intl.message(
      'Customer-Centered',
      name: 'about_new_value2_title',
      desc: '',
      args: [],
    );
  }

  /// `Your needs shape our products, services, and continuous improvements.`
  String get about_new_value2_body {
    return Intl.message(
      'Your needs shape our products, services, and continuous improvements.',
      name: 'about_new_value2_body',
      desc: '',
      args: [],
    );
  }

  /// `Innovation`
  String get about_new_value3_title {
    return Intl.message(
      'Innovation',
      name: 'about_new_value3_title',
      desc: '',
      args: [],
    );
  }

  /// `We adopt modern technologies and smart processes to deliver better care experiences.`
  String get about_new_value3_body {
    return Intl.message(
      'We adopt modern technologies and smart processes to deliver better care experiences.',
      name: 'about_new_value3_body',
      desc: '',
      args: [],
    );
  }

  /// `Quality & Reliability`
  String get about_new_value4_title {
    return Intl.message(
      'Quality & Reliability',
      name: 'about_new_value4_title',
      desc: '',
      args: [],
    );
  }

  /// `We provide carefully selected products and dependable services you can trust.`
  String get about_new_value4_body {
    return Intl.message(
      'We provide carefully selected products and dependable services you can trust.',
      name: 'about_new_value4_body',
      desc: '',
      args: [],
    );
  }

  /// `Community Impact`
  String get about_new_value5_title {
    return Intl.message(
      'Community Impact',
      name: 'about_new_value5_title',
      desc: '',
      args: [],
    );
  }

  /// `We contribute to healthier lifestyles and meaningful social wellbeing.`
  String get about_new_value5_body {
    return Intl.message(
      'We contribute to healthier lifestyles and meaningful social wellbeing.',
      name: 'about_new_value5_body',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy: Protecting Your Privacy`
  String get privacy_new_heading {
    return Intl.message(
      'Privacy Policy: Protecting Your Privacy',
      name: 'privacy_new_heading',
      desc: '',
      args: [],
    );
  }

  /// `One care values your trust and wants you to feel comfortable and safe when using our platform and sharing your information.`
  String get privacy_new_intro {
    return Intl.message(
      'One care values your trust and wants you to feel comfortable and safe when using our platform and sharing your information.',
      name: 'privacy_new_intro',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Guarantee`
  String get privacy_new_guarantee_title {
    return Intl.message(
      'Privacy Guarantee',
      name: 'privacy_new_guarantee_title',
      desc: '',
      args: [],
    );
  }

  /// `We do not sell, rent, or share your personal information with third parties except as described in this policy and with your consent where required.`
  String get privacy_new_guarantee_body {
    return Intl.message(
      'We do not sell, rent, or share your personal information with third parties except as described in this policy and with your consent where required.',
      name: 'privacy_new_guarantee_body',
      desc: '',
      args: [],
    );
  }

  /// `Service Providers`
  String get privacy_new_service_providers_title {
    return Intl.message(
      'Service Providers',
      name: 'privacy_new_service_providers_title',
      desc: '',
      args: [],
    );
  }

  /// `We may engage trusted providers (design, analytics, marketing, hosting, payments) who access only what is necessary to perform their tasks and must protect your data.`
  String get privacy_new_service_providers_body {
    return Intl.message(
      'We may engage trusted providers (design, analytics, marketing, hosting, payments) who access only what is necessary to perform their tasks and must protect your data.',
      name: 'privacy_new_service_providers_body',
      desc: '',
      args: [],
    );
  }

  /// `Data You Provide`
  String get privacy_new_data_you_provide_title {
    return Intl.message(
      'Data You Provide',
      name: 'privacy_new_data_you_provide_title',
      desc: '',
      args: [],
    );
  }

  /// `Name; Identity data; Commercial registration (if any); Mobile number; Email; Address; Contact numbers; Bank / card numbers; IP address; Date & time of usage; Device / OS / browser; OS settings (apps, language); Services viewed or used.`
  String get privacy_new_data_you_provide_list {
    return Intl.message(
      'Name; Identity data; Commercial registration (if any); Mobile number; Email; Address; Contact numbers; Bank / card numbers; IP address; Date & time of usage; Device / OS / browser; OS settings (apps, language); Services viewed or used.',
      name: 'privacy_new_data_you_provide_list',
      desc: '',
      args: [],
    );
  }

  /// `Information That May Be Collected`
  String get privacy_new_info_collected_title {
    return Intl.message(
      'Information That May Be Collected',
      name: 'privacy_new_info_collected_title',
      desc: '',
      args: [],
    );
  }

  /// `We collect registration and request data, participation in offers, and behavioral usage to improve services. Some technical info may be stored even without login.`
  String get privacy_new_info_collected_body {
    return Intl.message(
      'We collect registration and request data, participation in offers, and behavioral usage to improve services. Some technical info may be stored even without login.',
      name: 'privacy_new_info_collected_body',
      desc: '',
      args: [],
    );
  }

  /// `Usage country; Browser default language; User OS.`
  String get privacy_new_additional_anon_list {
    return Intl.message(
      'Usage country; Browser default language; User OS.',
      name: 'privacy_new_additional_anon_list',
      desc: '',
      args: [],
    );
  }

  /// `You may close your account any time; some records may remain archived as permitted by law.`
  String get privacy_new_account_closure_note {
    return Intl.message(
      'You may close your account any time; some records may remain archived as permitted by law.',
      name: 'privacy_new_account_closure_note',
      desc: '',
      args: [],
    );
  }

  /// `Our Responsibility`
  String get privacy_new_responsibility_title {
    return Intl.message(
      'Our Responsibility',
      name: 'privacy_new_responsibility_title',
      desc: '',
      args: [],
    );
  }

  /// `While we strive to protect confidentiality, Internet transmission isn’t fully secure. We are not liable for breaches beyond our control (unauthorized access, transmission errors).`
  String get privacy_new_responsibility_body {
    return Intl.message(
      'While we strive to protect confidentiality, Internet transmission isn’t fully secure. We are not liable for breaches beyond our control (unauthorized access, transmission errors).',
      name: 'privacy_new_responsibility_body',
      desc: '',
      args: [],
    );
  }

  /// `Policy Updates`
  String get privacy_new_updates_title {
    return Intl.message(
      'Policy Updates',
      name: 'privacy_new_updates_title',
      desc: '',
      args: [],
    );
  }

  /// `We may modify this policy at any time. Changes take effect upon posting. Continued use signifies acceptance.`
  String get privacy_new_updates_body {
    return Intl.message(
      'We may modify this policy at any time. Changes take effect upon posting. Continued use signifies acceptance.',
      name: 'privacy_new_updates_body',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
