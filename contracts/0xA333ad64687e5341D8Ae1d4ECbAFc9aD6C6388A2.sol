contract main {




// =====================  Runtime code  =====================


#
#  - sub_7efe7949(?)
#
const name = 'United Humans Time'

const decimals = 3

const symbol = ''


uint256 totalSupply;
mapping of struct allowance;
mapping of struct sub_62c308c0;
mapping of struct sub_76cf132b;
mapping of address sub_ff3aa422;
uint256 sub_1dd1f3dd;

function totalSupply() payable {
    return totalSupply
}

function sub_1dd1f3dd(?) payable {
    return sub_1dd1f3dd
}

function sub_62c308c0(?) payable {
    require calldata.size - 4 >= 32
    return sub_62c308c0[arg1].field_0 % 1099511627776, sub_62c308c0[arg1].field_0, sub_62c308c0[arg1].field_104
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_62c308c0[address(arg1)].field_104
}

function sub_76cf132b(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_76cf132b[arg1].field_0), 
           uint32(sub_76cf132b[arg1].field_0),
           sub_76cf132b[arg1].field_0 % 1099511627776,
           uint32(sub_76cf132b[arg1].field_256),
           uint8(sub_76cf132b[arg1].field_288),
           sub_76cf132b[arg1].field_256,
           sub_76cf132b[arg1].field_360
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return uint256(allowance[arg1][arg2].field_0)
}

function sub_ff3aa422(?) payable {
    require calldata.size - 4 >= 64
    return sub_ff3aa422[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_eb81530e(?) payable {
    require calldata.size - 4 >= 32
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    emit 0x12fe91b5: arg1, sub_62c308c0[msg.sender].field_0 % 1099511627776
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)].field_0 = uint64(arg2)
    Mask(192, 0, allowance[msg.sender][address(arg1)].field_64) = 0
    emit Approval(uint64(arg2), msg.sender, arg1);
    return 1
}

function forward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > sub_1dd1f3dd:
        revert with 0, 'message-not-found'
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    emit 0x6c8e1224: arg1, sub_62c308c0[msg.sender].field_0 % 1099511627776
}

function setTax(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    uint8(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_288) = arg1
    emit 0xfb57247c: arg1, sub_62c308c0[msg.sender].field_0 % 1099511627776
}

function accept(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_76cf132b[arg1].field_192 % 1099511627776:
        revert with 0, 'vault-not-found'
    if address(sub_76cf132b[arg1].field_0) != msg.sender:
        revert with 0, 'not-invited'
    if arg1 == sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'already-accepted'
    sub_62c308c0[msg.sender].field_0 % 1099511627776 = arg1 % 1099511627776
    emit 0x4ca0d0ae: arg1 % 1099511627776, msg.sender
}

function sub_bd093f1f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not sub_76cf132b[arg1].field_192 % 1099511627776:
        revert with 0, 'vault-not-found'
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    sub_1dd1f3dd++
    emit 0xd622268c: Array(len=arg2.length, data=arg2[all]), sub_1dd1f3dd + 1, sub_62c308c0[msg.sender].field_0 % 1099511627776, arg1 % 1099511627776
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint64(arg2) <= 0:
        revert with 0, 'zero-send'
    if msg.sender == arg1:
        revert with 0, 'self-send'
    if sub_62c308c0[address(msg.sender)].field_104 < uint64(arg2):
        revert with 0, 'insufficient-balance'
    sub_62c308c0[address(msg.sender)].field_104 = uint64(sub_62c308c0[address(msg.sender)].field_104 - arg2)
    sub_62c308c0[address(arg1)].field_40 = uint64(arg2 + sub_62c308c0[address(arg1)].field_40)
    emit 0xfeddf252: uint64(arg2), msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > uint256(allowance[address(arg1)][msg.sender].field_0):
        revert with 0, 'insufficient-allowance'
    if uint64(arg3) <= 0:
        revert with 0, 'zero-send'
    if arg1 == arg2:
        revert with 0, 'self-send'
    if sub_62c308c0[address(arg1)].field_104 < uint64(arg3):
        revert with 0, 'insufficient-balance'
    sub_62c308c0[address(arg1)].field_104 = uint64(sub_62c308c0[address(arg1)].field_104 - arg3)
    sub_62c308c0[address(arg2)].field_40 = uint64(arg3 + sub_62c308c0[address(arg2)].field_40)
    emit 0xfeddf252: uint64(arg3), arg1, arg2
    uint256(allowance[address(arg1)][msg.sender].field_0) -= arg3
    return 1
}

