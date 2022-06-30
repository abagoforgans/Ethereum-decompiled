contract main {




// =====================  Runtime code  =====================


#
#  - approve(address arg1, uint256 arg2)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - setApprovalForAll(address arg1, bool arg2)
#  - isApprovedForAll(address arg1, address arg2)
#
address stor0;
mapping of uint8 stor1;
address owner;

function supportsInterface(bytes4 arg1) {
    return bool(stor1[Mask(32, 224, arg1)])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
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

function renounceOwnership() {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
    call stor0.getAddress(bytes32 arg1) with:
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

function getApproved(uint256 arg1) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('approve', Mask(200, 56, arg1) >> 56, mem[199 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function isClaimable(uint256 arg1) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(delegate.return_data[0]):
        return not address(delegate.return_data[0])
    return (address(delegate.return_data[0]) == ext_call.return_data[12 len 20])
}

function mintTo(address arg1, uint256 arg2) {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not delegate.return_data[12 len 20]
    require ext_code.size(stor0)
    call stor0.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3('tokenOwner', Mask(176, 80, arg2) >> 80, mem[202 len 10]), arg1
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
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 64), delegate.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(0, arg1, arg2);
}

function claim(address arg1, uint256 arg2) {
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(delegate.return_data[0]):
        require not address(delegate.return_data[0]) == 1
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
             gas gas_remaining wei
            args stor0, arg1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] + 1 >= delegate.return_data[0]
        require ext_code.size(stor0)
        call stor0.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sha3(Mask(224, 32, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 32), delegate.return_data[0] + 1
    else:
        require address(delegate.return_data[0]) == ext_call.return_data[12 len 20] == 1
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
             gas gas_remaining wei
            args stor0, arg1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] + 1 >= delegate.return_data[0]
        require ext_code.size(stor0)
        call stor0.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 64), delegate.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3('tokenOwner', Mask(176, 80, arg2) >> 80, mem[262 len 10]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(0, arg1, arg2);
    emit Claim(address(arg1), arg2);
}

function batchMint(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = 'owner'
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if arg1.length != arg2.length:
        revert with 0, 'ids and addresses need to be same'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _58 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _62 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + 140 len 20]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, mem[(32 * idx) + (32 * arg1.length) + 160]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not address(delegate.return_data[0])
        _67 = mem[64]
        mem[mem[64] + 32] = 'tokenOwner'
        mem[mem[64] + 42] = _62
        _68 = mem[64]
        mem[mem[64]] = 42
        mem[64] = mem[64] + 74
        _70 = mem[_68]
        t = _68 + 32
        u = _67 + 74
        s = mem[_68]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_67 + floor32(mem[_68]) + 74] = mem[_68 + -(mem[_68] % 32) + floor32(mem[_68]) + 64 len mem[_68] % 32] or Mask(8 * -(mem[_68] % 32) + 32, -(8 * -(mem[_68] % 32) + 32) + 256, mem[_67 + floor32(mem[_68]) + 74])
        require ext_code.size(stor0)
        call stor0.setAddress(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(mem[_67 + 74 len _70]), address(_58)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
             gas gas_remaining wei
            args stor0, address(_58)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] + 1 >= delegate.return_data[0]
        mem[_67 + 106] = 'balances'
        mem[_67 + 114] = address(_58)
        mem[_67 + 74] = 28
        mem[64] = _67 + 134
        t = _67 + 106
        u = _67 + 134
        s = 28
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_67 + 134] = Mask(32, 192, 'balances') >> 192, mem[_67 + 114 len 24] or Mask(32, 224, mem[_67 + 134])
        _124 = sha3(mem[_67 + 134 len 28])
        mem[_67 + 134] = 0xe2a4853a00000000000000000000000000000000000000000000000000000000
        mem[_67 + 138] = _124
        mem[_67 + 170] = delegate.return_data[0] + 1
        require ext_code.size(stor0)
        call stor0.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args _124, delegate.return_data[0] + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(0, address(_58), _62);
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    emit 0x9e8f321b: 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_555b7678(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require 0 < arg2.length
    _7 = mem[128]
    require arg1
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, mem[128]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not delegate.return_data[12 len 20]
    mem[(32 * arg2.length) + 160] = 'tokenOwner'
    mem[(32 * arg2.length) + 170] = mem[128]
    mem[(32 * arg2.length) + 128] = 42
    require ext_code.size(stor0)
    call stor0.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3('tokenOwner', mem[(32 * arg2.length) + 170 len 22], mem[(32 * arg2.length) + 234 len 10]), arg1
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
    mem[(32 * arg2.length) + 234] = 'balances'
    mem[(32 * arg2.length) + 242] = address(arg1)
    mem[(32 * arg2.length) + 202] = 28
    mem[64] = (32 * arg2.length) + 262
    mem[(32 * arg2.length) + 262 len 0] = None
    mem[(32 * arg2.length) + 298] = delegate.return_data[0] + 1
    require ext_code.size(stor0)
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(Mask(224, 32, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 32), delegate.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(0, arg1, _7);
    mem[(32 * arg2.length) + 266] = 'owner'
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    mem[(32 * arg2.length) + 262] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    while idx < arg2.length:
        require idx < mem[96]
        _147 = mem[(32 * idx) + 128]
        _150 = mem[64]
        mem[mem[64] + 32] = 'tokenOwner'
        mem[mem[64] + 42] = _147
        _151 = mem[64]
        mem[mem[64]] = 42
        mem[64] = mem[64] + 74
        _153 = mem[_151]
        t = _151 + 32
        u = _150 + 74
        s = mem[_151]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_150 + floor32(mem[_151]) + 74] = mem[_151 + -(mem[_151] % 32) + floor32(mem[_151]) + 64 len mem[_151] % 32] or Mask(8 * -(mem[_151] % 32) + 32, -(8 * -(mem[_151] % 32) + 32) + 256, mem[_150 + floor32(mem[_151]) + 74])
        _166 = sha3(mem[_150 + 74 len _153])
        mem[_150 + 74] = 0xca446dd900000000000000000000000000000000000000000000000000000000
        mem[_150 + 78] = _166
        mem[_150 + 110] = address(ext_call.return_data[0])
        require ext_code.size(stor0)
        call stor0.setAddress(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args _166, address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    emit 0xf1200843: address(arg1), 64, mem[mem[64] + 64 len (32 * mem[96]) + 32]
}

function sub_8ab550ef(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require 0 < arg2.length
    _7 = mem[128]
    if arg2.length != 16:
        revert with 0, 'tokenIDs should be 1 + limit'
    require arg1
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, mem[128]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not delegate.return_data[12 len 20]
    mem[(32 * arg2.length) + 160] = 'tokenOwner'
    mem[(32 * arg2.length) + 170] = mem[128]
    mem[(32 * arg2.length) + 128] = 42
    mem[(32 * arg2.length) + 206] = sha3('tokenOwner', mem[(32 * arg2.length) + 170 len 22], mem[(32 * arg2.length) + 234 len 10])
    require ext_code.size(stor0)
    call stor0.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[(32 * arg2.length) + 206], address(arg1)
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
    mem[(32 * arg2.length) + 234] = 'balances'
    mem[(32 * arg2.length) + 242] = address(arg1)
    mem[(32 * arg2.length) + 202] = 28
    mem[64] = (32 * arg2.length) + 262
    mem[(32 * arg2.length) + 262 len 0] = None
    mem[(32 * arg2.length) + 298] = delegate.return_data[0] + 1
    require ext_code.size(stor0)
    call stor0.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(0, Mask(192, 32, Mask(32, 192, 'balances') >> 192, arg1, 0) >> 32), delegate.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(0, arg1, _7);
    mem[(32 * arg2.length) + 266] = 'owner'
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    mem[(32 * arg2.length) + 262] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    while idx < 16:
        _124 = mem[64]
        mem[mem[64] + 32] = 'tokenOwner'
        mem[mem[64] + 42] = _7 + idx
        _125 = mem[64]
        mem[mem[64]] = 42
        mem[64] = mem[64] + 74
        _127 = mem[_125]
        t = _125 + 32
        u = _124 + 74
        s = mem[_125]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_124 + floor32(mem[_125]) + 74] = mem[_125 + -(mem[_125] % 32) + floor32(mem[_125]) + 64 len mem[_125] % 32] or Mask(8 * -(mem[_125] % 32) + 32, -(8 * -(mem[_125] % 32) + 32) + 256, mem[_124 + floor32(mem[_125]) + 74])
        _142 = sha3(mem[_124 + 74 len _127])
        mem[_124 + 74] = 0xca446dd900000000000000000000000000000000000000000000000000000000
        mem[_124 + 78] = _142
        mem[_124 + 110] = address(ext_call.return_data[0])
        require ext_code.size(stor0)
        call stor0.setAddress(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args _142, address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    emit 0xf1200843: address(arg1), 64, mem[mem[64] + 64 len (32 * mem[96]) + 32]
}

function sub_256609b2(?) {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    mem[(32 * arg2.length) + 132] = 'owner'
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 != ext_call.return_data[12 len 20]
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _111 = mem[(32 * idx) + 128]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, mem[(32 * idx) + 128]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require address(delegate.return_data[0])
        mem[(32 * arg2.length) + 164] = mem[(32 * idx) + 128]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, _111
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg2.length) + 132] = 'owner'
        require ext_code.size(stor0)
        call stor0.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args 'owner'
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(delegate.return_data[0]):
            if not address(delegate.return_data[0]) != 1:
                s = not address(delegate.return_data[0])
                idx = idx + 1
                continue 
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
                 gas gas_remaining wei
                args stor0, arg1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0] + 1 >= delegate.return_data[0]
            mem[(32 * arg2.length) + 160] = 'balances'
            mem[(32 * arg2.length) + 168] = address(arg1)
            mem[(32 * arg2.length) + 128] = 28
            t = (32 * arg2.length) + 160
            u = (32 * arg2.length) + 188
            s = 28
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[(32 * arg2.length) + 188] = Mask(32, 192, 'balances') >> 192, mem[(32 * arg2.length) + 168 len 24] or Mask(32, 224, mem[(32 * arg2.length) + 188])
            _207 = sha3(mem[(32 * arg2.length) + 188 len 28])
            mem[(32 * arg2.length) + 188] = 0xe2a4853a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 192] = _207
            mem[(32 * arg2.length) + 224] = delegate.return_data[0] + 1
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args _207, delegate.return_data[0] + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg2.length
            _220 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 220] = 'tokenOwner'
            mem[(32 * arg2.length) + 230] = _220
            mem[(32 * arg2.length) + 188] = 42
            t = (32 * arg2.length) + 220
            u = (32 * arg2.length) + 262
            s = 42
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[(32 * arg2.length) + 294] = mem[(32 * arg2.length) + 274 len 10] or Mask(176, 80, mem[(32 * arg2.length) + 294])
            _271 = sha3(mem[(32 * arg2.length) + 262 len 42])
            mem[(32 * arg2.length) + 262] = 0xca446dd900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 266] = _271
            mem[(32 * arg2.length) + 298] = arg1
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args _271, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg2.length
            emit Transfer(0, arg1, mem[(32 * idx) + 128]);
            require idx < arg2.length
            _292 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 262] = arg1
            mem[(32 * arg2.length) + 294] = _292
            emit Claim(address(arg1), _292);
        else:
            if address(delegate.return_data[0]) == address(ext_call.return_data[0]) != 1:
                s = address(delegate.return_data[0]) == address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
                 gas gas_remaining wei
                args stor0, arg1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0] + 1 >= delegate.return_data[0]
            mem[(32 * arg2.length) + 160] = 'balances'
            mem[(32 * arg2.length) + 168] = address(arg1)
            mem[(32 * arg2.length) + 128] = 28
            t = (32 * arg2.length) + 160
            u = (32 * arg2.length) + 188
            s = 28
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[(32 * arg2.length) + 188] = Mask(32, 192, 'balances') >> 192, mem[(32 * arg2.length) + 168 len 24] or Mask(32, 224, mem[(32 * arg2.length) + 188])
            _214 = sha3(mem[(32 * arg2.length) + 188 len 28])
            mem[(32 * arg2.length) + 188] = 0xe2a4853a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 192] = _214
            mem[(32 * arg2.length) + 224] = delegate.return_data[0] + 1
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args _214, delegate.return_data[0] + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg2.length
            _221 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 220] = 'tokenOwner'
            mem[(32 * arg2.length) + 230] = _221
            mem[(32 * arg2.length) + 188] = 42
            t = (32 * arg2.length) + 220
            u = (32 * arg2.length) + 262
            s = 42
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[(32 * arg2.length) + 294] = mem[(32 * arg2.length) + 274 len 10] or Mask(176, 80, mem[(32 * arg2.length) + 294])
            _278 = sha3(mem[(32 * arg2.length) + 262 len 42])
            mem[(32 * arg2.length) + 262] = 0xca446dd900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 266] = _278
            mem[(32 * arg2.length) + 298] = arg1
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args _278, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg2.length
            emit Transfer(0, arg1, mem[(32 * idx) + 128]);
            require idx < arg2.length
            _296 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 262] = arg1
            mem[(32 * arg2.length) + 294] = _296
            emit Claim(address(arg1), _296);
        require idx < arg2.length
        if not mem[(32 * idx) + 128]:
            revert with 0, 'no claimable tokens available'
    revert with 0, 'no claimable tokens available'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    if msg.sender == delegate.return_data[12 len 20]:
        require arg2
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
        require 1 <= delegate.return_data[0]
        require ext_code.size(stor0)
        call stor0.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 64), delegate.return_data[0] - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
             gas gas_remaining wei
            args stor0, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] + 1 >= delegate.return_data[0]
        require ext_code.size(stor0)
        call stor0.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg2, 0, 0) >> 64), delegate.return_data[0] + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.setAddress(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3('tokenOwner', Mask(176, 80, arg3) >> 80, mem[354 len 10]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, arg3
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[12 len 20]
        require ext_code.size(stor0)
        call stor0.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3('approve', Mask(200, 56, arg3) >> 56, mem[425 len 7])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args sha3('approve', Mask(200, 56, arg3) >> 56, mem[496 len 7]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, arg3
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[12 len 20]
        require ext_code.size(stor0)
        call stor0.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3('approve', Mask(200, 56, arg3) >> 56, mem[231 len 7])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == msg.sender:
            require arg2
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
            require 1 <= delegate.return_data[0]
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 64), delegate.return_data[0] - 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
                 gas gas_remaining wei
                args stor0, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0] + 1 >= delegate.return_data[0]
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg2, 0, 0) >> 64), delegate.return_data[0] + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[397] = sha3('tokenOwner', Mask(176, 80, arg3) >> 80, mem[425 len 10])
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args mem[397], address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require address(delegate.return_data[0])
            require ext_code.size(stor0)
            call stor0.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('approve', Mask(200, 56, arg3) >> 56, mem[496 len 7])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                require ext_code.size(stor0)
                call stor0.setAddress(bytes32 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sha3('approve', Mask(200, 56, arg3) >> 56, mem[567 len 7]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[319] = uint128(msg.sender), Mask(64, 192, 'operatorApproval') >> 192 or Mask(64, 192, mem[319])
            require ext_code.size(stor0)
            call stor0.getBool(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('operatorApproval', Mask(128, 32, delegate.return_data[0]) >> 32, mem[319 len 24])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require arg2
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require address(delegate.return_data[0])
            require arg1 == address(delegate.return_data[0])
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
                 gas gas_remaining wei
                args stor0, arg1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 <= delegate.return_data[0]
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 32, Mask(32, 192, 'balances') >> 192, arg1, 0) >> 32), delegate.return_data[0] - 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
                 gas gas_remaining wei
                args stor0, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0] + 1 >= delegate.return_data[0]
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg2, 0, 0) >> 64), delegate.return_data[0] + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args sha3('tokenOwner', Mask(176, 80, arg3) >> 80, mem[513 len 10]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[12 len 20]
            require ext_code.size(stor0)
            call stor0.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('approve', Mask(200, 56, arg3) >> 56, mem[584 len 7])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20]:
                mem[627] = sha3('approve', Mask(200, 56, arg3) >> 56, mem[655 len 7])
                require ext_code.size(stor0)
                call stor0.setAddress(bytes32 arg1, address arg2) with:
                     gas gas_remaining wei
                    args mem[627], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
    delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
         gas gas_remaining wei
        args stor0, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[12 len 20]
    if msg.sender == delegate.return_data[12 len 20]:
        require arg2
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
        require 1 <= delegate.return_data[0]
        require ext_code.size(stor0)
        call stor0.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 64), delegate.return_data[0] - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
             gas gas_remaining wei
            args stor0, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] + 1 >= delegate.return_data[0]
        require ext_code.size(stor0)
        call stor0.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg2, 0, 0) >> 64), delegate.return_data[0] + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.setAddress(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3('tokenOwner', Mask(176, 80, arg3) >> 80, mem[ceil32(arg4.length) + 354 len 10]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, arg3
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[12 len 20]
        require ext_code.size(stor0)
        call stor0.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3('approve', Mask(200, 56, arg3) >> 56, mem[ceil32(arg4.length) + 425 len 7])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args sha3('approve', Mask(200, 56, arg3) >> 56, mem[ceil32(arg4.length) + 496 len 7]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, arg3
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[12 len 20]
        require ext_code.size(stor0)
        call stor0.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3('approve', Mask(200, 56, arg3) >> 56, mem[ceil32(arg4.length) + 231 len 7])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == msg.sender:
            require arg2
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
            require 1 <= delegate.return_data[0]
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 64), delegate.return_data[0] - 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
                 gas gas_remaining wei
                args stor0, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0] + 1 >= delegate.return_data[0]
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg2, 0, 0) >> 64), delegate.return_data[0] + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + 397] = sha3('tokenOwner', Mask(176, 80, arg3) >> 80, mem[ceil32(arg4.length) + 425 len 10])
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + 397], address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require address(delegate.return_data[0])
            require ext_code.size(stor0)
            call stor0.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('approve', Mask(200, 56, arg3) >> 56, mem[ceil32(arg4.length) + 496 len 7])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                require ext_code.size(stor0)
                call stor0.setAddress(bytes32 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sha3('approve', Mask(200, 56, arg3) >> 56, mem[ceil32(arg4.length) + 567 len 7]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[ceil32(arg4.length) + 319] = uint128(msg.sender), Mask(64, 192, 'operatorApproval') >> 192 or Mask(64, 192, mem[ceil32(arg4.length) + 319])
            require ext_code.size(stor0)
            call stor0.getBool(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('operatorApproval', Mask(128, 32, delegate.return_data[0]) >> 32, mem[ceil32(arg4.length) + 319 len 24])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require arg2
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require address(delegate.return_data[0])
            require arg1 == address(delegate.return_data[0])
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
                 gas gas_remaining wei
                args stor0, arg1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 <= delegate.return_data[0]
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 32, Mask(32, 192, 'balances') >> 192, arg1, 0) >> 32), delegate.return_data[0] - 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
                 gas gas_remaining wei
                args stor0, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0] + 1 >= delegate.return_data[0]
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg2, 0, 0) >> 64), delegate.return_data[0] + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args sha3('tokenOwner', Mask(176, 80, arg3) >> 80, mem[ceil32(arg4.length) + 513 len 10]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[12 len 20]
            require ext_code.size(stor0)
            call stor0.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('approve', Mask(200, 56, arg3) >> 56, mem[ceil32(arg4.length) + 584 len 7])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20]:
                mem[ceil32(arg4.length) + 627] = sha3('approve', Mask(200, 56, arg3) >> 56, mem[ceil32(arg4.length) + 655 len 7])
                require ext_code.size(stor0)
                call stor0.setAddress(bytes32 arg1, address arg2) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + 627], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
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
        mem[384 len 1952] = code.data[18057 len 1952]
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
        mem[_280 + 32 len 32 * _279 + _278] = code.data[18057 len 32 * _279 + _278]
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
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_280]
        _884 = mem[_280]
        mem[mem[64] + 64 len ceil32(mem[_280])] = mem[_280 + 32 len ceil32(mem[_280])]
        if not _884 % 32:
            return 32, mem[mem[64] + 32 len _884 + 32]
        mem[floor32(_884) + mem[64] + 64] = mem[floor32(_884) + mem[64] + -(_884 % 32) + 96 len _884 % 32]
        return 32, mem[mem[64] + 32 len floor32(_884) + 64]
    mem[224 len 32 * s] = code.data[18057 len 32 * s]
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
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_286]
        _887 = mem[_286]
        mem[mem[64] + 64 len ceil32(mem[_286])] = mem[_286 + 32 len ceil32(mem[_286])]
        if not _887 % 32:
            return 32, mem[mem[64] + 32 len _887 + 32]
        mem[floor32(_887) + mem[64] + 64] = mem[floor32(_887) + mem[64] + -(_887 % 32) + 96 len _887 % 32]
        return 32, mem[mem[64] + 32 len floor32(_887) + 64]
    mem[_286 + 32 len 32 * _285 + _284] = code.data[18057 len 32 * _285 + _284]
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
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_286]
    _890 = mem[_286]
    mem[mem[64] + 64 len ceil32(mem[_286])] = mem[_286 + 32 len ceil32(mem[_286])]
    if not _890 % 32:
        return 32, mem[mem[64] + 32 len _890 + 32]
    mem[floor32(_890) + mem[64] + 64] = mem[floor32(_890) + mem[64] + -(_890 % 32) + 96 len _890 % 32]
    return 32, mem[mem[64] + 32 len floor32(_890) + 64]
}

