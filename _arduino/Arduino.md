



## ICSP

In-Circuit Serial Programming，这个可以查看arduino的原理bai图，六根线直接和duMCU连着的，对应VCC，MISO，MOSI，SCK，GND和RESET，其zhi实是烧写器利用串dao行接口给单片机烧写程序用的，因为arduino上面配了16U2等USB控制器，所以是通过USB口利用串口通信写程序，ICSP就很少用到。