contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0x78b058ccda93816487c655367dcb79664a216ad2
    require not msg.value
    return code.data[178 len 797]
}



// =====================  Runtime code  =====================


address stor0;
address targetAddr;

function targetAddr() {
    return targetAddr
}

function _fallback() payable {
  stop
}

function newTarget(address arg1) {
    require msg.sender == stor0
    targetAddr = arg1
}

function cashOut() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_c1bb2493(?) payable {
    call targetAddr with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require eth.balance(this.address) >= eth.balance(this.address)
}



}
