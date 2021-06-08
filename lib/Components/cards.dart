
import 'package:flutter/material.dart';


class ProductCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

         body: ListView(children: [
           Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height:150,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
                child: Row(children: [
                  ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Container(                     
                      child: Image.network('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIQEBISEBIVEA8TEBMXERUXEBUVEhcaFRIWFhcXFxcYICggGBolGxYVITEhJyktLi4uFx8zODMsNzQtMCsBCgoKDg0OGxAQGi8lICU1LS04MjctLTA1LSstNS0tLS4tLS0tLS0tLi0tLS0vLS4tLS41LS0tLS0tLS0tNS0tN//AABEIAKgBLAMBIgACEQEDEQH/xAAcAAEAAAcBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xAA6EAACAQIDBQYDBgUFAQAAAAAAAQIDEQQhMQUGEkFhBxMiUXGBMkKRFHKhwdHwM1JigpKisbLC4SP/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAQMEAgUG/8QAKxEBAAICAgEDAwIHAQAAAAAAAAECAxEEMSESQVEiMrET0UJhcYGRofAF/9oADAMBAAIRAxEAPwDhoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACelSlOSjCLlJuySTbb8klqbZgezXaVWPF3CpprJVKkYy/xvde9jm161+6dJisz01AGa27upjMDniKEoQ5TVp0/8o3S9GYUmLRMbgmJjsABKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXweEqVpqnShKpUlpGMXKT9kdF3c7Jqs0qmOn3MNe7p2lVfrL4Y/j7Fd8tafdLqtJt05xhsPOpJQpwlUnJ+GMYuUn6JZs6Hu12TYitaeMl9mp/wAitKs/+sPe76HUtg7GwmBpPuKUMPHSU5W45feqSd3z6GXoVozV4SjNecZKS+qMGbm26rGmimGPdidgbsYTAxthqMYytnN+Kq/Wbz9lZGYsT2FjBN5mdy0RGlOdNSTUknFqzTV015NPU0HefsrwuIvPCv7JW8kr0X/b8n9uXQ6FYWOqZbUndZRasW7eY94t1cXgJWxFJqF7RqR8VKXpJaejs+hhT1nWoxnFxnFThJWlGSTi15NPU53vR2T4evxTwUvs1XN8Du6Df+8Pa66HoYudWfF/DNfBP8LiAMtt/dzFYGfDiaUoXfhnrTl92ayfpr0MSb4mJjcKJjXYACUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbJu5uxLEU+/ndUe9hSjb5pTva75JcL97GtnSuzffClh6MsLiaaq4eclxq3iWfxJfNa66q10Uci9q03WFuKsTbyv9qbRns2o8Pg6UMFSShao6alUrXipN8c000m7WSbuuWi3XcHaOOxEKjxkX3a4e5qSpd3OevF4VZNLw52WvPlnMMoVKSnSmq+Hekr39p2zv1+q5mvb+fbFRpQwEZQo3n3/AHKSrJOzjw2zUXeTbjne3v5X61csRTURPzLR6ZrPq3/ZS343Ur4uqq0JxnCNNRVKfF4Gm25QSjJNyTSeSeWvlDdDdp4BzxNefDxQVN04Qm07zTU5JK8pXsl4VZOWtzBbl4PaP2unLjrQpRd66rVJWlH+VUptycnydsvM6skM+W2KP0vVEx/IpWLT6tKfO3QjYmZAx7XJQRBOxAEQRsUcVhoVYOFWEalOStKMoqUX6pnNt6eyOjVvUwE+4nr3U23Sf3ZfFD8V6HTwW4898c7rLm1It28sbb2FicFU7vE0pUpfK2rxlbnGSyl7GNPWeNwVOvB061ONWnLWMoqUX7Pn1OYb09j8ZXqbPnwPXuajbh6QnqvSV/VHp4efS3i/hmvx5j7XGwXu1tk18JUdPE0pUZ+Ulk+sXpJdUWRviYnzDP0AAkAAAAAAAAAAAAAAAAAAAAAAAACtQmtHlzi1yZRAG57rb44jAVE1Pwu1+dOa/qX/AGWZ27d3eDD7Qprg/wDlVknelJtRlb4nSmtddV55pHmSjXccn4o80/y8mZrYu3amEzpPvKDknKnJtWfmmneE/KUWn11PO5XCjJ5r20483tZ6P2bsahhnLuqXdzatJuUpTte9uKTbtfrYvmaVuhv9SxMEq0nOMVnN27+l594krSh/XFW/mjHV7tyUk1KDScZxzi76eh49/VW2r9tMTCUgTMlOdukCDJiA2LVyJ41HoVHBMjGKRXETE9uplMARLNuQigRGxabT2XRxVN0sRSjWpvlKN7dU9YvqszlO9fY81eps6fEte4qStL0hU0fpK3qdiBfi5N8U/TLi2OLdvJWPwNXD1HTr05UqkdYyi0/x5dS2PVO3tg4bHQ4MTSjUXyytacfuy1Rw7a24qdWVPBVFKpxS7ulNqLmk3/Dno3ZfDK3Rs9fBza5PE+JZb4Jr00cFfG4OpQm6daEqVSPxRlFxkvZlA2qAAAAAAAAAAAAAAAAAAAAAAAAAmp1HF3X79SUAX2ExEoyU6MnSqrSzs/7X+Ru+5HaHXwUlTl4qTedOT8Dvq4N/A+mjOdFzTxCa4ama5P5l+qKMuCmSNWhZTJNXqfYm2KGOp8eGlmvjpPKcX6fteTLw8ybH2zWwdSNSnN2XwTi8106r+lna90u0KhjYxhiWqVZpKNRfBLo/J9H9bux4XI4d8PmPMNdMkS28gTVIOOuj0a+F+j/IkuY9ruwAE7SiRuS3DVxsQc75R+vInvZZv3JZSUV15dSR58079WrDYqwqp+vkTSlYpXUV1/enkii6jk1y8v3zGzSXHYhqMnG+SdrK7b5fiaBu1s5VNrJKSqQw8XJtaXSsl68TX0M7v1ju5pRjxeKTcnbLKOSXu3/pHZds/gw9SvJeKvPL7sLr/k5fRGrHumKbfPhXbzMQ2Pbm72Fx0ODFUY1V8r0nH7s1nE5Dvd2OV6ClVwEniaSz7qVlXS6cqnPyfRnc4IrwiMHKyYup8fCvJWs9vGk4tNpppp2aas01qmiU6X267MpUseqtJJSqwTqpc555+tkm/U5ofQ4skZKRaPdjtX0zoABY5AAAAAAAAAAAAAAAAAAAAAAAAVaFdw0zT1T0ZeYebT46Ls/mg9f/AFdTHEYyad07NaMiY2mJ06juR2mVMPajXTrYfRwk7ziv6G9V0ftY63gNoUsRTVbCz76l80VnVh04dZenxep5djUjPKXgnylon6+T6mZ2FvHiMDVUoTcJK2fyyXlJc116nlcn/wA6LfVj8T8fLVjzfL0jTqKSTi009GtCe5pm7e+dDHtJyjhca/POhWy5rz6rxLqkbPSxfi7uou6rWuot3Ul/NTlpOP4rmkeLetqTqY1LVFtry5FMkuRTONuk7V9SWpLhWRLUm0stSFFPWQ2JIpy1/wDPcqZR6v8AEqaaZGE3m2msLhqk73k/DHP5pLl6K79jqkeqdQiWk7zY2WNxfc0/hlNU09XLhlZKPS7b9zqOzcHGhShSj8MIKK9lr+Zzrsz2c61eeLqLww8NNcuJrl6Rf+pHUaNO/pzZq5NoiYxx7flXXr1SqUoXNZ333zpYCm4walXayV9Or8l+/W03835p4GEqVFqVa2b5R5Xl+h5/2xtWeIm51ZOSbvm/FJ35+SLuJxJy/Vbr8qr3ivmUN5tsTxdXjnJyvd3fO78uSyyMOTTld3ZKe/WsVjUMdrTadyAA6QAAAAAAAAAAAAAAAAAAAAAAAAAAAXFHEWXDNcUPxXo/yLcAX9Ocqfig+Onf6fozf91+0FqCoYxPE4dWtLPv6b5ST1dvNZ+pzSlVcXdP9H6laLUneHhn5cvb9DNn41M0atC2mWavRmC2ylBTU/tOFfw1Y51IdKkVr6r6Gbo14zipRalF6NO6Z5x2BvHWws705uDfxR+SXqvM6FsTeyEnxU2sPVfx05P/AOE/R/I+umma0PCz8G+OfmPn9/3j/TdTLW0OoqRMpGF2XtuFbw/w6q1g9f7Xz/3MmpmGYmPErFdyOZb/AG0JYnFQwtLxKD4bLnOTV/yXszc94trrC4edV/Fa1Necnp9NfY1/sz3clOUsfiLxhn3Tlq76zz/B9b+Rq40RSJy29uv6q8k+zdt29kLD0IUlZKEfHLk5POT+v4WNZ3938hh4yoYaS40vHNvwwWl35vp+1jO0TtEjTjKhhZWSVpTXL083+/Xie0MXKo05dWlz11fU18ThWyz68nX5U5MkQuNq7QdWbnJyabulJ5zf80vJdORi5ybd2QbIHu1rFY1DHMzM7kAB0gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFVVL/F9f18y4w+KlTavmuTvmvRlkTRl9DmaxKYtMNmwG2asEnTndJ5Rl8KSekecH006I3DZnahwJRxEHdc2m3/lHX6HLKdRxzi/31Lqnj/NP2zX4mTLw8d+4X1zTHu6pS3s2djq8ZY2pN0qf8LDwo1ZcctXKbUc1pl0z6x3+7SFUh3OF8FFK11/xX7/Q5bPaTasr28skvotS3q1Gs5ZztkuUer/QqpwKeqJneo9v+hNs3+U+JxDb4p5y+WN72vzfUs5Su7vVhu+pA9GI0zzOwAEoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARFyAAnjUtpqStkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH/2Q=='
                      ,width: 260,)
                      
                      ) ,
                   ),
                   Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("20pice"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("\$90",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                            ),
                          ],  
                        ),
                        Row(
                          children: [
                            Text("Quality:"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("1"),
                            ),
                          ],
                        ),
                   ]),
                 ),

                 
                 ],),
              ),
            ),
         

         Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height:150,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
                child: Row(children: [
                  ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Container(                     
                      child: Image.network('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIQDxUREBIPFRAWFRcXFRUVFRUVDxcWFRUWFhcVFRUYHSggGBolGxYXIjEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0gHSUtLi0rLSstLSstLS0vLSstLSstLS03LS0tLS0tKy0tLS0uLSstLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABwEDBAUGAgj/xABSEAABAwICAwgLCgsHBQAAAAABAAIDBBESIQUxQQYHE1FxgZG0FyIyM1RhcnOTodIUI2KSorGys9PwCBYkNEJTVYPB0eElQ1JjguLjNUV0hPH/xAAZAQEAAwEBAAAAAAAAAAAAAAAAAQIDBAX/xAAjEQEBAAMAAQQDAQEBAAAAAAAAAQIDETEEEiEyE0FRIpEU/9oADAMBAAIRAxEAPwCcUREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBEVEHM7st17dGgF0ReMOJxxYbAyxxCwwm+cl+Zcr2ZoPB3ekd9mvG/f3k+aZ1yBR9uQ3HmuY6V8nBxNOEEDE4m1ztyAQSH2Z4PB3ekd9mqdmmDwd3pHfZqO9I6EoYX4DVTGxsSIhg6b/MFbm3OwgYmyvc05ggCxCCR+zVB4O70h+zVOzVB4M70h+zUTz6NY3UX+r+S1UzMLiDsQTZ2a4PBnekP2auzb8LGxxye43FkmLD77n2jsOfvfOoLW+rvzGk/efWOWmrCZ3lRUndm6LwN/pf8AjTs2x+Bv9L/xqGHDNVC2mjFHuTN2bY/A5PS/7EG/ZH4FJ6UewoaC9tVp6fH+09yY+zUzwKT0o9hOzXH4FJ6UewoeAzvl0Z5Ai1+LPV4gvatPS43+nUvdmuPwKT0o9hV7NUfgb/S/7FEBCpZW/wDJj/anqYOzTH4G/wBL/sWfojfWbUSNYKR7QXxNLuFvbhZ4oQbYM7GS+salCIC6jcL3/wD10vXqVRn6TCY29qX0ciIuAEVFVAREQEREBERAREQRVv4d4PmmdbgXKbmKh7dBz8H3eN5HJaPF8kFdXv494PmmdbgXIbiqjDREf5jj6moOTMofHhIAcHEmQuPc4R2mHjvc315raUjJIoGtkyJGID9INdm3ENhtY28arpB1G2U2DQ6+dsWG/Nq5lh6U0iBnfE46s785KDYbo62ibSxcBwnur+8Bvh1G5uctdtXj5Fykz8RBOstafkha51S57yXbVnHU3yGfRCiJUW/r3fkFKNvvnqkd/NaBbvSB/I6TyZfrSttN5krl4apyqFRVaumM3oL2VQKpW0HoKpK8BelpKl7VQvIKrdXi0VPqXVbicpL7TNSjmFbTX+f1LmI23IAXW7k2gTADZJS9dprqu6/4qz6EVFVF4wIiICIiAiIgIiICIiCKt/HvDvNM63Ao00dO5uj3YO6ufnF/VdSJv3SEtkb+iKeAjldWsBz/ANIUZaPq8FOGjWS7ktdBgwsjlY67mskY0uBc7N2Rwsay13Eutd17NF76wsOshcwMxCxcwPHHhJOE84F+SyuTNY12oYvH/JY1VM57i55LnHWTrOVvmAHMgwhGBa2K+eK+rxWWwOpvkN+iFhFZh1N8lv0QiaLd6R/M6TyZfrCtGt7Xj8jpPJl+sK01/ZTLw1QC9leV6BXTGSi9BFVaSpAV6XlCVtjUx7avTVaBWTTt/SKt7uLxVrrHCO6Os8S7HcZATLcDU+lPRWU5J5lyVJCScR1lSRuXpXRaPlqNT3OiLDbMNZURWdnxuBPIGrn359xsWTIiKi84VREQEREBERAREQEREEQb9v8Aff8Ai0/XQomEpbBibmQCR8YqWt+4H302Nvc1PnsyrRfPnHSFD8NSA3C7L1ixz2cqDCpaYztfI6RgwtxOxuAJOwMbiu9xPEMrry5jgxhcCC5mIX1kYnAO57K/wcYNxhv4w63RZKuR0rsT3tJyGpwAAFg0ANsAALWCm8Iwis06m+Q36IVjgPhs6HfNZX3EbL2AAF9dgLC/jyUCi39d+Z0nky/WFaBb6v8AzOk8mX6wq+v7K5+GssioUBXSxerKq8XQFXlS9IVQlFrKtHuNt1kskucKsE2aT981doYePK+ZPEBtTKrx1G5bQ5qpQzMMGb3cTeIeM6h/Rdhug0o1odSRAAMbBitqA90wBsY5Br5vGsGGvbouhaLD3XKA/BtY11wwv4rC+R24tgK5zQZdIZnuuXu4I7SSTVQc5Ky9vcbVn0WiIuAEREBERAREQEREBUVUQRXv5fm580zrdOoMU1b90htK2/aimgIHjdWtBPyR0KFUBERAREQF0NfGTQ0hGrDLf0hXPLqJZAKKk8mXp4QrXTJcuVXKdjRFUV2QA6hY+rmGxWStrOMVbovIVVMordVYLmy8AK6XYeVbY/1pjOrzs7D73W30e9kNnvaHuHcRnU99+1DvgA5nj1ZXuNLFIGi+s7FlUzC44j3R1eJv9fm5U5760Z00755C+Rxe9xxOcdbnHWeTYBsAAXUblYcJLrHJ9Mchc5VlObAbStHRU1rLrdHRGOCRwycOBIPERUwkFabeY67CO70Pu3ZVaQdQxwTNdHGXvfIWMsAQ2wYCS44jY8Wa6tfPen9NTUW6Js+IMvM6KTC3J0fDElud8nXYTyr6DuvJFURUQVREQEREBERAREQRJv3xEMkfcWdTwttt7StYT9MdBUJqct/LvDvNM63AoNQEREBERAXQ1gvR0nky/WFc8uhrHfkVJ5Mv1hWmr7K5eGv4NUIbbP8AqvBuVUBdcqi05tuRUaCTYZnxLLYbnIAfNylXZH9qbZDUOPlP341bHVL+1pr6wndryrHc+55V7nKpDGSbbSp534/S/hk0sVzc6h6zxcnH/Vb6gh2nWsGmh1W1DV/NdBo2mvrXRjjyEnWbo2lubnUunhpS6B7RkXGFovqu6phAv0rD0fT6uJb2Ftm/vKfrcC5d+XZUOD396Ex1ZlbkTwco4s24Db/VEDzqatydeKigp5gb4omXI1EgWPrBXB7+2jsdMyQf4ZGHlFpWfQf0rO3itI8NodjDrhe5lvg3uDzm689KRFRFVAREQEREBERAREQRTv5d4d5pnW4FBynHfy7w7zTOtwKDkBERAREQF0Fa61HSeTL9YVz639Zb3HSeTL9aVpr+yMvDWYrr0Gq3iV2Nl104/KuM6vDUBs1n+A/jzKxUT7FcqJMlg2c92Fou4/e63vZ8Rtfh4BudpOwDWStvR0ltfdbeIfBv8/3vSkpBEMs5Nrtgvsb/AD28mvcUNLqXTr0+2dyU8rlBS3OrJdJQ0+xWqOlsFt6WKyjZWnOTjMp24Rks2J3a/vKfrcCwmrJhOX7ym63AuLb4rOuh3yaPhdHSZXwOY/mxYXfJc5Rz+D1WcHPWUhvfJ+fwDgPPmpk0pS8NBLEf043s+M0j+K+fd7ur9y7o2AmzZgWkHa57chyh2L1rgH0YiIgIiICIiAiIgIiIIp38+8HzTOtwKDlOO/n3g+aZ1uBQcgIiICIiAt9WtvR0nky/WlaFb6sP5HSckv1pWmv7IrXCNXbho+/QqRDarUr81268f4vjOPTYHyXIGQtcnIXOoeM6zYZ2BOxZkFPhGFu3ujtP9PEvDnkNDdVtg1Z2vzrOoyCvQ06eTt8p4yaKj2lb2ipVYpGBbimaFGd4vxl0sKzA1WY3WXsyLlyvUV7xKkFRd1h+tpuuU6wqmpsFb0XLeQedpuu06yzn+azqZl82bvYzQ6bZKywLKjLxBzxI35MmXIvpNQX+EDo73wSgd0xjr+NpdG7msWLzkJxhkD2hze5cARyEXC9rnd73SPunRVLLxxNB4xg7Wx5gF0SAiIgIiICIiAiIgijfz7wfMs63AoPU4b+feT5lnW4FB6AiIgIiIC77RG4+qrqClkgEWC0wxPfhFxM9pyAJ1tOxcCvoDep/6LTctR1qZX13lEb7rdzB0ZDEHu4SeYu7ZoIgjawNu1pObnkuHbG1gDlfMcnDF21zqGfQvpTSmjYaqIxVEbZIzsOw7HNIzac9YzzUc7qt7UtiLtH4nuxZxvc0Ow5ntXmwJvbI25SvQ0bsZPbVpUZGTO6ztHOOtY1fouopjapgmiztd7HNYeR/cu5iqtq7AABenjl3HsWxsdPSVFluKaoXFw1q21JWKlw7GkdW2dJKiw1rUxVQI1q3NOsvxJs+GXLNfNXNCSXlHnaXrtMtLUVdhryW13Elksr3EmzH0xFzbM1kFvWB0qnqNcx121jlE7qO9+3R3C0LX7QXs+OwuBPixRt6QpFWg3d0vC6OnA1tbwgOu3BkPJ6AV4ijjvwf9IF+jXwOvjhlNwciA8XaLcjVKChTeWrBHpGoprgNc1xaNvavxg8mF5HMprQEREBERAREQEREEUb+neT5lnW4FB6nDf07yfMt63AoPQEREFLpdZtPpAsa0Btywkg3yzDhqt8Ip7vNgA2wFgM9jdWzl6UGFdT/AL1Z/sWm5ajrUygn3X4uPbxlxtq+EVOu9i++h6Y8bqg9NVMr4eR1eJMStYkxLZK4TcWOYOsHUeULmtL7hdH1NyYGxvN+3hPBOuduFvaOPK0rocSYlOOVx+ZRFWlt66eO7qSZsrf8EnvcvIHdy48uFc3Lo+aB2CaOSN/E8Wv42nU4eMXCnjErdTCyVpZI1r2HW1wDm9BXVr9XnPt8rTPnlCEcpCuY7rvNL7gon3dTPMTv8Drvi5j3TfXyLWaF3FTcORVtbwAac2Sd045AC3bC2ZzA1BduHqtfO3/i1zcDpCXO18gttuCmPC2zzmpTzCtph/ErG3SUEIqXMpeEdC3LG9wdd23BYDteK9769q3e4+i4NwNszLTZ/wDu02QXF6n1GOWNk/bHLOR9Aq3URB7HMd3Lmlp5CLFXEXlpfNu5qU0W6WAuAGN3BuOwXvG8/JPSvpJfOO+9Te5dKiYXAE2O44n4ZTbx3xhfQ2j6kSwxyjU9jX+Ltmg/xQZCIiAiIgIiICIiCJ9/TvJ8y3rcChBTfv6d5PmW9bgUIICIiAiIgKd97E/2NTctR1qZQQp13sz/AGNTcs/WplfX5HU4kxK3dLrdZ7xJiVu6XQXMSpiXi6o54AJJsBmT4giFy65zdPpezTBEQXnJ5ByaNreW2vxcuWl01puomeWRExxXtlk8jjc7XzDLlWnneAMDe5HSf/qeFMslp8Y2atnjO1y3mhIshYapqXo92QXWohHHz8XItpoifFIAO5ElNz/ltP6lnleub3dyTYqIqrF1oZ/CC0aCxkw1lmeWXvTxt48Mp6BzdxvU6S906Hp363Nbgdnftm6/n1LF33tH8No+9s2vseLDI0s+kW9AXM/g6aQLqSenORjkxAeUO2PTYIJeREQEREBERAREQRPv6d5PmW9bgUIL6P3ydyVRpFgZTmAAsDXGRzmkFs8MgsGtNxZj+LO3HlHvYVrv11J8Z/sIIyRSZ2Fq79dSfGf7Cr2Fa79dSfGf7KCMkUm9hWu/XUnxn+ynYVrv11L8Z/soIzU572n/AEam5Z+szLmewrW/rqX4z/ZW7pNwWmYII4Karp4msx3t24OJ2IEB8eWs3t61bG8o6+6Lk/xO3Q/tKD0cX2afiduh/aMHo4vs1p+SJ66tFybdx+6E/wDcYRyxxfwjXr8Tt0P7Sg9HF9mn5IddWtJunr+Dj4NvdOzPiaP5n5itf+J26H9pQeji+zWFV73Om5XYpK+AnyGjVyMT8kRWqkmwi5zcVjNB+/zrbO3rNLnXW0/xR7CHet0v4bT/ABR7Ci7OscteVax2eQ1bVstBi0gH+ZS9dplUb1ul/Daf4o9hZ+hN7fSUUzXTVNPJHwkDyLlp96qYJjYBmfaxuAz125RW5KY6bL1MCIio6Wq3U0BqKGeFou90bsHlt7ZnygFCW8RWhumJ423wSwucBsyc14PQbL6CXHaC3BQ0elp6+LuZYyAwk9pI+QvlLRa2E9rYZ2OK2VgA7FERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQf//Z'
                      ,width: 260,)
                      
                      ) ,
                   ),
                   Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Note 20 Ultra",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("20pice"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("\$90",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                            ),
                          ],  
                        ),
                        Row(
                          children: [
                            Text("Quality:"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("1"),
                            ),
                          ],
                        ),
                   ]),
                 ),

                 
                 ],),
              ),
            ),
         



         Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height:150,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
                child: Row(children: [
                  ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Container(                     
                      child: Image.network('data:image/jpeg;base64,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'
                      ,width: 260,)
                      
                      ) ,
                   ),
                   Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("20pice"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("\$90",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                            ),
                          ],  
                        ),
                        Row(
                          children: [
                            Text("Quality:"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("1"),
                            ),
                          ],
                        ),
                   ]),
                 ),

                 
                 ],),
              ),
            ),




            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height:150,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
                child: Row(children: [
                  ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Container(                     
                      child: Image.network('data:image/jpeg;base64,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'
                      ,width: 260,)
                      
                      ) ,
                   ),
                   Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("20pice"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("\$90",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                            ),
                          ],  
                        ),
                        Row(
                          children: [
                            Text("Quality:"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("1"),
                            ),
                          ],
                        ),
                   ]),
                 ),

                 
                 ],),
              ),
            ),





            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height:150,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
                child: Row(children: [
                  ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Container(                     
                      child: Image.network('data:image/jpeg;base64,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'
                      ,width: 260,)
                      
                      ) ,
                   ),
                   Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("20pice"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("\$90",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                            ),
                          ],  
                        ),
                        Row(
                          children: [
                            Text("Quality:"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("1"),
                            ),
                          ],
                        ),
                   ]),
                 ),

                 
                 ],),
              ),
            ),









            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height:150,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
                child: Row(children: [
                  ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Container(                     
                      child: Image.network('data:image/jpeg;base64,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'
                      ,width: 260,)
                      
                      ) ,
                   ),
                   Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("20pice"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("\$90",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                            ),
                          ],  
                        ),
                        Row(
                          children: [
                            Text("Quality:"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("1"),
                            ),
                          ],
                        ),
                   ]),
                 ),

                 
                 ],),
              ),
            ),







            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height:150,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
                child: Row(children: [
                  ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Container(                     
                      child: Image.network('data:image/jpeg;base64,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'
                      ,width: 260,)
                      
                      ) ,
                   ),
                   Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("20pice"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("\$90",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                            ),
                          ],  
                        ),
                        Row(
                          children: [
                            Text("Quality:"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("1"),
                            ),
                          ],
                        ),
                   ]),
                 ),

                 
                 ],),
              ),
            ),





         
         
         ],),
         
         

      ),
    );
  }
}




