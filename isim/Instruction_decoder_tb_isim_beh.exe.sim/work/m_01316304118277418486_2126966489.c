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
static const char *ng0 = "/home/agoody77/school/microprocarch/RISC/RISC/Instruction_decoder_tb.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {67108864U, 0U};
static unsigned int ng5[] = {167772160U, 0U};
static unsigned int ng6[] = {3388997632U, 0U};
static unsigned int ng7[] = {268435456U, 0U};
static unsigned int ng8[] = {335544320U, 0U};
static unsigned int ng9[] = {402653184U, 0U};
static unsigned int ng10[] = {33554432U, 0U};
static unsigned int ng11[] = {1107296256U, 0U};
static unsigned int ng12[] = {1140850688U, 0U};
static unsigned int ng13[] = {1241513984U, 0U};
static unsigned int ng14[] = {1543503872U, 0U};
static unsigned int ng15[] = {1342177280U, 0U};
static unsigned int ng16[] = {1409286144U, 0U};
static unsigned int ng17[] = {1476395008U, 0U};
static unsigned int ng18[] = {3288334336U, 0U};
static unsigned int ng19[] = {2315255808U, 0U};
static unsigned int ng20[] = {2147483648U, 0U};
static unsigned int ng21[] = {1610612736U, 0U};
static unsigned int ng22[] = {1644167168U, 0U};
static unsigned int ng23[] = {3254779904U, 0U};
static unsigned int ng24[] = {1073741824U, 0U};
static unsigned int ng25[] = {3221225472U, 0U};
static unsigned int ng26[] = {2281701376U, 0U};
static unsigned int ng27[] = {234881024U, 0U};



static void Initial_59_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 7680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);

LAB4:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 6608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 6608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(98, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(102, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB26:    xsi_set_current_line(104, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB27:    xsi_set_current_line(106, ng0);
    t3 = ((char*)((ng23)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB28:    xsi_set_current_line(108, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB29:    xsi_set_current_line(110, ng0);
    t3 = ((char*)((ng25)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB30:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 7488);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB31:    xsi_set_current_line(114, ng0);
    t3 = ((char*)((ng27)));
    t4 = (t0 + 6768);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    goto LAB1;

}


extern void work_m_01316304118277418486_2126966489_init()
{
	static char *pe[] = {(void *)Initial_59_0};
	xsi_register_didat("work_m_01316304118277418486_2126966489", "isim/Instruction_decoder_tb_isim_beh.exe.sim/work/m_01316304118277418486_2126966489.didat");
	xsi_register_executes(pe);
}
