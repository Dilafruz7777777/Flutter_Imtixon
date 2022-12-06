import 'package:flutter/material.dart';
import 'Ustoz_Choose_page.dart';
import 'Ustoz_Model.dart';

class PaymentPage extends StatefulWidget {
  final SmartCards card;
  const PaymentPage({Key? key,required this.card}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int index = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2 + 48,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              Text("Pay with template"),
              Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text("TEMPLATES"),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(top: 16),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      decoration:  BoxDecoration(
                          color: Color(0xffF8F8FA),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: Border.all(color: this.index == index ? Colors.blue : Colors.transparent)
                      ),
                      padding: const EdgeInsets.all(15),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          widget.card.cardIcon,
                          const SizedBox(width: 15,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                    Text( widget.card.title),
                                    Text("\$113.05"),
                                  ],
                                ),
                                Text("Mastercard **** 3241"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: (){
                      if(this.index == index){
                        this.index = -1;
                      }else{
                        this.index = index;
                      }

                      setState(() {});
                    },
                  );
                }),
          ),
          Container(
            width: double.infinity,
            height: 64,
            decoration: BoxDecoration(
              color: index != -1 ? Colors.blue : Colors.white,
              border: Border.all(color: Colors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(6),),
            ),
            child: Center(
              child: Text(index != -1 ? "Continue" : "Continue without template"),
            ),
          )
        ],
      ),
    );
  }
}
