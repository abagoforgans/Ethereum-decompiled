contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0x918453d249a22b6a8535c81e21f7530cd6ab59f1
    require not msg.value
    return code.data[178 len 750]
}



// =====================  Runtime code  =====================


address stor0;
address targetAddr;

function targetAddr() {
    return targetAddr
}

function newTarget(address arg1) {
    require msg.sender == stor0
    targetAddr = arg1
}

function _fallback() payable {
    call targetAddr with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function cashOut() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_d642498e(?) payable {
    call targetAddr with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}



}
