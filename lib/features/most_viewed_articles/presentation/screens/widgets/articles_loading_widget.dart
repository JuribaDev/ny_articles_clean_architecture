import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ArticlesLoadingWidget extends StatelessWidget {
  const ArticlesLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(4),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Shimmer.fromColors(
                baseColor: isDarkMode ? Colors.grey[900]! : Colors.grey[300]!,
                highlightColor: isDarkMode ? Colors.grey[700]! : Colors.grey[100]!,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: isDarkMode ? Colors.black : Colors.white,
                  ),
                  title: Container(
                    color: isDarkMode ? Colors.black : Colors.white,
                    height: 50,
                    width: 150,
                    margin: const EdgeInsets.only(bottom: 5),
                  ),
                  subtitle: Container(
                    color: isDarkMode ? Colors.black : Colors.white,
                    height: 15,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
