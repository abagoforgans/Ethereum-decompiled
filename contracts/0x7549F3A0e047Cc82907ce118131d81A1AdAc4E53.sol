contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address walletAddress;
uint256 feePercent;

function wallet() {
    return walletAddress
}

function feePercent() {
    return feePercent
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setWallet(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
    return 1
}

function setFeePercent(uint256 arg1) {
    require msg.sender == owner
    feePercent = arg1
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_63a45612(?) {
    mem[128 len arg3.length] = arg3[all]
    if arg2:
        require feePercent * arg2 / arg2 == feePercent
        require feePercent * arg2 / 100 <= arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, walletAddress, feePercent * arg2 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2 - (feePercent * arg2 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x940ffdf4: arg2, arg2 - (feePercent * arg2 / 100), feePercent * arg2 / 100, feePercent, Array(len=arg3.length, data=arg3[all]), block.timestamp, msg.sender, arg1, walletAddress
    else:
        require 0 <= arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, walletAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg3.length) + 128] = arg2
        mem[ceil32(arg3.length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0x940ffdf4: arg2, arg2, 0, feePercent, 192, block.timestamp, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, arg1, walletAddress
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
            emit 0x940ffdf4: arg2, arg2, 0, feePercent, 192, block.timestamp, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 352 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, arg1, walletAddress
    return 1
}



}
