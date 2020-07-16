// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vblinking.h for the primary calling header

#include "Vblinking.h"
#include "Vblinking__Syms.h"

//==========

VL_CTOR_IMP(Vblinking) {
    Vblinking__Syms* __restrict vlSymsp = __VlSymsp = new Vblinking__Syms(this, name());
    Vblinking* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vblinking::__Vconfigure(Vblinking__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

Vblinking::~Vblinking() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

void Vblinking::_initial__TOP__2(Vblinking__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vblinking::_initial__TOP__2\n"); );
    Vblinking* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->blinking__DOT__counter = 0U;
    vlTOPp->blinking__DOT__LED_status = 0U;
}

void Vblinking::_settle__TOP__3(Vblinking__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vblinking::_settle__TOP__3\n"); );
    Vblinking* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->LED = vlTOPp->blinking__DOT__LED_status;
}

void Vblinking::_eval_initial(Vblinking__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vblinking::_eval_initial\n"); );
    Vblinking* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__clk = vlTOPp->clk;
    vlTOPp->_initial__TOP__2(vlSymsp);
}

void Vblinking::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vblinking::final\n"); );
    // Variables
    Vblinking__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vblinking* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vblinking::_eval_settle(Vblinking__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vblinking::_eval_settle\n"); );
    Vblinking* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__3(vlSymsp);
}

void Vblinking::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vblinking::_ctor_var_reset\n"); );
    // Body
    clk = VL_RAND_RESET_I(1);
    LED = VL_RAND_RESET_I(1);
    blinking__DOT__counter = VL_RAND_RESET_I(32);
    blinking__DOT__LED_status = VL_RAND_RESET_I(1);
}
