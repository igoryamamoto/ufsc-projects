//=====   Wait and Delay Functions   ===========================================
#include <delays.h>

#define US2TCY           4 // 1 microseconds = 4 tcy

#define WAIT_10US()      Delay10TCYx(1*US2TCY)   // 10us
#define WAIT_20US()      Delay10TCYx(2*US2TCY)   // 20us
#define WAIT_50US()      Delay10TCYx(5*US2TCY)   // 50us

#define WAIT_100US()     Delay10TCYx(10*US2TCY)  // 100us
#define WAIT_200US()     Delay10TCYx(20*US2TCY)  // 200us
#define WAIT_500US()     Delay10TCYx(50*US2TCY)  // 500us

#define WAIT_1MS()       Delay1KTCYx(1*US2TCY)   // 1ms
#define WAIT_2MS()       Delay1KTCYx(2*US2TCY)   // 2ms
#define WAIT_5MS()       Delay1KTCYx(5*US2TCY)   // 5ms

#define WAIT_10MS()      Delay1KTCYx(10*US2TCY)  // 10ms
#define WAIT_20MS()      Delay1KTCYx(20*US2TCY)  // 20ms
#define WAIT_50MS()      Delay1KTCYx(50*US2TCY)  // 50ms

#define WAIT_100MS()     Delay10KTCYx(10*US2TCY) // 100ms
#define WAIT_200MS()     Delay10KTCYx(20*US2TCY) // 200ms
#define WAIT_500MS()     Delay10KTCYx(50*US2TCY) // 500ms

#define WAIT_1S()        WAIT_500MS();WAIT_500MS()   // 1s

#define WAIT_x10MS(x)    Delay10KTCYx(x*US2TCY)  // x*10ms
// x * US2TCY  must be in  [0,255]
// => x in [0, 63]
