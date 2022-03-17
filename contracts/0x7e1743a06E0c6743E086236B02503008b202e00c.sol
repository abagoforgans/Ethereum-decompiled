contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor1 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    stor2 = msg.sender or Mask(96, 160, stor2)
    require 0 < stor3.length
    bool(stor3.field_0) = 0
    uint255(stor3.field_1) = 3
    Mask(248, 0, stor3.field_8) = 'URL' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor[idx + sha3(('name', 'stor3', 3))].field_0 = 0
        idx = idx + 1
        continue 
    require 1 < stor3.length
    bool(stor3.field_256) = 0
    uint255(stor3.field_257) = 12
    Mask(248, 0, stor3.field_264) = 'WolframAlpha' / 256
    idx = 0
    while stor3[1].length + 31 / 32 > idx:
        stor3[idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    require 2 < stor3.length
    bool(stor3.field_512) = 0
    uint255(stor3.field_513) = 10
    Mask(248, 0, stor3.field_520) = 'Blockchain' / 256
    idx = 0
    while stor3[2].length + 31 / 32 > idx:
        stor3[idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[902 len 3787]
}



// =====================  Runtime code  =====================


uint256 stor0;
address sub_4c773795Address;
address stor2;
array of uint256 sub_ca2f85ff;
array of uint256 price;

function price(uint256 arg1) payable {
    require arg1 < price.length
    return price[arg1]
}

function sub_4c773795(?) payable {
    return sub_4c773795Address
}

function sub_ca2f85ff(?) payable {
    return sub_ca2f85ff[arg1][0 len sub_ca2f85ff[arg1].length]
}

function _fallback() payable {
  stop
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
    require var22001 < sub_ca2f85ff.length
    mem[64] = ceil32(arg1.length) + ceil32(sub_ca2f85ff[var22001].length) + 160
    mem[ceil32(arg1.length) + 128] = sub_ca2f85ff[var22001].length
    mem[0] = var22001 + sha3(3)
    mem[ceil32(arg1.length) + 160] = sub_ca2f85ff[var22001]
    s = ceil32(arg1.length) + 160
    t = 0
    while ceil32(arg1.length) + sub_ca2f85ff[var22001].length + 128 > s:
        mem[s + 32] = stor[t + sha3(mem[0]) + 1]
        s = s + 32
        t = t + 1
        continue 
    _248 = mem[64]
    mem[64] = mem[64] + 32
    mem[_248] = 0
    _249 = mem[64]
    mem[64] = mem[64] + 32
    mem[_249] = 0
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
    require var22001 < price.length
    return price[var22001]
}

function sub_af8ea4e3(?) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == stor2
    require var23001 < sub_ca2f85ff.length
    mem[64] = ceil32(arg2.length) + ceil32(sub_ca2f85ff[var23001].length) + 160
    mem[ceil32(arg2.length) + 128] = sub_ca2f85ff[var23001].length
    mem[0] = var23001 + sha3(3)
    mem[ceil32(arg2.length) + 160] = sub_ca2f85ff[var23001]
    s = ceil32(arg2.length) + 160
    t = 0
    while ceil32(arg2.length) + sub_ca2f85ff[var23001].length + 128 > s:
        mem[s + 32] = stor[t + sha3(mem[0]) + 1]
        s = s + 32
        t = t + 1
        continue 
    _224 = mem[64]
    mem[64] = mem[64] + 32
    mem[_224] = 0
    _225 = mem[64]
    mem[64] = mem[64] + 32
    mem[_225] = 0
    if mem[96] >= mem[ceil32(arg2.length) + 128]:
        idx = 0
        while idx < mem[ceil32(arg2.length) + 128]:
            require idx < mem[96]
            require idx < mem[ceil32(arg2.length) + 128]
            if Mask(8, 248, mem[ceil32(arg2.length) + idx + 160]) >= Mask(8, 248, mem[idx + 128]):
                require idx < mem[96]
                require idx < mem[ceil32(arg2.length) + 128]
                if Mask(8, 248, mem[ceil32(arg2.length) + idx + 160]) <= Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
            var23001 = var23001 + 1
            continue 
    else:
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            require idx < mem[ceil32(arg2.length) + 128]
            if Mask(8, 248, mem[ceil32(arg2.length) + idx + 160]) >= Mask(8, 248, mem[idx + 128]):
                require idx < mem[96]
                require idx < mem[ceil32(arg2.length) + 128]
                if Mask(8, 248, mem[ceil32(arg2.length) + idx + 160]) <= Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
            var23001 = var23001 + 1
            continue 
    if mem[ceil32(arg2.length) + 128] < mem[96]:
        var23001 = var23001 + 1
        continue 
    if mem[ceil32(arg2.length) + 128] > mem[96]:
        var23001 = var23001 + 1
        continue 
    require var23001 < price.length
    price[var23001] = arg1
}

