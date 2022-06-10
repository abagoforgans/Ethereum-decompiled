contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 429576 * 24 * 3600
    require not msg.value
    stor0 = code.data[1415 len 20]
    stor1 = msg.sender
    return code.data[199 len 1204]
}



// =====================  Runtime code  =====================


address sharesTokenAddress;
address owner;
uint256 endTime;
uint256 tokenFree;

function sharesTokenAddress() {
    return sharesTokenAddress
}

function endTime() {
    return endTime
}

function owner() {
    return owner
}

function tokenFree() {
    return tokenFree
}

function _fallback() payable {
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if msg.value == 10^15:
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
    tokenFree = ext_call.return_data[0]
}



}
