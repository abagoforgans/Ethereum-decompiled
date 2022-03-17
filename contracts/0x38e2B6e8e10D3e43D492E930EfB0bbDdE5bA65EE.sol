contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[134 len 3809]
}



// =====================  Runtime code  =====================


#
#  - sub_a4c8a1c1(?)
#
uint256 stor0;
address sub_4c773795Address;
address stor2;
array of uint256 price;

function price(uint256 arg1) payable {
    require arg1 < 10
    return price[arg1]
}

function sub_4c773795(?) payable {
    return sub_4c773795Address
}

function sub_ca2f85ff(?) payable {
    return stor[arg1 + 3][0 len stor[arg1 + 3].length]
}

function _fallback() payable {
  stop
}

function setPrice(uint256 arg1, uint256 arg2) payable {
    require msg.sender == stor2
    require arg1 < 10
    price[arg1] = arg2
}

function sub_b9c7a186(?) payable {
    require msg.sender == stor2
    require arg1 < 10
    stor[sha3(arg1 + 3)][] = Array(len=arg2.length, data=arg2[all])
}

function sub_0f8ebe27(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    if arg2.length >= arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                return -1
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                idx = idx + 1
                continue 
            return 1
    else:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                return -1
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                idx = idx + 1
                continue 
            return 1
    if arg1.length < arg2.length:
        return -1
    if arg1.length <= arg2.length:
        return 0
    return 1
}

function getPrice(string arg1) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require var22001 < 10
    mem[64] = ceil32(arg1.length) + ceil32(stor[var22001 + 3].length) + 160
    mem[ceil32(arg1.length) + 128] = stor[var22001 + 3].length
    mem[0] = var22001 + 3
    mem[ceil32(arg1.length) + 160] = stor[sha3(var22001 + 3)]
    s = ceil32(arg1.length) + 160
    t = 0
    while ceil32(arg1.length) + stor[var22001 + 3].length + 128 > s:
        mem[s + 32] = stor[t + sha3(mem[0]) + 1]
        s = s + 32
        t = t + 1
        continue 
    _234 = mem[64]
    mem[64] = mem[64] + 32
    mem[_234] = 0
    _235 = mem[64]
    mem[64] = mem[64] + 32
    mem[_235] = 0
    if mem[96] >= mem[ceil32(arg1.length) + 128]:
        idx = 0
        while idx < mem[ceil32(arg1.length) + 128]:
            require idx < mem[96]
            require idx < mem[ceil32(arg1.length) + 128]
            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= Mask(8, 248, mem[idx + 128]):
                require idx < mem[96]
                require idx < mem[ceil32(arg1.length) + 128]
                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
            var22001 = var22001 + 1
            continue 
    else:
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            require idx < mem[ceil32(arg1.length) + 128]
            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= Mask(8, 248, mem[idx + 128]):
                require idx < mem[96]
                require idx < mem[ceil32(arg1.length) + 128]
                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
            var22001 = var22001 + 1
            continue 
    if mem[ceil32(arg1.length) + 128] < mem[96]:
        var22001 = var22001 + 1
        continue 
    if mem[ceil32(arg1.length) + 128] > mem[96]:
        var22001 = var22001 + 1
        continue 
    require var22001 < 10
    return price[var22001]
}

