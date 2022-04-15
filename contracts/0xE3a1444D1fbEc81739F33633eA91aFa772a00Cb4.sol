contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2002 len 20]
    stor3 = code.data[2034 len 20]
    return code.data[266 len 1724]
}



// =====================  Runtime code  =====================


address creatorAddress;
address teamAccountAddress;
uint64 icoIsFinishedDate; offset 160
address icoContractAddress;
address mntTokenAddress;

function creator() {
    return creatorAddress
}

function icoIsFinishedDate() {
    return icoIsFinishedDate
}

function mntToken() {
    return mntTokenAddress
}

function icoContractAddress() {
    return icoContractAddress
}

function teamAccountAddress() {
    return teamAccountAddress
}

function _fallback() payable {
    revert
}

function finishIco() {
    require msg.sender == icoContractAddress
    icoIsFinishedDate = uint64(block.timestamp)
}

function setIcoContractAddress(address arg1) {
    require msg.sender == creatorAddress
    icoContractAddress = arg1
}

function withdrawTokens() {
    require block.timestamp >= uint64(icoIsFinishedDate + (8760 * 24 * 3600))
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(mntTokenAddress)
    call mntTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args teamAccountAddress, ext_call.return_data[0]
    require ext_call.success
}



}
