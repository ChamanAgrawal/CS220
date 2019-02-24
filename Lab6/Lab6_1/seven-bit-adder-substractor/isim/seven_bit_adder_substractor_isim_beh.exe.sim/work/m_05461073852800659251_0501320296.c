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
static const char *ng0 = "/home/chaman/git/CS220/Lab6/Lab6_1/seven-bit-adder-substractor/myinput.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static int ng5[] = {3, 0};
static int ng6[] = {6, 0};
static int ng7[] = {4, 0};
static int ng8[] = {2, 0};



static void Initial_43_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(43, ng0);

LAB2:    xsi_set_current_line(44, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3368);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 3528);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 6);

LAB1:    return;
}

static void Always_48_1(char *t0)
{
    char t8[8];
    char t24[8];
    char t38[8];
    char t54[8];
    char t62[8];
    char t104[8];
    char t126[8];
    char t137[8];
    char t138[8];
    char t139[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t127;
    char *t128;
    char *t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t136;
    char *t140;
    char *t141;
    char *t142;
    char *t143;
    char *t144;
    char *t145;
    unsigned int t146;
    int t147;
    char *t148;
    unsigned int t149;
    int t150;
    int t151;
    char *t152;
    unsigned int t153;
    int t154;
    int t155;
    unsigned int t156;
    int t157;
    unsigned int t158;
    unsigned int t159;
    int t160;
    int t161;

LAB0:    t1 = (t0 + 5008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 5576);
    *((int *)t2) = 1;
    t3 = (t0 + 5040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(48, ng0);

LAB5:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 3368);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng3)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    memset(t24, 0, 8);
    t25 = (t8 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t25) != 0)
        goto LAB12;

LAB13:    t32 = (t24 + 4);
    t33 = *((unsigned int *)t24);
    t34 = *((unsigned int *)t32);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB14;

LAB15:    memcpy(t62, t24, 8);

LAB16:    t94 = (t62 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t62);
    t98 = (t97 & t96);
    t99 = (t98 != 0);
    if (t99 > 0)
        goto LAB28;

LAB29:
LAB30:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t24) = 1;
    goto LAB13;

LAB12:    t31 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB13;

LAB14:    t36 = (t0 + 1208U);
    t37 = *((char **)t36);
    t36 = ((char*)((ng4)));
    memset(t38, 0, 8);
    t39 = (t37 + 4);
    t40 = (t36 + 4);
    t41 = *((unsigned int *)t37);
    t42 = *((unsigned int *)t36);
    t43 = (t41 ^ t42);
    t44 = *((unsigned int *)t39);
    t45 = *((unsigned int *)t40);
    t46 = (t44 ^ t45);
    t47 = (t43 | t46);
    t48 = *((unsigned int *)t39);
    t49 = *((unsigned int *)t40);
    t50 = (t48 | t49);
    t51 = (~(t50));
    t52 = (t47 & t51);
    if (t52 != 0)
        goto LAB20;

LAB17:    if (t50 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t38) = 1;

LAB20:    memset(t54, 0, 8);
    t55 = (t38 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t38);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t55) != 0)
        goto LAB23;

LAB24:    t63 = *((unsigned int *)t24);
    t64 = *((unsigned int *)t54);
    t65 = (t63 & t64);
    *((unsigned int *)t62) = t65;
    t66 = (t24 + 4);
    t67 = (t54 + 4);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t66);
    t70 = *((unsigned int *)t67);
    t71 = (t69 | t70);
    *((unsigned int *)t68) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t53 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t54) = 1;
    goto LAB24;

LAB23:    t61 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB24;

LAB25:    t74 = *((unsigned int *)t62);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t62) = (t74 | t75);
    t76 = (t24 + 4);
    t77 = (t54 + 4);
    t78 = *((unsigned int *)t24);
    t79 = (~(t78));
    t80 = *((unsigned int *)t76);
    t81 = (~(t80));
    t82 = *((unsigned int *)t54);
    t83 = (~(t82));
    t84 = *((unsigned int *)t77);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t90 & t88);
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t92 & t88);
    t93 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t93 & t89);
    goto LAB27;

