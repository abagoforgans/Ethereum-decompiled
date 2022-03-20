contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 405]




// =====================  Runtime code  =====================


mapping of struct myLockedFundsReleaseTime;

function getMyLockedFundsReleaseTime() payable {
    return myLockedFundsReleaseTime[address(msg.sender)].field_256
}

function getMyLockedFunds() payable {
    return myLockedFundsReleaseTime[address(msg.sender)].field_0
}

function _fallback() payable {
  stop
}

function payOut() payable {
    if stor[sha3(mem[0 len 64])] != 0:
        if myLockedFundsReleaseTime[address(msg.sender)].field_256 < block.timestamp:
            call msg.sender with:
               value myLockedFundsReleaseTime[address(msg.sender)].field_0 wei
                 gas 0 wei
    return 1
}

function payIn(uint256 arg1) payable {
    if myLockedFundsReleaseTime[address(msg.sender)].field_0 != 0:
        if myLockedFundsReleaseTime[address(msg.sender)].field_0 != 0:
            if myLockedFundsReleaseTime[address(msg.sender)].field_256 < block.timestamp:
                call msg.sender with:
                   value myLockedFundsReleaseTime[address(msg.sender)].field_0 wei
                     gas 0 wei
    myLockedFundsReleaseTime[address(msg.sender)].field_0 = msg.value
    myLockedFundsReleaseTime[address(msg.sender)].field_256 = arg1 + block.timestamp
    return 1
}



}
