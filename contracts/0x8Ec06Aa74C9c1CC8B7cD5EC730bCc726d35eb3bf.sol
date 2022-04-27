contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor4;

function _fallback() {
    stor0 = msg.sender
    stor2 = 0x814f67fa286f7572b041d041b1d99b432c9155ee
    stor4 = block.timestamp + (2160 * 24 * 3600)
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[320 len 2293]
}



// =====================  Runtime code  =====================


address owner;
address dataentryclerkAddress;
address tokenrewardAddress;
mapping of uint256 dragonBalance;
uint256 timeLock;

function dataentryclerk() {
    return dataentryclerkAddress
}

function dragonBalance(address arg1) {
    return dragonBalance[arg1]
}

function owner() {
    return owner
}

function tokenreward() {
    return tokenrewardAddress
}

function TimeLock() {
    return timeLock
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function transferDataEntryClerk(address arg1) {
    require msg.sender == owner
    require arg1
    dataentryclerkAddress = arg1
}

function resetDragonBalance(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    dragonBalance[address(arg1)] = 0
}

function creditDragon(address arg1, uint256 arg2) {
    require msg.sender == dataentryclerkAddress
    require arg1
    require dragonBalance[address(arg1)] + arg2 >= dragonBalance[address(arg1)]
    dragonBalance[address(arg1)] += arg2
}

function withdrawDragons() {
    require block.timestamp > timeLock
    dragonBalance[address(msg.sender)] = 0
    require ext_code.size(tokenrewardAddress)
    call tokenrewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, dragonBalance[address(msg.sender)]
    require ext_call.success
}



}