function sub_f02fddb2(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not sub_76cf132b[arg1].field_192 % 1099511627776:
        revert with 0, 'vault-not-found'
    if arg2 <= 0:
        revert with 0, 'zero-send'
    if sub_62c308c0[msg.sender].field_104 < arg2:
        revert with 0, 'insufficient-balance'
    sub_62c308c0[msg.sender].field_104 = uint64(sub_62c308c0[msg.sender].field_104 - arg2)
    sub_76cf132b[arg1].field_296 = uint64(arg2 + sub_76cf132b[arg1].field_296)
    emit 0xfeddf252: arg2, msg.sender, 0
    emit 0x57e3dc1f: arg2 << 192, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1 % 1099511627776
}

function vote(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    if arg1 <= 0:
        revert with 0, 'ballot-not-found'
    require 2^var12001
    if sub_62c308c0[msg.sender].field_0 % 1099511627776 / var14002 <= 0:
        if arg1 >= var14004:
            revert with 0, 'ballot-not-found'
    else:
        require 2^(var14004 + 1)
        idx = var14004
        while sub_62c308c0[msg.sender].field_0 % 1099511627776 / 2^(idx + 1) > 0:
            require 2^(idx + 2)
            idx = idx + 1
            continue 
        if arg1 >= None + 3:
            revert with 0, 'ballot-not-found'
    sub_ff3aa422[stor2[msg.sender].field_0 % 1099511627776][arg1] = arg2
    emit 0x791d9766: sub_62c308c0[msg.sender].field_0 % 1099511627776, uint8(arg1), arg2
}

function sub_f541e038(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if arg2 <= 0:
        revert with 0, 'zero-send'
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    if sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_360 < arg2:
        revert with 0, 'insufficient-balance'
    sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_360 = uint64(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_360 - arg2)
    sub_62c308c0[address(arg1)].field_40 = uint64(arg2 + sub_62c308c0[address(arg1)].field_40)
    emit 0xfeddf252: arg2, 0, arg1
    emit 0x710c89ed: arg2 << 192, Array(len=arg3.length, data=arg3[all]), sub_62c308c0[msg.sender].field_0 % 1099511627776, arg1
}

function sub_d0c68ea6(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not sub_76cf132b[arg1].field_192 % 1099511627776:
        revert with 0, 'vault-not-found'
    if arg2 <= 0:
        revert with 0, 'zero-send'
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    if sub_62c308c0[msg.sender].field_0 % 1099511627776 == arg1:
        revert with 0, 'self-send'
    if sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_360 < arg2:
        revert with 0, 'insufficient-balance'
    sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_360 = uint64(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_360 - arg2)
    sub_76cf132b[arg1].field_296 = uint64(arg2 + sub_76cf132b[arg1].field_296)
    emit 0x5018c244: arg2 << 192, Array(len=arg3.length, data=arg3[all]), sub_62c308c0[msg.sender].field_0 % 1099511627776, arg1 % 1099511627776
}

