contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of uint64 stor4;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    stor4.length = 6
    s = 0
    idx = 128
    while 320 > idx:
        uint256(stor4.field_0) = mem[idx + 24 len 8] * 256^s or !(test266151307() * 256^s) and uint256(stor4.field_0)
        s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
        idx = idx + 32
        continue 
    idx = 0
    s = sha3(4)
    while idx:
        stor[s] = !(test266151307() * 256^idx) and stor[s]
        idx = idx + (8 * -idx + 15 / 32) + (-1 * idx * idx + 15 / 32) + 8
        s = (idx + 15 / 32) + s
        continue 
    idx = Mask(250, 3, None + 9) + 15 / 32 * Mask(253, 0, None + 9) >> 3
    while stor4.length + 3 / 4 > idx:
        uint64(stor4[idx].field_0) = 0
        idx = idx + 1
        continue 
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor7 = 0
    require 0 < stor4.length
    uint32(stor4.field_0) = 431655 * 3600
    uint32(stor4.field_32) = 0
    require 1 < stor4.length
    uint32(stor4.field_64) = 432375 * 3600
    uint32(stor4.field_96) = 0
    require 2 < stor4.length
    uint32(stor4.field_128) = 433119 * 3600
    uint32(stor4.field_160) = 0
    require 3 < stor4.length
    uint32(stor4.field_192) = 435351 * 3600
    uint32(stor4.field_224) = 0
    require 4 < stor4.length
    uint32(stor4.field_256) = 439695 * 3600
    uint32(stor4.field_288) = 0
    require 5 < stor4.length
    uint32(stor4.field_320) = 448455 * 3600
    uint32(stor4.field_352) = 0
    stor0 = 200000000 * 10^18
    stor8 = 0
    stor1[address(msg.sender)] = stor0
    emit Transfer(stor0, 0, msg.sender);
    return code.data[1165 len 14413]
}



// =====================  Runtime code  =====================


const name = 'BB Coin'

const decimals = 18

const symbol = 'BBXC'


uint256 totalSupply;
mapping of uint256 stor1;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 stor4;
array of struct stor5;
mapping of address stor6;
uint256 stor7;
uint8 stor8;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_91cbe1a7(?) {
    require 4 < stor4.length
    if block.timestamp > uint64(stor4.field_256):
        require stor1[address(arg1)] + stor5[address(arg1)].field_1024 >= stor1[address(arg1)]
        stor1[address(arg1)] += stor5[address(arg1)].field_1024
        stor5[address(arg1)].field_1024 = 0
    return 1
}