LAB28:    xsi_set_current_line(49, ng0);

LAB31:    xsi_set_current_line(50, ng0);
    t100 = (t0 + 3528);
    t101 = (t100 + 56U);
    t102 = *((char **)t101);
    t103 = ((char*)((ng3)));
    memset(t104, 0, 8);
    t105 = (t102 + 4);
    t106 = (t103 + 4);
    t107 = *((unsigned int *)t102);
    t108 = *((unsigned int *)t103);
    t109 = (t107 ^ t108);
    t110 = *((unsigned int *)t105);
    t111 = *((unsigned int *)t106);
    t112 = (t110 ^ t111);
    t113 = (t109 | t112);
    t114 = *((unsigned int *)t105);
    t115 = *((unsigned int *)t106);
    t116 = (t114 | t115);
    t117 = (~(t116));
    t118 = (t113 & t117);
    if (t118 != 0)
        goto LAB35;

LAB32:    if (t116 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t104) = 1;

LAB35:    t120 = (t104 + 4);
    t121 = *((unsigned int *)t120);
    t122 = (~(t121));
    t123 = *((unsigned int *)t104);
    t124 = (t123 & t122);
    t125 = (t124 != 0);
    if (t125 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB45;

LAB42:    if (t20 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t8) = 1;

LAB45:    t10 = (t8 + 4);
    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng8)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB55;

LAB52:    if (t20 != 0)
        goto LAB54;

LAB53:    *((unsigned int *)t8) = 1;

LAB55:    t10 = (t8 + 4);
    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB65;

LAB62:    if (t20 != 0)
        goto LAB64;

LAB63:    *((unsigned int *)t8) = 1;

LAB65:    t10 = (t8 + 4);
    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB66;

LAB67:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB75;

LAB72:    if (t20 != 0)
        goto LAB74;

LAB73:    *((unsigned int *)t8) = 1;

LAB75:    t10 = (t8 + 4);
    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB76;

LAB77:
LAB78:
LAB68:
LAB58:
LAB48:
LAB38:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 6, t5, 32);
    t6 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 6, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB81;

LAB80:    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB81;

LAB84:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB82;

LAB83:    t10 = (t8 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB85;

LAB86:
LAB87:    goto LAB30;

LAB34:    t119 = (t104 + 4);
    *((unsigned int *)t104) = 1;
    *((unsigned int *)t119) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(50, ng0);

LAB39:    xsi_set_current_line(51, ng0);
    t127 = (t0 + 1368U);
    t128 = *((char **)t127);
    memset(t126, 0, 8);
    t127 = (t126 + 4);
    t129 = (t128 + 4);
    t130 = *((unsigned int *)t128);
    t131 = (t130 >> 0);
    *((unsigned int *)t126) = t131;
    t132 = *((unsigned int *)t129);
    t133 = (t132 >> 0);
    *((unsigned int *)t127) = t133;
    t134 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t134 & 15U);
    t135 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t135 & 15U);
    t136 = (t0 + 3688);
    t140 = (t0 + 3688);
    t141 = (t140 + 72U);
    t142 = *((char **)t141);
    t143 = ((char*)((ng5)));
    t144 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t137, t138, t139, ((int*)(t142)), 2, t143, 32, 1, t144, 32, 1);
    t145 = (t137 + 4);
    t146 = *((unsigned int *)t145);
    t147 = (!(t146));
    t148 = (t138 + 4);
    t149 = *((unsigned int *)t148);
    t150 = (!(t149));
    t151 = (t147 && t150);
    t152 = (t139 + 4);
    t153 = *((unsigned int *)t152);
    t154 = (!(t153));
    t155 = (t151 && t154);
    if (t155 == 1)
        goto LAB40;

LAB41:    goto LAB38;

