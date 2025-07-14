import 'package:flutter/material.dart';
import 'package:ridana_app/common/constants/app_colors.dart';
import 'package:ridana_app/common/constants/app_images.dart';
import 'package:ridana_app/features/views/layouts/app_layout.dart';
import 'package:ridana_app/features/views/widgets/image_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AppLayout(
      child: Column(
        children: [
          SizedBox(height: 32),

          ImageWidget(
            height: 300,
            width: width,
            imagePath: AppImages.illustration,
          ),
          SizedBox(height: 16),

          Text(
            "Bem Vindo!",
            style: TextStyle(
              fontSize: 24,
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24),

          Text(
            "Explore nosso aplicativo e descubra tudo o que temos a oferecer.",
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // primary: AppColors.primary,
                    padding: EdgeInsets.symmetric(vertical: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Navigate to the next page or perform an action
                  },

                  child: Text("Crie sua conta!"),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // primary: AppColors.primary,
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 24),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: AppColors.primary, width: 2),
                    ),
                  ),
                  onPressed: () {
                    // Navigate to the next page or perform an action
                  },

                  child: Text("Fazer Login"),
                ),
              ),
            ],
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
