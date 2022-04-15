contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor1 = 18
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[1744 len 32]
    stor3 = code.data[1744 len 32]
    stor4 = code.data[1776 len 32]
    stor5 = code.data[1820 len 20]
    stor6 = block.number
    stor7 = code.data[1840 len 32]
    return code.data[165 len 1579]
}



// =====================  Runtime code  =====================


address owner;
uint256 decimals;
uint256 initialSupply;
uint256 remainingSupply;
uint256 tokenValue;
address updaterAddress;
uint256 startBlock;
uint256 endTime;

function tokenValue() {
    return tokenValue
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function initialSupply() {
    return initialSupply
}

function startBlock() {
    return startBlock
}

function owner() {
    return owner
}

function remainingSupply() {
    return remainingSupply
}

function updater() {
    return updaterAddress
}

function updateEndTime(uint256 arg1) {
    require owner == msg.sender
    endTime = arg1
}

function updateUpdater(address arg1) {
    require owner == msg.sender
    updaterAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function updateValue(uint256 arg1) {
    if updaterAddress != msg.sender:
        require owner == msg.sender
    tokenValue = arg1
    emit UpdateValue(arg1);
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(arg2, arg1);
}

function _fallback() payable {
    require block.timestamp < endTime
    require remainingSupply > 0
    if msg.value:
        require msg.value
        require 10^decimals * msg.value / msg.value == 10^decimals
    require tokenValue
    if remainingSupply < 10^decimals * msg.value / tokenValue:
        emit AssignToken(remainingSupply, msg.sender);
        remainingSupply = 0
    else:
        emit AssignToken((10^decimals * msg.value / tokenValue), msg.sender);
        require 10^decimals * msg.value / tokenValue <= remainingSupply
        remainingSupply -= 10^decimals * msg.value / tokenValue
}



}