function query(uint256 arg1, string arg2, string arg3) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require var23001 < sub_ca2f85ff.length
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(sub_ca2f85ff[var23001].length) + 192
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = sub_ca2f85ff[var23001].length
    mem[0] = var23001 + sha3(3)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = sub_ca2f85ff[var23001]
    s = ceil32(arg2.length) + ceil32(arg3.length) + 192
    t = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + sub_ca2f85ff[var23001].length + 160 > s:
        mem[s + 32] = stor[t + sha3(mem[0]) + 1]
        s = s + 32
        t = t + 1
        continue 
    _549 = mem[64]
    mem[64] = mem[64] + 32
    mem[_549] = 0
    _550 = mem[64]
    mem[64] = mem[64] + 32
    mem[_550] = 0
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
        require var23001 < price.length
        mem[0] = 4
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
            _810 = mem[ceil32(arg2.length) + 128]
            mem[mem[96] + mem[64] + 192 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _810 % 32:
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, mem[96] + 160, mem[mem[64] + 128 len _810 + mem[96] + 64]
            else:
                mem[floor32(_810) + mem[96] + mem[64] + 192] = mem[floor32(_810) + mem[96] + mem[64] + -(_810 % 32) + 224 len _810 % 32]
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, mem[96] + 160, mem[mem[64] + 128 len floor32(_810) + mem[96] + 96]
        else:
            mem[floor32(mem[96]) + mem[64] + 160] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 192 len mem[96] % 32]
            mem[mem[64] + 96] = floor32(mem[96]) + 192
            mem[floor32(mem[96]) + mem[64] + 192] = mem[ceil32(arg2.length) + 128]
            _819 = mem[ceil32(arg2.length) + 128]
            mem[floor32(mem[96]) + mem[64] + 224 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _819 % 32:
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, floor32(mem[96]) + 192, mem[mem[64] + 128 len _819 + floor32(mem[96]) + 96]
            else:
                mem[floor32(_819) + floor32(mem[96]) + mem[64] + 224] = mem[floor32(_819) + floor32(mem[96]) + mem[64] + -(_819 % 32) + 256 len _819 % 32]
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, floor32(mem[96]) + 192, mem[mem[64] + 128 len floor32(_819) + floor32(mem[96]) + 128]
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
        require var23001 < price.length
        mem[0] = 4
        require eth.balance(this.address) >= price[var23001]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value price[var23001] wei
             gas 0 wei
        stor0++
        mem[mem[64]] = sha3(block.timestamp + stor0)
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = mem[96]
        _797 = mem[96]
        mem[mem[64] + 160 len mem[96]] = mem[128 len mem[96]]
        if not mem[96] % 32:
            mem[mem[64] + 96] = mem[96] + 160
            mem[mem[96] + mem[64] + 160] = mem[ceil32(arg2.length) + 128]
            _807 = mem[ceil32(arg2.length) + 128]
            mem[mem[96] + mem[64] + 192 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _807 % 32:
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, mem[96] + 160, mem[mem[64] + 128 len _807 + mem[96] + 64]
            else:
                mem[floor32(_807) + mem[96] + mem[64] + 192] = mem[floor32(_807) + mem[96] + mem[64] + -(_807 % 32) + 224 len _807 % 32]
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, mem[mem[64] + 96 len floor32(_807) + _797 + 128]
        else:
            mem[floor32(mem[96]) + mem[64] + 160] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 192 len mem[96] % 32]
            mem[mem[64] + 96] = floor32(mem[96]) + 192
            mem[floor32(mem[96]) + mem[64] + 192] = mem[ceil32(arg2.length) + 128]
            _815 = mem[ceil32(arg2.length) + 128]
            mem[floor32(mem[96]) + mem[64] + 224 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _815 % 32:
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, floor32(mem[96]) + 192, mem[mem[64] + 128 len _815 + floor32(mem[96]) + 96]
            else:
                mem[floor32(_815) + floor32(mem[96]) + mem[64] + 224] = mem[floor32(_815) + floor32(mem[96]) + mem[64] + -(_815 % 32) + 256 len _815 % 32]
                emit 0x10e5a063: sha3(block.timestamp + stor0), arg1, 128, mem[mem[64] + 96 len floor32(_815) + floor32(_797) + 160]
    return sha3(block.timestamp + stor0)
}

function sub_a4c8a1c1(?) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    require var23001 < sub_ca2f85ff.length
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(sub_ca2f85ff[var23001].length) + 224
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = sub_ca2f85ff[var23001].length
    mem[0] = var23001 + sha3(3)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = sub_ca2f85ff[var23001]
    s = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224
    t = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + sub_ca2f85ff[var23001].length + 192 > s:
        mem[s + 32] = stor[t + sha3(mem[0]) + 1]
        s = s + 32
        t = t + 1
        continue 
    _838 = mem[64]
    mem[64] = mem[64] + 32
    mem[_838] = 0
    _839 = mem[64]
    mem[64] = mem[64] + 32
    mem[_839] = 0
    if mem[96] >= mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192]:
        idx = 0
        while idx < mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192]:
            require idx < mem[96]
            require idx < mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192]
            if Mask(8, 248, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + idx + 224]) >= Mask(8, 248, mem[idx + 128]):
                require idx < mem[96]
                require idx < mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192]
                if Mask(8, 248, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + idx + 224]) <= Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
            var23001 = var23001 + 1
            continue 
        if mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] < mem[96]:
            var23001 = var23001 + 1
            continue 
        if mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] > mem[96]:
            var23001 = var23001 + 1
            continue 
        require var23001 < price.length
        mem[0] = 4
        require eth.balance(this.address) >= price[var23001]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value price[var23001] wei
             gas 0 wei
        stor0++
        mem[mem[64]] = sha3(block.timestamp + stor0)
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = 160
        mem[mem[64] + 160] = mem[96]
        _1230 = mem[96]
        mem[mem[64] + 192 len mem[96]] = mem[128 len mem[96]]
        if not mem[96] % 32:
            mem[mem[64] + 96] = mem[96] + 192
            mem[mem[96] + mem[64] + 192] = mem[ceil32(arg2.length) + 128]
            _1240 = mem[ceil32(arg2.length) + 128]
            mem[mem[96] + mem[64] + 224 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _1240 % 32:
                mem[mem[64] + 128] = _1240 + mem[96] + 224
                mem[_1240 + _1230 + mem[64] + 224] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                _1246 = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                mem[_1240 + _1230 + mem[64] + 256 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]]
                if not _1246 % 32:
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], _1240 + _1230 + 224, mem[mem[64] + 160 len _1246 + _1240 + _1230 + 96]
                else:
                    mem[floor32(_1246) + _1240 + _1230 + mem[64] + 256] = mem[floor32(_1246) + _1240 + _1230 + mem[64] + -(_1246 % 32) + 288 len _1246 % 32]
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], _1240 + _1230 + 224, mem[mem[64] + 160 len floor32(_1246) + _1240 + _1230 + 128]
            else:
                mem[floor32(_1240) + mem[96] + mem[64] + 224] = mem[floor32(_1240) + mem[96] + mem[64] + -(_1240 % 32) + 256 len _1240 % 32]
                mem[mem[64] + 128] = floor32(_1240) + _1230 + 256
                mem[floor32(_1240) + _1230 + mem[64] + 256] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                _1258 = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                mem[floor32(_1240) + _1230 + mem[64] + 288 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]]
                if not _1258 % 32:
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], floor32(_1240) + _1230 + 256, mem[mem[64] + 160 len _1258 + floor32(_1240) + _1230 + 128]
                else:
                    mem[floor32(_1258) + floor32(_1240) + _1230 + mem[64] + 288] = mem[floor32(_1258) + floor32(_1240) + _1230 + mem[64] + -(_1258 % 32) + 320 len _1258 % 32]
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], floor32(_1240) + _1230 + 256, mem[mem[64] + 160 len floor32(_1258) + floor32(_1240) + _1230 + 160]
        else:
            mem[floor32(mem[96]) + mem[64] + 192] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 224 len mem[96] % 32]
            mem[mem[64] + 96] = floor32(mem[96]) + 224
            mem[floor32(mem[96]) + mem[64] + 224] = mem[ceil32(arg2.length) + 128]
            _1249 = mem[ceil32(arg2.length) + 128]
            mem[floor32(mem[96]) + mem[64] + 256 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _1249 % 32:
                mem[mem[64] + 128] = _1249 + floor32(mem[96]) + 256
                mem[_1249 + floor32(_1230) + mem[64] + 256] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                _1260 = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                mem[_1249 + floor32(_1230) + mem[64] + 288 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]]
                if not _1260 % 32:
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], _1249 + floor32(_1230) + 256, mem[mem[64] + 160 len _1260 + _1249 + floor32(_1230) + 128]
                else:
                    mem[floor32(_1260) + _1249 + floor32(_1230) + mem[64] + 288] = mem[floor32(_1260) + _1249 + floor32(_1230) + mem[64] + -(_1260 % 32) + 320 len _1260 % 32]
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], _1249 + floor32(_1230) + 256, mem[mem[64] + 160 len floor32(_1260) + _1249 + floor32(_1230) + 160]
            else:
                mem[floor32(_1249) + floor32(mem[96]) + mem[64] + 256] = mem[floor32(_1249) + floor32(mem[96]) + mem[64] + -(_1249 % 32) + 288 len _1249 % 32]
                mem[mem[64] + 128] = floor32(_1249) + floor32(_1230) + 288
                mem[floor32(_1249) + floor32(_1230) + mem[64] + 288] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                _1275 = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                mem[floor32(_1249) + floor32(_1230) + mem[64] + 320 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]]
                if not _1275 % 32:
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], floor32(_1249) + floor32(_1230) + 288, mem[mem[64] + 160 len _1275 + floor32(_1249) + floor32(_1230) + 160]
                else:
                    mem[floor32(_1275) + floor32(_1249) + floor32(_1230) + mem[64] + 320] = mem[floor32(_1275) + floor32(_1249) + floor32(_1230) + mem[64] + -(_1275 % 32) + 352 len _1275 % 32]
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], floor32(_1249) + floor32(_1230) + 288, mem[mem[64] + 160 len floor32(_1275) + floor32(_1249) + floor32(_1230) + 192]
    else:
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            require idx < mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192]
            if Mask(8, 248, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + idx + 224]) >= Mask(8, 248, mem[idx + 128]):
                require idx < mem[96]
                require idx < mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192]
                if Mask(8, 248, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + idx + 224]) <= Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
            var23001 = var23001 + 1
            continue 
        if mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] < mem[96]:
            var23001 = var23001 + 1
            continue 
        if mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] > mem[96]:
            var23001 = var23001 + 1
            continue 
        require var23001 < price.length
        mem[0] = 4
        require eth.balance(this.address) >= price[var23001]
        call 0xf65b3b60010d57d0bb8478aa6ced15fe720621b4 with:
           value price[var23001] wei
             gas 0 wei
        stor0++
        mem[mem[64]] = sha3(block.timestamp + stor0)
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = 160
        mem[mem[64] + 160] = mem[96]
        _1238 = mem[96]
        mem[mem[64] + 192 len mem[96]] = mem[128 len mem[96]]
        if not mem[96] % 32:
            mem[mem[64] + 96] = mem[96] + 192
            mem[mem[96] + mem[64] + 192] = mem[ceil32(arg2.length) + 128]
            _1243 = mem[ceil32(arg2.length) + 128]
            mem[mem[96] + mem[64] + 224 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _1243 % 32:
                mem[mem[64] + 128] = _1243 + mem[96] + 224
                mem[_1243 + _1238 + mem[64] + 224] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                _1251 = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                mem[_1243 + _1238 + mem[64] + 256 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]]
                if not _1251 % 32:
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], _1243 + _1238 + 224, mem[mem[64] + 160 len _1251 + _1243 + _1238 + 96]
                else:
                    mem[floor32(_1251) + _1243 + _1238 + mem[64] + 256] = mem[floor32(_1251) + _1243 + _1238 + mem[64] + -(_1251 % 32) + 288 len _1251 % 32]
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], _1243 + _1238 + 224, mem[mem[64] + 160 len floor32(_1251) + _1243 + _1238 + 128]
            else:
                mem[floor32(_1243) + mem[96] + mem[64] + 224] = mem[floor32(_1243) + mem[96] + mem[64] + -(_1243 % 32) + 256 len _1243 % 32]
                mem[mem[64] + 128] = floor32(_1243) + mem[96] + 256
                mem[floor32(_1243) + _1238 + mem[64] + 256] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                _1265 = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                mem[floor32(_1243) + _1238 + mem[64] + 288 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]]
                if not _1265 % 32:
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], floor32(_1243) + _1238 + 256, mem[mem[64] + 160 len _1265 + floor32(_1243) + _1238 + 128]
                else:
                    mem[floor32(_1265) + floor32(_1243) + _1238 + mem[64] + 288] = mem[floor32(_1265) + floor32(_1243) + _1238 + mem[64] + -(_1265 % 32) + 320 len _1265 % 32]
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], floor32(_1243) + _1238 + 256, mem[mem[64] + 160 len floor32(_1265) + floor32(_1243) + _1238 + 160]
        else:
            mem[floor32(mem[96]) + mem[64] + 192] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 224 len mem[96] % 32]
            mem[mem[64] + 96] = floor32(mem[96]) + 224
            mem[floor32(mem[96]) + mem[64] + 224] = mem[ceil32(arg2.length) + 128]
            _1254 = mem[ceil32(arg2.length) + 128]
            mem[floor32(mem[96]) + mem[64] + 256 len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            if not _1254 % 32:
                mem[mem[64] + 128] = _1254 + floor32(mem[96]) + 256
                mem[_1254 + floor32(_1238) + mem[64] + 256] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                _1267 = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                mem[_1254 + floor32(_1238) + mem[64] + 288 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]]
                if not _1267 % 32:
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], _1254 + floor32(_1238) + 256, mem[mem[64] + 160 len _1267 + _1254 + floor32(_1238) + 128]
                else:
                    mem[floor32(_1267) + _1254 + floor32(_1238) + mem[64] + 288] = mem[floor32(_1267) + _1254 + floor32(_1238) + mem[64] + -(_1267 % 32) + 320 len _1267 % 32]
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], _1254 + floor32(_1238) + 256, mem[mem[64] + 160 len floor32(_1267) + _1254 + floor32(_1238) + 160]
            else:
                mem[floor32(_1254) + floor32(mem[96]) + mem[64] + 256] = mem[floor32(_1254) + floor32(mem[96]) + mem[64] + -(_1254 % 32) + 288 len _1254 % 32]
                mem[mem[64] + 128] = floor32(_1254) + floor32(mem[96]) + 288
                mem[floor32(_1254) + floor32(_1238) + mem[64] + 288] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                _1282 = mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]
                mem[floor32(_1254) + floor32(_1238) + mem[64] + 320 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len mem[ceil32(arg2.length) + ceil32(arg3.length) + 160]]
                if not _1282 % 32:
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], floor32(_1254) + floor32(_1238) + 288, mem[mem[64] + 160 len _1282 + floor32(_1254) + floor32(_1238) + 160]
                else:
                    mem[floor32(_1282) + floor32(_1254) + floor32(_1238) + mem[64] + 320] = mem[floor32(_1282) + floor32(_1254) + floor32(_1238) + mem[64] + -(_1282 % 32) + 352 len _1282 % 32]
                    emit 0x97b98c12: sha3(block.timestamp + stor0), arg1, 160, mem[mem[64] + 96], floor32(_1254) + floor32(_1238) + 288, mem[mem[64] + 160 len floor32(_1282) + floor32(_1254) + floor32(_1238) + 192]
    return sha3(block.timestamp + stor0)
}



}