function invite(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_76cf132b[arg1].field_192 % 1099511627776:
        revert with 0, 'vault-not-found'
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    idx = arg1
    while idx > sub_62c308c0[msg.sender].field_0 % 1099511627776:
        idx = idx / 2
        continue 
    if arg1 <= sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unauthorized'
    if idx != sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unauthorized'
    if uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) >= block.timestamp:
        revert with 0, 'freezed'
    if block.timestamp - uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) <= 168 * 24 * 3600:
        revert with 0, 'freezed'
    uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) = uint32(block.timestamp)
    if address(sub_76cf132b[arg1].field_0) == arg2:
        revert with 0, 'already-invited'
    if arg1 == sub_62c308c0[address(stor3[arg1].field_0)].field_0 % 1099511627776:
        sub_62c308c0[address(stor3[arg1].field_0)].field_0 % 1099511627776 = 0
    address(sub_76cf132b[arg1].field_0) = arg2
    emit 0x6377caee: sub_62c308c0[msg.sender].field_0 % 1099511627776, arg1 % 1099511627776, arg2
}

function sub_2e58cc6d(?) payable {
    mem[64] = 96
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    mem[0] = msg.sender
    mem[32] = 2
    if not sub_62c308c0[msg.sender].field_40:
        revert with 0, 'zero-taxable'
    idx = sub_62c308c0[msg.sender].field_1 % 549755813888
    s = 0
    t = stor[sha3(mem[0 len 64])]
    while idx:
        mem[0] = idx
        mem[32] = 3
        if not uint8(sub_76cf132b[idx].field_288):
            idx = idx / 2
            s = s
            t = t
            continue 
        sub_76cf132b[idx].field_360 = uint64((uint64(t * uint8(sub_76cf132b[idx].field_288)) / 510) + sub_76cf132b[idx].field_360)
        mem[mem[64]] = uint64(uint64(t * uint8(sub_76cf132b[idx].field_288)) / 510)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = 3
        mem[mem[64] + 96] = 0x7461780000000000000000000000000000000000000000000000000000000000
        emit 0x57e3dc1f: uint64(t * uint8(sub_76cf132b[idx].field_288)) / 510 << 192, 64, 3, 0x7461780000000000000000000000000000000000000000000000000000000000, msg.sender, idx % 1099511627776
        idx = idx / 2
        s = uint64(t * uint8(sub_76cf132b[idx].field_288)) / 510
        t = t - (uint64(t * uint8(sub_76cf132b[idx].field_288)) / 510)
        continue 
    sub_62c308c0[msg.sender].field_104 = uint64(t + sub_62c308c0[msg.sender].field_104)
    emit 0xfeddf252: uint64(sub_62c308c0[msg.sender].field_40 - t), msg.sender, 0
    emit 0x4de15281: sub_62c308c0[msg.sender].field_0, uint64(t), msg.sender, sub_62c308c0[msg.sender].field_0 % 1099511627776
    sub_62c308c0[msg.sender].field_40 = 0
}

function sub_de0a8fc8(?) payable {
    require calldata.size - 4 >= 96
    if not sub_76cf132b[arg1].field_192 % 1099511627776:
        revert with 0, 'vault-not-found'
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    idx = arg1
    while idx > sub_62c308c0[msg.sender].field_0 % 1099511627776:
        idx = idx / 2
        continue 
    if arg1 <= sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unauthorized'
    if idx != sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unauthorized'
    if uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) >= block.timestamp:
        revert with 0, 'freezed'
    if block.timestamp - uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) <= 168 * 24 * 3600:
        revert with 0, 'freezed'
    uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) = uint32(block.timestamp)
    if ('signextend', 3, ('signextend', 3, ('param', 'arg2'))) >= 50000 * 3600:
        revert with 0, 'out-of-range'
    if ('signextend', 3, ('signextend', 3, ('param', 'arg2'))) <= -180 * 10^6:
        revert with 0, 'out-of-range'
    if ('signextend', 3, ('signextend', 3, ('param', 'arg3'))) >= 25000 * 3600:
        revert with 0, 'out-of-range'
    if ('signextend', 3, ('signextend', 3, ('param', 'arg3'))) <= -90 * 10^6:
        revert with 0, 'out-of-range'
    emit 0x65cfac2d: ('signextend', 3, ('signextend', 3, ('signextend', 3, ('param', 'arg2')))), ('signextend', 3, ('signextend', 3, ('signextend', 3, ('param', 'arg3')))), sub_62c308c0[msg.sender].field_0 % 1099511627776, arg1 % 1099511627776
}

