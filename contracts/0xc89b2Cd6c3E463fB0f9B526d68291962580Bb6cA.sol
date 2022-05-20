contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address walletAddress;
uint256 totalTransfer;
uint8 stor4;

function totalAmount() {
    return totalTransfer
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function totalTransfer() {
    return totalTransfer
}

function transfersEnabled() {
    return bool(stor4)
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function enableTransfer(bool arg1) {
    require msg.sender == owner
    stor4 = uint8(arg1)
}

function sub_582e8584(?) {
    require msg.sender == owner
    stor4 = 1
    totalTransfer = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_38fdebea(?) {
    require msg.sender == owner
    require stor4
    idx = 0
    while idx < ('cd', 4).length:
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), 10^18
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require totalTransfer + 1 >= totalTransfer
        idx = idx + 1
        continue 
}



}
