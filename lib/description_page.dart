import 'package:flutter/material.dart';

String BaconText = 'Bacon ipsum dolor amet sirloin boudin ground round strip steak shankle kevin t-bone pork chop. Meatball porchetta short ribs andouille. Pastrami sausage tongue, tenderloin tail bacon ribeye ham pork beef doner drumstick picanha shank. Cupim doner meatball drumstick. Tail ball tip doner alcatra, chuck biltong ham shank turkey capicola jerky. Buffalo jerky sausage, biltong doner pig spare ribs ribeye frankfurter cupim meatball beef ribs. Pork tail shank kielbasa pig alcatra salami venison chislic. Boudin landjaeger short loin, ball tip tenderloin leberkas beef ribs salami jowl shankle filet mignon. T-bone chicken cupim pastrami pork loin venison. Filet mignon tenderloin boudin ham hock short loin porchetta. Ground round prosciutto meatball, pork frankfurter andouille flank corned beef. Meatball shank cow ribeye tail. Beef frankfurter ball tip strip steak chislic pork belly capicola pastrami porchetta pork shoulder andouille. Picanha ribeye pig ground round beef ribs pancetta shoulder filet mignon spare ribs cupim. Brisket picanha short ribs rump bresaola ham hock bacon ham doner biltong prosciutto meatball chicken kevin jowl. Landjaeger ham hock kevin prosciutto picanha drumstick ribeye meatloaf doner leberkas. Ball tip rump picanha, swine cow pancetta chicken strip steak pork belly shankle venison pork loin. Pork loin short ribs rump pork chop tenderloin. Shoulder beef ribs venison buffalo ham, prosciutto pork picanha fatback ground round kielbasa tail chislic turkey. Biltong burgdoggen ball tip, beef pork loin pancetta drumstick spare ribs ground round brisket short loin. Fatback corned beef pork belly doner chuck, pork hamburger beef ribs pastrami tenderloin beef boudin porchetta.';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('World Tour'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset('images/image1.png'),
              const Text(
                "World Tour Without Visa",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                BaconText,
                style: const TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