function sub_537e794f(?) payable {
    mem[64] = 96
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    mem[0] = sub_62c308c0[msg.sender].field_0 % 1099511627776
    mem[32] = 3
    if not sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_296:
        revert with 0, 'zero-taxable'
    idx = sub_62c308c0[msg.sender].field_1 % 549755813888
    s = 0
    t = allowance[sha3(mem[0 len 64])].field_40
    while idx:
        mem[0] = idx
        mem[32] = 3
        if not uint8(sub_76cf132b[idx].field_288):
            idx = idx / 2
            s = s
            t = t
            continue 
        sub_76cf132b[idx].field_360 = uint64((uint64(t * uint8(sub_76cf132b[idx].field_288)) / 510) + sub_76cf132b[idx].field_360)
        mem[mem[64]] = uint64(uint64(t * uint8(sub_76cf132b[idx].field_288)) / 510)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = 3
        mem[mem[64] + 96] = 0x7461780000000000000000000000000000000000000000000000000000000000
        emit 0x5018c244: uint64(t * uint8(sub_76cf132b[idx].field_288)) / 510 << 192, 64, 3, 0x7461780000000000000000000000000000000000000000000000000000000000, sub_62c308c0[msg.sender].field_0 % 1099511627776, idx % 1099511627776
        idx = idx / 2
        s = uint64(t * uint8(sub_76cf132b[idx].field_288)) / 510
        t = t - (uint64(t * uint8(sub_76cf132b[idx].field_288)) / 510)
        continue 
    sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_360 = uint64(t + sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_360)
    emit 0x5b79fb3c: sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_256, uint64(t), sub_62c308c0[msg.sender].field_0 % 1099511627776
    sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_296 = 0
}

function remove(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_76cf132b[arg1].field_192 % 1099511627776:
        revert with 0, 'vault-not-found'
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    idx = arg1
    while idx > sub_62c308c0[msg.sender].field_0 % 1099511627776:
        idx = idx / 2
        continue 
    if arg1 <= sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unauthorized'
    if idx != sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unauthorized'
    if uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) >= block.timestamp:
        revert with 0, 'freezed'
    if block.timestamp - uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) <= 168 * 24 * 3600:
        revert with 0, 'freezed'
    uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) = uint32(block.timestamp)
    if 2 <= sub_76cf132b[arg1].field_192 % 1099511627776:
        revert with 0, 'has-child'
    sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_296 = uint64(sub_76cf132b[arg1].field_360 + sub_76cf132b[arg1].field_296 + sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_296)
    if arg1 == sub_62c308c0[address(stor3[arg1].field_0)].field_0 % 1099511627776:
        sub_62c308c0[address(stor3[arg1].field_0)].field_0 % 1099511627776 = 0
    Mask(232, 0, sub_76cf132b[arg1].field_0) = 0
    Mask(168, 0, sub_76cf132b[arg1].field_256) = 0
    uint32(sub_76cf132b[Mask(255, 1, arg1)].field_256) = uint32(block.timestamp)
    idx = arg1 / 2
    while idx:
        mem[0] = idx
        mem[32] = 3
        sub_76cf132b[idx].field_192 % 1099511627776 = sub_76cf132b[idx].field_192 % 1099511627776 - 1 % 1099511627776
        idx = idx / 2
        continue 
    emit 0x8043da2e: uint64(sub_76cf132b[arg1].field_360 + sub_76cf132b[arg1].field_296), sub_62c308c0[msg.sender].field_0 % 1099511627776, arg1 % 1099511627776
}

