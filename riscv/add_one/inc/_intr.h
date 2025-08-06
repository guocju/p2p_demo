// +FHDR------------------------------------------------------------------------
// Copyright ownership belongs to CAG laboratory, Institute of Artificial
// Intelligence and Robotics, Xi'an Jiaotong University, shall not be used in
// commercial ways without permission.
// -----------------------------------------------------------------------------
// FILE NAME  : _intr.h
// DEPARTMENT : CAG of IAIR
// AUTHOR     : XXXX
// AUTHOR'S EMAIL :XXXX@mail.xjtu.edu.cn
// -----------------------------------------------------------------------------
// Ver 1.0  2019--01--01 initial version.
// -----------------------------------------------------------------------------

#ifndef _INTR_H
#define _INTR_H

#ifdef __cplusplus
extern "C" {
#endif

extern int start_calc;

void set_single_intr(int offset);
void clr_single_intr(int offset);

void enable_intr(void);
void disable_intr(void);

#ifdef __cplusplus
}
#endif

#endif
