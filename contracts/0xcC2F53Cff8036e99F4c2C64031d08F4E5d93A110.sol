contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 525]




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
    require 0 == msg.value
}

function payIn(uint256 arg1) payable {
    require not myLockedFundsReleaseTime[address(msg.sender)].field_0
    myLockedFundsReleaseTime[address(msg.sender)].field_0 = msg.value
    myLockedFundsReleaseTime[address(msg.sender)].field_256 = arg1 + block.timestamp
}

function payOut() payable {
    require 0 == msg.value
    require myLockedFundsReleaseTime[address(msg.sender)].field_0
    if myLockedFundsReleaseTime[address(msg.sender)].field_0:
        require myLockedFundsReleaseTime[address(msg.sender)].field_256 <= block.timestamp
    call msg.sender with:
       value myLockedFundsReleaseTime[address(msg.sender)].field_0 wei
         gas 0 wei
    if ext_call.success:
        myLockedFundsReleaseTime[address(msg.sender)].field_0 = 0
        myLockedFundsReleaseTime[address(msg.sender)].field_256 = 0
    return bool(ext_call.success)
}



}