function sub_523c7010(?) {
    mem[128 len arg4.length] = arg4[all]
    require ext_code.size(stor0)
    call stor0.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'owner'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require arg3 >= block.number - 50
    require arg3 <= block.number
    mem[ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg4.length) + 192] = arg2
    mem[ceil32(arg4.length) + 128] = 96
    s = 0
    idx = 96
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    if not s:
        t = s - 1
        idx = 96
        while idx:
            require t < s
            mem[ceil32(arg4.length) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(arg4.length) + ceil32(s) + 320] = 0x19457468657265756d205369676e6564204d6573736167653a0a000000000000
        mem[ceil32(arg4.length) + ceil32(s) + 346 len floor32(s)] = mem[ceil32(arg4.length) + 288 len floor32(s)]
        mem[s + ceil32(arg4.length) + ceil32(s) + 346 len 96] = address(arg1), arg2, arg3
        mem[s + ceil32(arg4.length) + ceil32(s) + 442 len floor32(s + 122)] = 0x19457468657265756d205369676e6564204d6573, mem[ceil32(arg4.length) + 288 len floor32(s)], mem[ceil32(arg4.length) + ceil32(s) + floor32(s) + 346 len -(s % 32) + 32], mem[ceil32(arg4.length) + floor32(s) + -(s % 32) + 320 len s % 32], Mask(8 * floor32(s + 122) + -floor32(s) - 58, -(8 * floor32(s + 122) + -s - 26) + 256, address(arg1), arg2, arg3) << (8 * floor32(s + 122) + -s - 26) - 256
        mem[s + ceil32(arg4.length) + ceil32(s) + floor32(s + 122) + -(s + 122 % 32) + 474 len s + 122 % 32] = Mask(8 * (s + 122 % 32) + -floor32(s + 122) + s + 90, -512, address(arg1), arg2, arg3) << 512, Mask(8 * floor32(s + 122) + -s - 90, -(8 * floor32(s + 122) + -s - 90) + 256, 0x19457468657265756d205369676e6564204d6573736167653a0a) >> -(8 * floor32(s + 122) + -s - 90) + 256
        require arg4.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        signer = erecover(sha3(Mask(8 * floor32(s + 122), -(8 * floor32(s + 122)) + 256, Mask(8 * floor32(s + 122) + -floor32(s) - 58, -(8 * floor32(s + 122) + -s - 26) + 256, address(arg1), arg2, arg3) << (8 * floor32(s + 122) + -s - 26) - 256) << (8 * floor32(s + 122)) - 256, mem[s + ceil32(arg4.length) + ceil32(s) + floor32(s + 122) + 442 len -(s + 122 % 32) + 32], Mask((8 * (s + 122 % 32) + -floor32(s + 122) + s + 90) + (8 * s + -floor32(s + 122) + (s + 122 % 32) + 90) + (8 * floor32(s + 122) + -s - 90) - 256, -(8 * s + -floor32(s + 122) + (s + 122 % 32) + 90) + -(8 * floor32(s + 122) + -s - 90) - 256, address(arg1), arg2, arg3) << (8 * s + -floor32(s + 122) + (s + 122 % 32) + 90) + (8 * floor32(s + 122) + -s - 90) + 256), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[12 len 20]
        require delegate.return_data[12 len 20] == address(signer)
        require arg1
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[12 len 20]
        require address(delegate.return_data[0]) == delegate.return_data[12 len 20]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
             gas gas_remaining wei
            args stor0, address(delegate.return_data[0])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 <= delegate.return_data[0]
        require ext_code.size(stor0)
        call stor0.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, address(delegate.return_data[0]), 0, 0) >> 64), delegate.return_data[0] - 1
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
        call stor0.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 64), delegate.return_data[0] + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.setAddress(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3('tokenOwner', Mask(176, 80, arg2) >> 80, mem[s + ceil32(arg4.length) + ceil32(s) + 700 len 10]), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
        delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
             gas gas_remaining wei
            args stor0, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[12 len 20]
        require ext_code.size(stor0)
        call stor0.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3('approve', Mask(200, 56, arg2) >> 56, mem[s + ceil32(arg4.length) + ceil32(s) + 771 len 7])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args sha3('approve', Mask(200, 56, arg2) >> 56, mem[s + ceil32(arg4.length) + ceil32(s) + 842 len 7]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[ceil32(arg4.length) + 288 len 32 * s] = code.data[18057 len 32 * s]
        t = s - 1
        idx = 96
        while idx:
            require t < s
            mem[ceil32(arg4.length) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(arg4.length) + ceil32(s) + 320] = 0x19457468657265756d205369676e6564204d6573736167653a0a000000000000
        mem[ceil32(arg4.length) + ceil32(s) + 346 len floor32(s)] = mem[ceil32(arg4.length) + 288 len floor32(s)]
        mem[s + ceil32(arg4.length) + ceil32(s) + 346 len 96] = address(arg1), arg2, arg3
        mem[s + ceil32(arg4.length) + ceil32(s) + 442 len floor32(s + 122)] = 0x19457468657265756d205369676e6564204d6573, mem[ceil32(arg4.length) + 288 len floor32(s)], mem[ceil32(arg4.length) + ceil32(s) + floor32(s) + 346 len -(s % 32) + 32], mem[ceil32(arg4.length) + floor32(s) + -(s % 32) + 320 len s % 32], Mask(8 * floor32(s + 122) + -floor32(s) - 58, -(8 * floor32(s + 122) + -s - 26) + 256, address(arg1), arg2, arg3) << (8 * floor32(s + 122) + -s - 26) - 256
        mem[s + ceil32(arg4.length) + ceil32(s) + floor32(s + 122) + -(s + 122 % 32) + 474 len s + 122 % 32] = Mask(8 * (s + 122 % 32) + -floor32(s + 122) + s + 90, -512, address(arg1), arg2, arg3) << 512, Mask(8 * floor32(s + 122) + -s - 90, -(8 * floor32(s + 122) + -s - 90) + 256, 0x19457468657265756d205369676e6564204d6573736167653a0a) >> -(8 * floor32(s + 122) + -s - 90) + 256
        require arg4.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(Mask(8 * floor32(s + 122), -(8 * floor32(s + 122)) + 256, Mask(8 * floor32(s + 122) + -floor32(s) - 58, -(8 * floor32(s + 122) + -s - 26) + 256, address(arg1), arg2, arg3) << (8 * floor32(s + 122) + -s - 26) - 256) << (8 * floor32(s + 122)) - 256, mem[s + ceil32(arg4.length) + ceil32(s) + floor32(s + 122) + 442 len -(s + 122 % 32) + 32], Mask((8 * (s + 122 % 32) + -floor32(s + 122) + s + 90) + (8 * s + -floor32(s + 122) + (s + 122 % 32) + 90) + (8 * floor32(s + 122) + -s - 90) - 256, -(8 * s + -floor32(s + 122) + (s + 122 % 32) + 90) + -(8 * floor32(s + 122) + -s - 90) - 256, address(arg1), arg2, arg3) << (8 * s + -floor32(s + 122) + (s + 122 % 32) + 90) + (8 * floor32(s + 122) + -s - 90) + 256), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[12 len 20]
            require delegate.return_data[12 len 20] == address(signer)
            require arg1
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[12 len 20]
            require address(delegate.return_data[0]) == delegate.return_data[12 len 20]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
                 gas gas_remaining wei
                args stor0, address(delegate.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 <= delegate.return_data[0]
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, address(delegate.return_data[0]), 0, 0) >> 64), delegate.return_data[0] - 1
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
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 64), delegate.return_data[0] + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args sha3('tokenOwner', Mask(176, 80, arg2) >> 80, mem[s + ceil32(arg4.length) + ceil32(s) + 700 len 10]), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[12 len 20]
            require ext_code.size(stor0)
            call stor0.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('approve', Mask(200, 56, arg2) >> 56, mem[s + ceil32(arg4.length) + ceil32(s) + 771 len 7])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                call stor0.setAddress(bytes32 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sha3('approve', Mask(200, 56, arg2) >> 56, mem[s + ceil32(arg4.length) + ceil32(s) + 842 len 7]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
            signer = erecover(sha3(Mask(8 * floor32(s + 122), -(8 * floor32(s + 122)) + 256, Mask(8 * floor32(s + 122) + -floor32(s) - 58, -(8 * floor32(s + 122) + -s - 26) + 256, address(arg1), arg2, arg3) << (8 * floor32(s + 122) + -s - 26) - 256) << (8 * floor32(s + 122)) - 256, mem[s + ceil32(arg4.length) + ceil32(s) + floor32(s + 122) + 442 len -(s + 122 % 32) + 32], Mask((8 * (s + 122 % 32) + -floor32(s + 122) + s + 90) + (8 * s + -floor32(s + 122) + (s + 122 % 32) + 90) + (8 * floor32(s + 122) + -s - 90) - 256, -(8 * s + -floor32(s + 122) + (s + 122 % 32) + 90) + -(8 * floor32(s + 122) + -s - 90) - 256, address(arg1), arg2, arg3) << (8 * s + -floor32(s + 122) + (s + 122 % 32) + 90) + (8 * floor32(s + 122) + -s - 90) + 256), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[12 len 20]
            require delegate.return_data[12 len 20] == address(signer)
            require arg1
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[12 len 20]
            require address(delegate.return_data[0]) == delegate.return_data[12 len 20]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0x8603f860 with:
                 gas gas_remaining wei
                args stor0, address(delegate.return_data[0])
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 <= delegate.return_data[0]
            require ext_code.size(stor0)
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(0, Mask(192, 64, Mask(32, 192, 'balances') >> 192, address(delegate.return_data[0]), 0, 0) >> 64), delegate.return_data[0] - 1
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
            call stor0.setUint(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(Mask(224, 32, Mask(32, 192, 'balances') >> 192, arg1, 0, 0) >> 32), delegate.return_data[0] + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor0)
            call stor0.setAddress(bytes32 arg1, address arg2) with:
                 gas gas_remaining wei
                args sha3('tokenOwner', Mask(176, 80, arg2) >> 80, mem[s + ceil32(arg4.length) + ceil32(s) + 700 len 10]), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1)
            delegate 0xb4d3941e455b2e31a673091bc3c44b4dc76e83c1.0xb5fd4808 with:
                 gas gas_remaining wei
                args stor0, arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[12 len 20]
            require ext_code.size(stor0)
            call stor0.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('approve', Mask(200, 56, arg2) >> 56, mem[s + ceil32(arg4.length) + ceil32(s) + 771 len 7])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                require ext_code.size(stor0)
                call stor0.setAddress(bytes32 arg1, address arg2) with:
                     gas gas_remaining wei
                    args sha3('approve', Mask(200, 56, arg2) >> 56, mem[s + ceil32(arg4.length) + ceil32(s) + 842 len 7]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(address(delegate.return_data[0]), arg1, arg2);
}



}
