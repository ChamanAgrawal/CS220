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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/media/rishabhbt/DADA/CS220Labs/Lab1_2/full_adder_schematic/myxor.v";



static void Cont_28_0(char *t0)
{
    char t4[8];
    char t22[8];
    char t54[8];
    char t75[8];
    char t106[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    int t98;
    int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    char *t135;
    char *t136;
    char *t137;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    char *t141;
    unsigned int t142;
    unsigned int t143;
    char *t144;
    unsigned int t145;
    unsigned int t146;
    char *t147;

LAB0:    t1 = (t0 + 2520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;

LAB7:    t12 = (t4 + 4);
    t13 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    *((unsigned int *)t4) = t15;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB9;

LAB8:    t20 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t20 & 1U);
    t21 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t21 & 1U);
    t23 = *((unsigned int *)t3);
    t24 = *((unsigned int *)t4);
    t25 = (t23 & t24);
    *((unsigned int *)t22) = t25;
    t26 = (t3 + 4);
    t27 = (t4 + 4);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t26);
    t30 = *((unsigned int *)t27);
    t31 = (t29 | t30);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB10;

LAB11:
LAB12:    t55 = (t0 + 1048U);
    t56 = *((char **)t55);
    memset(t54, 0, 8);
    t55 = (t56 + 4);
    t57 = *((unsigned int *)t55);
    t58 = (~(t57));
    t59 = *((unsigned int *)t56);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB16;

LAB14:    if (*((unsigned int *)t55) == 0)
        goto LAB13;

LAB15:    t62 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t62) = 1;

LAB16:    t63 = (t54 + 4);
    t64 = (t56 + 4);
    t65 = *((unsigned int *)t56);
    t66 = (~(t65));
    *((unsigned int *)t54) = t66;
    *((unsigned int *)t63) = 0;
    if (*((unsigned int *)t64) != 0)
        goto LAB18;

LAB17:    t71 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t71 & 1U);
    t72 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t72 & 1U);
    t73 = (t0 + 1208U);
    t74 = *((char **)t73);
    t76 = *((unsigned int *)t54);
    t77 = *((unsigned int *)t74);
    t78 = (t76 & t77);
    *((unsigned int *)t75) = t78;
    t73 = (t54 + 4);
    t79 = (t74 + 4);
    t80 = (t75 + 4);
    t81 = *((unsigned int *)t73);
    t82 = *((unsigned int *)t79);
    t83 = (t81 | t82);
    *((unsigned int *)t80) = t83;
    t84 = *((unsigned int *)t80);
    t85 = (t84 != 0);
    if (t85 == 1)
        goto LAB19;

LAB20:
LAB21:    t107 = *((unsigned int *)t22);
    t108 = *((unsigned int *)t75);
    t109 = (t107 | t108);
    *((unsigned int *)t106) = t109;
    t110 = (t22 + 4);
    t111 = (t75 + 4);
    t112 = (t106 + 4);
    t113 = *((unsigned int *)t110);
    t114 = *((unsigned int *)t111);
    t115 = (t113 | t114);
    *((unsigned int *)t112) = t115;
    t116 = *((unsigned int *)t112);
    t117 = (t116 != 0);
    if (t117 == 1)
        goto LAB22;

LAB23:
LAB24:    t134 = (t0 + 2920);
    t135 = (t134 + 56U);
    t136 = *((char **)t135);
    t137 = (t136 + 56U);
    t138 = *((char **)t137);
    memset(t138, 0, 8);
    t139 = 1U;
    t140 = t139;
    t141 = (t106 + 4);
    t142 = *((unsigned int *)t106);
    t139 = (t139 & t142);
    t143 = *((unsigned int *)t141);
    t140 = (t140 & t143);
    t144 = (t138 + 4);
    t145 = *((unsigned int *)t138);
    *((unsigned int *)t138) = (t145 | t139);
    t146 = *((unsigned int *)t144);
    *((unsigned int *)t144) = (t146 | t140);
    xsi_driver_vfirst_trans(t134, 0, 0);
    t147 = (t0 + 2840);
    *((int *)t147) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB9:    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t13);
    *((unsigned int *)t4) = (t16 | t17);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t13);
    *((unsigned int *)t12) = (t18 | t19);
    goto LAB8;

LAB10:    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t22) = (t34 | t35);
    t36 = (t3 + 4);
    t37 = (t4 + 4);
    t38 = *((unsigned int *)t3);
    t39 = (~(t38));
    t40 = *((unsigned int *)t36);
    t41 = (~(t40));
    t42 = *((unsigned int *)t4);
    t43 = (~(t42));
    t44 = *((unsigned int *)t37);
    t45 = (~(t44));
    t46 = (t39 & t41);
    t47 = (t43 & t45);
    t48 = (~(t46));
    t49 = (~(t47));
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t51 & t49);
    t52 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t52 & t48);
    t53 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t53 & t49);
    goto LAB12;

LAB13:    *((unsigned int *)t54) = 1;
    goto LAB16;

LAB18:    t67 = *((unsigned int *)t54);
    t68 = *((unsigned int *)t64);
    *((unsigned int *)t54) = (t67 | t68);
    t69 = *((unsigned int *)t63);
    t70 = *((unsigned int *)t64);
    *((unsigned int *)t63) = (t69 | t70);
    goto LAB17;

LAB19:    t86 = *((unsigned int *)t75);
    t87 = *((unsigned int *)t80);
    *((unsigned int *)t75) = (t86 | t87);
    t88 = (t54 + 4);
    t89 = (t74 + 4);
    t90 = *((unsigned int *)t54);
    t91 = (~(t90));
    t92 = *((unsigned int *)t88);
    t93 = (~(t92));
    t94 = *((unsigned int *)t74);
    t95 = (~(t94));
    t96 = *((unsigned int *)t89);
    t97 = (~(t96));
    t98 = (t91 & t93);
    t99 = (t95 & t97);
    t100 = (~(t98));
    t101 = (~(t99));
    t102 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t102 & t100);
    t103 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t103 & t101);
    t104 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t104 & t100);
    t105 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t105 & t101);
    goto LAB21;

LAB22:    t118 = *((unsigned int *)t106);
    t119 = *((unsigned int *)t112);
    *((unsigned int *)t106) = (t118 | t119);
    t120 = (t22 + 4);
    t121 = (t75 + 4);
    t122 = *((unsigned int *)t120);
    t123 = (~(t122));
    t124 = *((unsigned int *)t22);
    t125 = (t124 & t123);
    t126 = *((unsigned int *)t121);
    t127 = (~(t126));
    t128 = *((unsigned int *)t75);
    t129 = (t128 & t127);
    t130 = (~(t125));
    t131 = (~(t129));
    t132 = *((unsigned int *)t112);
    *((unsigned int *)t112) = (t132 & t130);
    t133 = *((unsigned int *)t112);
    *((unsigned int *)t112) = (t133 & t131);
    goto LAB24;

}


extern void work_m_07570606845075393718_3120139530_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("work_m_07570606845075393718_3120139530", "isim/fuller_adder_sch_fuller_adder_sch_sch_tb_isim_beh.exe.sim/work/m_07570606845075393718_3120139530.didat");
	xsi_register_executes(pe);
}
