# Assembly Registers

**Table of Contents**
- [General-Purpose Registers](#general-purpose-registers)
- [Special-Purpose Registers](#special-purpose-registers)
- [SIMD Registers](#simd-registers-streaming-simd-extensions)
- [Segment Registers](#segment-registers)

This is not an exhaustive list of registers, but it covers the commonly used ones in NASM. Consult the NASM documentation and specific CPU manuals for more details on register usage and specific instructions.

## General-Purpose Registers

| 64-bit | 32-bit | 16-bit | 8-bit low | 8-bit high | Use in calling convention | Callee-saved?  |
|--------|--------|--------|-----------|------------|---------------------------|----------------|
| rax    | eax    | ax     | al        | ah         | Return value (accumulator)| No             |
| rbx    | ebx    | bx     | bl        | bh         |                           | Yes            |
| rcx    | ecx    | cx     | cl        | ch         | 4th function argument     | No             |
| rdx    | edx    | dx     | dl        | dh         | 3rd function argument     | No             |
| rsi    | esi    | si     | sil       |            | 2nd function argument     | No             |
| rdi    | edi    | di     | dil       |            | 1st function argument     | No             |
| r8     | r8d    | r8w    | r8b       |            | 5th function argument     | No             |
| r9     | r9d    | r9w    | r9b       |            | 6th function argument     | No             |
| r10    | r10d   | r10w   | r10b      |            |                           | No             |
| r11    | r11d   | r11w   | r11b      |            |                           | No             |
| r12    | r12d   | r12w   | r12b      |            |                           | Yes            |
| r13    | r13d   | r13w   | r13b      |            |                           | Yes            |
| r14    | r14d   | r14w   | r14b      |            |                           | Yes            |
| r15    | r15d   | r15w   | r15b      |            |                           | Yes            |

## Special-Purpose Registers

| 64-bit | 32-bit | 16-bit | 8-bit low | 8-bit high | Description                  |
|--------|--------|--------|-----------|------------|------------------------------|
| rsp    | esp    | sp     | spl       |            | Stack pointer                |
| rbp    | ebp    | bp     | bpl       |            | Base pointer                 |
| rip    | eip    | ip     |           |            | Instruction pointer          |
| rflags | eflags | flags  |           |            | Flags and condition codes    |

## SIMD Registers (Streaming SIMD Extensions)

SIMD (Streaming SIMD Extensions) registers are used for SIMD (Single Instruction, Multiple Data) operations, which allow parallel processing of multiple data elements.

| Register   | Description                  |
|------------|------------------------------|
| xmm0-xmm15 | Registers for SIMD operations |

# Segment Registers

NASM utilizes segment registers as special-purpose registers for managing memory segments. These registers contain base addresses and other information about memory segments. The following table provides an overview of the commonly used segment registers:


| Register | Register Name             | Description                               |
|----------|--------------------------|-------------------------------------------|
| **cs**   | Code Segment Register     | Stores the segment selector for the code segment. It is used for instructions execution.                  |
| **ds**   | Data Segment Register     | Stores the segment selector for the data segment. It is used for accessing data in the program.              |
| **es**   | Extra Segment Register    | Stores the segment selector for an additional data segment. It provides an extra memory segment for data storage. |
| **fs**   | Additional Segment Register | Stores the segment selector for an additional data segment. It is typically used for system-specific purposes. |
| **gs**   | Additional Segment Register | Stores the segment selector for an additional data segment. It is typically used for system-specific purposes. |
| **ss**   | Stack Segment Register    | Stores the segment selector for the stack segment. It is used for managing the program stack.                      |

# Flags

Flags are special registers that contain information about the status and result of operations. They are used to determine conditional branching and control flow in assembly programming. Here are some commonly used flags in NASM:

| Flag  | Flag Name         | Description                              |
|-------|------------------|------------------------------------------|
| CF    | Carry Flag        | Set when an arithmetic carry or borrow occurs during arithmetic operations. Used for unsigned arithmetic and logical operations. |
| PF    | Parity Flag       | Set if the least significant byte of the result contains an even number of 1 bits. Used for parity checks. |
| AF    | Auxiliary Carry Flag | Set when a carry or borrow occurs between the lower and higher nibbles (4-bit units) during arithmetic operations. Used for binary-coded decimal (BCD) arithmetic. |
| ZF    | Zero Flag         | Set when the result of an operation is zero. Used for comparisons and conditional checks. |
| SF    | Sign Flag         | Set when the result of a signed operation is negative. Used for signed arithmetic and comparisons. |
| OF    | Overflow Flag     | Set when a signed operation produces a result too large or too small to be represented in the destination operand. Used for signed arithmetic. |
| DF    | Direction Flag    | Determines the direction of string operations. When set, the string operations decrement the address registers. |
| IF    | Interrupt Enable Flag | Controls the response to maskable hardware interrupts. When set, interrupts are enabled. |
| TF    | Trap Flag         | Controls the operation of the processor's single-step mode for debugging. When set, each instruction is executed one at a time, allowing for debugging and tracing. |
