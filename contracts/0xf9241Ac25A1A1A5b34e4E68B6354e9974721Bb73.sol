contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 0x315cee89e72383a0367842e2826f9c216a68d5c
    stor2 = 0x24b555a90db8064c1ae72278ecd23f246fecd2fa
    stor3 = 0x6869830563265fe6494a03b83780a5cd02f8ca46
    stor4 = 0xdcccaa3e9d352ce8909a70f189052a697d32ab3b
    stor5 = 0x8e9bf6632f6bf221d3ee12ffef19227ee06b25b8
    stor6 = 5
    require not msg.value
    stor0 = msg.sender
    return code.data[525 len 968]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 sub_784f7a93;

function sub_784f7a93(?) {
    return sub_784f7a93
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() {
    revert
}

function sub_e9b22d1c(?) payable {
    require msg.value > 0
    require sub_784f7a93
    call stor1 with:
       value msg.value / sub_784f7a93 wei
         gas 2300 * is_zero(value) wei
    call stor2 with:
       value msg.value / sub_784f7a93 wei
         gas 2300 * is_zero(value) wei
    call stor3 with:
       value msg.value / sub_784f7a93 wei
         gas 2300 * is_zero(value) wei
    call stor4 with:
       value msg.value / sub_784f7a93 wei
         gas 2300 * is_zero(value) wei
    call stor5 with:
       value msg.value / sub_784f7a93 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}
