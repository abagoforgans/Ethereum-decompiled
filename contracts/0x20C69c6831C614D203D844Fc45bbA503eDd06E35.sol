contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address walletAddress;
uint256 weiRaised;

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
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

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeWallet(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Wallet can't be the zero address'
    walletAddress = arg1
}

function recoverERC20(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7d2d1dc9(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if not arg1:
        revert with 0, 'Beneficiary can't be the zero address'
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0x9c77068400000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 420 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9c770684 with:
             gas gas_remaining wei
            args address(arg1), msg.value, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 388 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 224, arg4, arg5
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9c770684 with:
             gas gas_remaining wei
            args address(arg1), msg.value, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 388 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 224, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPurchase(msg.value, ext_call.return_data[0], msg.sender, arg1);
    if msg.value > 0:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_fe8d4fcb(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender must be token owner'
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0xb40bb85d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 388 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 388] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 420 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xb40bb85d with:
             gas gas_remaining wei
            args arg1, msg.value, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 388 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 224, arg4, arg5
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xb40bb85d with:
             gas gas_remaining wei
            args arg1, msg.value, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 388 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 224, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xed4a25c8: msg.value, ext_call.return_data[0], address(ext_call.return_data[0])
    if msg.value > 0:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
