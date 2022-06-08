contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of address stor2;
mapping of address stor3;
mapping of uint256 stor4;
mapping of uint8 stor5;
address owner;

function supportsInterface(bytes4 arg1) {
    return bool(stor1[Mask(32, 224, arg1)])
}

function owner() {
    return owner
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function totalSupply() {
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args 'totalSupply'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function renounceOwnership() {
    require ext_code.size(stor0)
    call stor0.0x21f8a721 with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function balanceOf(address arg1) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function tokenExists(uint256 arg1) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not not delegate.return_data[12 len 20]
}

function transferOwnership(address arg1) {
    require ext_code.size(stor0)
    call stor0.0x21f8a721 with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getApproved(uint256 arg1) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    return stor3[arg1]
}

function ownerOf(uint256 arg1) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    return delegate.return_data[12 len 20]
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    require arg1 != delegate.return_data[12 len 20]
    if delegate.return_data[12 len 20] != msg.sender:
        require stor5[delegate.return_data[12 len 20]][address(msg.sender)]
    stor3[arg2] = arg1
    emit Approval(address(delegate.return_data[0]), arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    if delegate.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, arg3
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[12 len 20]
        if stor3[arg3] != msg.sender:
            require stor5[address(delegate.return_data[0])][address(msg.sender)]
    require arg2
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    require delegate.return_data[12 len 20] == arg1
    if stor3[arg3]:
        stor3[arg3] = 0
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    require delegate.return_data[12 len 20] == arg1
    require 1 <= stor4[address(arg1)]
    stor4[address(arg1)]--
    stor2[arg3] = 0
    require not stor2[arg3]
    stor2[arg3] = arg2
    require stor4[address(arg2)] + 1 >= stor4[address(arg2)]
    stor4[address(arg2)]++
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg1
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args 'totalSupply'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    require arg1 == delegate.return_data[12 len 20]
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= delegate.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', arg1), delegate.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
         gas gas_remaining wei
        args stor0, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] + arg3 >= delegate.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', arg2), delegate.return_data[0] + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0xca446dd9 with:
         gas gas_remaining wei
        args sha3('tokenOwner', arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg2
    require arg1
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args 'totalSupply'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    require arg1 == delegate.return_data[12 len 20]
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= delegate.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', arg1), delegate.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
         gas gas_remaining wei
        args stor0, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] + arg3 >= delegate.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', arg2), delegate.return_data[0] + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0xca446dd9 with:
         gas gas_remaining wei
        args sha3('tokenOwner', arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg1, arg2, arg3);
}

function mintTo(address arg1) {
    require ext_code.size(stor0)
    call stor0.0x21f8a721 with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args 'totalSupply'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + 1 >= ext_call.return_data[0]
    require arg1
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0] + 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not delegate.return_data[12 len 20]
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args 'totalSupply'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + 1 >= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args 'totalSupply', ext_call.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0xca446dd9 with:
         gas gas_remaining wei
        args sha3('tokenOwner', ext_call.return_data[0] + 1), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] + 1 >= delegate.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', arg1), delegate.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(0, arg1, ext_call.return_data[0] + 1);
}

function batchMint(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(stor0)
    call stor0.0x21f8a721 with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args 'totalSupply'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + 1 >= ext_call.return_data[0]
    mem[(32 * arg1.length) + 164] = ext_call.return_data[0] + 1
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0] + 1
    mem[(32 * arg1.length) + 128] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[12 len 20]:
        revert with 0, 'Error: Tried to mint duplicate token id'
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _55 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 140 len 20]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, idx + ext_call.return_data[0] + 1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not address(delegate.return_data[0])
        require ext_code.size(stor0)
        call stor0.0xbd02d0f5 with:
             gas gas_remaining wei
            args 'totalSupply'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + 1 >= ext_call.return_data[0]
        require ext_code.size(stor0)
        call stor0.0xe2a4853a with:
             gas gas_remaining wei
            args 'totalSupply', ext_call.return_data[0] + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.0xca446dd9 with:
             gas gas_remaining wei
            args sha3('tokenOwner', idx + ext_call.return_data[0] + 1), mem[(32 * idx) + 140 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
             gas gas_remaining wei
            args stor0, mem[(32 * idx) + 140 len 20]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] + 1 >= delegate.return_data[0]
        mem[(32 * arg1.length) + 128] = 0xe2a4853a00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = sha3('balances', address(_55))
        mem[(32 * arg1.length) + 164] = delegate.return_data[0] + 1
        require ext_code.size(stor0)
        call stor0.0xe2a4853a with:
             gas gas_remaining wei
            args sha3('balances', address(_55)), delegate.return_data[0] + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(0, address(_55), idx + ext_call.return_data[0] + 1);
        s = idx + ext_call.return_data[0] + 1
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit 0x9e8f321b: Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)])
}

