import 'package:flutter/material.dart';

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 119, 61, 255),
                Color(0xFF9D3FCB),
                Color(0xFFB55FCF),
              ],
              stops: [0.2, 0.6, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      '\$1000.00',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Balanço disponível",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 20,
                    child: Icon(
                      Icons.person,
                      color: Colors.purple,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Card(
                color: Colors.grey[700],
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Saída",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '\$9900.97',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Entrada",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.purpleAccent,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "\$9332.35",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment(-1.0, 0.0),
                        child: Text(
                          "Limite de gastos: \$432.93",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.5,
                        color: Colors.purpleAccent,
                        minHeight: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Diga-me como",
                          style: TextStyle(
                            color: Colors.purple,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment(-1.0, 0.0),
                child: Text(
                  "Ações da conta",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 18),
            Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[700],
        foregroundColor: Colors.white,
        fixedSize: Size(115, 100),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            "Depositar",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[700],
        foregroundColor: Colors.white,
        fixedSize: Size(115, 100),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.swap_horiz,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            "Transferir",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[700],
        foregroundColor: Colors.white,
        fixedSize: Size(115, 100),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.qr_code_scanner_sharp,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            "Ler",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  ],
),

              SizedBox(height: 25),
              Align(
                alignment: Alignment(-1.0, 0.0),
                child: Text(
                  "Pontos da conta",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment(-0.9, 0),
                      child: Text(
                        "Pontos totais:",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.9, 0),
                      child: Text(
                        "3000",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.9, 0),
                      child: Text(
                        "Objetivos:",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.9, 0),
                      child: Row(
                        children: [
                          SizedBox(width: 16,),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Entrega grátis: 15000pts",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.9, 0),
                      child: Row(
                        children: [
                          SizedBox(width: 16,),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent[200],
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "1 mês de streaming: 30000pts",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                width: 390,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[700],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white24,
    );
  }
}
