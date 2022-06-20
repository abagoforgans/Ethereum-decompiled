contract main {




// =====================  Runtime code  =====================


#
#  - sub_103e4510(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor102;
address stor103;
address stor104;
address stor105;
array of uint256 stor109;
address stor110;
address stor111;
array of struct stor112;
mapping of uint256 stor113;
mapping of uint256 sub_5c5329fc;

function sub_5c5329fc(?) {
    return sub_5c5329fc[address(arg1)]
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

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_5c019d2e(?) {
    require msg.sender == owner
    stor109[] = Array(len=arg1.length, data=arg1[all])
}

function sub_1e8d273a(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor105 = arg1
}

function sub_22cc9a02(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor110 = arg1
}

function sub_4081eead(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor102 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLibAddress(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor104 = arg1
}

function setCardsAddress(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor103 = arg1
}

function setOracleAddress(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor111 = arg1
}

function sub_ae70e17a(?) {
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(stor102)
    call stor102.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8a06e559(?) {
    require ext_code.size(stor102)
    call stor102.isTokenFrozen(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require ext_code.size(stor102)
    call stor102.0x2f745c59 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setContractAddresses(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid controller address supplied'
    if not arg2:
        revert with 0, 'Invalid oracle address supplied'
    if not arg3:
        revert with 0, 'Invalid cards address supplied'
    if not arg4:
        revert with 0, 'Invalid gum address supplied'
    if not arg5:
        revert with 0, 'Invalid lib address supplied'
    stor110 = arg1
    stor111 = arg2
    stor103 = arg3
    stor105 = arg4
    stor104 = arg5
}

function sub_d47c4ec3(?) {
    if stor110 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    if not arg1:
        revert with 0, 'Invalid address supplied'
    if sub_5c5329fc[address(arg1)] <= 0:
        revert with 0, 'No GUM to Claim'
    require ext_code.size(stor105)
    call stor105.0x13f48c88 with:
         gas gas_remaining wei
        args address(arg1), sub_5c5329fc[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_5c5329fc[address(arg1)] = 0
    return sub_5c5329fc[address(arg1)]
}

function sub_314903e0(?) {
    if arg1 < 0:
        revert with 0, 'Invalid packId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Invalid packId supplied'
    mem[128] = uint256(stor112[arg1].field_0)
    idx = 128
    s = 0
    while stor112[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(stor112[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor112[arg1].length, data=mem[128 len stor112[arg1].length])
}

function sub_5a9e52c6(?) {
    if stor110 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    require ext_code.size(stor102)
    call stor102.isTokenFrozen(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed Unopened Packs'
    if arg2 < 0:
        revert with 0, 'Invalid packId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        revert with 0, 'Invalid packId supplied'
    require ext_code.size(stor102)
    call stor102.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid owner supplied or owner is not pack-owner'
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid owner supplied or owner is not pack-owner'
    stor113[arg2] = arg3
}

function initialize(address arg1) {
    if uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    mem[96] = 555
    mem[128] = 725
    mem[160] = 1000
    s = 106
    idx = 96
    while 192 > idx:
        uint16(stor[s].field_0) = mem[idx + 30 len 2]
        Mask(240, 0, stor[s].field_16) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 109
    while 109 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[224] = 'https://crypto-cards.io/pack-inf'
    mem[256] = 'o/'
    stor109.length = 69
    s = 0
    idx = 224
    while 258 > idx:
        stor109[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor109.length + 31 / 32 > idx:
        stor109[idx] = 0
        idx = idx + 1
        continue 
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_c84d914f(?) {
    if stor110 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    require ext_code.size(stor102)
    call stor102.isTokenFrozen(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed Unopened Packs'
    if arg3 < 0:
        revert with 0, 'Invalid packId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 >= ext_call.return_data[0]:
        revert with 0, 'Invalid packId supplied'
    require ext_code.size(stor102)
    call stor102.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid owner supplied or owner is not pack-owner'
    if arg2 != ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid owner supplied or owner is not pack-owner'
    if arg1 == ext_call.return_data[12 len 20]:
        revert with 0, 'Cannot transfer pack to self'
    if stor113[arg3] <= 0:
        revert with 0, 'Pack is not for sale'
    if arg4 < stor113[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pack price is greater than the price paid'
    if not address(ext_call.return_data[0]):
        revert with 0, 'Invalid from address supplied'
    if not arg1:
        revert with 0, 'Invalid to address supplied'
    stor113[arg3] = 0
    require ext_code.size(stor102)
    call stor102.tokenTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return stor113[arg3]
}

function sub_076f2aa7(?) {
    mem[96 len 256] = code.data[18020 len 256]
    mem[352 len 256] = code.data[18020 len 256]
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    if stor110 != msg.sender:
        revert with 0, 'Action only allowed by Controller contract'
    require ext_code.size(stor102)
    call stor102.isTokenFrozen(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        revert with 0, 'Action only allowed Unopened Packs'
    if arg2 < 0:
        revert with 0, 'Invalid packId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        revert with 0, 'Invalid packId supplied'
    require ext_code.size(stor102)
    call stor102.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'opener must be owner of pack'
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0, 'opener must be owner of pack'
    mem[32] = 112
    mem[736] = stor112[arg2].length
    mem[0] = sha3(arg2, 112)
    mem[768] = uint256(stor112[arg2].field_0)
    idx = 768
    s = 0
    while stor112[arg2].length + 736 > idx:
        mem[idx + 32] = uint256(stor112[arg2][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor112[arg2].length) + 768] = 0
    mem[ceil32(stor112[arg2].length) + 800] = 0
    mem[ceil32(stor112[arg2].length) + 832] = stor112[arg2].length
    mem[ceil32(stor112[arg2].length) + 864] = 768
    mem[ceil32(stor112[arg2].length) + 896] = 1
    mem[ceil32(stor112[arg2].length) + 928] = '.'
    mem[ceil32(stor112[arg2].length) + 960] = 0
    mem[ceil32(stor112[arg2].length) + 992] = 0
    mem[64] = ceil32(stor112[arg2].length) + 1088
    mem[ceil32(stor112[arg2].length) + 1024] = 1
    mem[ceil32(stor112[arg2].length) + 1056] = ceil32(stor112[arg2].length) + 928
    idx = 0
    while idx < 8:
        _2464 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2464] = 0
        mem[_2464 + 32] = 0
        _2555 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2555] = 0
        mem[_2555 + 32] = 0
        _2568 = mem[ceil32(stor112[arg2].length) + 832]
        _2569 = mem[ceil32(stor112[arg2].length) + 864]
        _2570 = mem[ceil32(stor112[arg2].length) + 1024]
        if mem[ceil32(stor112[arg2].length) + 1024] > mem[ceil32(stor112[arg2].length) + 832]:
            mem[_2464 + 32] = mem[ceil32(stor112[arg2].length) + 864]
            mem[_2464] = _2569 + _2568 - mem[ceil32(stor112[arg2].length) + 864]
            if _2569 + _2568 == mem[ceil32(stor112[arg2].length) + 864] + mem[ceil32(stor112[arg2].length) + 832]:
                mem[ceil32(stor112[arg2].length) + 832] = 0
                _2915 = mem[_2464]
                _2916 = mem[64]
                mem[mem[64]] = mem[_2464]
                mem[64] = mem[64] + ceil32(_2915) + 32
                if not _2915:
                    s = mem[_2464]
                    t = mem[_2464 + 32]
                    u = _2916 + 32
                    while s >= 32:
                        mem[u] = mem[t]
                        s = s - 32
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2916 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_2916 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                    _3731 = mem[64]
                    mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[_2916]
                    _3733 = mem[_2916]
                    s = 0
                    while s < _3733:
                        mem[mem[64] + s + 100] = mem[_2916 + s + 32]
                        s = s + 32
                        continue 
                    if not _3733 % 32:
                        require ext_code.size(stor103)
                        call stor103.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3733 + _3731 + -mem[64] + 96]
                    else:
                        mem[floor32(_3733) + _3731 + 100] = mem[floor32(_3733) + _3731 + -(_3733 % 32) + 132 len _3733 % 32]
                        require ext_code.size(stor103)
                        call stor103.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_3733) + _3731 + -mem[64] + 128]
                else:
                    mem[_2916 + 32 len 32 * _2915] = code.data[18020 len 32 * _2915]
                    s = mem[_2464]
                    t = mem[_2464 + 32]
                    u = _2916 + 32
                    while s >= 32:
                        mem[u] = mem[t]
                        s = s - 32
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2916 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_2916 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                    _3734 = mem[64]
                    mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[_2916]
                    _3736 = mem[_2916]
                    s = 0
                    while s < _3736:
                        mem[mem[64] + s + 100] = mem[_2916 + s + 32]
                        s = s + 32
                        continue 
                    if not _3736 % 32:
                        require ext_code.size(stor103)
                        call stor103.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3736 + _3734 + -mem[64] + 96]
                    else:
                        mem[floor32(_3736) + _3734 + 100] = mem[floor32(_3736) + _3734 + -(_3736 % 32) + 132 len _3736 % 32]
                        require ext_code.size(stor103)
                        call stor103.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_3736) + _3734 + -mem[64] + 128]
            else:
                mem[ceil32(stor112[arg2].length) + 832] = mem[ceil32(stor112[arg2].length) + 832] - mem[_2464] - mem[ceil32(stor112[arg2].length) + 1024]
                mem[ceil32(stor112[arg2].length) + 864] = _2569 + _2568 + mem[ceil32(stor112[arg2].length) + 1024]
                _2913 = mem[_2464]
                _2914 = mem[64]
                mem[mem[64]] = mem[_2464]
                mem[64] = mem[64] + ceil32(_2913) + 32
                if not _2913:
                    s = mem[_2464]
                    t = mem[_2464 + 32]
                    u = _2914 + 32
                    while s >= 32:
                        mem[u] = mem[t]
                        s = s - 32
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2914 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_2914 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                    _3725 = mem[64]
                    mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[_2914]
                    _3727 = mem[_2914]
                    s = 0
                    while s < _3727:
                        mem[mem[64] + s + 100] = mem[_2914 + s + 32]
                        s = s + 32
                        continue 
                    if not _3727 % 32:
                        require ext_code.size(stor103)
                        call stor103.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3727 + _3725 + -mem[64] + 96]
                    else:
                        mem[floor32(_3727) + _3725 + 100] = mem[floor32(_3727) + _3725 + -(_3727 % 32) + 132 len _3727 % 32]
                        require ext_code.size(stor103)
                        call stor103.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_3727) + _3725 + -mem[64] + 128]
                else:
                    mem[_2914 + 32 len 32 * _2913] = code.data[18020 len 32 * _2913]
                    s = mem[_2464]
                    t = mem[_2464 + 32]
                    u = _2914 + 32
                    while s >= 32:
                        mem[u] = mem[t]
                        s = s - 32
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2914 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_2914 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                    _3728 = mem[64]
                    mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = mem[_2914]
                    _3730 = mem[_2914]
                    s = 0
                    while s < _3730:
                        mem[mem[64] + s + 100] = mem[_2914 + s + 32]
                        s = s + 32
                        continue 
                    if not _3730 % 32:
                        require ext_code.size(stor103)
                        call stor103.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3730 + _3728 + -mem[64] + 96]
                    else:
                        mem[floor32(_3730) + _3728 + 100] = mem[floor32(_3730) + _3728 + -(_3730 % 32) + 132 len _3730 % 32]
                        require ext_code.size(stor103)
                        call stor103.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_3730) + _3728 + -mem[64] + 128]
        else:
            if mem[ceil32(stor112[arg2].length) + 1024] > 32:
                _2660 = sha3(mem[mem[ceil32(stor112[arg2].length) + 1056] len mem[ceil32(stor112[arg2].length) + 1024]])
                t = 0
                s = 0
                t = mem[ceil32(stor112[arg2].length) + 864]
                while s <= _2568 - _2570:
                    if _2660 != sha3(mem[t len _2570]):
                        t = sha3(mem[t len _2570])
                        s = s + 1
                        t = t + 1
                        continue 
                    mem[_2464 + 32] = mem[ceil32(stor112[arg2].length) + 864]
                    mem[_2464] = t - mem[ceil32(stor112[arg2].length) + 864]
                    if t == mem[ceil32(stor112[arg2].length) + 864] + mem[ceil32(stor112[arg2].length) + 832]:
                        mem[ceil32(stor112[arg2].length) + 832] = 0
                        _4083 = mem[_2464]
                        _4084 = mem[64]
                        mem[mem[64]] = mem[_2464]
                        mem[64] = mem[64] + ceil32(_4083) + 32
                        if not _4083:
                            s = mem[_2464]
                            t = mem[_2464 + 32]
                            u = _4084 + 32
                            while s >= 32:
                                mem[u] = mem[t]
                                s = s - 32
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4084 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4084 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                            _4607 = mem[64]
                            mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_4084]
                            _4609 = mem[_4084]
                            s = 0
                            while s < _4609:
                                mem[mem[64] + s + 100] = mem[_4084 + s + 32]
                                s = s + 32
                                continue 
                            if not _4609 % 32:
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4609 + _4607 + -mem[64] + 96]
                            else:
                                mem[floor32(_4609) + _4607 + 100] = mem[floor32(_4609) + _4607 + -(_4609 % 32) + 132 len _4609 % 32]
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_4609) + _4607 + -mem[64] + 128]
                        else:
                            mem[_4084 + 32 len 32 * _4083] = code.data[18020 len 32 * _4083]
                            s = mem[_2464]
                            t = mem[_2464 + 32]
                            u = _4084 + 32
                            while s >= 32:
                                mem[u] = mem[t]
                                s = s - 32
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4084 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4084 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                            _4610 = mem[64]
                            mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_4084]
                            _4612 = mem[_4084]
                            s = 0
                            while s < _4612:
                                mem[mem[64] + s + 100] = mem[_4084 + s + 32]
                                s = s + 32
                                continue 
                            if not _4612 % 32:
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4612 + _4610 + -mem[64] + 96]
                            else:
                                mem[floor32(_4612) + _4610 + 100] = mem[floor32(_4612) + _4610 + -(_4612 % 32) + 132 len _4612 % 32]
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_4612) + _4610 + -mem[64] + 128]
                    else:
                        mem[ceil32(stor112[arg2].length) + 832] = mem[ceil32(stor112[arg2].length) + 832] - mem[_2464] - mem[ceil32(stor112[arg2].length) + 1024]
                        mem[ceil32(stor112[arg2].length) + 864] = t + mem[ceil32(stor112[arg2].length) + 1024]
                        _4081 = mem[_2464]
                        _4082 = mem[64]
                        mem[mem[64]] = mem[_2464]
                        mem[64] = mem[64] + ceil32(_4081) + 32
                        if not _4081:
                            s = mem[_2464]
                            t = mem[_2464 + 32]
                            u = _4082 + 32
                            while s >= 32:
                                mem[u] = mem[t]
                                s = s - 32
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4082 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4082 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                            _4601 = mem[64]
                            mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_4082]
                            _4603 = mem[_4082]
                            s = 0
                            while s < _4603:
                                mem[mem[64] + s + 100] = mem[_4082 + s + 32]
                                s = s + 32
                                continue 
                            if not _4603 % 32:
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4603 + _4601 + -mem[64] + 96]
                            else:
                                mem[floor32(_4603) + _4601 + 100] = mem[floor32(_4603) + _4601 + -(_4603 % 32) + 132 len _4603 % 32]
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_4603) + _4601 + -mem[64] + 128]
                        else:
                            mem[_4082 + 32 len 32 * _4081] = code.data[18020 len 32 * _4081]
                            s = mem[_2464]
                            t = mem[_2464 + 32]
                            u = _4082 + 32
                            while s >= 32:
                                mem[u] = mem[t]
                                s = s - 32
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4082 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4082 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                            _4604 = mem[64]
                            mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_4082]
                            _4606 = mem[_4082]
                            s = 0
                            while s < _4606:
                                mem[mem[64] + s + 100] = mem[_4082 + s + 32]
                                s = s + 32
                                continue 
                            if not _4606 % 32:
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4606 + _4604 + -mem[64] + 96]
                            else:
                                mem[floor32(_4606) + _4604 + 100] = mem[floor32(_4606) + _4604 + -(_4606 % 32) + 132 len _4606 % 32]
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_4606) + _4604 + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < 8
                    mem[(32 * idx) + 352] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                mem[_2464 + 32] = mem[ceil32(stor112[arg2].length) + 864]
                mem[_2464] = _2569 + _2568 - mem[ceil32(stor112[arg2].length) + 864]
                if _2569 + _2568 == mem[ceil32(stor112[arg2].length) + 864] + mem[ceil32(stor112[arg2].length) + 832]:
                    mem[ceil32(stor112[arg2].length) + 832] = 0
                    _4079 = mem[_2464]
                    _4080 = mem[64]
                    mem[mem[64]] = mem[_2464]
                    mem[64] = mem[64] + ceil32(_4079) + 32
                    if not _4079:
                        s = mem[_2464]
                        t = mem[_2464 + 32]
                        u = _4080 + 32
                        while s >= 32:
                            mem[u] = mem[t]
                            s = s - 32
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_4080 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4080 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                        _4595 = mem[64]
                        mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_4080]
                        _4597 = mem[_4080]
                        s = 0
                        while s < _4597:
                            mem[mem[64] + s + 100] = mem[_4080 + s + 32]
                            s = s + 32
                            continue 
                        if not _4597 % 32:
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4597 + _4595 + -mem[64] + 96]
                        else:
                            mem[floor32(_4597) + _4595 + 100] = mem[floor32(_4597) + _4595 + -(_4597 % 32) + 132 len _4597 % 32]
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_4597) + _4595 + -mem[64] + 128]
                    else:
                        mem[_4080 + 32 len 32 * _4079] = code.data[18020 len 32 * _4079]
                        s = mem[_2464]
                        t = mem[_2464 + 32]
                        u = _4080 + 32
                        while s >= 32:
                            mem[u] = mem[t]
                            s = s - 32
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_4080 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4080 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                        _4598 = mem[64]
                        mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_4080]
                        _4600 = mem[_4080]
                        s = 0
                        while s < _4600:
                            mem[mem[64] + s + 100] = mem[_4080 + s + 32]
                            s = s + 32
                            continue 
                        if not _4600 % 32:
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4600 + _4598 + -mem[64] + 96]
                        else:
                            mem[floor32(_4600) + _4598 + 100] = mem[floor32(_4600) + _4598 + -(_4600 % 32) + 132 len _4600 % 32]
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_4600) + _4598 + -mem[64] + 128]
                else:
                    mem[ceil32(stor112[arg2].length) + 832] = mem[ceil32(stor112[arg2].length) + 832] - mem[_2464] - mem[ceil32(stor112[arg2].length) + 1024]
                    mem[ceil32(stor112[arg2].length) + 864] = _2569 + _2568 + mem[ceil32(stor112[arg2].length) + 1024]
                    _4077 = mem[_2464]
                    _4078 = mem[64]
                    mem[mem[64]] = mem[_2464]
                    mem[64] = mem[64] + ceil32(_4077) + 32
                    if not _4077:
                        s = mem[_2464]
                        t = mem[_2464 + 32]
                        u = _4078 + 32
                        while s >= 32:
                            mem[u] = mem[t]
                            s = s - 32
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_4078 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4078 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                        _4589 = mem[64]
                        mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_4078]
                        _4591 = mem[_4078]
                        s = 0
                        while s < _4591:
                            mem[mem[64] + s + 100] = mem[_4078 + s + 32]
                            s = s + 32
                            continue 
                        if not _4591 % 32:
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4591 + _4589 + -mem[64] + 96]
                        else:
                            mem[floor32(_4591) + _4589 + 100] = mem[floor32(_4591) + _4589 + -(_4591 % 32) + 132 len _4591 % 32]
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_4591) + _4589 + -mem[64] + 128]
                    else:
                        mem[_4078 + 32 len 32 * _4077] = code.data[18020 len 32 * _4077]
                        s = mem[_2464]
                        t = mem[_2464 + 32]
                        u = _4078 + 32
                        while s >= 32:
                            mem[u] = mem[t]
                            s = s - 32
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_4078 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4078 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                        _4592 = mem[64]
                        mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_4078]
                        _4594 = mem[_4078]
                        s = 0
                        while s < _4594:
                            mem[mem[64] + s + 100] = mem[_4078 + s + 32]
                            s = s + 32
                            continue 
                        if not _4594 % 32:
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4594 + _4592 + -mem[64] + 96]
                        else:
                            mem[floor32(_4594) + _4592 + 100] = mem[floor32(_4594) + _4592 + -(_4594 % 32) + 132 len _4594 % 32]
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_4594) + _4592 + -mem[64] + 128]
            else:
                _2661 = mem[mem[ceil32(stor112[arg2].length) + 1056]]
                s = mem[mem[ceil32(stor112[arg2].length) + 864]] and !(2^(8 * -mem[ceil32(stor112[arg2].length) + 1024] + 32) - 1)
                t = mem[ceil32(stor112[arg2].length) + 864]
                while s != _2661 and !(2^(8 * -_2570 + 32) - 1):
                    if t < _2569 + _2568 - _2570:
                        s = mem[t + 1] and !(2^(8 * -_2570 + 32) - 1)
                        t = t + 1
                        continue 
                    mem[_2464 + 32] = mem[ceil32(stor112[arg2].length) + 864]
                    mem[_2464] = _2569 + _2568 - mem[ceil32(stor112[arg2].length) + 864]
                    if _2569 + _2568 == mem[ceil32(stor112[arg2].length) + 864] + mem[ceil32(stor112[arg2].length) + 832]:
                        mem[ceil32(stor112[arg2].length) + 832] = 0
                        _4091 = mem[_2464]
                        _4092 = mem[64]
                        mem[mem[64]] = mem[_2464]
                        mem[64] = mem[64] + ceil32(_4091) + 32
                        if not _4091:
                            s = mem[_2464]
                            t = mem[_2464 + 32]
                            u = _4092 + 32
                            while s >= 32:
                                mem[u] = mem[t]
                                s = s - 32
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4092 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4092 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                            _4631 = mem[64]
                            mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_4092]
                            _4633 = mem[_4092]
                            s = 0
                            while s < _4633:
                                mem[mem[64] + s + 100] = mem[_4092 + s + 32]
                                s = s + 32
                                continue 
                            if not _4633 % 32:
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4633 + _4631 + -mem[64] + 96]
                            else:
                                mem[floor32(_4633) + _4631 + 100] = mem[floor32(_4633) + _4631 + -(_4633 % 32) + 132 len _4633 % 32]
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_4633) + _4631 + -mem[64] + 128]
                        else:
                            mem[_4092 + 32 len 32 * _4091] = code.data[18020 len 32 * _4091]
                            s = mem[_2464]
                            t = mem[_2464 + 32]
                            u = _4092 + 32
                            while s >= 32:
                                mem[u] = mem[t]
                                s = s - 32
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4092 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4092 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                            mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_4092]
                            _4636 = mem[_4092]
                            s = 0
                            while s < _4636:
                                mem[mem[64] + s + 100] = mem[_4092 + s + 32]
                                s = s + 32
                                continue 
                            if not _4636 % 32:
                                require ext_code.size(stor103)
                                call stor103.0xcd7e53cc with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 64, mem[mem[64] + 68 len _4636 + 32]
                            else:
                                mem[floor32(_4636) + mem[64] + 100] = mem[floor32(_4636) + mem[64] + -(_4636 % 32) + 132 len _4636 % 32]
                                require ext_code.size(stor103)
                                call stor103.0xcd7e53cc with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 64, mem[mem[64] + 68 len floor32(_4636) + 64]
                    else:
                        mem[ceil32(stor112[arg2].length) + 832] = mem[ceil32(stor112[arg2].length) + 832] - mem[_2464] - mem[ceil32(stor112[arg2].length) + 1024]
                        mem[ceil32(stor112[arg2].length) + 864] = _2569 + _2568 + mem[ceil32(stor112[arg2].length) + 1024]
                        _4089 = mem[_2464]
                        _4090 = mem[64]
                        mem[mem[64]] = mem[_2464]
                        mem[64] = mem[64] + ceil32(_4089) + 32
                        if not _4089:
                            s = mem[_2464]
                            t = mem[_2464 + 32]
                            u = _4090 + 32
                            while s >= 32:
                                mem[u] = mem[t]
                                s = s - 32
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4090 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4090 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                            _4625 = mem[64]
                            mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_4090]
                            _4627 = mem[_4090]
                            s = 0
                            while s < _4627:
                                mem[mem[64] + s + 100] = mem[_4090 + s + 32]
                                s = s + 32
                                continue 
                            if not _4627 % 32:
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4627 + _4625 + -mem[64] + 96]
                            else:
                                mem[floor32(_4627) + _4625 + 100] = mem[floor32(_4627) + _4625 + -(_4627 % 32) + 132 len _4627 % 32]
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_4627) + _4625 + -mem[64] + 128]
                        else:
                            mem[_4090 + 32 len 32 * _4089] = code.data[18020 len 32 * _4089]
                            s = mem[_2464]
                            t = mem[_2464 + 32]
                            u = _4090 + 32
                            while s >= 32:
                                mem[u] = mem[t]
                                s = s - 32
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4090 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4090 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                            _4628 = mem[64]
                            mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(ext_call.return_data[0])
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 68] = mem[_4090]
                            _4630 = mem[_4090]
                            s = 0
                            while s < _4630:
                                mem[mem[64] + s + 100] = mem[_4090 + s + 32]
                                s = s + 32
                                continue 
                            if not _4630 % 32:
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4630 + _4628 + -mem[64] + 96]
                            else:
                                mem[floor32(_4630) + _4628 + 100] = mem[floor32(_4630) + _4628 + -(_4630 % 32) + 132 len _4630 % 32]
                                require ext_code.size(stor103)
                                call stor103.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_4630) + _4628 + -mem[64] + 128]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < 8
                    mem[(32 * idx) + 352] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                mem[_2464 + 32] = mem[ceil32(stor112[arg2].length) + 864]
                mem[_2464] = t - mem[ceil32(stor112[arg2].length) + 864]
                if t == mem[ceil32(stor112[arg2].length) + 864] + mem[ceil32(stor112[arg2].length) + 832]:
                    mem[ceil32(stor112[arg2].length) + 832] = 0
                    _4019 = mem[_2464]
                    _4020 = mem[64]
                    mem[mem[64]] = mem[_2464]
                    mem[64] = mem[64] + ceil32(_4019) + 32
                    if not _4019:
                        s = mem[_2464]
                        t = mem[_2464 + 32]
                        u = _4020 + 32
                        while s >= 32:
                            mem[u] = mem[t]
                            s = s - 32
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_4020 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4020 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                        _4619 = mem[64]
                        mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_4020]
                        _4621 = mem[_4020]
                        s = 0
                        while s < _4621:
                            mem[mem[64] + s + 100] = mem[_4020 + s + 32]
                            s = s + 32
                            continue 
                        if not _4621 % 32:
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4621 + _4619 + -mem[64] + 96]
                        else:
                            mem[floor32(_4621) + _4619 + 100] = mem[floor32(_4621) + _4619 + -(_4621 % 32) + 132 len _4621 % 32]
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_4621) + _4619 + -mem[64] + 128]
                    else:
                        mem[_4020 + 32 len 32 * _4019] = code.data[18020 len 32 * _4019]
                        s = mem[_2464]
                        t = mem[_2464 + 32]
                        u = _4020 + 32
                        while s >= 32:
                            mem[u] = mem[t]
                            s = s - 32
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_4020 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4020 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                        _4622 = mem[64]
                        mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_4020]
                        _4624 = mem[_4020]
                        s = 0
                        while s < _4624:
                            mem[mem[64] + s + 100] = mem[_4020 + s + 32]
                            s = s + 32
                            continue 
                        if not _4624 % 32:
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4624 + _4622 + -mem[64] + 96]
                        else:
                            mem[floor32(_4624) + _4622 + 100] = mem[floor32(_4624) + _4622 + -(_4624 % 32) + 132 len _4624 % 32]
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_4624) + _4622 + -mem[64] + 128]
                else:
                    mem[ceil32(stor112[arg2].length) + 832] = mem[ceil32(stor112[arg2].length) + 832] - mem[_2464] - mem[ceil32(stor112[arg2].length) + 1024]
                    mem[ceil32(stor112[arg2].length) + 864] = t + mem[ceil32(stor112[arg2].length) + 1024]
                    _4017 = mem[_2464]
                    _4018 = mem[64]
                    mem[mem[64]] = mem[_2464]
                    mem[64] = mem[64] + ceil32(_4017) + 32
                    if not _4017:
                        s = mem[_2464]
                        t = mem[_2464 + 32]
                        u = _4018 + 32
                        while s >= 32:
                            mem[u] = mem[t]
                            s = s - 32
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_4018 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4018 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                        mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_4018]
                        _4615 = mem[_4018]
                        s = 0
                        while s < _4615:
                            mem[mem[64] + s + 100] = mem[_4018 + s + 32]
                            s = s + 32
                            continue 
                        if not _4615 % 32:
                            require ext_code.size(stor103)
                            call stor103.0xcd7e53cc with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), 64, mem[mem[64] + 68 len _4615 + 32]
                        else:
                            mem[floor32(_4615) + mem[64] + 100] = mem[floor32(_4615) + mem[64] + -(_4615 % 32) + 132 len _4615 % 32]
                            require ext_code.size(stor103)
                            call stor103.0xcd7e53cc with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), 64, mem[mem[64] + 68 len floor32(_4615) + 64]
                    else:
                        mem[_4018 + 32 len 32 * _4017] = code.data[18020 len 32 * _4017]
                        s = mem[_2464]
                        t = mem[_2464 + 32]
                        u = _4018 + 32
                        while s >= 32:
                            mem[u] = mem[t]
                            s = s - 32
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_4018 + floor32(mem[_2464]) + 32] = Mask(8 * -(mem[_2464] % 32) + 32, -(8 * -(mem[_2464] % 32) + 32) + 256, mem[_4018 + floor32(mem[_2464]) + 32]) or mem[mem[_2464 + 32] + floor32(mem[_2464]) + -(mem[_2464] % 32) + 32 len mem[_2464] % 32]
                        _4616 = mem[64]
                        mem[mem[64]] = 0xcd7e53cc00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_4018]
                        _4618 = mem[_4018]
                        s = 0
                        while s < _4618:
                            mem[mem[64] + s + 100] = mem[_4018 + s + 32]
                            s = s + 32
                            continue 
                        if not _4618 % 32:
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4618 + _4616 + -mem[64] + 96]
                        else:
                            mem[floor32(_4618) + _4616 + 100] = mem[floor32(_4618) + _4616 + -(_4618 % 32) + 132 len _4618 % 32]
                            require ext_code.size(stor103)
                            call stor103.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_4618) + _4616 + -mem[64] + 128]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 8
        mem[(32 * idx) + 352] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[mem[64]] = 0xb6854f9600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    require ext_code.size(stor102)
    call stor102.freezeToken(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] len 256] = mem[352 len 256]
    return memory
      from mem[64]
       len 256
}



}
