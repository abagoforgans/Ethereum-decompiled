contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor0 = msg.sender
    stor5 = code.data[1178 len 20]
    stor1 = code.data[1198 len 32]
    stor2 = 168 * 24 * 3600
    stor3 = block.timestamp + (168 * 24 * 3600)
    return code.data[149 len 1017]
}



// =====================  Runtime code  =====================


address owner;
uint256 limit;
uint256 cycleTime;
uint256 sub_21496c72;
uint256 sub_3cce1a28;
address sub_a8940c8fAddress;

function sub_21496c72(?) {
    return sub_21496c72
}

function sub_3cce1a28(?) {
    return sub_3cce1a28
}

function owner() {
    return owner
}

function limit() {
    return limit
}

function sub_a8940c8f(?) {
    return sub_a8940c8fAddress
}

function cycleTime() {
    return cycleTime
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) {
    return (owner == arg1)
}

function transfer(address arg1) {
    if owner == msg.sender:
        owner = arg1
}

function setLimit(uint256 arg1) {
    if sub_a8940c8fAddress == msg.sender:
        limit = arg1
}

function setTimelock(uint256 arg1) {
    if sub_a8940c8fAddress == msg.sender:
        cycleTime = arg1
}

function emergencyWithdraw() {
    if sub_a8940c8fAddress != msg.sender:
    call sub_a8940c8fAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    if owner != msg.sender:
    if block.timestamp > sub_21496c72:
        sub_21496c72 = block.timestamp + cycleTime
        sub_3cce1a28 = 0
    if arg1 > limit - sub_3cce1a28:
    if limit < sub_3cce1a28:
    sub_3cce1a28 += arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
