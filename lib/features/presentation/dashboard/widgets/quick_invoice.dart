import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/custom_back_ground_container.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/latest_transction.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/quick_invoice_form.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(height: 48),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
