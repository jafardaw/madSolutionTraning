import 'package:flutter/material.dart';

class SplashScreenFigma extends StatelessWidget {
  const SplashScreenFigma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Ensures content is not obscured by system UI (like notches)
        child: Column(
          children: <Widget>[
            // 1. Custom Status Bar Representation
            _buildCustomStatusBar(),

            // Spacer to push "FREELY" down
            const Spacer(flex: 2),

            // 2. "FREELY" Text
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 48, // Adjusted for visual similarity
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8.0, // Added letter spacing
                  fontFamily: 'Inter', // Ensure font consistency
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'F R E E ',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(text: 'L ', style: TextStyle(color: Colors.white)),
                  TextSpan(
                    text: 'Y',
                    style: TextStyle(
                      color: Color(0xFF00AEEF),
                    ), // A light blue color
                  ),
                ],
              ),
            ),

            // Spacer to push bottom text down
            const Spacer(flex: 3),

            // 3. "CONNECTING TALENTS..." Text
            const Text(
              'CONNECTING TALENTS\nWITH OPPORTUNITIES...',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70, // Slightly dimmer white
                fontSize: 16,
                letterSpacing: 1.5,
                height: 1.4, // Line height
                fontFamily: 'Inter',
              ),
            ),
            // Spacer at the bottom for padding
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  // Helper widget to build the custom status bar
  Widget _buildCustomStatusBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            '9:41',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: <Widget>[
              // You can use actual icon packages like `cupertino_icons` or `font_awesome_flutter`
              // for more accurate icons. These are placeholders.
              Icon(Icons.wifi, color: Colors.white.withOpacity(0.9), size: 18),
              const SizedBox(width: 6),
              // Simple battery icon representation
              Row(
                children: [
                  Icon(
                    Icons.battery_full_rounded,
                    color: Colors.white.withOpacity(0.9),
                    size: 18,
                  ),
                  // Text(" 75%", style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 12)), // Optional: battery percentage
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
