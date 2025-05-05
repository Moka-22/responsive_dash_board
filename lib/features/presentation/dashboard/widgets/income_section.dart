import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/custom_back_ground_container.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/income_section_body.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(children: [IncomeSectionHeader(), IncomSectionBody()]),
    );
  }
}
