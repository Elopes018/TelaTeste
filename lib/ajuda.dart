import 'package:flutter/material.dart';

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120), // Altura personalizada
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 193, 71, 241),
                Color(0xFF9D3FCB),
                Color(0xFFB55FCF),
              ],
              stops: [0.2, 0.6, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                  10), // Define a circulação na borda inferior esquerda
              bottomRight: Radius.circular(
                  10), // Define a circulação na borda inferior direita
            ),
          ),
          padding: EdgeInsets.fromLTRB(20, 0, 20, 10), // Espaçamento ajustado
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .end, // Posiciona o conteúdo na parte inferior
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$1000.00',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Balanço disponível',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white.withOpacity(0.9),
                      child: Icon(Icons.person, color: Colors.purple),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.grey[700],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Saída',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '\$9900.97',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Entrada',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '\$9332.35',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Limite de gastos: \$432.93',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    SizedBox(height: 10),
                    LinearProgressIndicator(
                      value: 0.7,
                      backgroundColor: Colors.grey[800],
                      color: Colors.purple,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Diga-me como',
                          style: TextStyle(color: Colors.purpleAccent)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.account_balance_wallet_outlined),
                  label: Text('Depositar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[700],
                    foregroundColor: Colors.white,
                    fixedSize: Size(100, 90),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                        iconColor: Colors.white
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.swap_horiz),
                  label: Text('Transferir'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[700],
                    foregroundColor: Colors.white,
                    fixedSize: Size(100, 90),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.qr_code),
                  label: Text('Ler'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[700],
                    foregroundColor: Colors.white,
                    fixedSize: Size(100, 90),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Card(
              
              color: Colors.grey[700],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pontos totais:',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '3000',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Objetivos:',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '• Entrega grátis: 15000pts',
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 14),
                    ),
                    Text(
                      '• 1 mês de streaming: 30000pts',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 14),
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[800],
    );
  }
}
