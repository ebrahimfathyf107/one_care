import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:latlong2/latlong.dart' as latlong;

import '../../../../core/customs/common_text_widget.dart';
import '../../../../core/customs/custom_back_abb_bar.dart';
import '../../../../core/helpers/app_assets.dart';
import '../../../../core/helpers/laumch_url_service.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../generated/l10n.dart';

class ContactUsView extends StatelessWidget {
  static const String routeName = "/ContactUsPage";

  const ContactUsView({super.key});

  // Updated contact & social data (migrated from old app specs)
  static const String _mapUrl = 'https://maps.app.goo.gl/ft9x3A1jXyxtDfvKA';
  static const String _phone = '+966582802526';
  static const String _email = 'Info@onecare-sa.com';

  // Social links
  static const String _snapchatUrl = 'https://www.snapchat.com/@onecare88';
  static const String _xUrl = 'https://x.com/OneCare88';
  static const String _tiktokUrl = 'https://www.tiktok.com/@one_care8';
  static const String _instagramUrl = 'https://www.instagram.com/one.care88/';
  static const String _facebookUrl =
      'https://www.facebook.com/people/One-Care/61578689489708/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            CustomBackAppBar(title: S.of(context).comm_us),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vGap(8),
                  GestureDetector(
                    onTap: () => launchCustomUr(context, _mapUrl),
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: FlutterMap(
                          options: MapOptions(
                            initialCenter: latlong.LatLng(
                              24.7008351,
                              46.6745839,
                            ),
                            initialZoom: 15.0,
                          ),
                          children: [
                            TileLayer(
                              urlTemplate:
                                  "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                              userAgentPackageName:
                                  'com.onecare.app', // OSM required identification
                            ),
                            MarkerLayer(
                              markers: [
                                Marker(
                                  point: latlong.LatLng(24.7008351, 46.6745839),
                                  width: 40,
                                  height: 40,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.location_pin,
                                        color: AppColors.secondary,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.secondary,
                              size: 30,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonTextWidget(
                                    textAlign: TextAlign.start,
                                    text: S.of(context).address,
                                    fontSize: 18,
                                    color: AppColors.secondary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(height: 4),
                                  CommonTextWidget(
                                    textAlign: TextAlign.start,
                                    text: S.of(context).contact_address,
                                    fontSize: 14,
                                    color: Colors.grey[700]!,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Phone item
                  _buildSocialItem(
                    icon: Icon(Icons.phone, color: AppColors.secondary),
                    title: _phone,
                    subTitle: S.of(context).contact_phone_desc,
                    url: 'tel:$_phone',
                    context: context,
                  ),
                  SizedBox(height: 10),

                  // Email item
                  _buildSocialItem(
                    icon: Icon(Icons.email, color: AppColors.secondary),
                    title: _email,
                    subTitle: S.of(context).contact_email_desc,
                    url: 'mailto:$_email',
                    context: context,
                  ),
                  SizedBox(height: 20),

                  _buildSocialItem(
                    icon: SvgPicture.asset(
                      Assets.imagesSvgInstagram,
                      width: 28,
                      color: AppColors.secondary,
                    ),
                    title: S.of(context).instagram,
                    subTitle: S.of(context).instagram_desc,
                    url: _instagramUrl,
                    context: context,
                  ),
                  SizedBox(height: 10),
                  _buildSocialItem(
                    icon: SvgPicture.asset(
                      Assets.imagesSvgTiktok,
                      width: 28,
                      color: AppColors.secondary,
                    ),
                    title: S.of(context).tiktok,
                    subTitle: S.of(context).tiktok_desc,
                    url: _tiktokUrl,
                    context: context,
                  ),
                  SizedBox(height: 10),
                  _buildSocialItem(
                    icon: SvgPicture.asset(
                      Assets.imagesSvgSnapchat,
                      width: 28,
                      color: AppColors.secondary,
                    ),
                    title: S.of(context).snapchat,
                    subTitle: S.of(context).snapchat_desc,
                    url: _snapchatUrl,
                    context: context,
                  ),
                  SizedBox(height: 10),
                  _buildSocialItem(
                    icon: SvgPicture.asset(
                      Assets.imagesSvgTwitter,
                      width: 28,
                      color: AppColors.secondary,
                    ),
                    title: S.of(context).twitter,
                    subTitle: S.of(context).twitter_desc,
                    url: _xUrl,
                    context: context,
                  ),
                  SizedBox(height: 10),
                  _buildSocialItem(
                    icon: SvgPicture.asset(
                      Assets.imagesSvgFacebook,
                      width: 28,
                      color: AppColors.secondary,
                    ),
                    title: S.of(context).facebook,
                    subTitle: S.of(context).facebook_desc,
                    url: _facebookUrl,
                    context: context,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialItem({
    required Widget icon,
    required String title,
    required String url,
    required String subTitle,
    required BuildContext context,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: InkWell(
        onTap: () => launchCustomUr(context, url),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: icon,
            ),
            SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextWidget(
                    text: title,
                    textAlign: TextAlign.start,
                    fontSize: 16,
                    color: AppColors.secondary,
                    fontWeight: FontWeight.w500,
                  ),
                  CommonTextWidget(
                    text: subTitle,
                    textAlign: TextAlign.start,
                    fontSize: 14,
                    color: Colors.grey[600]!,
                  ),
                ],
              ),
            ),

            Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey[500]),
          ],
        ),
      ),
    );
  }
}
