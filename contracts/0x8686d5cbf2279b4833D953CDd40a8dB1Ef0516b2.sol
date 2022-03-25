contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of struct stor2;

function _fallback() payable {
    stor0 = 385802469
    stor1 = 5
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = stor2.length + 1
        while sha3(2) + stor2.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    uint8(stor2[stor2.length].field_0) = 16
    Mask(248, 0, stor2[stor2.length].field_8) = 'cleaning' / 256
    idx = 0
    while stor2[stor2.length].length + 31 / 32 > idx:
        stor2[stor2.length + idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = stor2.length + 1
        while sha3(2) + stor2.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    uint8(stor2[stor2.length].field_0) = 14
    Mask(248, 0, stor2[stor2.length].field_8) = 'cooking' / 256
    idx = 0
    while stor2[stor2.length].length + 31 / 32 > idx:
        stor2[stor2.length + idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = stor2.length + 1
        while sha3(2) + stor2.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    uint8(stor2[stor2.length].field_0) = 14
    Mask(248, 0, stor2[stor2.length].field_8) = 'ironing' / 256
    idx = 0
    while stor2[stor2.length].length + 31 / 32 > idx:
        stor2[stor2.length + idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = stor2.length + 1
        while sha3(2) + stor2.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    uint8(stor2[stor2.length].field_0) = 14
    Mask(248, 0, stor2[stor2.length].field_8) = 'washing' / 256
    idx = 0
    while stor2[stor2.length].length + 31 / 32 > idx:
        stor2[stor2.length + idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[1128 len 2054]
}



// =====================  Runtime code  =====================


const period = (720 * 24 * 3600)


uint256 incomeRate;
array of address stor1;
array of uint256 category;
array of struct stor3;
mapping of struct sub_4bbd2d6b;

function sub_1c697a84(?) payable {
    return stor1.length
}

function category(uint256 arg1) payable {
    return category[arg1][0 len category[arg1].length]
}

function sub_4bbd2d6b(?) payable {
    return uint256(sub_4bbd2d6b[address(arg1)][2][arg2].field_0)
}

function users(address arg1) payable {
    return bool(uint8(sub_4bbd2d6b[arg1].field_0)), uint256(sub_4bbd2d6b[arg1].field_256)
}

function incomeRate() payable {
    return incomeRate
}

function sub_f1398703(?) payable {
    return category[arg1][0 len category[arg1].length]
}

function _fallback() payable {
  stop
}

function register(address arg1) payable {
    if uint8(sub_4bbd2d6b[address(arg1)].field_0):
        return 0
    uint8(sub_4bbd2d6b[address(arg1)].field_0) = 1
    uint256(sub_4bbd2d6b[address(arg1)].field_256) = block.timestamp
    return 1
}

function register() payable {
    if uint8(sub_4bbd2d6b[address(msg.sender)].field_0):
        return 0
    uint8(sub_4bbd2d6b[address(msg.sender)].field_0) = 1
    uint256(sub_4bbd2d6b[address(msg.sender)].field_256) = block.timestamp
    return 1
}

function sub_5846720c(?) payable {
    mem[0] = arg1
    mem[32] = 4
    s = 0
    idx = uint256(sub_4bbd2d6b[sha3(mem[0 len 64])].field_0) - 1
    s = 0
    while idx >= 0:
        mem[32] = 4
        require idx < uint256(sub_4bbd2d6b[address(arg1)].field_1024)
        require stor((0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor4', 4))))[uint8(idx)] < stor3.length
        mem[0] = 3
        if uint256(stor[(4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_512) >= block.timestamp - (720 * 24 * 3600):
            s = (4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + sha3(sha3(address(arg1), 4) + 4)
            idx = idx - 1
            s = s + uint256(stor[(4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_768)
            continue 
        return s
    return s
}

function balanceOf(address arg1) payable {
    if 0 == bool(uint8(sub_4bbd2d6b[address(arg1)].field_0)):
        return 0
    mem[0] = arg1
    mem[32] = 4
    if block.timestamp - uint256(sub_4bbd2d6b[address(arg1)].field_256) >= 720 * 24 * 3600:
        s = 0
        idx = uint256(sub_4bbd2d6b[sha3(mem[0 len 64])].field_0) - 1
        s = 0
        while idx >= 0:
            mem[32] = 4
            require idx < uint256(sub_4bbd2d6b[address(arg1)].field_1024)
            require stor((0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor4', 4))))[uint8(idx)] < stor3.length
            mem[0] = 3
            if uint256(stor[(4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_512) >= block.timestamp - (720 * 24 * 3600):
                s = (4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + sha3(sha3(address(arg1), 4) + 4)
                idx = idx - 1
                s = s + uint256(stor[(4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_768)
                continue 
            return ((720 * 24 * 3600 * incomeRate) - s)
        return ((720 * 24 * 3600 * incomeRate) - s)
    s = 0
    idx = uint256(sub_4bbd2d6b[sha3(mem[0 len 64])].field_0) - 1
    s = 0
    while idx >= 0:
        mem[32] = 4
        require idx < uint256(sub_4bbd2d6b[address(arg1)].field_1024)
        require stor((0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor4', 4))))[uint8(idx)] < stor3.length
        mem[0] = 3
        if uint256(stor[(4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_512) >= block.timestamp - (720 * 24 * 3600):
            s = (4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + sha3(sha3(address(arg1), 4) + 4)
            idx = idx - 1
            s = s + uint256(stor[(4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_768)
            continue 
        return ((block.timestamp * incomeRate) - (uint256(sub_4bbd2d6b[address(arg1)].field_256) * incomeRate) - s)
    return ((block.timestamp * incomeRate) - (uint256(sub_4bbd2d6b[address(arg1)].field_256) * incomeRate) - s)
}

function sub_d3a9f7a6(?) payable {
    require bool(uint8(sub_4bbd2d6b[address(msg.sender)].field_0)) != 0
    if 0 == bool(uint8(sub_4bbd2d6b[address(msg.sender)].field_0)):
        require 0 >= arg2
    else:
        mem[0] = msg.sender
        mem[32] = 4
        if block.timestamp - uint256(sub_4bbd2d6b[address(msg.sender)].field_256) >= 720 * 24 * 3600:
            s = 0
            idx = uint256(sub_4bbd2d6b[sha3(mem[0 len 64])].field_0) - 1
            s = 0
            while idx >= 0:
                mem[32] = 4
                require idx < uint256(sub_4bbd2d6b[address(msg.sender)].field_1024)
                require stor((0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))))[uint8(idx)] < stor3.length
                mem[0] = 3
                if uint256(stor[(4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_512) >= block.timestamp - (720 * 24 * 3600):
                    s = (4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + sha3(sha3(address(msg.sender), 4) + 4)
                    idx = idx - 1
                    s = s + uint256(stor[(4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_768)
                    continue 
                require (720 * 24 * 3600 * incomeRate) - s >= arg2
                require arg3 < category.length
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = sha3(3) + (4 * stor3.length + 1)
                    while sha3(3) + (4 * stor3.length) > idx:
                        address(stor[idx]) = 0
                        stor1[idx] = 0
                        category[idx] = 0
                        uint256(stor3[idx].field_0) = 0
                        idx = idx + 4
                        continue 
                uint256(stor3[stor3.length].field_0) = msg.sender or Mask(96, 160, uint256(stor3[stor3.length].field_0))
                uint256(stor3[stor3.length].field_256) = arg1 or Mask(96, 160, uint256(stor3[stor3.length].field_256))
                uint256(stor3[stor3.length].field_512) = block.timestamp
                uint256(stor3[stor3.length].field_768) = arg2
                uint256(sub_4bbd2d6b[address(msg.sender)].field_768)++
                if not uint256(sub_4bbd2d6b[address(msg.sender)].field_768) <= uint256(sub_4bbd2d6b[address(msg.sender)].field_768) + 1:
                    idx = sha3(sha3(address(msg.sender), 4) + 3) + (uint256(sub_4bbd2d6b[address(msg.sender)].field_768) + 4 / 4)
                    while sha3(sha3(address(msg.sender), 4) + 3) + (uint256(sub_4bbd2d6b[address(msg.sender)].field_768) + 3 / 4) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(msg.sender)].field_770) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) = uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(msg.sender)].field_770) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) and !(test266151307() * 256^(8 * sub_4bbd2d6b[address(msg.sender)].field_768 % 4)) or stor3.length * 256^(8 * sub_4bbd2d6b[address(msg.sender)].field_768 % 4)
                uint256(sub_4bbd2d6b[address(arg1)].field_1024)++
                if not uint256(sub_4bbd2d6b[address(arg1)].field_1024) <= uint256(sub_4bbd2d6b[address(arg1)].field_1024) + 1:
                    idx = sha3(sha3(address(arg1), 4) + 4) + (uint256(sub_4bbd2d6b[address(arg1)].field_1024) + 4 / 4)
                    while sha3(sha3(address(arg1), 4) + 4) + (uint256(sub_4bbd2d6b[address(arg1)].field_1024) + 3 / 4) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(arg1)].field_1026) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) = stor3.length * 256^(8 * sub_4bbd2d6b[address(arg1)].field_1024 % 4) or !(test266151307() * 256^(8 * sub_4bbd2d6b[address(arg1)].field_1024 % 4)) and uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(arg1)].field_1026) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0)
                return 1
            require (720 * 24 * 3600 * incomeRate) - s >= arg2
        else:
            s = 0
            idx = uint256(sub_4bbd2d6b[sha3(mem[0 len 64])].field_0) - 1
            s = 0
            while idx >= 0:
                mem[32] = 4
                require idx < uint256(sub_4bbd2d6b[address(msg.sender)].field_1024)
                require stor((0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4))))[uint8(idx)] < stor3.length
                mem[0] = 3
                if uint256(stor[(4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_512) >= block.timestamp - (720 * 24 * 3600):
                    s = (4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + sha3(sha3(address(msg.sender), 4) + 4)
                    idx = idx - 1
                    s = s + uint256(stor[(4 * uint64(uint256(stor[(0.25 / idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) / 256^(8 * idx % 4))) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_768)
                    continue 
                require (block.timestamp * incomeRate) - (uint256(sub_4bbd2d6b[address(msg.sender)].field_256) * incomeRate) - s >= arg2
                require arg3 < category.length
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = sha3(3) + (4 * stor3.length + 1)
                    while sha3(3) + (4 * stor3.length) > idx:
                        address(stor[idx]) = 0
                        stor1[idx] = 0
                        category[idx] = 0
                        uint256(stor3[idx].field_0) = 0
                        idx = idx + 4
                        continue 
                uint256(stor3[stor3.length].field_0) = msg.sender or Mask(96, 160, uint256(stor3[stor3.length].field_0))
                uint256(stor3[stor3.length].field_256) = arg1 or Mask(96, 160, uint256(stor3[stor3.length].field_256))
                uint256(stor3[stor3.length].field_512) = block.timestamp
                uint256(stor3[stor3.length].field_768) = arg2
                uint256(sub_4bbd2d6b[address(msg.sender)].field_768)++
                if not uint256(sub_4bbd2d6b[address(msg.sender)].field_768) <= uint256(sub_4bbd2d6b[address(msg.sender)].field_768) + 1:
                    idx = sha3(sha3(address(msg.sender), 4) + 3) + (uint256(sub_4bbd2d6b[address(msg.sender)].field_768) + 4 / 4)
                    while sha3(sha3(address(msg.sender), 4) + 3) + (uint256(sub_4bbd2d6b[address(msg.sender)].field_768) + 3 / 4) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(msg.sender)].field_770) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) = uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(msg.sender)].field_770) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) and !(test266151307() * 256^(8 * sub_4bbd2d6b[address(msg.sender)].field_768 % 4)) or stor3.length * 256^(8 * sub_4bbd2d6b[address(msg.sender)].field_768 % 4)
                uint256(sub_4bbd2d6b[address(arg1)].field_1024)++
                if not uint256(sub_4bbd2d6b[address(arg1)].field_1024) <= uint256(sub_4bbd2d6b[address(arg1)].field_1024) + 1:
                    idx = sha3(sha3(address(arg1), 4) + 4) + (uint256(sub_4bbd2d6b[address(arg1)].field_1024) + 4 / 4)
                    while sha3(sha3(address(arg1), 4) + 4) + (uint256(sub_4bbd2d6b[address(arg1)].field_1024) + 3 / 4) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(arg1)].field_1026) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) = stor3.length * 256^(8 * sub_4bbd2d6b[address(arg1)].field_1024 % 4) or !(test266151307() * 256^(8 * sub_4bbd2d6b[address(arg1)].field_1024 % 4)) and uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(arg1)].field_1026) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0)
                return 1
            require (block.timestamp * incomeRate) - (uint256(sub_4bbd2d6b[address(msg.sender)].field_256) * incomeRate) - s >= arg2
    require arg3 < category.length
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = 4 * stor3.length + 1
        while 4 * stor3.length > idx:
            address(stor3[idx].field_0) = 0
            address(stor3[idx].field_256) = 0
            uint256(stor3[idx].field_512) = 0
            uint256(stor3[idx].field_768) = 0
            idx = idx + 4
            continue 
    uint256(stor3[stor3.length].field_0) = msg.sender or Mask(96, 160, uint256(stor3[stor3.length].field_0))
    uint256(stor3[stor3.length].field_256) = arg1 or Mask(96, 160, uint256(stor3[stor3.length].field_256))
    uint256(stor3[stor3.length].field_512) = block.timestamp
    uint256(stor3[stor3.length].field_768) = arg2
    uint256(sub_4bbd2d6b[address(msg.sender)].field_768)++
    if not uint256(sub_4bbd2d6b[address(msg.sender)].field_768) <= uint256(sub_4bbd2d6b[address(msg.sender)].field_768) + 1:
        idx = uint256(sub_4bbd2d6b[address(msg.sender)].field_768) + 4 / 4
        while uint256(sub_4bbd2d6b[address(msg.sender)].field_768) + 3 / 4 > idx:
            uint256(sub_4bbd2d6b[address(msg.sender)][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(msg.sender)].field_770) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) = uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(msg.sender)].field_770) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4bbd2d6b', 4)))].field_0) and !(test266151307() * 256^(8 * sub_4bbd2d6b[address(msg.sender)].field_768 % 4)) or stor3.length * 256^(8 * sub_4bbd2d6b[address(msg.sender)].field_768 % 4)
    uint256(sub_4bbd2d6b[address(arg1)].field_1024)++
    if not uint256(sub_4bbd2d6b[address(arg1)].field_1024) <= uint256(sub_4bbd2d6b[address(arg1)].field_1024) + 1:
        idx = uint256(sub_4bbd2d6b[address(arg1)].field_1024) + 4 / 4
        while uint256(sub_4bbd2d6b[address(arg1)].field_1024) + 3 / 4 > idx:
            uint256(sub_4bbd2d6b[address(arg1)][idx + 4].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(arg1)].field_1026) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0) = stor3.length * 256^(8 * sub_4bbd2d6b[address(arg1)].field_1024 % 4) or !(test266151307() * 256^(8 * sub_4bbd2d6b[address(arg1)].field_1024 % 4)) and uint256(stor[Mask(254, 0, sub_4bbd2d6b[address(arg1)].field_1026) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4bbd2d6b', 4)))].field_0)
    return 1
}



}
