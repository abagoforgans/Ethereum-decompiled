contract main {


// =======================  Init code  ======================


uint64 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    require not msg.value
    address(stor0.field_0) = code.data[1787 len 20]
    uint64(stor0.field_160) = uint64(block.timestamp)
    stor3 = code.data[1819 len 20]
    return code.data[252 len 1523]
}



// =====================  Runtime code  =====================


uint64 lastWithdrawTime; offset 160
address teamAccountAddress;
uint256 withdrawsCount;
uint256 amountToSend;
address mntTokenAddress;

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
