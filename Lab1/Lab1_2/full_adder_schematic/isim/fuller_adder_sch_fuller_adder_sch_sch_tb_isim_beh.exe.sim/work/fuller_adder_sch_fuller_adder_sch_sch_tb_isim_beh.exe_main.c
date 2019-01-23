/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_07570606845075393718_3120139530_init();
    unisims_ver_m_15469197826776211918_2316096324_init();
    unisims_ver_m_03261540892355984254_1323117156_init();
    work_m_17991081906117772952_2800126065_init();
    work_m_13942576410517375064_2253728531_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_13942576410517375064_2253728531");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