function tokenURI(uint256 arg1) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[12 len 20]:
        revert with 0, 'Token doesn't exist'
    mem[96] = 60
    mem[128] = 'https://vaultserver.eastus.cloud'
    mem[160] = 'app.azure.com/api/v1/tokens/'
    if not arg1:
        mem[192] = 1
        mem[224] = '0'
        mem[256] = 0
        mem[288] = 0
        mem[320] = 0
        mem[352] = 61
        mem[384 len 1952] = code.data[11503 len 1952]
        idx = 0
        s = 0
        while idx < 60:
            require idx < 60
            require s < 61
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 60
        while idx < 1:
            require idx < 1
            require s < 61
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 61
        while idx < 0:
            require idx < 0
            require s < 61
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 61
        while idx < 0:
            require idx < 0
            require s < 61
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 61
        while idx < 0:
            require idx < 0
            require s < 61
            mem[s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        return Array(len=61, data=mem[384], mem[419 len 29])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[192]
            mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _267 = mem[64]
        mem[64] = mem[64] + 32
        mem[_267] = 0
        _268 = mem[64]
        mem[64] = mem[64] + 32
        mem[_268] = 0
        _269 = mem[64]
        mem[64] = mem[64] + 32
        mem[_269] = 0
        _278 = mem[192]
        _279 = mem[96]
        _280 = mem[64]
        mem[mem[64]] = mem[96] + mem[192]
        mem[64] = mem[64] + floor32(_279 + _278 + 31) + 32
        if not _279 + _278:
            _429 = mem[96]
            idx = 0
            s = 0
            while idx < _429:
                require idx < mem[96]
                require s < mem[_280]
                mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            _575 = mem[192]
            idx = 0
            s = _429
            while idx < _575:
                require idx < mem[192]
                require s < mem[_280]
                mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
                _575 = mem[192]
                idx = idx + 1
                s = s + 1
                continue 
            _697 = mem[_267]
            idx = 0
            s = _429 + _575
            while idx < _697:
                require idx < mem[_267]
                require s < mem[_280]
                mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_267'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_267'), ('var', 0)), 32))), 0) - 256
                _697 = mem[_267]
                idx = idx + 1
                s = s + 1
                continue 
            _795 = mem[_268]
            idx = 0
            s = _429 + _575 + _697
            while idx < _795:
                require idx < mem[_268]
                require s < mem[_280]
                mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_268'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_268'), ('var', 0)), 32))), 0) - 256
                _795 = mem[_268]
                idx = idx + 1
                s = s + 1
                continue 
            _863 = mem[_269]
            idx = 0
            s = _429 + _575 + _697 + _795
            while idx < _863:
                require idx < mem[_269]
                require s < mem[_280]
                mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_269'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_269'), ('var', 0)), 32))), 0) - 256
                _863 = mem[_269]
                idx = idx + 1
                s = s + 1
                continue 
            _879 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_280]
            _881 = mem[_280]
            mem[mem[64] + 64 len ceil32(mem[_280])] = mem[_280 + 32 len ceil32(mem[_280])]
            if not _881 % 32:
                return 32, mem[mem[64] + 32 len _881 + 32]
            mem[floor32(_881) + mem[64] + 64] = mem[floor32(_881) + mem[64] + -(_881 % 32) + 96 len _881 % 32]
            return memory
              from mem[64]
               len floor32(_881) + _879 + -mem[64] + 96
        mem[_280 + 32 len 32 * _279 + _278] = code.data[11503 len 32 * _279 + _278]
        _430 = mem[96]
        idx = 0
        s = 0
        while idx < _430:
            require idx < mem[96]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _576 = mem[192]
        idx = 0
        s = _430
        while idx < _576:
            require idx < mem[192]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            _576 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _698 = mem[_267]
        idx = 0
        s = _430 + _576
        while idx < _698:
            require idx < mem[_267]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_267'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_267'), ('var', 0)), 32))), 0) - 256
            _698 = mem[_267]
            idx = idx + 1
            s = s + 1
            continue 
        _796 = mem[_268]
        idx = 0
        s = _430 + _576 + _698
        while idx < _796:
            require idx < mem[_268]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_268'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_268'), ('var', 0)), 32))), 0) - 256
            _796 = mem[_268]
            idx = idx + 1
            s = s + 1
            continue 
        _864 = mem[_269]
        idx = 0
        s = _430 + _576 + _698 + _796
        while idx < _864:
            require idx < mem[_269]
            require s < mem[_280]
            mem[_280 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_269'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_269'), ('var', 0)), 32))), 0) - 256
            _864 = mem[_269]
            idx = idx + 1
            s = s + 1
            continue 
        _882 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_280]
        _884 = mem[_280]
        mem[mem[64] + 64 len ceil32(mem[_280])] = mem[_280 + 32 len ceil32(mem[_280])]
        if not _884 % 32:
            return 32, mem[mem[64] + 32 len _884 + 32]
        mem[floor32(_884) + mem[64] + 64] = mem[floor32(_884) + mem[64] + -(_884 % 32) + 96 len _884 % 32]
        return memory
          from mem[64]
           len floor32(_884) + _882 + -mem[64] + 96
    mem[224 len 32 * s] = code.data[11503 len 32 * s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[192]
        mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _270 = mem[64]
    mem[64] = mem[64] + 32
    mem[_270] = 0
    _271 = mem[64]
    mem[64] = mem[64] + 32
    mem[_271] = 0
    _272 = mem[64]
    mem[64] = mem[64] + 32
    mem[_272] = 0
    _284 = mem[192]
    _285 = mem[96]
    _286 = mem[64]
    mem[mem[64]] = mem[96] + mem[192]
    mem[64] = mem[64] + floor32(_285 + _284 + 31) + 32
    if not _285 + _284:
        _431 = mem[96]
        idx = 0
        s = 0
        while idx < _431:
            require idx < mem[96]
            require s < mem[_286]
            mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _577 = mem[192]
        idx = 0
        s = _431
        while idx < _577:
            require idx < mem[192]
            require s < mem[_286]
            mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            _577 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _699 = mem[_270]
        idx = 0
        s = _431 + _577
        while idx < _699:
            require idx < mem[_270]
            require s < mem[_286]
            mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_270'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_270'), ('var', 0)), 32))), 0) - 256
            _699 = mem[_270]
            idx = idx + 1
            s = s + 1
            continue 
        _797 = mem[_271]
        idx = 0
        s = _431 + _577 + _699
        while idx < _797:
            require idx < mem[_271]
            require s < mem[_286]
            mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_271'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_271'), ('var', 0)), 32))), 0) - 256
            _797 = mem[_271]
            idx = idx + 1
            s = s + 1
            continue 
        _865 = mem[_272]
        idx = 0
        s = _431 + _577 + _699 + _797
        while idx < _865:
            require idx < mem[_272]
            require s < mem[_286]
            mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_272'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_272'), ('var', 0)), 32))), 0) - 256
            _865 = mem[_272]
            idx = idx + 1
            s = s + 1
            continue 
        _885 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_286]
        _887 = mem[_286]
        mem[mem[64] + 64 len ceil32(mem[_286])] = mem[_286 + 32 len ceil32(mem[_286])]
        if not _887 % 32:
            return 32, mem[mem[64] + 32 len _887 + 32]
        mem[floor32(_887) + mem[64] + 64] = mem[floor32(_887) + mem[64] + -(_887 % 32) + 96 len _887 % 32]
        return memory
          from mem[64]
           len floor32(_887) + _885 + -mem[64] + 96
    mem[_286 + 32 len 32 * _285 + _284] = code.data[11503 len 32 * _285 + _284]
    _432 = mem[96]
    idx = 0
    s = 0
    while idx < _432:
        require idx < mem[96]
        require s < mem[_286]
        mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _578 = mem[192]
    idx = 0
    s = _432
    while idx < _578:
        require idx < mem[192]
        require s < mem[_286]
        mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
        _578 = mem[192]
        idx = idx + 1
        s = s + 1
        continue 
    _700 = mem[_270]
    idx = 0
    s = _432 + _578
    while idx < _700:
        require idx < mem[_270]
        require s < mem[_286]
        mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_270'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_270'), ('var', 0)), 32))), 0) - 256
        _700 = mem[_270]
        idx = idx + 1
        s = s + 1
        continue 
    _798 = mem[_271]
    idx = 0
    s = _432 + _578 + _700
    while idx < _798:
        require idx < mem[_271]
        require s < mem[_286]
        mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_271'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_271'), ('var', 0)), 32))), 0) - 256
        _798 = mem[_271]
        idx = idx + 1
        s = s + 1
        continue 
    _866 = mem[_272]
    idx = 0
    s = _432 + _578 + _700 + _798
    while idx < _866:
        require idx < mem[_272]
        require s < mem[_286]
        mem[_286 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_272'), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_272'), ('var', 0)), 32))), 0) - 256
        _866 = mem[_272]
        idx = idx + 1
        s = s + 1
        continue 
    _888 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_286]
    _890 = mem[_286]
    mem[mem[64] + 64 len ceil32(mem[_286])] = mem[_286 + 32 len ceil32(mem[_286])]
    if not _890 % 32:
        return 32, mem[mem[64] + 32 len _890 + 32]
    mem[floor32(_890) + mem[64] + 64] = mem[floor32(_890) + mem[64] + -(_890 % 32) + 96 len _890 % 32]
    return memory
      from mem[64]
       len floor32(_890) + _888 + -mem[64] + 96
}



}
