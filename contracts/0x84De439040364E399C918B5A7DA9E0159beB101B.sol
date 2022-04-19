contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 1479]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
mapping of uint256 stor3;
uint256 stor4;

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_eeded6b4(?) {
    emit 0x6cb169fd: arg1
}

function setOwner(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function setOracle(address arg1) {
    require stor0 == msg.sender
    stor1 = arg1
}

function executeOrder(uint256 arg1, uint256 arg2) {
    require stor1 == msg.sender
    emit 0x960d5a33: arg1, arg2
}

function closePosition(uint256 arg1, uint256 arg2) {
    require stor1 == msg.sender
    emit 0x193146e0: arg1, arg2
}

function sub_ba2255f4(?) payable {
    require msg.value
    emit 0x55f7a11d: stor2, arg1
    stor2++
    return stor2
}

function updatePosition(uint256 arg1, uint256 arg2, uint256 arg3) {
    require stor1 == msg.sender
    emit 0x2db33a48: arg1, arg2, arg3
}

function payout(address arg1, uint256 arg2) {
    require stor1 == msg.sender
    require arg2 + stor3[address(arg1)] >= stor3[address(arg1)]
    stor3[address(arg1)] += arg2
    require arg2 + stor4 >= stor4
    stor4 += arg2
}

function withdrawPayments() {
    require stor3[address(msg.sender)]
    require eth.balance(this.address) >= stor3[address(msg.sender)]
    require stor3[address(msg.sender)] <= stor4
    stor4 -= stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    call msg.sender with:
       value stor3[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