LAB40:    t156 = *((unsigned int *)t139);
    t157 = (t156 + 0);
    t158 = *((unsigned int *)t137);
    t159 = *((unsigned int *)t138);
    t160 = (t158 - t159);
    t161 = (t160 + 1);
    xsi_vlogvar_wait_assign_value(t136, t126, t157, *((unsigned int *)t138), t161, 0LL);
    goto LAB41;

LAB44:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(53, ng0);

LAB49:    xsi_set_current_line(54, ng0);
    t23 = (t0 + 1368U);
    t25 = *((char **)t23);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t31 = (t25 + 4);
    t33 = *((unsigned int *)t25);
    t34 = (t33 >> 0);
    *((unsigned int *)t24) = t34;
    t35 = *((unsigned int *)t31);
    t41 = (t35 >> 0);
    *((unsigned int *)t23) = t41;
    t42 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t42 & 7U);
    t43 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t43 & 7U);
    t32 = (t0 + 3688);
    t36 = (t0 + 3688);
    t37 = (t36 + 72U);
    t39 = *((char **)t37);
    t40 = ((char*)((ng6)));
    t53 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t38, t54, t62, ((int*)(t39)), 2, t40, 32, 1, t53, 32, 1);
    t55 = (t38 + 4);
    t44 = *((unsigned int *)t55);
    t86 = (!(t44));
    t61 = (t54 + 4);
    t45 = *((unsigned int *)t61);
    t87 = (!(t45));
    t147 = (t86 && t87);
    t66 = (t62 + 4);
    t46 = *((unsigned int *)t66);
    t150 = (!(t46));
    t151 = (t147 && t150);
    if (t151 == 1)
        goto LAB50;

LAB51:    goto LAB48;

LAB50:    t47 = *((unsigned int *)t62);
    t154 = (t47 + 0);
    t48 = *((unsigned int *)t38);
    t49 = *((unsigned int *)t54);
    t155 = (t48 - t49);
    t157 = (t155 + 1);
    xsi_vlogvar_wait_assign_value(t32, t24, t154, *((unsigned int *)t54), t157, 0LL);
    goto LAB51;

LAB54:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB55;

LAB56:    xsi_set_current_line(56, ng0);

LAB59:    xsi_set_current_line(57, ng0);
    t23 = (t0 + 1368U);
    t25 = *((char **)t23);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t31 = (t25 + 4);
    t33 = *((unsigned int *)t25);
    t34 = (t33 >> 0);
    *((unsigned int *)t24) = t34;
    t35 = *((unsigned int *)t31);
    t41 = (t35 >> 0);
    *((unsigned int *)t23) = t41;
    t42 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t42 & 15U);
    t43 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t43 & 15U);
    t32 = (t0 + 3848);
    t36 = (t0 + 3848);
    t37 = (t36 + 72U);
    t39 = *((char **)t37);
    t40 = ((char*)((ng5)));
    t53 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t38, t54, t62, ((int*)(t39)), 2, t40, 32, 1, t53, 32, 1);
    t55 = (t38 + 4);
    t44 = *((unsigned int *)t55);
    t86 = (!(t44));
    t61 = (t54 + 4);
    t45 = *((unsigned int *)t61);
    t87 = (!(t45));
    t147 = (t86 && t87);
    t66 = (t62 + 4);
    t46 = *((unsigned int *)t66);
    t150 = (!(t46));
    t151 = (t147 && t150);
    if (t151 == 1)
        goto LAB60;

LAB61:    goto LAB58;

LAB60:    t47 = *((unsigned int *)t62);
    t154 = (t47 + 0);
    t48 = *((unsigned int *)t38);
    t49 = *((unsigned int *)t54);
    t155 = (t48 - t49);
    t157 = (t155 + 1);
    xsi_vlogvar_wait_assign_value(t32, t24, t154, *((unsigned int *)t54), t157, 0LL);
    goto LAB61;

LAB64:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB65;

LAB66:    xsi_set_current_line(59, ng0);

