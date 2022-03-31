contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0x9a2e9235f7a7ac7b899e5f3208fbb13c6985171a
    require not msg.value
    stor2 = stor1
    return code.data[279 len 1381]
}



// =====================  Runtime code  =====================


address owner;
address targetAddr;
address stor2;

function targetAddr() {
    return targetAddr
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function newTarget(address arg1) {
    require msg.sender == owner
    targetAddr = arg1
    stor2 = targetAddr
}

function cashOut() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_c1bb2493(?) payable {
    require ext_code.size(stor2)
    call stor2.endOfDay() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if block.timestamp > ext_call.return_data[0]:
        require ext_code.size(stor2)
        call stor2.highestBid() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        call stor2 with:
           value ext_call.return_data[0] + 55370880 wei
             gas gas_remaining - 34050 wei
        require eth.balance(this.address) >= eth.balance(this.address)
}



}
