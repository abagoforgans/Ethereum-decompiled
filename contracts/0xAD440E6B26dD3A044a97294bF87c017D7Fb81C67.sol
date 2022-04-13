contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1401 len 32]
    return code.data[88 len 1313]
}



// =====================  Runtime code  =====================


#
#  - execute(bytes arg1)
#
address stor0;
uint256 stor1;

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function sub_fea1980e(?) {
    require sha3(arg1) == stor1
    selfdestruct(arg2)
}

function _fallback() payable {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function setowner(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function sub_43cb5409(?) {
    require sha3(arg1) == stor1
    require arg2 != stor1
    stor1 = arg2
    stor0 = msg.sender
}

function withdraw(uint256 arg1) {
    require stor0 == msg.sender
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_b59b1fa4(?) {
    require stor0 == msg.sender
    require eth.balance(this.address) >= arg2
    require ext_code.size(arg1)
    call arg1.deposit() with:
       value arg2 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}



}
