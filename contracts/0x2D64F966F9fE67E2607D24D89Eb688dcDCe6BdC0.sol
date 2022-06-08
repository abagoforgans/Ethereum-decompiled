contract main {




// =====================  Runtime code  =====================


#
#  - sub_1d6680dc(?)
#  - sub_465e495b(?)
#
address owner;
address stor1;
uint256 stor1;

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
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

function sub_23f89f91(?) {
    require msg.sender == owner
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xa51ce838 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_55157b3f(?) {
    require msg.sender == owner
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xd589ed66 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d6eb2c6f(?) {
    require msg.sender == owner
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x7c0cc332 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokensCount() {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xc4483f9 with:
         gas gas_remaining wei
        args address(stor1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_bcb2d4d3(?) {
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0x5b21fadb with:
         gas gas_remaining wei
        args address(stor1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_ec264eb2(?) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xf938fca1 with:
         gas gas_remaining wei
        args address(stor1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_0705f2bf(?) {
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xa7cdd3ec with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_082246c2(?) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xa5add6d6 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_2c8b98ed(?) {
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xad8471e5 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_55ad37dc(?) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xd135de8b with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_bee25622(?) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x71c41a7b with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_98386441(?) {
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xc8455c64 with:
         gas gas_remaining wei
        args address(stor1), address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getWithdrawBalance(address arg1) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xd2b291d1 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getOwnerOfToken(uint256 arg1) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x4a141b29 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function sub_9cd5eaf1(?) {
    require msg.sender == owner
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0x3e6cd845 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_ea29a710(?) {
    require msg.sender == owner
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xad8471e5 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function setTokenName(string arg1) {
    require msg.sender == owner
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.setTokenName(address arg1, string arg2) with:
         gas gas_remaining wei
        args address(stor1), Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_02eba44c(?) {
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xf3931fea with:
         gas gas_remaining wei
        args address(stor1), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[12 len 20], delegate.return_data[32]
}

function sub_05dae3d9(?) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x44f7ff19 with:
         gas gas_remaining wei
        args address(stor1), Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_c033f372(?) {
    require msg.sender == owner
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xc8455c64 with:
         gas gas_remaining wei
        args address(stor1), address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_63f89da0(?) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x565fc232 with:
         gas gas_remaining wei
        args address(stor1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xf938fca1 with:
         gas gas_remaining wei
        args address(stor1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(delegate.return_data[0]), delegate.return_data[0]
}

function sub_062a25db(?) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xabe77cb3 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x3461b0ee with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0]), bool(delegate.return_data[0])
}

function setTokenSymbol(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128] = 0xf036417f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = address(stor1)
    mem[ceil32(arg1.length) + 164] = 64
    mem[ceil32(arg1.length) + 196] = arg1.length
    if 0 < arg1.length:
        mem[ceil32(arg1.length) + 228] = mem[128]
        mem[ceil32(arg1.length) + 260 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.setTokenSymbol(address arg1, string arg2) with:
         gas gas_remaining wei
        args address(stor1), Array(len=arg1.length, data=mem[ceil32(arg1.length) + 228 len arg1.length])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e0257d59(?) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    if owner != msg.sender:
        delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x4a141b29 with:
             gas gas_remaining wei
            args address(stor1), arg1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == delegate.return_data[12 len 20]
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xd01e45ed with:
         gas gas_remaining wei
        args address(stor1), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x6a5d25cf with:
         gas gas_remaining wei
        args address(stor1), arg1, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawFunds() {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xd2b291d1 with:
         gas gas_remaining wei
        args address(stor1), msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] > 0
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x8e76b2b3 with:
         gas gas_remaining wei
        args address(stor1), msg.sender, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1))
    call address(stor1).transferFunds(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f7b3da63(?) {
    mem[96] = 0x9a3a585500000000000000000000000000000000000000000000000000000000
    mem[100] = address(stor1)
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x9a3a5855 with:
         gas gas_remaining wei
        args address(stor1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 0, stor1)
    require mem[96 len 4], Mask(224, 0, stor1) <= 4294967296
    require mem[96 len 4], Mask(224, 0, stor1) + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 0, stor1) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor1) + (32 * mem[mem[96 len 4], Mask(224, 0, stor1) + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function sub_dab71c51(?) {
    require msg.sender == owner
    mem[96] = 0xc336954a00000000000000000000000000000000000000000000000000000000
    mem[100] = address(stor1)
    mem[132] = arg1
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xc336954a with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 0, stor1)
    require mem[96 len 4], Mask(224, 0, stor1) <= 4294967296
    require mem[96 len 4], Mask(224, 0, stor1) + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 0, stor1) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor1) + (32 * mem[mem[96 len 4], Mask(224, 0, stor1) + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function sub_716f3348(?) {
    mem[100] = address(stor1)
    mem[132] = arg1
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x71c41a7b with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = delegate.return_data[0]
    if delegate.return_data[0]:
        mem[128 len 32 * delegate.return_data[0]] = code.data[20757 len 32 * delegate.return_data[0]]
    idx = 0
    while idx < delegate.return_data[0]:
        mem[(32 * delegate.return_data[0]) + 132] = address(stor1)
        mem[(32 * delegate.return_data[0]) + 164] = arg1
        mem[(32 * delegate.return_data[0]) + 196] = idx
        require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
        delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x9d8369c2 with:
             gas gas_remaining wei
            args address(stor1), address(arg1), idx
        mem[(32 * delegate.return_data[0]) + 128] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        mem[(32 * idx) + 128] = delegate.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * delegate.return_data[0]) + 128] = 32
    mem[(32 * delegate.return_data[0]) + 160] = mem[96]
    s = 0
    while delegate.return_data[0] < 32 * mem[96]:
        mem[(34 * delegate.return_data[0]) + 192] = mem[delegate.return_data[0] + 128]
        s = delegate.return_data[0] + 32
        continue 
    return 32, mem[(32 * delegate.return_data[0]) + 160 len (32 * mem[96]) + 32]
}

function sub_cadf125b(?) {
    mem[100] = address(stor1)
    mem[132] = arg1
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xa5add6d6 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = delegate.return_data[0]
    if delegate.return_data[0]:
        mem[128 len 32 * delegate.return_data[0]] = code.data[20757 len 32 * delegate.return_data[0]]
    idx = 0
    while idx < delegate.return_data[0]:
        mem[(32 * delegate.return_data[0]) + 132] = address(stor1)
        mem[(32 * delegate.return_data[0]) + 164] = arg1
        mem[(32 * delegate.return_data[0]) + 196] = idx
        require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
        delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x5c62ce04 with:
             gas gas_remaining wei
            args address(stor1), address(arg1), idx
        mem[(32 * delegate.return_data[0]) + 128] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        mem[(32 * idx) + 128] = delegate.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * delegate.return_data[0]) + 128] = 32
    mem[(32 * delegate.return_data[0]) + 160] = mem[96]
    s = 0
    while delegate.return_data[0] < 32 * mem[96]:
        mem[(34 * delegate.return_data[0]) + 192] = mem[delegate.return_data[0] + 128]
        s = delegate.return_data[0] + 32
        continue 
    return 32, mem[(32 * delegate.return_data[0]) + 160 len (32 * mem[96]) + 32]
}

function sub_a11b6d77(?) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xf72e905e with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20] == msg.sender
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0x94c32c30 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xa7cdd3ec with:
         gas gas_remaining wei
        args address(stor1), delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < delegate.return_data[0]:
        require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
        delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xf3931fea with:
             gas gas_remaining wei
            args address(stor1), delegate.return_data[0], idx
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[100] = address(stor1)
        mem[132] = arg1
        mem[164] = address(delegate.return_data[0])
        mem[196] = 0
        require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
        delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xb46b960f with:
             gas gas_remaining wei
            args address(stor1), arg1, address(delegate.return_data[0]), 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = arg1
        emit 0x86b4da6e: arg1, address(delegate.return_data[0])
        idx = idx + 1
        s = delegate.return_data[0]
        continue 
}

function sub_cf11010b(?) {
    if arg2 <= 0:
        revert with 0, 'id of scheme can't be zero'
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xf72e905e with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only artist can change the profit share scheme'
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xad8471e5 with:
         gas gas_remaining wei
        args address(stor1), address(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    idx = 0
    s = 0
    while idx < delegate.return_data[0]:
        mem[100] = address(stor1)
        mem[132] = address(delegate.return_data[0])
        mem[164] = idx
        require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
        delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xc8455c64 with:
             gas gas_remaining wei
            args address(stor1), address(delegate.return_data[0]), idx
        mem[96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if s:
            s = delegate.return_data[0]
            idx = idx + 1
            s = s
            continue 
        s = delegate.return_data[0]
        idx = idx + 1
        s = delegate.return_data[0] == arg2
        continue 
    if bool(s) != 1:
        revert with 0, 'Profit share scheme is not your'
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x5efc3a43 with:
         gas gas_remaining wei
        args address(stor1), arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_801cb3af(?) {
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xcf935ac7 with:
         gas gas_remaining wei
        args address(stor1)
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        require arg2.length == arg3.length
        require 5 >= arg2.length
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < arg3.length
            if mem[(32 * arg2.length) + (32 * idx) + 160] <= 0:
                revert with 0, 'Percent value has to be greater than zero'
            require idx < arg3.length
            require mem[(32 * arg2.length) + (32 * idx) + 160] + s >= s
            idx = idx + 1
            s = mem[(32 * arg2.length) + (32 * idx) + 160] + s
            continue 
        if _58 * arg3.length != 100:
            revert with 0, 'Sum of all percentages has to be equal 100'
    else:
        if owner != msg.sender:
            revert with 0, 'only Snark can perform the function'
        require arg2.length == arg3.length
        require 5 >= arg2.length
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < arg3.length
            if mem[(32 * arg2.length) + (32 * idx) + 160] <= 0:
                revert with 0, 'Percent value has to be greater than zero'
            require idx < arg3.length
            require mem[(32 * arg2.length) + (32 * idx) + 160] + s >= s
            idx = idx + 1
            s = mem[(32 * arg2.length) + (32 * idx) + 160] + s
            continue 
        if _62 * arg3.length != 100:
            revert with 0, 'Sum of all percentages has to be equal 100'
    mem[(32 * arg3.length) + (32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (32 * arg3.length) + 324] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 356 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xfc458546 with:
         gas gas_remaining wei
        args address(stor1), address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 324 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32]), (32 * arg2.length) + 160
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x26592c1a: delegate.return_data[0], arg1
    return 0
}

function sub_f75be0c8(?) {
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x4a141b29 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == delegate.return_data[12 len 20]:
        mem[96] = 0x8913c0ab00000000000000000000000000000000000000000000000000000000
        mem[100] = address(stor1)
        mem[132] = arg1
        require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
        delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x8913c0ab with:
             gas gas_remaining wei
            args address(stor1), arg1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _10 = mem[96 len 4], Mask(224, 0, stor1)
        require mem[96 len 4], Mask(224, 0, stor1) <= 4294967296
        require mem[96 len 4], Mask(224, 0, stor1) + 32 <= return_data.size
        require return_data.size >= mem[mem[96 len 4], Mask(224, 0, stor1) + 96] + mem[96 len 4], Mask(224, 0, stor1) + 32 and mem[mem[96 len 4], Mask(224, 0, stor1) + 96] <= 4294967296
        mem[ceil32(return_data.size) + 96] = 32
        mem[ceil32(return_data.size) + 128] = mem[_10 + 96]
        _17 = mem[_10 + 96]
        mem[ceil32(return_data.size) + 160 len ceil32(mem[_10 + 96])] = mem[_10 + 128 len ceil32(mem[_10 + 96])]
        if not _17 % 32:
            return 32, mem[ceil32(return_data.size) + 128 len _17 + 32]
        mem[floor32(_17) + ceil32(return_data.size) + 160] = mem[floor32(_17) + ceil32(return_data.size) + -(_17 % 32) + 192 len _17 % 32]
        return 32, mem[ceil32(return_data.size) + 128 len floor32(_17) + 64]
    require msg.sender == owner
    mem[96] = 0x8913c0ab00000000000000000000000000000000000000000000000000000000
    mem[100] = address(stor1)
    mem[132] = arg1
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x8913c0ab with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _12 = mem[96 len 4], Mask(224, 0, stor1)
    require mem[96 len 4], Mask(224, 0, stor1) <= 4294967296
    require mem[96 len 4], Mask(224, 0, stor1) + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 0, stor1) + 96] + mem[96 len 4], Mask(224, 0, stor1) + 32 and mem[mem[96 len 4], Mask(224, 0, stor1) + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_12 + 96]
    _20 = mem[_12 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_12 + 96])] = mem[_12 + 128 len ceil32(mem[_12 + 96])]
    if not _20 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _20 + 32]
    mem[floor32(_20) + ceil32(return_data.size) + 160] = mem[floor32(_20) + ceil32(return_data.size) + -(_20 % 32) + 192 len _20 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_20) + 64]
}

function sub_3691a47d(?) {
    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0x94c32c30 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if delegate.return_code:
        require return_data.size >= 32
        require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
        delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xa7cdd3ec with:
             gas gas_remaining wei
            args address(stor1), delegate.return_data[0]
        if delegate.return_code:
            require return_data.size >= 32
            require 0 < delegate.return_data[0]
            require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
            delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xf3931fea with:
                 gas gas_remaining wei
                args address(stor1), delegate.return_data[0], 0
            mem[96 len 64] = delegate.return_data[0 len 64]
            s = 0
            t = 0
            while delegate.return_code:
                require return_data.size >= 64
                _36 = mem[96]
                if mem[108 len 20] != msg.sender:
                    require s + 1 < delegate.return_data[0]
                    mem[132] = delegate.return_data[0]
                    mem[164] = s + 1
                    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
                    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xf3931fea with:
                         gas gas_remaining wei
                        args address(stor1), delegate.return_data[0], s + 1
                    mem[96 len 64] = delegate.return_data[0 len 64]
                    s = s + 1
                    t = _36
                    continue 
                require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
                delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xb46b960f with:
                     gas gas_remaining wei
                    args address(stor1), arg1, msg.sender, 1
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
                delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0x94c32c30 with:
                     gas gas_remaining wei
                    args address(stor1), arg1
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
                delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xa7cdd3ec with:
                     gas gas_remaining wei
                    args address(stor1), delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                t = 1
                u = 0
                while idx < delegate.return_data[0]:
                    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
                    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xf3931fea with:
                         gas gas_remaining wei
                        args address(stor1), delegate.return_data[0], idx
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not t:
                        require s < delegate.return_data[0]
                        mem[132] = delegate.return_data[0]
                        mem[164] = s
                        require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
                        delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xf3931fea with:
                             gas gas_remaining wei
                            args address(stor1), delegate.return_data[0], s
                        mem[96 len 64] = delegate.return_data[0 len 64]
                        idx = idx + 1
                        t = t
                        u = delegate.return_data[0]
                        continue 
                    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
                    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x59153925 with:
                         gas gas_remaining wei
                        args address(stor1), arg1, address(delegate.return_data[0])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require s < delegate.return_data[0]
                    mem[132] = delegate.return_data[0]
                    mem[164] = s
                    require ext_code.size(0x38c7a695979c942161d5718e22cdf1d11793bb5e)
                    delegate 0x38c7a695979c942161d5718e22cdf1d11793bb5e.0xf3931fea with:
                         gas gas_remaining wei
                        args address(stor1), delegate.return_data[0], s
                    mem[96 len 64] = delegate.return_data[0 len 64]
                    idx = idx + 1
                    t = delegate.return_data[0]
                    u = delegate.return_data[0]
                    continue 
                if t:
                    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
                    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0x6e98fd0 with:
                         gas gas_remaining wei
                        args address(stor1), arg1, 0
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
    revert with ext_call.return_data[0 len return_data.size]
}

function getTokenDetail(uint256 arg1) {
    mem[96] = 0xfca36e2700000000000000000000000000000000000000000000000000000000
    mem[100] = address(stor1)
    mem[132] = arg1
    require ext_code.size(0x31ec5b84668b1a5597b508934c5f6a1b4ede245f)
    delegate 0x31ec5b84668b1a5597b508934c5f6a1b4ede245f.0xfca36e27 with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 384
    _6 = uint32(arg1), mem[164 len 28]
    require uint32(arg1), mem[164 len 28] <= 4294967296
    require uint32(arg1), mem[164 len 28] + 32 <= return_data.size
    require return_data.size >= mem[uint32(arg1), mem[164 len 28] + 96] + uint32(arg1), mem[164 len 28] + 32 and mem[uint32(arg1), mem[164 len 28] + 96] <= 4294967296
    _8 = mem[192]
    _9 = mem[224]
    _10 = mem[256]
    _11 = mem[288]
    _12 = mem[320]
    _13 = mem[352]
    require mem[352] <= 4294967296
    require mem[352] + 32 <= return_data.size
    require return_data.size >= mem[mem[352] + 96] + mem[352] + 32 and mem[mem[352] + 96] <= 4294967296
    _15 = mem[384]
    require mem[384] <= 4294967296
    require mem[384] + 32 <= return_data.size
    require return_data.size >= mem[mem[384] + 96] + mem[384] + 32 and mem[mem[384] + 96] <= 4294967296
    _17 = mem[416]
    _18 = mem[448]
    mem[ceil32(return_data.size) + 96] = address(stor1)
    mem[ceil32(return_data.size) + 128] = Mask(160, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 192] = _8
    mem[ceil32(return_data.size) + 224] = _9
    mem[ceil32(return_data.size) + 256] = _10
    mem[ceil32(return_data.size) + 288] = _11
    mem[ceil32(return_data.size) + 320] = _12
    mem[ceil32(return_data.size) + 416] = bool(_17)
    mem[ceil32(return_data.size) + 448] = bool(_18)
    mem[ceil32(return_data.size) + 160] = 384
    mem[ceil32(return_data.size) + 480] = mem[_6 + 96]
    _21 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 512 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
    if not _21 % 32:
        mem[ceil32(return_data.size) + 352] = _21 + 416
        mem[_21 + ceil32(return_data.size) + 512] = mem[_13 + 96]
        _58 = mem[_13 + 96]
        mem[_21 + ceil32(return_data.size) + 544 len ceil32(mem[_13 + 96])] = mem[_13 + 128 len ceil32(mem[_13 + 96])]
        if not _58 % 32:
            mem[ceil32(return_data.size) + 384] = _58 + _21 + 448
            mem[_58 + _21 + ceil32(return_data.size) + 544] = mem[_15 + 96]
            _93 = mem[_15 + 96]
            mem[_58 + _21 + ceil32(return_data.size) + 576 len ceil32(mem[_15 + 96])] = mem[_15 + 128 len ceil32(mem[_15 + 96])]
            if not _93 % 32:
                return address(stor1), 
                       Mask(160, 32, arg1) << 64,
                       384,
                       _8,
                       _9,
                       _10,
                       _11,
                       _12,
                       _21 + 416,
                       _58 + _21 + 448,
                       bool(_17),
                       bool(_18),
                       mem[ceil32(return_data.size) + 480 len _93 + _58 + _21 + 96]
            mem[floor32(_93) + _58 + _21 + ceil32(return_data.size) + 576] = mem[floor32(_93) + _58 + _21 + ceil32(return_data.size) + -(_93 % 32) + 608 len _93 % 32]
            return address(stor1), 
                   Mask(160, 32, arg1) << 64,
                   384,
                   _8,
                   _9,
                   _10,
                   _11,
                   _12,
                   _21 + 416,
                   _58 + _21 + 448,
                   bool(_17),
                   bool(_18),
                   mem[ceil32(return_data.size) + 480 len floor32(_93) + _58 + _21 + 128]
        mem[floor32(_58) + _21 + ceil32(return_data.size) + 544] = mem[floor32(_58) + _21 + ceil32(return_data.size) + -(_58 % 32) + 576 len _58 % 32]
        mem[ceil32(return_data.size) + 384] = floor32(_58) + _21 + 480
        mem[floor32(_58) + _21 + ceil32(return_data.size) + 576] = mem[_15 + 96]
        _99 = mem[_15 + 96]
        mem[floor32(_58) + _21 + ceil32(return_data.size) + 608 len ceil32(mem[_15 + 96])] = mem[_15 + 128 len ceil32(mem[_15 + 96])]
        if not _99 % 32:
            return address(stor1), 
                   Mask(160, 32, arg1) << 64,
                   384,
                   _8,
                   _9,
                   _10,
                   _11,
                   _12,
                   _21 + 416,
                   floor32(_58) + _21 + 480,
                   bool(_17),
                   bool(_18),
                   mem[ceil32(return_data.size) + 480 len _99 + floor32(_58) + _21 + 128]
        mem[floor32(_99) + floor32(_58) + _21 + ceil32(return_data.size) + 608] = mem[floor32(_99) + floor32(_58) + _21 + ceil32(return_data.size) + -(_99 % 32) + 640 len _99 % 32]
        return address(stor1), 
               Mask(160, 32, arg1) << 64,
               384,
               _8,
               _9,
               _10,
               _11,
               _12,
               _21 + 416,
               floor32(_58) + _21 + 480,
               bool(_17),
               bool(_18),
               mem[ceil32(return_data.size) + 480 len floor32(_99) + floor32(_58) + _21 + 160]
    mem[floor32(_21) + ceil32(return_data.size) + 512] = mem[floor32(_21) + ceil32(return_data.size) + -(_21 % 32) + 544 len _21 % 32]
    mem[ceil32(return_data.size) + 352] = floor32(_21) + 448
    mem[floor32(_21) + ceil32(return_data.size) + 544] = mem[_13 + 96]
    _61 = mem[_13 + 96]
    mem[floor32(_21) + ceil32(return_data.size) + 576 len ceil32(mem[_13 + 96])] = mem[_13 + 128 len ceil32(mem[_13 + 96])]
    if not _61 % 32:
        mem[ceil32(return_data.size) + 384] = _61 + floor32(_21) + 480
        mem[_61 + floor32(_21) + ceil32(return_data.size) + 576] = mem[_15 + 96]
        _96 = mem[_15 + 96]
        mem[_61 + floor32(_21) + ceil32(return_data.size) + 608 len ceil32(mem[_15 + 96])] = mem[_15 + 128 len ceil32(mem[_15 + 96])]
        if not _96 % 32:
            return address(stor1), 
                   Mask(160, 32, arg1) << 64,
                   384,
                   _8,
                   _9,
                   _10,
                   _11,
                   _12,
                   floor32(_21) + 448,
                   _61 + floor32(_21) + 480,
                   bool(_17),
                   bool(_18),
                   mem[ceil32(return_data.size) + 480 len _96 + _61 + floor32(_21) + 128]
        mem[floor32(_96) + _61 + floor32(_21) + ceil32(return_data.size) + 608] = mem[floor32(_96) + _61 + floor32(_21) + ceil32(return_data.size) + -(_96 % 32) + 640 len _96 % 32]
        return address(stor1), 
               Mask(160, 32, arg1) << 64,
               384,
               _8,
               _9,
               _10,
               _11,
               _12,
               floor32(_21) + 448,
               _61 + floor32(_21) + 480,
               bool(_17),
               bool(_18),
               mem[ceil32(return_data.size) + 480 len floor32(_96) + _61 + floor32(_21) + 160]
    mem[floor32(_61) + floor32(_21) + ceil32(return_data.size) + 576] = mem[floor32(_61) + floor32(_21) + ceil32(return_data.size) + -(_61 % 32) + 608 len _61 % 32]
    mem[ceil32(return_data.size) + 384] = floor32(_61) + floor32(_21) + 512
    mem[floor32(_61) + floor32(_21) + ceil32(return_data.size) + 608] = mem[_15 + 96]
    _101 = mem[_15 + 96]
    mem[floor32(_61) + floor32(_21) + ceil32(return_data.size) + 640 len ceil32(mem[_15 + 96])] = mem[_15 + 128 len ceil32(mem[_15 + 96])]
    if not _101 % 32:
        return address(stor1), 
               Mask(160, 32, arg1) << 64,
               384,
               _8,
               _9,
               _10,
               _11,
               _12,
               floor32(_21) + 448,
               floor32(_61) + floor32(_21) + 512,
               bool(_17),
               bool(_18),
               mem[ceil32(return_data.size) + 480 len _101 + floor32(_61) + floor32(_21) + 160]
    mem[floor32(_101) + floor32(_61) + floor32(_21) + ceil32(return_data.size) + 640] = mem[floor32(_101) + floor32(_61) + floor32(_21) + ceil32(return_data.size) + -(_101 % 32) + 672 len _101 % 32]
    return address(stor1), 
           Mask(160, 32, arg1) << 64,
           384,
           _8,
           _9,
           _10,
           _11,
           _12,
           floor32(_21) + 448,
           floor32(_61) + floor32(_21) + 512,
           bool(_17),
           bool(_18),
           mem[ceil32(return_data.size) + 480 len floor32(_101) + floor32(_61) + floor32(_21) + 192]
}



}
