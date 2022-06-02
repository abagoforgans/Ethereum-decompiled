contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[77 len 864]
}



// =====================  Runtime code  =====================


address owner;
address walletAddress;

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function setWallet(address arg1) {
    require owner == msg.sender
    walletAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function retrieveTokens(address arg1, address arg2) {
    require owner == msg.sender
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
}



}
