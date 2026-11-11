#include "SLBL_System.hpp"
#include "Use_TMR1.hpp"
#include "Fast_Telemetry.hpp"

Use_TMR1::Use_TMR1():cycle_cnt(0),tmr_cnt(0){
    TMR1_CallbackRegister(this->Use_TMR1_Callback,0);
    TMR1_Start();
}

void Use_TMR1::Use_TMR1_Callback(uint32_t status, uintptr_t context){
    (void)status;
    (void)context;
    static uint16_t log_divider = 0;
    const uint32_t timer_period = (uint32_t)TMR1_PeriodGet() + 1U;
    const uint32_t log_rate = SLBL_System::FOC_Elapsed_Ms < 1500U ? 50U : 5U;
    const uint32_t log_ticks = TMR1_FrequencyGet() / timer_period / log_rate;
    if(++log_divider < (log_ticks > 0U ? log_ticks : 1U)) return;
    log_divider = 0;
    const uint32_t begin_tick = _CP0_GET_COUNT();
    static uint32_t last_log_us = 0;
    char buffer[126];
    Fast_Telemetry log(buffer, sizeof(buffer));
    log.Text("st="); log.Unsigned(SLBL_System::FOC_State);
    log.Text(",flt="); log.Unsigned(SLBL_System::FOC_Fault);
    log.Text(",hz="); log.Fixed3(SLBL_System::FOC_Speed_Hz);
    if(SLBL_System::FOC_State == sensorless_foc::Starting){
        log.Text(",emag="); log.Fixed3(SLBL_System::Bemf_Amplitude_Get());
        log.Text(",pe="); log.Fixed3(SLBL_System::FOC_Phase_Error);
        log.Text(",sp="); log.Fixed3(SLBL_System::FOC_Startup_Phase_Error);
    }else{
        log.Text(",ref="); log.Fixed3(SLBL_System::FOC_Target_Hz);
        log.Text(",id="); log.Fixed3(SLBL_System::FOC_Id);
        log.Text(",iq="); log.Fixed3(SLBL_System::FOC_Iq);
        log.Text(",iqr="); log.Fixed3(SLBL_System::FOC_Iq_Ref);
        log.Text(",v="); log.Fixed3(SLBL_System::FOC_Voltage);
        log.Text(",sat="); log.Unsigned(SLBL_System::FOC_Voltage >
            0.98f * sensorless_foc::VoltageCeiling(SLBL_System::FOC_Target_Hz));
    }
    log.Text(",fs="); log.Unsigned((uint32_t)(SLBL_System::FOC_Sample_Hz + 0.5f));
    log.Text(",lu="); log.Unsigned(last_log_us);
    log.Text(",ms="); log.Unsigned(SLBL_System::FOC_Elapsed_Ms);
    log.Text(",t50="); log.Unsigned(SLBL_System::FOC_Target_Time_Ms);
    log.Text(",cl="); log.Unsigned(SLBL_System::FOC_ClosedLoop_Time_Ms);
    log.Text("\n");
    if(log.Size()) UART1_Write((uint8_t*)buffer, log.Size());
    last_log_us = (uint32_t)(_CP0_GET_COUNT() - begin_tick) / 60U;
}
