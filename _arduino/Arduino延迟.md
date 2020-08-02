···
tag: arduino
title: "Arduino LED 闪烁的三种思路"
···


原文地址：[Arduino LED 闪烁的三种思路 - 简书](https://www.jianshu.com/p/c8e24ab33c37)

文中使用了pinMode()函数
[Arduino pinMode()_w3cschool](https://www.w3cschool.cn/arduino/pinmode.html)

第一种思路：使用delay函数


[Arduino delay()函数_w3cschool](https://www.w3cschool.cn/arduino/arduino_delay_function.html)

官方文档中的blink例子就是使用的这种方法，代码如下：

```arduino
int led = 13;                   //LED连接在13引脚
void setup() {
    pinMode(led, OUTPUT);
}

void loop() {                   // 循环
    digitalWrite(led, HIGH);      // 点亮LED
    delay(1000);                  // 延时1000ms(即1秒)

    digitalWrite(led, LOW);       // 熄灭LED
    delay(1000);                  // 延时1000ms
}
```

多说几句：这里的延时也就是LED保持状态（点亮或熄灭）的持续时间，如果熄灭LED之后不加延时函数的话，程序熄灭LED之后，进入下一次循环又点亮了LED（速度太快，将看不出来闪烁，结果就是LED一直保持点亮状态）

优点：简单易懂

缺点：delay函数会阻塞程序的运行，因为在延时时间内程序处于暂停状态（不会执行其下面的代码，直到延时结束）

第二种方法：使用millis时间函数实现非阻塞


[Arduino millis()函数_w3cschool](https://www.w3cschool.cn/arduino/arduino_millis_function.html)

代码如下：

```arduino
int led = 13;
int pre_time=0;                    //初始时间
int led_state=LOW;             //led初始状态为熄灭
int hold_time=500;              //LED维持状态的时间

void setup() {
    pinMode(led, OUTPUT);
}

void loop() {
    int cur_time=millis();           //获取当前程序运行的时间
    if(cur_time-pre_time>hold_time){//如果达到了指定的时间
        led_state=!led_state;        //改变LED灯的状态
        pre_time=cur_time;//将当前时间保存到初始的时间，准备进入下一轮循环
    }
    digitalWrite(led,led_state);
}
```

优点：非阻塞（如果程序中有其他的代码要运行将不会有延迟）

第三种方法：使用指针进行改造

思路和第一种方法一样，只是使用了指针来进行改造，并且封装在了一个函数内。

代码如下：

```arduino
int led=13;

void setup(){
    pinMode(led,OUTPUT);
}

void BlinkLED(int pin,int *led_state){//函数封装
    digitalWrite(pin,*led_state);
    delay(1000);
    *led_state=!(*led_state);//改变LED状态
}

void loop(){
    static int state=HIGH;//LED 的状态，只初始化一次，所以声明为静态变量
    BlinkLED(led,&state);//调用函数
}
```
​

优点：简洁优雅

缺点：指针优点难度（不过很强大）

作者：Arduino爱好者
链接：https://www.jianshu.com/p/c8e24ab33c37
来源：简书
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

