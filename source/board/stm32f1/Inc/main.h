/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

#include "stm32f1xx_ll_rcc.h"
#include "stm32f1xx_ll_bus.h"
#include "stm32f1xx_ll_system.h"
#include "stm32f1xx_ll_exti.h"
#include "stm32f1xx_ll_cortex.h"
#include "stm32f1xx_ll_utils.h"
#include "stm32f1xx_ll_pwr.h"
#include "stm32f1xx_ll_dma.h"
#include "stm32f1xx_ll_rtc.h"
#include "stm32f1xx_ll_gpio.h"

#if defined(USE_FULL_ASSERT)
#include "stm32_assert.h"
#endif /* USE_FULL_ASSERT */

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stddef.h>
#include "os.h"
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

//
// GCC section utils
//

#define AT_SECTION(section_name) __attribute__((used)) __attribute__((section("." #section_name)))
#define AT_SECTION_WITH_NAME(section_name, var_name) __attribute__((used)) __attribute__((section("." #section_name "." #var_name)))
#define GET_SECTION_BEGIN(section_name) __start_##section_name
#define GET_SECTION_END(section_name)   __end_##section_name
#define FOREACH_SECTION_VAR(var_type, section_name)                       \
    extern uint32_t GET_SECTION_BEGIN(section_name);                      \
    extern uint32_t GET_SECTION_END(section_name);                        \
    for (uint32_t var_ptr = (uint32_t)(&GET_SECTION_BEGIN(section_name)); \
         var_ptr < (uint32_t)(&GET_SECTION_END(section_name));            \
         var_ptr += sizeof(var_type))
#define FOREACH_SECTION_GET_VAR_PTR(var_type) ((const var_type *)var_ptr)

//
// Task Define utils
//

#define TASK_STK_SIZE_DEFAULT 128 // 128 words == 512 bytes

typedef struct {
    char *name;
    void (*entry)(void *p_arg);
    void *args;
    uint8_t prio;
    CPU_STK *stack;
    uint32_t stack_size;
    OS_MSG_QTY queue_size;
    OS_TCB *tcb;
} Task_DeclareInfo;

#define TaskDefineEx(task_name, entry_name, stk_size, task_prio, args_ptr, queue_sz)                             \
    static CPU_STK __app_task_stk__##entry_name[stk_size] __attribute__((used));                                 \
    static OS_TCB __app_task_tcb__##entry_name __attribute__((used));                                            \
    void entry_name(void *);                                                                                     \
    const static Task_DeclareInfo __app_task_info__##entry_name AT_SECTION_WITH_NAME(user_tasks, entry_name) = { \
        .name       = task_name,                                                                                 \
        .entry      = entry_name,                                                                                \
        .args       = args_ptr,                                                                                  \
        .prio       = task_prio,                                                                                 \
        .stack      = __app_task_stk__##entry_name,                                                              \
        .stack_size = stk_size,                                                                                  \
        .queue_size = queue_sz,                                                                                  \
        .tcb        = &__app_task_tcb__##entry_name,                                                             \
    };                                                                                                           \
    void entry_name(void *args)

#define TaskDefine(entry_name, task_prio, args_ptr) \
    TaskDefineEx(#entry_name, entry_name, TASK_STK_SIZE_DEFAULT, task_prio, args_ptr, 4)

//
// Timer Define utils
//

typedef struct {
    char *name;
    OS_TMR_CALLBACK_PTR entry;
    void *args;
    OS_TICK period;
    OS_OPT opt;
    OS_TMR *tmr;
} Timer_DeclareInfo;

#define TimerDefineEx(tmr_name, entry_name, args_ptr, period_ms, _opt)                                            \
    static OS_TMR tim__##entry_name __attribute__((used));                                                        \
    void entry_name(void *p_tmr, void *p_arg);                                                                    \
    const static Timer_DeclareInfo __app_tmr_info__##entry_name AT_SECTION_WITH_NAME(user_timers, entry_name) = { \
        .name   = tmr_name,                                                                                       \
        .entry  = entry_name,                                                                                     \
        .args   = args_ptr,                                                                                       \
        .period = (period_ms * OS_CFG_TMR_TASK_RATE_HZ) / 1000u,                                                  \
        .tmr    = &tim__##entry_name,                                                                             \
        .opt    = _opt,                                                                                           \
    };                                                                                                            \
    void entry_name(void *p_tmr, void *p_arg)

#define TimerDefine(entry_name, period_ms, opt) \
    TimerDefineEx(#entry_name, entry_name, NULL, period_ms, opt)

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */
void UserAppInit(void);
/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LED_1_Pin LL_GPIO_PIN_1
#define LED_1_GPIO_Port GPIOA
#ifndef NVIC_PRIORITYGROUP_0
#define NVIC_PRIORITYGROUP_0         ((uint32_t)0x00000007) /*!< 0 bit  for pre-emption priority,
                                                                 4 bits for subpriority */
#define NVIC_PRIORITYGROUP_1         ((uint32_t)0x00000006) /*!< 1 bit  for pre-emption priority,
                                                                 3 bits for subpriority */
#define NVIC_PRIORITYGROUP_2         ((uint32_t)0x00000005) /*!< 2 bits for pre-emption priority,
                                                                 2 bits for subpriority */
#define NVIC_PRIORITYGROUP_3         ((uint32_t)0x00000004) /*!< 3 bits for pre-emption priority,
                                                                 1 bit  for subpriority */
#define NVIC_PRIORITYGROUP_4         ((uint32_t)0x00000003) /*!< 4 bits for pre-emption priority,
                                                                 0 bit  for subpriority */
#endif
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