LAB69:    xsi_set_current_line(60, ng0);
    t23 = (t0 + 1368U);
    t25 = *((char **)t23);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t31 = (t25 + 4);
    t33 = *((unsigned int *)t25);
    t34 = (t33 >> 0);
    *((unsigned int *)t24) = t34;
    t35 = *((unsigned int *)t31);
    t41 = (t35 >> 0);
    *((unsigned int *)t23) = t41;
    t42 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t42 & 7U);
    t43 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t43 & 7U);
    t32 = (t0 + 3848);
    t36 = (t0 + 3848);
    t37 = (t36 + 72U);
    t39 = *((char **)t37);
    t40 = ((char*)((ng6)));
    t53 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t38, t54, t62, ((int*)(t39)), 2, t40, 32, 1, t53, 32, 1);
    t55 = (t38 + 4);
    t44 = *((unsigned int *)t55);
    t86 = (!(t44));
    t61 = (t54 + 4);
    t45 = *((unsigned int *)t61);
    t87 = (!(t45));
    t147 = (t86 && t87);
    t66 = (t62 + 4);
    t46 = *((unsigned int *)t66);
    t150 = (!(t46));
    t151 = (t147 && t150);
    if (t151 == 1)
        goto LAB70;

LAB71:    goto LAB68;

LAB70:    t47 = *((unsigned int *)t62);
    t154 = (t47 + 0);
    t48 = *((unsigned int *)t38);
    t49 = *((unsigned int *)t54);
    t155 = (t48 - t49);
    t157 = (t155 + 1);
    xsi_vlogvar_wait_assign_value(t32, t24, t154, *((unsigned int *)t54), t157, 0LL);
    goto LAB71;

LAB74:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB75;

LAB76:    xsi_set_current_line(62, ng0);

LAB79:    xsi_set_current_line(63, ng0);
    t23 = (t0 + 1368U);
    t25 = *((char **)t23);
    memset(t24, 0, 8);
    t23 = (t24 + 4);
    t31 = (t25 + 4);
    t33 = *((unsigned int *)t25);
    t34 = (t33 >> 0);
    *((unsigned int *)t24) = t34;
    t35 = *((unsigned int *)t31);
    t41 = (t35 >> 0);
    *((unsigned int *)t23) = t41;
    t42 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t42 & 1U);
    t43 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t43 & 1U);
    t32 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t32, t24, 0, 0, 1, 0LL);
    goto LAB78;

LAB81:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB83;

LAB82:    *((unsigned int *)t8) = 1;
    goto LAB83;

LAB85:    xsi_set_current_line(67, ng0);

LAB88:    xsi_set_current_line(68, ng0);
    t23 = ((char*)((ng3)));
    t25 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t25, t23, 0, 0, 6, 0LL);
    goto LAB87;

}

static void Cont_82_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;

LAB0:    t1 = (t0 + 5256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 2648U);
    t4 = *((char **)t2);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 ^ t7);
    *((unsigned int *)t5) = t8;
    t2 = (t3 + 4);
    t9 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB4;

LAB5:
LAB6:    t18 = (t0 + 5672);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memset(t22, 0, 8);
    t23 = 1U;
    t24 = t23;
    t25 = (t5 + 4);
    t26 = *((unsigned int *)t5);
    t23 = (t23 & t26);
    t27 = *((unsigned int *)t25);
    t24 = (t24 & t27);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t29 | t23);
    t30 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t30 | t24);
    xsi_driver_vfirst_trans_delayed(t18, 0, 0, 0LL, 0);
    t31 = (t0 + 5592);
    *((int *)t31) = 1;

LAB1:    return;
LAB4:    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t5) = (t16 | t17);
    goto LAB6;

}


extern void work_m_05461073852800659251_0501320296_init()
{
	static char *pe[] = {(void *)Initial_43_0,(void *)Always_48_1,(void *)Cont_82_2};
	xsi_register_didat("work_m_05461073852800659251_0501320296", "isim/seven_bit_adder_substractor_isim_beh.exe.sim/work/m_05461073852800659251_0501320296.didat");
	xsi_register_executes(pe);
}
