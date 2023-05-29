# Calling Conventions

Calling conventions define the rules and guidelines for how functions are called and how arguments are passed between the calling function and the called function. Different programming languages and architectures have their own calling conventions. Understanding calling conventions is crucial for interoperability and writing assembly code that correctly interacts with higher-level language code.

## Table of Contents
- [Overview](#overview)
- [Register Usage](#register-usage)
- [Argument Passing](#argument-passing)
- [Return Values](#return-values)
- [Stack Usage](#stack-usage)
- [Callee-Saved and Caller-Saved Registers](#callee-saved-and-caller-saved-registers)
- [Example: x64 Calling Convention](#example-x64-calling-convention)

## Overview

Calling conventions encompass various aspects of function calls, including register usage, argument passing, return values, and stack usage. These conventions ensure that functions can be called and return safely and consistently.

## Register Usage

Calling conventions define which registers are used for specific purposes, such as holding function arguments, return values, or preserving caller-saved registers. Registers are typically categorized as general-purpose registers, floating-point registers, or vector registers (for SIMD operations).

## Argument Passing

Argument passing specifies how function arguments are passed from the calling function to the called function. This includes the order of arguments, their storage locations (registers or stack), and any alignment requirements.

## Return Values

The return value convention specifies how function return values are handled. This includes the register(s) used for returning values and any restrictions on the size or type of the returned value.

## Stack Usage

The stack is often used to store local variables, function call information, and preserved registers. Calling conventions define how the stack is managed, such as the direction it grows, how the stack frame is set up, and how parameters are pushed onto the stack.

## Callee-Saved and Caller-Saved Registers

Callee-saved registers are registers that a called function must preserve and restore before returning. Caller-saved registers, on the other hand, can be freely modified by the called function without preserving their original values.

## Example: x64 Calling Convention

The x64 calling convention is commonly used for 64-bit systems. It utilizes registers like RAX, RBX, RCX, RDX, RSI, RDI, RBP, RSP, R8-R11, and XMM0-XMM15 for argument passing, return values, and temporary storage. It also specifies stack usage and preservation of certain registers.

> Note: Calling conventions can vary between architectures, operating systems, and programming languages. It's important to consult the documentation or specifications for the specific calling convention you are working with.

