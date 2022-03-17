contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 10^6
    return code.data[48 len 980]
}



// =====================  Runtime code  =====================


mapping of uint256 isApprovedOnceFor;

function isApprovedOnceFor(address arg1, address arg2) payable {
    return isApprovedOnceFor[address(arg1)][2][address(arg2)]
}

function coinBalanceOf(address arg1) payable {
    return isApprovedOnceFor[address(arg1)]
}

function coinBalance() payable {
    return isApprovedOnceFor[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function disapprove(address arg1) payable {
    isApprovedOnceFor[address(msg.sender)][2][address(arg1)] = 0
}

function isApproved(address arg1) payable {
    return (isApprovedOnceFor[address(msg.sender)][2][address(arg1)] > 0)
}

function approveOnce(address arg1, uint256 arg2) payable {
    isApprovedOnceFor[address(msg.sender)][2][address(arg1)] += arg2
}

function approve(address arg1) payable {
    isApprovedOnceFor[address(msg.sender)][2][address(arg1)] = 0x100000000000000000000000000000000
}

function sendCoin(uint256 arg1, address arg2) payable {
    if isApprovedOnceFor[address(msg.sender)] < arg1:
        return 0
    if arg1 >= 0x100000000000000000000000000000000:
        return 0
    isApprovedOnceFor[address(msg.sender)] -= arg1
    isApprovedOnceFor[arg2] += arg1
    emit CoinSent(arg1, msg.sender, arg2);
    return 1
}

function sendCoinFrom(address arg1, uint256 arg2, address arg3) payable {
    if isApprovedOnceFor[address(arg1)] < arg2:
        return 0
    if isApprovedOnceFor[address(arg1)][2][address(msg.sender)] < arg2:
        return 0
    if arg2 >= 0x100000000000000000000000000000000:
        return 0
    isApprovedOnceFor[address(arg1)][2][address(msg.sender)] -= arg2
    isApprovedOnceFor[address(arg1)] -= arg2
    isApprovedOnceFor[address(arg3)] += arg2
    emit CoinSent(arg2, arg1, arg3);
    return 1
}



}
