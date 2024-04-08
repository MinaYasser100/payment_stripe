import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/core/utils/constant.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'credit_cart_info_widget.dart';
import 'payment_iten_info.dart';
import 'total_price_row.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, right: 22, left: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style18.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 42),
            const PaymentItenInfo(
              title: 'Date',
              value: '01/24/2023',
            ),
            const SizedBox(height: 20),
            const PaymentItenInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            const SizedBox(height: 20),
            const PaymentItenInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 2.0,
              color: Color(0xffB8B8B8),
            ),
            const SizedBox(
              height: 14,
            ),
            const TotalPriceRow(price: '\$50.97'),
            const SizedBox(height: 30),
            const CreditCartInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64.0,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: Styles.style24.copyWith(color: kGreenColor),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: (MediaQuery.sizeOf(context).height * 0.2 + 20) / 2 - 29,
            ),
          ],
        ),
      ),
    );
  }
}
