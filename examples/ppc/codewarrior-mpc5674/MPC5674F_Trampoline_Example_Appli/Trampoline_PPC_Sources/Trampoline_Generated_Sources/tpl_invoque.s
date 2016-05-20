/**
 * @file tpl_invoque.s
 *
 * @section descr File description
 *
 * System call user level invoque API.
 *
 * @warning this file is generated by gen_invoque.sh based on the 
 * tpl_os_service_ids.h header file.
 *
 * @section copyright Copyright
 *
 * Trampoline OS
 *
 * Trampoline is copyright (c) IRCCyN 2005+
 * Copyright ESEO for function and data structures documentation and ARM port
 * Trampoline is protected by the French intellectual property law.
 *
 * This software is distributed under the Lesser GNU Public Licence
 *
 * @section infos File informations
 *
 * $$Date$$
 * $$Rev$$
 * $$Author$$
 * $$URL$$
 */
#include "tpl_os_application_def.h"
#include "tpl_service_ids.h"
#include "tpl_app_define.h"
#include "tpl_registers.h"


#if WITH_SYSTEM_CALL == NO
#error "This file should not be part of your project since WITH_SYSTEM_CALL is not defined"
#endif


#include "tpl_assembler.h"

#if WITH_MEMMAP == NO

#endif /* WITH_MEMMAP == NO */

#define API_START_SEC_CODE
#include "tpl_as_memmap.h"

  .text
  .section .osApiCode CODE_ACCESS_RIGHT


  .global GetActiveApplicationMode
GetActiveApplicationMode:
  e_li   r0,OSServiceId_GetActiveApplicationMode  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type GetActiveApplicationMode,@function
  .size GetActiveApplicationMode,$-GetActiveApplicationMode


  .global tpl_start_os
tpl_start_os:
  e_li   r0,OSServiceId_StartOS  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type tpl_start_os,@function
  .size tpl_start_os,$-tpl_start_os


  .global ShutdownOS
ShutdownOS:
  e_li   r0,OSServiceId_ShutdownOS  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type ShutdownOS,@function
  .size ShutdownOS,$-ShutdownOS


  .global EnableAllInterrupts
EnableAllInterrupts:
  e_li   r0,OSServiceId_EnableAllInterrupts  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type EnableAllInterrupts,@function
  .size EnableAllInterrupts,$-EnableAllInterrupts


  .global DisableAllInterrupts
DisableAllInterrupts:
  e_li   r0,OSServiceId_DisableAllInterrupts  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type DisableAllInterrupts,@function
  .size DisableAllInterrupts,$-DisableAllInterrupts


  .global ResumeAllInterrupts
ResumeAllInterrupts:
  e_li   r0,OSServiceId_ResumeAllInterrupts  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type ResumeAllInterrupts,@function
  .size ResumeAllInterrupts,$-ResumeAllInterrupts


  .global SuspendAllInterrupts
SuspendAllInterrupts:
  e_li   r0,OSServiceId_SuspendAllInterrupts  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type SuspendAllInterrupts,@function
  .size SuspendAllInterrupts,$-SuspendAllInterrupts


  .global ResumeOSInterrupts
ResumeOSInterrupts:
  e_li   r0,OSServiceId_ResumeOSInterrupts  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type ResumeOSInterrupts,@function
  .size ResumeOSInterrupts,$-ResumeOSInterrupts


  .global SuspendOSInterrupts
SuspendOSInterrupts:
  e_li   r0,OSServiceId_SuspendOSInterrupts  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type SuspendOSInterrupts,@function
  .size SuspendOSInterrupts,$-SuspendOSInterrupts


  .global CallTerminateISR2
CallTerminateISR2:
  e_li   r0,OSServiceId_CallTerminateISR2  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type CallTerminateISR2,@function
  .size CallTerminateISR2,$-CallTerminateISR2


  .global ActivateTask
ActivateTask:
  e_li   r0,OSServiceId_ActivateTask  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type ActivateTask,@function
  .size ActivateTask,$-ActivateTask


  .global TerminateTask
TerminateTask:
  e_li   r0,OSServiceId_TerminateTask  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type TerminateTask,@function
  .size TerminateTask,$-TerminateTask


  .global ChainTask
ChainTask:
  e_li   r0,OSServiceId_ChainTask  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type ChainTask,@function
  .size ChainTask,$-ChainTask


  .global Schedule
Schedule:
  e_li   r0,OSServiceId_Schedule  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type Schedule,@function
  .size Schedule,$-Schedule


  .global GetTaskID
GetTaskID:
  e_li   r0,OSServiceId_GetTaskID  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type GetTaskID,@function
  .size GetTaskID,$-GetTaskID


  .global GetTaskState
GetTaskState:
  e_li   r0,OSServiceId_GetTaskState  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type GetTaskState,@function
  .size GetTaskState,$-GetTaskState


  .global CallTerminateTask
CallTerminateTask:
  e_li   r0,OSServiceId_CallTerminateTask  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type CallTerminateTask,@function
  .size CallTerminateTask,$-CallTerminateTask


  .global GetResource
GetResource:
  e_li   r0,OSServiceId_GetResource  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type GetResource,@function
  .size GetResource,$-GetResource


  .global ReleaseResource
ReleaseResource:
  e_li   r0,OSServiceId_ReleaseResource  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type ReleaseResource,@function
  .size ReleaseResource,$-ReleaseResource


  .global GetAlarmBase
GetAlarmBase:
  e_li   r0,OSServiceId_GetAlarmBase  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type GetAlarmBase,@function
  .size GetAlarmBase,$-GetAlarmBase


  .global GetAlarm
GetAlarm:
  e_li   r0,OSServiceId_GetAlarm  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type GetAlarm,@function
  .size GetAlarm,$-GetAlarm


  .global SetRelAlarm
SetRelAlarm:
  e_li   r0,OSServiceId_SetRelAlarm  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type SetRelAlarm,@function
  .size SetRelAlarm,$-SetRelAlarm


  .global SetAbsAlarm
SetAbsAlarm:
  e_li   r0,OSServiceId_SetAbsAlarm  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type SetAbsAlarm,@function
  .size SetAbsAlarm,$-SetAbsAlarm


  .global CancelAlarm
CancelAlarm:
  e_li   r0,OSServiceId_CancelAlarm  /* load the service id in r0 */
  /* If HW mode is used, change INTC priority so that we allow only ISR1 pre-emption during service execution */ 
#if(INTC_HW_MODE == YES)
  e_lis   r11,TPL_HIG(INTC_CPR)
  e_or2i  r11,TPL_LOW(INTC_CPR)
  e_li    r12,KERNEL_PRIORITY
  e_stw   r12,0(r11)
#endif 
  se_sc                            /* system call               */
  se_blr                           /* returns                   */
  .type CancelAlarm,@function
  .size CancelAlarm,$-CancelAlarm



#define API_STOP_SEC_CODE
#include "tpl_as_memmap.h"


/* End of file tpl_invoque.s */
