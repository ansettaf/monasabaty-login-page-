import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum SocialPlatform { gmail, facebook, twitter }

class SocialLoginButton extends StatelessWidget {
  final SocialPlatform platform;
  final VoidCallback onPressed;
  final bool isLoading;

  const SocialLoginButton({
    super.key,
    required this.platform,
    required this.onPressed,
    this.isLoading = false,
  });

  Color _getPlatformColor() {
    switch (platform) {
      case SocialPlatform.gmail:
        return const Color(0xFFEA4335);
      case SocialPlatform.facebook:
        return const Color(0xFF1877F2);
      case SocialPlatform.twitter:
        return const Color(0xFF1DA1F2);
    }
  }

  IconData _getPlatformIcon() {
    switch (platform) {
      case SocialPlatform.gmail:
        return FontAwesomeIcons.google;
      case SocialPlatform.facebook:
        return FontAwesomeIcons.facebook;
      case SocialPlatform.twitter:
        return FontAwesomeIcons.twitter;
    }
  }

  String _getPlatformText() {
    switch (platform) {
      case SocialPlatform.gmail:
        return 'Continue with Google';
      case SocialPlatform.facebook:
        return 'Continue with Facebook';
      case SocialPlatform.twitter:
        return 'Continue with Twitter';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton.icon(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: _getPlatformColor(),
          foregroundColor: Colors.white,
          elevation: 4,
                      shadowColor: _getPlatformColor().withValues(alpha: 0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        icon: isLoading
            ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white.withValues(alpha: 0.8),
                  ),
                ),
              )
            : FaIcon(_getPlatformIcon(), size: 20),
        label: Text(
          isLoading ? 'Connecting...' : _getPlatformText(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
