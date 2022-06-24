contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of uint256 name;
array of uint256 symbol;
array of struct sub_fbca0ce1;
array of uint256 tokenByIndex;
mapping of uint256 stor5;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
mapping of address ownerOf;
mapping of address approved;
mapping of uint8 stor10;
mapping of bool sub_45a32c86;
uint256 stor12;
uint256 schemaId;
mapping of uint256 tokenImprint;
uint8 isPaused;
uint8 stor7CE7;
uint8 storA475;
uint8 storCE9A;
uint8 storE688;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function schemaId() {
    return schemaId
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, ''
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, '006007'
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_45a32c86(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_45a32c86[arg1])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0, '006007'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, ''
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, ''
    return tokenOfOwnerByIndex[address(arg1)]
}

function tokenImprint(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenImprint[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isPaused() {
    return bool(isPaused)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor10[address(arg1)][address(arg2)])
}

function sub_fbca0ce1(?) {
    return sub_fbca0ce1[0 len sub_fbca0ce1.length].field_0
}

function _fallback() payable {
    revert
}

function sub_ba00a330(?) {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, ''
    return (arg2 and uint256(sub_45a32c86[address(arg1)]) == arg2)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor10[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setPause(bool arg1) {
    require calldata.size - 4 >= 32
    if Mask(1, 3, uint256(sub_45a32c86[msg.sender])) != 8:
        revert with 0, ''
    if not stor7CE7:
        revert with 0, ''
    isPaused = uint8(arg1)
    emit IsPaused(arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if ownerOf[arg2] != msg.sender:
        if not stor10[stor8[arg2]][msg.sender]:
            revert with 0, '006003'
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function updateTokenImprint(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if Mask(1, 4, uint256(sub_45a32c86[msg.sender])) != 16:
        revert with 0, ''
    if not storE688:
        revert with 0, ''
    if not ownerOf[arg1]:
        revert with 0, '007003'
    tokenImprint[arg1] = arg2
    emit TokenImprintUpdate(arg2, arg1);
}

function sub_f394b6df(?) {
    require calldata.size - 4 >= 64
    if bool(sub_45a32c86[msg.sender]) != 1:
        revert with 0, ''
    uint256(sub_45a32c86[address(arg1)]) = !arg2 and uint256(sub_45a32c86[address(arg1)])
    if bool(arg2) == 1:
        if 1 >= stor12:
            revert with 0, '017002'
        stor12--
    emit 0xbb71944f: arg1, arg2
}

function sub_0ab319e8(?) {
    require calldata.size - 4 >= 64
    if bool(sub_45a32c86[msg.sender]) != 1:
        revert with 0, ''
    uint256(sub_45a32c86[address(arg1)]) = arg2 or uint256(sub_45a32c86[address(arg1)])
    if bool(arg2) == 1:
        if stor12 + 1 < stor12:
            revert with 0, '008001'
        stor12++
    emit 0xc4adfc5f: arg1, arg2
}

function sub_27fc0cff(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if Mask(1, 6, uint256(sub_45a32c86[msg.sender])) != 64:
        revert with 0, ''
    sub_fbca0ce1[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function create(address arg1, uint256 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    if Mask(1, 1, uint256(sub_45a32c86[msg.sender])) != 2:
        revert with 0, ''
    if not arg1:
        revert with 0, ''
    if ownerOf[arg2]:
        revert with 0, '006006'
    ownerOf[arg2] = arg1
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor7[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    stor5[arg2] = tokenByIndex.length
    emit Transfer(0, arg1, arg2);
    tokenImprint[arg2] = arg3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if isPaused:
        revert with 0, '007002'
    if not arg1:
        revert with 0, ''
    if ownerOf[arg3] != arg1:
        revert with 0, ''
    if not arg2:
        revert with 0, ''
    if arg1 != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor10[address(arg1)][msg.sender]:
                revert with 0, '006004'
    if approved[arg3]:
        approved[arg3] = 0
    require tokenOfOwnerByIndex[address(arg1)] > 0
    if stor7[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function revoke(uint256 arg1) {
    require calldata.size - 4 >= 32
    if Mask(1, 2, uint256(sub_45a32c86[msg.sender])) != 4:
        revert with 0, ''
    if not storA475:
        revert with 0, ''
    if not ownerOf[arg1]:
        revert with 0, ''
    if approved[arg1]:
        approved[arg1] = 0
    require tokenOfOwnerByIndex[stor8[arg1]] > 0
    if stor7[arg1] != tokenOfOwnerByIndex[stor8[arg1]] - 1:
        require tokenOfOwnerByIndex[stor8[arg1]] - 1 < tokenOfOwnerByIndex[stor8[arg1]]
        require stor7[arg1] < tokenOfOwnerByIndex[stor8[arg1]]
        tokenOfOwnerByIndex[stor8[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor8[arg1]][tokenOfOwnerByIndex[stor8[arg1]]]
        stor7[stor6[stor8[arg1]][stor6[stor8[arg1]]]] = stor7[arg1]
    ownerOf[arg1] = 0
    stor7[arg1] = 0
    tokenOfOwnerByIndex[stor8[arg1]]--
    if tokenOfOwnerByIndex[stor8[arg1]] > tokenOfOwnerByIndex[stor8[arg1]] - 1:
        idx = tokenOfOwnerByIndex[stor8[arg1]] - 1
        while tokenOfOwnerByIndex[stor8[arg1]] > idx:
            tokenOfOwnerByIndex[stor8[arg1]][idx] = 0
            idx = idx + 1
            continue 
    require 0 < tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor5[arg1] < tokenByIndex.length
    tokenByIndex[stor5[arg1]] = tokenByIndex[tokenByIndex.length]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor5[stor4[stor4.length]] = stor5[arg1]
    stor5[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    tokenImprint[arg1] = 0
}

function destroy(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not storCE9A:
        revert with 0, ''
    if not ownerOf[arg1]:
        revert with 0, ''
    if approved[arg1]:
        approved[arg1] = 0
    require tokenOfOwnerByIndex[stor8[arg1]] > 0
    if stor7[arg1] != tokenOfOwnerByIndex[stor8[arg1]] - 1:
        require tokenOfOwnerByIndex[stor8[arg1]] - 1 < tokenOfOwnerByIndex[stor8[arg1]]
        require stor7[arg1] < tokenOfOwnerByIndex[stor8[arg1]]
        tokenOfOwnerByIndex[stor8[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor8[arg1]][tokenOfOwnerByIndex[stor8[arg1]]]
        stor7[stor6[stor8[arg1]][stor6[stor8[arg1]]]] = stor7[arg1]
    ownerOf[arg1] = 0
    stor7[arg1] = 0
    tokenOfOwnerByIndex[stor8[arg1]]--
    if tokenOfOwnerByIndex[stor8[arg1]] > tokenOfOwnerByIndex[stor8[arg1]] - 1:
        idx = tokenOfOwnerByIndex[stor8[arg1]] - 1
        while tokenOfOwnerByIndex[stor8[arg1]] > idx:
            tokenOfOwnerByIndex[stor8[arg1]][idx] = 0
            idx = idx + 1
            continue 
    require 0 < tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor5[arg1] < tokenByIndex.length
    tokenByIndex[stor5[arg1]] = tokenByIndex[tokenByIndex.length]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor5[stor4[stor4.length]] = stor5[arg1]
    stor5[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if ownerOf[arg1] != msg.sender:
        if not stor10[stor8[arg1]][msg.sender]:
            revert with 0, '007004'
    tokenImprint[arg1] = 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, '006005'
    if isPaused:
        revert with 0, '007002'
    if not arg1:
        revert with 0, ''
    if ownerOf[arg3] != arg1:
        revert with 0, ''
    if not arg2:
        revert with 0, ''
    if arg1 != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor10[address(arg1)][msg.sender]:
                revert with 0, '006004'
    if approved[arg3]:
        approved[arg3] = 0
    require tokenOfOwnerByIndex[address(arg1)] > 0
    if stor7[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if ext_code.size(arg2) <= 0:
        if isPaused:
            revert with 0, '007002'
    else:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, '006005'
        if isPaused:
            revert with 0, '', 6, '007002' % 281474976710656
    ('iszero', ('stor', ('name', 'isPaused', 16)))
    if not arg1:
        revert with 0, ''
    if ownerOf[arg3] != arg1:
        revert with 0, ''
    if not arg2:
        revert with 0, ''
    if arg1 != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor10[address(arg1)][msg.sender]:
                revert with 0, '006004'
    if approved[arg3]:
        approved[arg3] = 0
    require tokenOfOwnerByIndex[address(arg1)] > 0
    if stor7[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 8
    mem[96] = 6
    mem[128] = 0x30303630303200000000000000000000000000000000000000000000000000
    if not ownerOf[arg1]:
        revert with 0, ''
    if sub_fbca0ce1.length <= 0:
        return ''
    if not arg1:
        mem[256] = uint256(sub_fbca0ce1.field_0)
        idx = 256
        s = 0
        while sub_fbca0ce1.length + 224 > idx:
            mem[idx + 32] = sub_fbca0ce1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[sub_fbca0ce1.length + 256 len 0] = None
        mem[sub_fbca0ce1.length + 257] = 32
        mem[sub_fbca0ce1.length + 289] = mem[224]
        mem[sub_fbca0ce1.length + 321 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        if not mem[224] % 32:
            return 32, mem[sub_fbca0ce1.length + 289 len mem[224] + 32]
        mem[floor32(mem[224]) + sub_fbca0ce1.length + 321] = mem[floor32(mem[224]) + sub_fbca0ce1.length + -(mem[224] % 32) + 353 len mem[224] % 32]
        return Array(len=mem[224], data=mem[sub_fbca0ce1.length + 321 len floor32(mem[224]) + 32])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[160]
            mem[t + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _141 = mem[64]
        mem[0] = 3
        mem[mem[64] + 32] = uint256(sub_fbca0ce1.field_0)
        idx = mem[64] + 32
        s = 0
        while _141 + sub_fbca0ce1.length > idx:
            mem[idx + 32] = sub_fbca0ce1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _265 = mem[160]
        mem[_141 + sub_fbca0ce1.length + 32 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        mem[_141 + sub_fbca0ce1.length + floor32(mem[160]) + -(mem[160] % 32) + 64 len mem[160] % 32] = mem[floor32(mem[160]) + -(mem[160] % 32) + 224 len mem[160] % 32]
        _311 = mem[64]
        mem[64] = _265 + _141 + sub_fbca0ce1.length + 32
        mem[_265 + _141 + sub_fbca0ce1.length + 32] = 32
        mem[_265 + _141 + sub_fbca0ce1.length + 64] = mem[_311]
        _319 = mem[_311]
        mem[_265 + _141 + sub_fbca0ce1.length + 96 len ceil32(mem[_311])] = mem[_311 + 32 len ceil32(mem[_311])]
        if not _319 % 32:
            return 32, mem[_265 + _141 + sub_fbca0ce1.length + 64 len _319 + 32]
        mem[floor32(_319) + _265 + _141 + sub_fbca0ce1.length + 96] = mem[floor32(_319) + _265 + _141 + sub_fbca0ce1.length + -(_319 % 32) + 128 len _319 % 32]
        return 32, mem[_265 + _141 + sub_fbca0ce1.length + 64 len floor32(_319) + 64]
    mem[192 len s] = code.data[11900 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[160]
        mem[t + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _142 = mem[64]
    mem[0] = 3
    mem[mem[64] + 32] = uint256(sub_fbca0ce1.field_0)
    idx = mem[64] + 32
    s = 0
    while _142 + sub_fbca0ce1.length > idx:
        mem[idx + 32] = sub_fbca0ce1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _266 = mem[160]
    mem[_142 + sub_fbca0ce1.length + 32 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
    mem[_142 + sub_fbca0ce1.length + floor32(mem[160]) + -(mem[160] % 32) + 64 len mem[160] % 32] = mem[floor32(mem[160]) + -(mem[160] % 32) + 224 len mem[160] % 32]
    _315 = mem[64]
    mem[64] = _266 + _142 + sub_fbca0ce1.length + 32
    mem[_266 + _142 + sub_fbca0ce1.length + 32] = 32
    mem[_266 + _142 + sub_fbca0ce1.length + 64] = mem[_315]
    _322 = mem[_315]
    mem[_266 + _142 + sub_fbca0ce1.length + 96 len ceil32(mem[_315])] = mem[_315 + 32 len ceil32(mem[_315])]
    if not _322 % 32:
        return 32, mem[_266 + _142 + sub_fbca0ce1.length + 64 len _322 + 32]
    mem[floor32(_322) + _266 + _142 + sub_fbca0ce1.length + 96] = mem[floor32(_322) + _266 + _142 + sub_fbca0ce1.length + -(_322 % 32) + 128 len _322 % 32]
    return 32, mem[_266 + _142 + sub_fbca0ce1.length + 64 len floor32(_322) + 64]
}



}
