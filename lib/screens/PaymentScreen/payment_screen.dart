import 'package:e_ui/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: clr.secndry,
        leading: Icon(
          CupertinoIcons.chevron_back,
          color: clr.primary,
        ),
        title: Text(
          "Payment",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: clr.primary,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, style: BorderStyle.solid, color: Colors.grey),
                  borderRadius: BorderRadius.circular(05),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              onChanged: (index) {},
                              groupValue: 1,
                              activeColor: clr.primary,
                            ),
                            Text(
                              "Amazon Pay",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: clr.primary,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/icons/amazon-pay.png",
                          width: 80,
                          fit: BoxFit.cover,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, style: BorderStyle.solid, color: Colors.grey),
                  borderRadius: BorderRadius.circular(05),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              onChanged: (index) {},
                              groupValue: 1,
                              activeColor: clr.primary,
                            ),
                            Text(
                              "Credit Card",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: clr.primary,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/icons/visa.png",
                          width: 35,
                        ),
                        SizedBox(width: 8),
                        Image.asset(
                          "assets/icons/mastercard.png",
                          width: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, style: BorderStyle.solid, color: Colors.grey),
                  borderRadius: BorderRadius.circular(05),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 3,
                              onChanged: (index) {},
                              groupValue: 1,
                              activeColor: clr.primary,
                            ),
                            Text(
                              "Paypal",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: clr.primary,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/icons/paypal.png",
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sub-total",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "₹ 34,500.00",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping fee",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "₹ 999.00",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 30,
                thickness: 2,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "₹ 35,499.00",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 85),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 45,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Place Your Order",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 05),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Continue Shopping",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
