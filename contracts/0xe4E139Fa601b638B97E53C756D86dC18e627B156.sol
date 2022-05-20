contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1561 len 20]
    return code.data[188 len 1361]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sendAirdrop(address[] arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1.length > 0
    idx = 0
    while idx < arg1.length:
        mem[100] = owner
        mem[132] = address(cd[((32 * idx) + arg1 + 36)])
        mem[164] = arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args owner, address(cd[((32 * idx) + arg1 + 36)]), arg2
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