function query(uint256 arg1, string arg2, string arg3) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require var23001 < 10
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor[var23001 + 3].length) + 192
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = stor[var23001 + 3].length
    mem[0] = var23001 + 3
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = stor[sha3(var23001 + 3)]
    s = ceil32(arg2.length) + ceil32(arg3.length) + 192
    t = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + stor[var23001 + 3].length + 160 > s:
        mem[s + 32] = stor[t + sha3(mem[0]) + 1]
        s = s + 32
        t = t + 1
        continue 
    _535 = mem[64]
    mem[64] = mem[64] + 32
    mem[_535] = 0
    _536 = mem[64]
    mem[64] = mem[64] + 32
    mem[_536] = 0
    if mem[96] < mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]:
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            require idx < mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
            if Mask(8, 248, mem[ceil32(arg2.length) + ceil32(arg3.length) + idx + 192]) >= Mask(8, 248, mem[idx + 128]):
                require idx < mem[96]
                require idx < mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                if Mask(8, 248, mem[ceil32(arg2.length) + ceil32(arg3.length) + idx + 192]) <= Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
            var23001 = var23001 + 1
            continue 
        if mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] < mem[96]:
            var23001 = var23001 + 1
            continue 
        if mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] > mem[96]:
            var23001 = var23001 + 1
            continue 
        require var23001 < 10
        require eth.balance(this.address) >= price[var23001]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value price[var23001] wei
             gas 0 wei
        stor0++
        mem[mem[64]] = sha3(block.timestamp + stor0)
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len mem[96]] = mem[128 len mem[96]]
        if not mem[96] % 32:
            mem[mem[64] + 96] = mem[96] + 160
            mem[mem[96] + mem[64] + 160] = mem[ceil32(arg2.length) + 128]
            _788 = mem[ceil32(arg2.length) + 128]
            mem[mem[96] + mem[64] + 192 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _788 % 32:
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, mem[96] + 160, mem[mem[64] + 128 len _788 + mem[96] + 64]
            else:
                mem[floor32(_788) + mem[96] + mem[64] + 192] = mem[floor32(_788) + mem[96] + mem[64] + -(_788 % 32) + 224 len _788 % 32]
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, mem[96] + 160, mem[mem[64] + 128 len floor32(_788) + mem[96] + 96]
        else:
            mem[floor32(mem[96]) + mem[64] + 160] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 192 len mem[96] % 32]
            mem[mem[64] + 96] = floor32(mem[96]) + 192
            mem[floor32(mem[96]) + mem[64] + 192] = mem[ceil32(arg2.length) + 128]
            _797 = mem[ceil32(arg2.length) + 128]
            mem[floor32(mem[96]) + mem[64] + 224 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _797 % 32:
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, floor32(mem[96]) + 192, mem[mem[64] + 128 len _797 + floor32(mem[96]) + 96]
            else:
                mem[floor32(_797) + floor32(mem[96]) + mem[64] + 224] = mem[floor32(_797) + floor32(mem[96]) + mem[64] + -(_797 % 32) + 256 len _797 % 32]
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, floor32(mem[96]) + 192, mem[mem[64] + 128 len floor32(_797) + floor32(mem[96]) + 128]
    else:
        idx = 0
        while idx < mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]:
            require idx < mem[96]
            require idx < mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
            if Mask(8, 248, mem[ceil32(arg2.length) + ceil32(arg3.length) + idx + 192]) >= Mask(8, 248, mem[idx + 128]):
                require idx < mem[96]
                require idx < mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                if Mask(8, 248, mem[ceil32(arg2.length) + ceil32(arg3.length) + idx + 192]) <= Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
            var23001 = var23001 + 1
            continue 
        if mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] < mem[96]:
            var23001 = var23001 + 1
            continue 
        if mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] > mem[96]:
            var23001 = var23001 + 1
            continue 
        require var23001 < 10
        require eth.balance(this.address) >= price[var23001]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value price[var23001] wei
             gas 0 wei
        stor0++
        mem[mem[64]] = sha3(block.timestamp + stor0)
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = mem[96]
        _775 = mem[96]
        mem[mem[64] + 160 len mem[96]] = mem[128 len mem[96]]
        if not mem[96] % 32:
            mem[mem[64] + 96] = mem[96] + 160
            mem[mem[96] + mem[64] + 160] = mem[ceil32(arg2.length) + 128]
            _785 = mem[ceil32(arg2.length) + 128]
            mem[mem[96] + mem[64] + 192 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _785 % 32:
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, mem[96] + 160, mem[mem[64] + 128 len _785 + mem[96] + 64]
            else:
                mem[floor32(_785) + mem[96] + mem[64] + 192] = mem[floor32(_785) + mem[96] + mem[64] + -(_785 % 32) + 224 len _785 % 32]
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, mem[96] + 160, mem[mem[64] + 128 len floor32(_785) + mem[96] + 96]
        else:
            mem[floor32(mem[96]) + mem[64] + 160] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 192 len mem[96] % 32]
            mem[mem[64] + 96] = floor32(mem[96]) + 192
            mem[floor32(mem[96]) + mem[64] + 192] = mem[ceil32(arg2.length) + 128]
            _793 = mem[ceil32(arg2.length) + 128]
            mem[floor32(mem[96]) + mem[64] + 224 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _793 % 32:
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, floor32(mem[96]) + 192, mem[mem[64] + 128 len _793 + floor32(mem[96]) + 96]
            else:
                mem[floor32(_793) + floor32(mem[96]) + mem[64] + 224] = mem[floor32(_793) + floor32(mem[96]) + mem[64] + -(_793 % 32) + 256 len _793 % 32]
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, mem[mem[64] + 96 len floor32(_793) + floor32(_775) + 160]
    return sha3(block.timestamp + stor0)
}



}
