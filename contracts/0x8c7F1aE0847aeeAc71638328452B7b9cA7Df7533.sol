contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
mapping of struct round;
mapping of struct stor3;
array of address sub_d9ad695a;
mapping of address stor5;
array of uint256 stor6;

function owner() {
    return owner
}

function getRound(uint256 arg1) {
    return round[arg1].field_0, 
           round[arg1].field_256,
           round[arg1].field_512,
           bool(round[arg1].field_768),
           bool(round[arg1].field_776)
}

function sub_d9ad695a(?) {
    require arg2 < sub_d9ad695a[arg1].field_0
    mem[128] = stor[sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_d9ad695a', 4)) + 1)].field_0
    idx = 128
    s = 0
    while stor[(2 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_d9ad695a', 4)) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_d9ad695a', 4)) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_d9ad695a[arg1][arg2].field_0, 
           Array(len=stor[(2 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_d9ad695a', 4)) + 1].length, data=mem[128 len stor[(2 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_d9ad695a', 4)) + 1].length])
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_301c4fc6(?) {
    require round[arg1].field_0
    require not round[arg1].field_768
    require arg3.length
    require stor3[arg1][sha3(Mask(64, 192, arg2))].field_0 == 1
    stor3[arg1][sha3(Mask(64, 192, arg2))].field_0 = msg.sender
    sub_d9ad695a[arg1].field_0++
    sub_d9ad695a[arg1][sub_d9ad695a[arg1].field_0].field_0 = msg.sender
    stor[sha3((2 * sub_d9ad695a[arg1].field_0) + ('map', ('param', 'arg1'), ('name', 'sub_d9ad695a', 4)) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
    emit 0x6732ed9d 
    if sub_d9ad695a[arg1].field_0 >= round[arg1].field_512:
        round[arg1].field_768 = 1
    return bool(round[arg1].field_768)
}

function sub_d3623eba(?) {
    if stor5[arg1] != msg.sender:
        require msg.sender == owner
    require round[arg1].field_768
    require not round[arg1].field_776
    require sub_d9ad695a[arg1].field_0
    idx = 0
    while uint32(idx) < sub_d9ad695a[arg1].field_0:
        mem[0] = sha3(arg1, 4)
        mem[100] = sub_d9ad695a[arg1][2 * uint32(idx)].field_0
        mem[132] = round[arg1].field_256 / sub_d9ad695a[arg1].field_0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_d9ad695a[arg1][2 * uint32(idx)].field_0, round[arg1].field_256 / sub_d9ad695a[arg1].field_0
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    round[arg1].field_776 = 1
}

function sub_57c5ac46(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    require arg1 > 0
    require arg2 > 0
    require arg3.length > 0
    require not round[arg1].field_0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    round[arg1].field_0 = arg1
    round[arg1].field_256 = arg2
    round[arg1].field_512 = arg3.length
    round[arg1].field_768 = 0
    round[arg1].field_776 = 0
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(arg1, 3)
        stor3[arg1][mem[(32 * idx) + 128]].field_0 = 1
        stor3[arg1][mem[(32 * idx) + 128]].field_8 = 0
        idx = idx + 1
        continue 
    stor6.length++
    stor6[stor6.length] = arg1
    stor5[stor6.length] = msg.sender
    emit NewRound()
    return stor6.length
}

function sub_1fe0ca14(?) {
    mem[128] = block.difficulty
    mem[160] = address(block.coinbase)
    mem[180] = block.timestamp
    mem[212] = block.hash(block.number)
    mem[244] = arg2
    mem[96] = 148
    mem[276 len 128] = block.difficulty, block.coinbase, block.timestamp, block.hash(block.number), Mask(96, 160, arg2) >> 160
    mem[404] = uint64(arg2), Mask(96, 160, block.difficulty) >> 160 or Mask(96, 160, mem[404])
    _102 = sha3(block.difficulty, block.coinbase, block.timestamp, block.hash(block.number), Mask(96, 160, arg2) >> 160 >> 768, mem[404 len 20])
    if not arg1:
        mem[(32 * arg1) + 308] = arg1
        mem[64] = (64 * arg1) + 340
        s = 0
        idx = 0
        while idx < arg1:
            _193 = mem[64]
            mem[mem[64] + 32] = _102 - idx
            _194 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _196 = mem[_194]
            t = _194 + 32
            u = mem[64]
            s = mem[_194]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_194])] = mem[_194 + floor32(mem[_194]) + -(mem[_194] % 32) + 64 len mem[_194] % 32] or Mask(8 * -(mem[_194] % 32) + 32, -(8 * -(mem[_194] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_194])])
            _285 = sha3(mem[mem[64] len _196 + _193 + -mem[64] + 64])
            _286 = mem[64]
            mem[mem[64] + 32] = sha3(mem[mem[64] len _196 + _193 + -mem[64] + 64])
            _287 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            if not mem[_287]:
                require idx < mem[276]
                mem[(32 * idx) + 308] = 0
                mem[_286 + 96] = 0
            else:
                _303 = mem[_287 + 32]
                require idx < mem[276]
                mem[(32 * idx) + 308] = Mask(64, 192, mem[_287 + 32])
                mem[_286 + 96] = Mask(64, 192, _303)
            mem[_286 + 64] = 32
            mem[64] = _286 + 128
            t = _286 + 96
            u = mem[64]
            s = mem[_286 + 64]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_286 + 64])] = mem[_286 + floor32(mem[_286 + 64]) + -(mem[_286 + 64] % 32) + 128 len mem[_286 + 64] % 32] or Mask(8 * -(mem[_286 + 64] % 32) + 32, -(8 * -(mem[_286 + 64] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_286 + 64])])
            require idx < mem[(32 * arg1) + 308]
            mem[(32 * idx) + (32 * arg1) + 340] = sha3(mem[mem[64] len _286 + -mem[64] + 160])
            s = _285
            idx = idx + 1
            continue 
        _201 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[276]
        _203 = mem[276]
        mem[mem[64] + 96 len floor32(mem[276])] = mem[308 len floor32(mem[276])]
        mem[mem[64] + 32] = (32 * _203) + 96
        mem[(32 * _203) + _201 + 96] = mem[(32 * arg1) + 308]
        _280 = mem[(32 * arg1) + 308]
        mem[(32 * _203) + _201 + 128 len floor32(mem[(32 * arg1) + 308])] = mem[(32 * arg1) + 340 len floor32(mem[(32 * arg1) + 308])]
        return memory
          from mem[64]
           len (32 * _280) + (32 * _203) + _201 + -mem[64] + 128
    mem[308 len 32 * arg1] = code.data[6448 len 32 * arg1]
    mem[(32 * arg1) + 308] = arg1
    mem[64] = (64 * arg1) + 340
    mem[(32 * arg1) + 340 len 32 * arg1] = code.data[6448 len 32 * arg1]
    s = 0
    idx = 0
    while idx < arg1:
        _197 = mem[64]
        mem[mem[64] + 32] = _102 - idx
        _198 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _200 = mem[_198]
        t = _198 + 32
        u = _197 + 64
        s = mem[_198]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_197 + floor32(mem[_198]) + 64] = mem[_198 + -(mem[_198] % 32) + floor32(mem[_198]) + 64 len mem[_198] % 32] or Mask(8 * -(mem[_198] % 32) + 32, -(8 * -(mem[_198] % 32) + 32) + 256, mem[_197 + floor32(mem[_198]) + 64])
        _295 = sha3(mem[_197 + 64 len _200])
        mem[_197 + 96] = sha3(mem[_197 + 64 len _200])
        mem[_197 + 64] = 32
        _306 = mem[_197 + 96]
        require idx < mem[276]
        mem[(32 * idx) + 308] = Mask(64, 192, mem[_197 + 96])
        mem[_197 + 160] = Mask(64, 192, _306)
        mem[_197 + 128] = 32
        mem[64] = _197 + 192
        t = _197 + 160
        u = _197 + 192
        s = 32
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_197 + 224] = None or mem[_197 + 224]
        require idx < mem[(32 * arg1) + 308]
        mem[(32 * idx) + (32 * arg1) + 340] = sha3(mem[_197 + 192])
        s = _295
        idx = idx + 1
        continue 
    _204 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[276]
    _206 = mem[276]
    mem[mem[64] + 96 len floor32(mem[276])] = mem[308 len floor32(mem[276])]
    mem[mem[64] + 32] = (32 * _206) + 96
    mem[(32 * _206) + _204 + 96] = mem[(32 * arg1) + 308]
    _290 = mem[(32 * arg1) + 308]
    mem[(32 * _206) + _204 + 128 len floor32(mem[(32 * arg1) + 308])] = mem[(32 * arg1) + 340 len floor32(mem[(32 * arg1) + 308])]
    return memory
      from mem[64]
       len (32 * _290) + (32 * _206) + _204 + -mem[64] + 128
}



}
