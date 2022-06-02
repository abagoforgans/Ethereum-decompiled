contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address sub_e4c255d5Address;
address nftAddress;
address srAddress;
uint256 secondsPerBlock;
address sub_9ebe8fe5Address;
mapping of uint256 sub_9b761517;
mapping of uint256 sub_da2aee37;
mapping of struct tokenList;

function nftAddress() {
    return nftAddress
}

function paused() {
    return bool(stor0)
}

function secondsPerBlock() {
    return secondsPerBlock
}

function owner() {
    return owner
}

function sub_9b761517(?) {
    return sub_9b761517[arg1]
}

function tokenList(uint256 arg1) {
    return tokenList[arg1].field_0, bool(tokenList[arg1].field_160), tokenList[arg1].field_256
}

function sub_9ebe8fe5(?) {
    return sub_9ebe8fe5Address
}

function srAddress() {
    return srAddress
}

function sub_da2aee37(?) {
    return sub_da2aee37[arg1]
}

function sub_e4c255d5(?) {
    return sub_e4c255d5Address
}

function sub_e3c9ac2d(?) {
    require arg1
    return 1
}

function _fallback() payable {
    emit 0x9814dc9f: msg.sender, msg.value, 0
}

function sub_7684be02(?) {
    require msg.sender == owner
    sub_9ebe8fe5Address = arg1
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
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

function sub_4ff33044(?) {
    require not stor0
    require msg.sender == tokenList[arg1].field_0
    require arg2 != tokenList[arg1].field_256
    tokenList[arg1].field_256 = arg2
    emit 0xd9a2fc83: arg1, arg2, msg.sender
}

function setNft(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'set NFT address failed : zero address is not allowed.'
    nftAddress = arg1
}

function sub_12f8bd47(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'set DST address failed : zero address is not allowed.'
    sub_e4c255d5Address = arg1
}

function withdrawBalance() {
    if owner != msg.sender:
        require nftAddress == msg.sender
    call nftAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8964144b(?) {
    require not stor0
    if sub_e4c255d5Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Recharge DST failed : only DST contract can call this func.'
    emit 0x9814dc9f: address(arg1), 0, arg2
}

function sub_a396602a(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'set SR address failed : zero address is not allowed.'
    if srAddress:
        revert with 0, 'SR address can only be set once'
    srAddress = arg1
}

function sub_ab4aaac6(?) payable {
    require not stor0
    if nftAddress != msg.sender:
        revert with 0, 'lock NFT failed : only the NFT contract can call this func.'
    tokenList[arg2].field_0 = arg1
    tokenList[arg2].field_160 = 0
    tokenList[arg2].field_256 = 1
    require ext_code.size(nftAddress)
    call nftAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Lock(address(arg1), arg2, arg3, arg4);
    if msg.value > 0:
        emit 0x9814dc9f: address(arg1), msg.value, 0
}

function sub_8665ab0d(?) {
    require not stor0
    require ext_code.size(nftAddress)
    call nftAddress.apiAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdrawal failed : you're not the api address.'
    mem[0] = arg1
    mem[32] = 7
    if arg5 != sub_da2aee37[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdrawal failed: invalid times.'
    mem[128] = 'withdraw'
    mem[136] = arg4
    mem[96] = 40
    require ext_code.size(srAddress)
    call srAddress.getData(bytes32 arg1) with:
         gas gas_remaining wei
        args (arg4 or Mask(224, 32, sha3('withdraw', arg4)))
    mem[168 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'withdraw doesn't exist'
    mem[168] = arg6.length
    mem[200 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 232] = address(arg1)
    mem[(32 * arg6.length) + 252] = arg3
    mem[(32 * arg6.length) + 284] = arg2
    mem[(32 * arg6.length) + 316] = arg5
    mem[(32 * arg6.length) + 200] = 116
    mem[64] = (32 * arg6.length) + 348
    mem[(32 * arg6.length) + 348 len 96] = arg1, arg3, arg2, Mask(96, 160, arg5) >> 160
    mem[(32 * arg6.length) + 456 len 20] = uint64(arg5), Mask(96, 64, arg1) >> 64
    s = 0
    idx = 0
    t = 0
    while idx < arg6.length:
        require idx < mem[168]
        _183 = mem[(32 * idx) + 200]
        if t + sha3(mem[mem[64] len (32 * arg6.length) + -mem[64] + 464]) >= mem[(32 * idx) + 200]:
            _185 = mem[64]
            mem[mem[64] + 32] = mem[(32 * idx) + 200]
            mem[mem[64] + 64] = t + sha3(mem[mem[64] len (32 * arg6.length) + -mem[64] + 464])
            _186 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _187 = mem[_186]
            t = _186 + 32
            v = _185 + 96
            u = mem[_186]
            while u + sha3(mem[mem[64] len (32 * arg6.length) + -mem[64] + 464]) >= 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                u = u - 32
                continue 
            mem[_185 + floor32(mem[_186]) + 96] = mem[_186 + floor32(mem[_186]) + -(mem[_186] % 32) + 64 len mem[_186] % 32] or Mask(8 * -(mem[_186] % 32) + 32, -(8 * -(mem[_186] % 32) + 32) + 256, mem[_185 + floor32(mem[_186]) + 96])
            t = _183
            v = v + 1
            u = sha3(mem[mem[64] len _187 + _185 + -mem[64] + 96])
            continue 
        _188 = mem[64]
        mem[mem[64] + 32] = t + sha3(mem[mem[64] len (32 * arg6.length) + -mem[64] + 464])
        mem[mem[64] + 64] = _183
        _189 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _190 = mem[_189]
        t = _189 + 32
        v = _188 + 96
        u = mem[_189]
        while u + sha3(mem[mem[64] len (32 * arg6.length) + -mem[64] + 464]) >= 32:
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            u = u - 32
            continue 
        mem[_188 + floor32(mem[_189]) + 96] = mem[_189 + floor32(mem[_189]) + -(mem[_189] % 32) + 64 len mem[_189] % 32] or Mask(8 * -(mem[_189] % 32) + 32, -(8 * -(mem[_189] % 32) + 32) + 256, mem[_188 + floor32(mem[_189]) + 96])
        t = _183
        v = v + 1
        u = sha3(mem[mem[64] len _190 + _188 + -mem[64] + 96])
        continue 
    require t == ext_call.return_data[32]
    require sub_da2aee37[address(arg1)] + 1 >= sub_da2aee37[address(arg1)]
    sub_da2aee37[address(arg1)]++
    if arg2 > 0:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg3 > 0:
        require ext_code.size(sub_e4c255d5Address)
        call sub_e4c255d5Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit Withdrawal(address(arg1), arg2, arg3, sub_da2aee37[address(arg1)]);
}

function sub_d6c06a62(?) {
    require not stor0
    if arg3 > 8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unlock NFT failed : invalid cooldown value.'
    require ext_code.size(nftAddress)
    call nftAddress.apiAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unlock NFT failed : you're not the api address.'
    mem[0] = arg1
    mem[32] = 6
    if arg6 != sub_9b761517[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unlock NFT failed : invalid unlock times.'
    mem[128] = arg1
    mem[160] = arg3
    mem[192] = arg4
    mem[224] = arg6
    mem[256] = address(arg2)
    mem[96] = 148
    mem[276 len 128] = arg1, arg3, arg4, arg6
    mem[404 len 20] = arg2
    mem[276] = arg7.length
    mem[308 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg7.length) + 340] = 'dragon_info'
    mem[(32 * arg7.length) + 351] = arg5
    mem[(32 * arg7.length) + 308] = 43
    mem[64] = (32 * arg7.length) + 383
    require ext_code.size(srAddress)
    call srAddress.getData(bytes32 arg1) with:
         gas gas_remaining wei
        args (arg5 or Mask(224, 32, sha3('dragon_info', arg5)))
    mem[(32 * arg7.length) + 383 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'dragon_info doesn't exist'
    s = 0
    idx = 0
    t = 0
    while idx < arg7.length:
        require idx < mem[276]
        _311 = mem[(32 * idx) + 308]
        if t + sha3(arg1, arg3, arg4, arg6, arg2) >= mem[(32 * idx) + 308]:
            _314 = mem[64]
            mem[mem[64] + 32] = mem[(32 * idx) + 308]
            mem[mem[64] + 64] = t + sha3(arg1, arg3, arg4, arg6, arg2)
            _315 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _316 = mem[_315]
            t = _315 + 32
            v = _314 + 96
            u = mem[_315]
            while u + sha3(arg1, arg3, arg4, arg6, arg2) >= 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                u = u - 32
                continue 
            mem[_314 + floor32(mem[_315]) + 96] = mem[_315 + floor32(mem[_315]) + -(mem[_315] % 32) + 64 len mem[_315] % 32] or Mask(8 * -(mem[_315] % 32) + 32, -(8 * -(mem[_315] % 32) + 32) + 256, mem[_314 + floor32(mem[_315]) + 96])
            t = _311
            v = v + 1
            u = sha3(mem[mem[64] len _316 + _314 + -mem[64] + 96])
            continue 
        _317 = mem[64]
        mem[mem[64] + 32] = t + sha3(arg1, arg3, arg4, arg6, arg2)
        mem[mem[64] + 64] = _311
        _318 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _319 = mem[_318]
        t = _318 + 32
        v = _317 + 96
        u = mem[_318]
        while u + sha3(arg1, arg3, arg4, arg6, arg2) >= 32:
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            u = u - 32
            continue 
        mem[_317 + floor32(mem[_318]) + 96] = mem[_318 + floor32(mem[_318]) + -(mem[_318] % 32) + 64 len mem[_318] % 32] or Mask(8 * -(mem[_318] % 32) + 32, -(8 * -(mem[_318] % 32) + 32) + 256, mem[_317 + floor32(mem[_318]) + 96])
        t = _311
        v = v + 1
        u = sha3(mem[mem[64] len _319 + _317 + -mem[64] + 96])
        continue 
    if t != ext_call.return_data[32]:
        revert with 0, 'Unlock NFT failed : verify proof failed.'
    if tokenList[arg1].field_0 != arg2:
        if sub_9ebe8fe5Address != tokenList[arg1].field_0:
            revert with 0, 'Unlock NFT failed : can't transfer the dragon'
    require sub_9b761517[arg1] + 1 >= sub_9b761517[arg1]
    sub_9b761517[arg1]++
    require ext_code.size(nftAddress)
    call nftAddress.0xb42b75b4 with:
         gas gas_remaining wei
        args arg1, arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nftAddress)
    call nftAddress.getDragon(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    if ext_call.return_data[288] != arg4:
        if uint8(arg4) > uint8(ext_call.return_data[288]):
            idx = mem[mem[64] + 319 len 1]
            s = 0
            s = 0
            while idx < uint8(arg4):
                mem[mem[64]] = 0xf9ce2ff700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = arg4 / 2^((24 * idx) + 8) % 4194304
                mem[mem[64] + 68] = arg4 / 2^((24 * idx) + 30) % 4
                require ext_code.size(nftAddress)
                call nftAddress.0xf9ce2ff7 with:
                     gas gas_remaining wei
                    args arg1, arg4 / 2^((24 * idx) + 8) << 234, arg4 / 2^((24 * idx) + 30) % 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = arg4 / 2^((24 * idx) + 30) % 4
                s = arg4 / 2^((24 * idx) + 8) % 4194304
                continue 
    emit 0x4be74c23: arg1, tokenList[arg1].field_256, tokenList[arg1].field_0, address(arg2), sub_9b761517[arg1]
    require ext_code.size(nftAddress)
    call nftAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
