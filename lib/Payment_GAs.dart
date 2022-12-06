
import 'package:flutter/material.dart';

import 'Ustoz_Model.dart';

class Payment_Gas extends StatefulWidget {
  final SmartCards card;
  Payment_Gas({Key? key,required this.card}) : super(key: key);

  @override
  State<Payment_Gas> createState() => _Payment_GasState();
}

class _Payment_GasState extends State<Payment_Gas> {
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
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              const Text("Pay with template"),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Text("TEMPLATES"),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 16),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      decoration:  BoxDecoration(
                          color: const Color(0xffF8F8FA),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: Border.all(color: this.index == index ? Colors.blue : Colors.transparent)
                      ),
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(bottom: 10),
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
                                    const Text("\$105.03"),
                                  ],
                                ),
                                const Text("Mastercard **** 3241"),
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
