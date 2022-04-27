contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() {
    stor0 = code.data[1484 len 20]
    stor1 = code.data[1548 len 20]
    stor3 = code.data[1548 len 20]
    stor2 = code.data[1504 len 32]
    return code.data[280 len 1192]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 unlockTime;
address stor3;

function unlockTime() {
    return unlockTime
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isLocked() {
    return (block.timestamp < unlockTime)
}

function balance() {
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw() {
    require msg.sender == owner
    if block.timestamp >= unlockTime:
        require ext_code.size(stor3)
        call stor3.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
}



}
