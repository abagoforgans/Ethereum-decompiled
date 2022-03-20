contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 412]




// =====================  Runtime code  =====================


const getNow = block.timestamp


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
    if myLockedFundsReleaseTime[address(msg.sender)].field_0:
        if myLockedFundsReleaseTime[address(msg.sender)].field_256 < block.timestamp:
            call msg.sender with:
               value myLockedFundsReleaseTime[address(msg.sender)].field_0 wei
                 gas 0 wei
            myLockedFundsReleaseTime[address(msg.sender)].field_0 = 0
            myLockedFundsReleaseTime[address(msg.sender)].field_256 = 0
}

function payIn(uint256 arg1) payable {
    if not myLockedFundsReleaseTime[address(msg.sender)].field_0:
        if myLockedFundsReleaseTime[address(msg.sender)].field_0 > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            myLockedFundsReleaseTime[address(msg.sender)].field_0 = msg.value
            myLockedFundsReleaseTime[address(msg.sender)].field_256 = arg1 + block.timestamp
    else:
        if myLockedFundsReleaseTime[address(msg.sender)].field_256 < block.timestamp:
            call msg.sender with:
               value myLockedFundsReleaseTime[address(msg.sender)].field_0 wei
                 gas 0 wei
            myLockedFundsReleaseTime[address(msg.sender)].field_0 = 0
            myLockedFundsReleaseTime[address(msg.sender)].field_256 = 0
        if myLockedFundsReleaseTime[address(msg.sender)].field_0 > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            myLockedFundsReleaseTime[address(msg.sender)].field_0 = msg.value
            myLockedFundsReleaseTime[address(msg.sender)].field_256 = arg1 + block.timestamp
}



}