function sub_5812c235(?) payable {
    require calldata.size - 4 >= 64
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    idx = arg1
    while idx > sub_62c308c0[msg.sender].field_0 % 1099511627776:
        idx = idx / 2
        continue 
    if arg1 <= sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unauthorized'
    if idx != sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unauthorized'
    if uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) >= block.timestamp:
        revert with 0, 'freezed'
    if block.timestamp - uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) <= 168 * 24 * 3600:
        revert with 0, 'freezed'
    uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_160) = uint32(block.timestamp)
    require 2^var22001
    if arg1 / var24002 <= 0:
        if var24004 >= 35:
            revert with 0, 'exceeds-34-layer-limit'
    else:
        require 2^(var24004 + 1)
        idx = var24004
        while arg1 / 2^(idx + 1) > 0:
            require 2^(idx + 2)
            idx = idx + 1
            continue 
        if None + 3 >= 35:
            revert with 0, 'exceeds-34-layer-limit'
    if sub_76cf132b[arg1].field_192 % 1099511627776:
        revert with 0, 'already-exists'
    if not sub_76cf132b[Mask(255, 1, arg1)].field_192 % 1099511627776:
        revert with 0, 'parent-not-found'
    address(sub_76cf132b[arg1].field_0) = arg2
    uint32(sub_76cf132b[arg1].field_160) = uint32(block.timestamp)
    uint8(sub_76cf132b[arg1].field_192) = 1
    uint32(sub_76cf132b[arg1].field_200) = 0
    uint32(sub_76cf132b[arg1].field_256) = uint32(block.timestamp)
    Mask(136, 0, sub_76cf132b[arg1].field_288) = 0
    sub_76cf132b[arg1].field_512 % 1 = 0
    sub_76cf132b[arg1].field_512 % 1 = 0
    sub_76cf132b[arg1].field_512 % 1 = 0
    idx = arg1 / 2
    while idx:
        mem[0] = idx
        mem[32] = 3
        sub_76cf132b[idx].field_192 % 1099511627776 = sub_76cf132b[idx].field_192 % 1099511627776 + 1 % 1099511627776
        idx = idx / 2
        continue 
    emit 0xd8b9c971: arg2, sub_62c308c0[msg.sender].field_0 % 1099511627776, arg1 % 1099511627776
}

function harvest() payable {
    if not sub_62c308c0[msg.sender].field_0 % 1099511627776:
        revert with 0, 'unidentified'
    if sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_192 % 1099511627776 != 1:
        revert with 0, 'has-child'
    require block.timestamp > uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_256)
    require 2^var12001
    if sub_62c308c0[msg.sender].field_0 % 1099511627776 / var14002 <= 0:
        totalSupply += uint64(Mask(256, -var14004 + 1, (10^9 * block.timestamp) - (10^9 * uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_256))) << -var14004 + 1)
        uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_256) = uint32(block.timestamp)
        Mask(224, 0, sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_288) = uint8(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_288)
        sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_296 = uint64((Mask(256, -var14004 + 1, (10^9 * block.timestamp) - (10^9 * uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_256))) << -var14004 + 1) + sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_296)
        emit 0xd8ad29a9: uint64(Mask(256, -var14004 + 1, (10^9 * block.timestamp) - (10^9 * uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_256))) << -var14004 + 1), sub_62c308c0[msg.sender].field_0 % 1099511627776
    else:
        require 2^(var14004 + 1)
        idx = var14004
        while sub_62c308c0[msg.sender].field_0 % 1099511627776 / 2^(idx + 1) > 0:
            require 2^(idx + 2)
            idx = idx + 1
            continue 
        totalSupply += uint64(Mask(256, -None - 2, (10^9 * block.timestamp) - (10^9 * uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_256))) >> None + 2)
        uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_256) = uint32(block.timestamp)
        Mask(224, 0, sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_288) = uint8(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_288)
        sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_296 = uint64((Mask(256, -None - 2, (10^9 * block.timestamp) - (10^9 * uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_256))) >> None + 2) + sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_296)
        emit 0xd8ad29a9: uint64(Mask(256, -None - 2, (10^9 * block.timestamp) - (10^9 * uint32(sub_76cf132b[stor2[msg.sender].field_0 % 1099511627776].field_256))) >> None + 2), sub_62c308c0[msg.sender].field_0 % 1099511627776
}



}
