// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcounter_4bit.h for the primary calling header

#include "Vcounter_4bit.h"
#include "Vcounter_4bit__Syms.h"

//==========

VL_CTOR_IMP(Vcounter_4bit) {
    Vcounter_4bit__Syms* __restrict vlSymsp = __VlSymsp = new Vcounter_4bit__Syms(this, name());
    Vcounter_4bit* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vcounter_4bit::__Vconfigure(Vcounter_4bit__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

Vcounter_4bit::~Vcounter_4bit() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

void Vcounter_4bit::_eval_initial(Vcounter_4bit__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcounter_4bit::_eval_initial\n"); );
    Vcounter_4bit* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->__Vclklast__TOP__reset_n = vlTOPp->reset_n;
}

void Vcounter_4bit::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcounter_4bit::final\n"); );
    // Variables
    Vcounter_4bit__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vcounter_4bit* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vcounter_4bit::_eval_settle(Vcounter_4bit__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcounter_4bit::_eval_settle\n"); );
    Vcounter_4bit* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vcounter_4bit::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcounter_4bit::_ctor_var_reset\n"); );
    // Body
    clk = VL_RAND_RESET_I(1);
    reset_n = VL_RAND_RESET_I(1);
    en = VL_RAND_RESET_I(1);
    cnt = VL_RAND_RESET_I(4);
}
