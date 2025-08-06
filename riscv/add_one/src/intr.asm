# +FHDR------------------------------------------------------------------------
# Copyright ownership belongs to CAG laboratory, Institute of Artificial
# Intelligence and Robotics, Xi'an Jiaotong University, shall not be used in
# commercial ways without permission.
# -----------------------------------------------------------------------------
# FILE NAME  : _intr.s
# DEPARTMENT : CAG of IAIR
# AUTHOR     : XXXX
# AUTHOR'S EMAIL :XXXX@mail.xjtu.edu.cn
# -----------------------------------------------------------------------------
# Ver 1.0  2019--01--01 initial version.
# -----------------------------------------------------------------------------

# .include "./src/custom_ops.S"

.globl start_calc
.globl _start
.globl set_single_intr
.globl clr_single_intr
.globl enable_intr
.globl disable_intr
.weak main

.include "./inc/memory_map.inc"

.section .data
.align 2
start_calc:     .word 0                 # int start_calc = 0;

# Interrupt vector table
.section .text.init
.align 2
_intr_vector_entry:
    j _start                            # User-mode software interrupt entry
    mret                                # Supervisor-mode software interrupt entry
    mret                                # Reserved-mode software interrupt entry
    mret                                # Machine-mode software interrupt entry

    mret                                # User-mode timer interrupt entry
    mret                                # Supervisor-mode timer interrupt entry
    mret                                # Reserved-mode timer interrupt entry
    mret                                # Machine-mode tiemr interrupt entry

    mret                                # User-mode external interrupt entry
    mret                                # Supervisor-mode external interrupt entry
    mret                                # Reserved-mode external interrupt entry
    j me_intr_entry                     # Machine-mode external interrrupt entry

    j c1_intr_entry                     # Customized external interrupt entry1
    mret                                # Customized external interrupt entry2
    mret                                # Customized external interrupt entry3
    mret                                # Customized external interrupt entry4
    mret                                # Customized external interrupt entry5
    mret                                # Customized external interrupt entry6
    mret                                # Customized external interrupt entry7

init_intr:
    addi sp, sp, -16                    # Allocate the stack frame
    sw ra, 4(sp)                        # Save return address of caller onto the stack frame

    li t0, STACK_BASE_ADDR              # Set interrupt stack space.
    csrrw zero, mscratch, t0
    li t0, 0x0800                       # Set CSR mie reg: set MEIP as 'b1, set Custom 1 as 'b0.
    csrrw zero, mie, t0
    li t0, 0x1                          # Set CSR mtvec reg: set interrupt mode as vectored.
    csrrw zero, mtvec, t0
    li t0, 0x1800                       # Set CSR mstatus reg: set MIE as 'b0, set MPP as 'h3.
    csrrw zero, mstatus, t0

    lw ra, 4(sp)
    addi sp, sp, 16                     # Deallocate the stack frame
    ret

set_single_intr:
    li t0, 1                            # Set initial value 0x1
    sll t1, t0, a0                      # Shift 0x1 to generate set value.
    csrrs zero, mie, t1                 # Set indicated interrupt enable bit as 'b1.
    ret

clr_single_intr:
    li t0, 1                            # Set initial value 0x1
    sll t1, t0, a0                      # Shift 0x1 to generate set value.
    csrrc zero, mie, t1                 # Set indicated interrupt enable bit as 'b1.
    ret

enable_intr:
    li t0, 0x0f                         # Set initial value 0xff
    csrrs zero, mstatus, t0             # Set M(S,U)IE as 1'b1
    ret

disable_intr:
    li t0, 0x0f                         # Set initial value 0xff
    csrrc zero, mstatus, t0             # Clear M(S,U)IE as 1'b1
    ret

# code section
.section .text
.balign 512
_start:                                 # Power on & reset vector
    li a0, 0x233                        # Mark the RV status register as 0x233
    sw a0, 20(zero)
    li sp, STACK_BASE_ADDR              # Set stack base address
    call init_intr                      # Initialize the interrupt registers
    call main                           # Jump to main function

# Interrupt service code
me_intr_entry:
    csrrw a0, mscratch, a0              # Save a0 to temporal reg.
    sw t0, 4(a0)                        # Protect t0
    sw t1, 8(a0)                        # Protect t1

    li t0, 1
    la t1, start_calc
    sw t0, 0(t1)                        # Set globle variable start_calc as 1.

    # Restore environment
    lw t0, 4(a0)                        # Restore t0
    lw t1, 8(a0)                        # Restore t1
    csrrw a0, mscratch, a0              # Restore a0
    mret

c1_intr_entry:
    csrrw a0, mscratch, a0              # Save a0 to temporal reg.
    sw t0, 4(a0)                        # Protect t0
    sw t1, 8(a0)                        # Protect t1

    # clear interrupt signal
    # li t0, 4
    # li t1, DPU_REGMGR
    # sw t0, 0(t1)

    # Restore environment
    lw t0, 4(a0)                        # Restore t0
    lw t1, 8(a0)                        # Restore t1
    csrrw a0, mscratch, a0              # Restore a0
    mret
