#include "main.h"
#include <stdlib.h>

OS_MUTEX mutx_1;

void UserAppInit(void)
{
    // TODO: Initialize user application components here
    OS_ERR err;
    OSMutexCreate(&mutx_1, "mutx 1", &err);
}

TimerDefine(Timer_Demo, 100, OS_OPT_TMR_PERIODIC)
{
    __NOP();
    LL_GPIO_TogglePin(LED_1_GPIO_Port, LED_1_Pin);
}

TaskDefineEx("main task", Task_Main, 256, 0, NULL, 0)
{
    OS_ERR err;
    OSStatTaskCPUUsageInit(&err);
    OSTmrStart(&tim__Timer_Demo, &err);
    while (1) {
        OSMutexPend(&mutx_1, 0, OS_OPT_PEND_BLOCKING, NULL, &err);
        if (err == OS_ERR_NONE) {
            LL_GPIO_TogglePin(LED_1_GPIO_Port, LED_1_Pin);
            OSTimeDly(100, OS_OPT_TIME_DLY, &err);
            OSMutexPost(&mutx_1, OS_OPT_POST_NONE, &err);
        }
    }
}

TaskDefine(Task_Demo_1, 1, NULL)
{
    OS_ERR err;
    while (1) {
        OSMutexPend(&mutx_1, 0, OS_OPT_PEND_BLOCKING, NULL, &err);
        if (err == OS_ERR_NONE) {
            OSTimeDly(50, OS_OPT_TIME_DLY, &err);
            /* to make high cpu load */
            int r = rand() % 500000;
            for (size_t i = 0; i < 20000 + r; i++) {
                __NOP();
            }
            OSMutexPost(&mutx_1, OS_OPT_POST_NONE, &err);
        }
    }
}