function sub_d6dc0024(?) {
    require msg.sender == owner
    require 4 < stor4.length
    if block.timestamp > uint64(stor4.field_256):
        idx = 0
        while idx < stor7:
            require stor1[stor6[idx]] + stor5[stor6[idx]].field_1024 >= stor1[stor6[idx]]
            stor1[stor6[idx]] += stor5[stor6[idx]].field_1024
            mem[0] = stor6[idx]
            mem[32] = 5
            stor5[stor6[idx]].field_1024 = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_011c2b71(?) {
    require 5 < stor4.length
    if block.timestamp > uint64(stor4.field_320):
        require stor1[address(arg1)] + stor5[address(arg1)].field_1024 >= stor1[address(arg1)]
        stor1[address(arg1)] += stor5[address(arg1)].field_1024
        require stor1[address(arg1)] + stor5[address(arg1)].field_1280 >= stor1[address(arg1)]
        stor1[address(arg1)] += stor5[address(arg1)].field_1280
        stor5[address(arg1)].field_1024 = 0
        stor5[address(arg1)].field_1280 = 0
    return 1
}

function sub_de0fe564(?) {
    require msg.sender == owner
    require 5 < stor4.length
    if block.timestamp > uint64(stor4.field_320):
        idx = 0
        while idx < stor7:
            require stor1[stor6[idx]] + stor5[stor6[idx]].field_1024 >= stor1[stor6[idx]]
            stor1[stor6[idx]] += stor5[stor6[idx]].field_1024
            require stor1[stor6[idx]] + stor5[stor6[idx]].field_1280 >= stor1[stor6[idx]]
            stor1[stor6[idx]] += stor5[stor6[idx]].field_1280
            stor5[stor6[idx]].field_1024 = 0
            mem[0] = stor6[idx]
            mem[32] = 5
            stor5[stor6[idx]].field_1280 = 0
            idx = idx + 1
            continue 
    return 1
}

function balanceOf(address arg1) {
    mem[544] = stor1[address(arg1)]
    idx = 0
    while idx < stor4.length:
        mem[32] = 5
        require idx < 6
        require idx + 1 < 7
        mem[(32 * idx + 1) + 544] = stor5[address(arg1)][idx].field_0
        require idx < stor4.length
        mem[0] = 4
        if block.timestamp >= stor('array', ('div', 0.25, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]:
            mem[0] = arg1
            mem[32] = 5
            require idx < 6
            require mem[544] + stor5[address(arg1)][idx].field_0 >= mem[544]
            mem[544] = mem[544] + stor5[address(arg1)][idx].field_0
            require idx + 1 < 7
            mem[(32 * idx + 1) + 544] = 0
        idx = idx + 1
        continue 
    return memory
      from 544
       len 32
}

function lockupOf(address arg1) {
    mem[352 len 192] = 0
    mem[320] = stor1[address(arg1)]
    idx = 0
    while idx < stor4.length:
        mem[32] = 5
        require idx < 6
        require idx + 1 < 7
        mem[(32 * idx + 1) + 320] = stor5[address(arg1)][idx].field_0
        require idx < stor4.length
        mem[0] = 4
        if block.timestamp >= stor('array', ('div', 0.25, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]:
            mem[0] = arg1
            mem[32] = 5
            require idx < 6
            require mem[320] + stor5[address(arg1)][idx].field_0 >= mem[320]
            mem[320] = mem[320] + stor5[address(arg1)][idx].field_0
            require idx + 1 < 7
            mem[(32 * idx + 1) + 320] = 0
        idx = idx + 1
        continue 
    return memory
      from 320
       len 224
}

function sub_a38b2bea(?) {
    require msg.sender == owner
    require 3 < stor4.length
    if block.timestamp > uint64(stor4.field_192):
        idx = 0
        while idx < stor7:
            require stor1[stor6[idx]] + stor5[stor6[idx]].field_0 >= stor1[stor6[idx]]
            stor1[stor6[idx]] += stor5[stor6[idx]].field_0
            require stor1[stor6[idx]] + stor5[stor6[idx]].field_256 >= stor1[stor6[idx]]
            stor1[stor6[idx]] += stor5[stor6[idx]].field_256
            require stor1[stor6[idx]] + stor5[stor6[idx]].field_512 >= stor1[stor6[idx]]
            stor1[stor6[idx]] += stor5[stor6[idx]].field_512
            require stor1[stor6[idx]] + stor5[stor6[idx]].field_768 >= stor1[stor6[idx]]
            stor1[stor6[idx]] += stor5[stor6[idx]].field_768
            stor5[stor6[idx]].field_0 = 0
            stor5[stor6[idx]].field_256 = 0
            stor5[stor6[idx]].field_512 = 0
            mem[0] = stor6[idx]
            mem[32] = 5
            stor5[stor6[idx]].field_768 = 0
            idx = idx + 1
            continue 
        stor8 = 1
    return 1
}

function sub_7bfb29ce(?) {
    require msg.sender == owner
    require 4 < stor4.length
    if block.timestamp < uint64(stor4.field_256):
        require stor5[address(arg1)].field_1024 >= 0
        require stor5[address(arg1)].field_1024 + stor5[address(arg1)].field_1280 >= stor5[address(arg1)].field_1024
        stor5[address(arg1)].field_1024 = 0
        stor5[address(arg1)].field_1280 = 0
        require stor5[address(arg1)].field_1024 + stor5[address(arg1)].field_1280 <= totalSupply
        totalSupply = totalSupply - stor5[address(arg1)].field_1024 - stor5[address(arg1)].field_1280
        emit Burn((stor5[address(arg1)].field_1024 + stor5[address(arg1)].field_1280), arg1);
    else:
        require 4 < stor4.length
        if block.timestamp <= uint64(stor4.field_256):
            require 0 <= totalSupply
            emit Burn(0, arg1);
        else:
            require 5 < stor4.length
            if block.timestamp >= uint64(stor4.field_320):
                require 0 <= totalSupply
                emit Burn(0, arg1);
            else:
                require stor5[address(arg1)].field_1280 >= 0
                stor5[address(arg1)].field_1280 = 0
                require stor5[address(arg1)].field_1280 <= totalSupply
                totalSupply -= stor5[address(arg1)].field_1280
                emit Burn(stor5[address(arg1)].field_1280, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require 3 < stor4.length
    if block.timestamp <= uint64(stor4.field_192):
        mem[576 len 192] = 0
        mem[544] = stor1[address(arg1)]
        idx = 0
        while idx < stor4.length:
            mem[32] = 5
            require idx < 6
            require idx + 1 < 7
            mem[(32 * idx + 1) + 544] = stor5[address(arg1)][idx].field_0
            require idx < stor4.length
            mem[0] = 4
            if block.timestamp >= stor('array', ('div', 0.25, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]:
                mem[0] = arg1
                mem[32] = 5
                require idx < 6
                require mem[544] + stor5[address(arg1)][idx].field_0 >= mem[544]
                mem[544] = mem[544] + stor5[address(arg1)][idx].field_0
                require idx + 1 < 7
                mem[(32 * idx + 1) + 544] = 0
            idx = idx + 1
            continue 
        stor1[address(arg1)] = mem[544]
        idx = 0
        while idx < stor4.length:
            require idx + 1 < 7
            mem[0] = arg1
            mem[32] = 5
            require idx < 6
            stor5[address(arg1)][idx].field_0 = mem[(32 * idx + 1) + 544]
            idx = idx + 1
            continue 
    else:
        if not stor8:
            mem[576 len 192] = 0
            mem[544] = stor1[address(arg1)]
            idx = 0
            while idx < stor4.length:
                mem[32] = 5
                require idx < 6
                require idx + 1 < 7
                mem[(32 * idx + 1) + 544] = stor5[address(arg1)][idx].field_0
                require idx < stor4.length
                mem[0] = 4
                if block.timestamp >= stor('array', ('div', 0.25, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]:
                    mem[0] = arg1
                    mem[32] = 5
                    require idx < 6
                    require mem[544] + stor5[address(arg1)][idx].field_0 >= mem[544]
                    mem[544] = mem[544] + stor5[address(arg1)][idx].field_0
                    require idx + 1 < 7
                    mem[(32 * idx + 1) + 544] = 0
                idx = idx + 1
                continue 
            stor1[address(arg1)] = mem[544]
            idx = 0
            while idx < stor4.length:
                require idx + 1 < 7
                mem[0] = arg1
                mem[32] = 5
                require idx < 6
                stor5[address(arg1)][idx].field_0 = mem[(32 * idx + 1) + 544]
                idx = idx + 1
                continue 
    require arg1
    require arg2 <= stor1[address(msg.sender)]
    require arg2 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg2
    require stor1[address(arg1)] + arg2 >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require 3 < stor4.length
    if block.timestamp <= uint64(stor4.field_192):
        mem[576 len 192] = 0
        mem[544] = stor1[address(arg1)]
        idx = 0
        while idx < stor4.length:
            mem[32] = 5
            require idx < 6
            require idx + 1 < 7
            mem[(32 * idx + 1) + 544] = stor5[address(arg1)][idx].field_0
            require idx < stor4.length
            mem[0] = 4
            if block.timestamp >= stor('array', ('div', 0.25, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]:
                mem[0] = arg1
                mem[32] = 5
                require idx < 6
                require mem[544] + stor5[address(arg1)][idx].field_0 >= mem[544]
                mem[544] = mem[544] + stor5[address(arg1)][idx].field_0
                require idx + 1 < 7
                mem[(32 * idx + 1) + 544] = 0
            idx = idx + 1
            continue 
        stor1[address(arg1)] = mem[544]
        idx = 0
        while idx < stor4.length:
            require idx + 1 < 7
            mem[0] = arg1
            mem[32] = 5
            require idx < 6
            stor5[address(arg1)][idx].field_0 = mem[(32 * idx + 1) + 544]
            idx = idx + 1
            continue 
    else:
        if not stor8:
            mem[576 len 192] = 0
            mem[544] = stor1[address(arg1)]
            idx = 0
            while idx < stor4.length:
                mem[32] = 5
                require idx < 6
                require idx + 1 < 7
                mem[(32 * idx + 1) + 544] = stor5[address(arg1)][idx].field_0
                require idx < stor4.length
                mem[0] = 4
                if block.timestamp >= stor('array', ('div', 0.25, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]:
                    mem[0] = arg1
                    mem[32] = 5
                    require idx < 6
                    require mem[544] + stor5[address(arg1)][idx].field_0 >= mem[544]
                    mem[544] = mem[544] + stor5[address(arg1)][idx].field_0
                    require idx + 1 < 7
                    mem[(32 * idx + 1) + 544] = 0
                idx = idx + 1
                continue 
            stor1[address(arg1)] = mem[544]
            idx = 0
            while idx < stor4.length:
                require idx + 1 < 7
                mem[0] = arg1
                mem[32] = 5
                require idx < 6
                stor5[address(arg1)][idx].field_0 = mem[(32 * idx + 1) + 544]
                idx = idx + 1
                continue 
    require arg2
    require arg3 <= stor1[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= stor1[address(arg1)]
    stor1[address(arg1)] -= arg3
    require stor1[address(arg2)] + arg3 >= stor1[address(arg2)]
    stor1[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_ae3c1784(?) {
    require arg1
    require 3 < stor4.length
    if block.timestamp <= uint64(stor4.field_192):
        mem[576 len 192] = 0
        mem[544] = stor1[address(msg.sender)]
        idx = 0
        while idx < stor4.length:
            mem[32] = 5
            require idx < 6
            require idx + 1 < 7
            mem[(32 * idx + 1) + 544] = stor5[address(msg.sender)][idx].field_0
            require idx < stor4.length
            mem[0] = 4
            if block.timestamp >= stor('array', ('div', 0.25, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]:
                mem[0] = msg.sender
                mem[32] = 5
                require idx < 6
                require mem[544] + stor5[address(msg.sender)][idx].field_0 >= mem[544]
                mem[544] = mem[544] + stor5[address(msg.sender)][idx].field_0
                require idx + 1 < 7
                mem[(32 * idx + 1) + 544] = 0
            idx = idx + 1
            continue 
        stor1[address(msg.sender)] = mem[544]
        idx = 0
        while idx < stor4.length:
            require idx + 1 < 7
            mem[0] = msg.sender
            mem[32] = 5
            require idx < 6
            stor5[address(msg.sender)][idx].field_0 = mem[(32 * idx + 1) + 544]
            idx = idx + 1
            continue 
    else:
        if not stor8:
            mem[576 len 192] = 0
            mem[544] = stor1[address(msg.sender)]
            idx = 0
            while idx < stor4.length:
                mem[32] = 5
                require idx < 6
                require idx + 1 < 7
                mem[(32 * idx + 1) + 544] = stor5[address(msg.sender)][idx].field_0
                require idx < stor4.length
                mem[0] = 4
                if block.timestamp >= stor('array', ('div', 0.25, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]:
                    mem[0] = msg.sender
                    mem[32] = 5
                    require idx < 6
                    require mem[544] + stor5[address(msg.sender)][idx].field_0 >= mem[544]
                    mem[544] = mem[544] + stor5[address(msg.sender)][idx].field_0
                    require idx + 1 < 7
                    mem[(32 * idx + 1) + 544] = 0
                idx = idx + 1
                continue 
            stor1[address(msg.sender)] = mem[544]
            idx = 0
            while idx < stor4.length:
                require idx + 1 < 7
                mem[0] = msg.sender
                mem[32] = 5
                require idx < 6
                stor5[address(msg.sender)][idx].field_0 = mem[(32 * idx + 1) + 544]
                idx = idx + 1
                continue 
    require arg2 >= 0
    require arg2 + arg3 >= arg2
    require arg4 >= 0
    require arg5 >= 0
    require arg6 >= 0
    require arg7 >= 0
    require arg8 >= 0
    require arg2 + arg3 + arg4 + arg5 + arg6 + arg7 + arg8 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] = stor1[address(msg.sender)] - arg2 - arg3 - arg4 - arg5 - arg6 - arg7 - arg8
    require stor1[address(arg1)] + arg2 >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    require stor5[address(arg1)].field_0 + arg3 >= stor5[address(arg1)].field_0
    stor5[address(arg1)].field_0 += arg3
    require stor5[address(arg1)].field_256 + arg4 >= stor5[address(arg1)].field_256
    stor5[address(arg1)].field_256 += arg4
    require stor5[address(arg1)].field_512 + arg5 >= stor5[address(arg1)].field_512
    stor5[address(arg1)].field_512 += arg5
    require stor5[address(arg1)].field_768 + arg6 >= stor5[address(arg1)].field_768
    stor5[address(arg1)].field_768 += arg6
    require stor5[address(arg1)].field_1024 + arg7 >= stor5[address(arg1)].field_1024
    stor5[address(arg1)].field_1024 += arg7
    require stor5[address(arg1)].field_1280 + arg8 >= stor5[address(arg1)].field_1280
    stor5[address(arg1)].field_1280 += arg8
    stor6[stor7] = arg1
    stor7++
    emit Transfer((arg2 + arg3 + arg4 + arg5 + arg6 + arg7 + arg8), msg.sender, arg1);
    return 1
}



}
