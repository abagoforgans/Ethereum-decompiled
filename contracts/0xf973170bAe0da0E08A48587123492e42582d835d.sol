contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() {
    stor1 = code.data[657 len 32]
    return code.data[61 len 596]
}



// =====================  Runtime code  =====================


mapping of address stor0;
uint256 endDate;

function isReturnRequested(address arg1) {
    return bool(stor0[address(arg1)])
}

function endDate() {
    return endDate
}

function _fallback() payable {
    revert
}

function getReturnAddress(address arg1) {
    if stor0[address(arg1)]:
        return stor0[address(arg1)]
    return arg1
}

function requestReturn(address arg1) {
    require block.timestamp <= endDate
    require not stor0[address(msg.sender)]
    stor0[address(msg.sender)] = arg1
    emit ReturnRequested(msg.sender, arg1);
}



}
