contract main {


// =======================  Init code  ======================


address stor0;
uint64 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    require not msg.value
    address(stor1.field_0) = code.data[2079 len 20]
    uint64(stor1.field_160) = uint64(block.timestamp)
    stor4 = code.data[2111 len 20]
    stor0 = msg.sender
    return code.data[317 len 1750]
}



// =====================  Runtime code  =====================


address creatorAddress;
uint64 lastWithdrawTime; offset 160
address teamAccountAddress;
uint256 withdrawsCount;
uint256 amountToSend;
address mntTokenAddress;

function creator() {
    return creatorAddress
}

function withdrawsCount() {
    return withdrawsCount
}

function mntToken() {
    return mntTokenAddress
}

function lastWithdrawTime() {
    return lastWithdrawTime
}

function amountToSend() {
    return amountToSend
}

function teamAccountAddress() {
    return teamAccountAddress
}

function _fallback() payable {
    revert
}

function withdrawTokens() {
    require msg.sender == creatorAddress
    require block.timestamp >= uint64(lastWithdrawTime + (720 * 24 * 3600))
    if not withdrawsCount:
        require ext_code.size(mntTokenAddress)
        call mntTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        amountToSend = ext_call.return_data[0] / 10
    require amountToSend
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] < amountToSend:
        amountToSend = ext_call.return_data[0]
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args teamAccountAddress, amountToSend
    require ext_call.success
    withdrawsCount++
    lastWithdrawTime = uint64(block.timestamp)
}



}
