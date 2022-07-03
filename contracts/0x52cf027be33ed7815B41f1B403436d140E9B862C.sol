contract main {




// =====================  Runtime code  =====================


const sub_205befda(?) = 25000

const sub_4c037af5(?) = 100000

const sub_8304d1da(?) = 10


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor51;
uint8 paused;
uint8 sub_7a37ac26; offset 160
address protocolTokenAddress;
array of struct sub_23007a8d;
uint256 sub_f9f59268;

function protocolToken() payable {
    return protocolTokenAddress
}

function sub_23007a8d(?) payable {
    require calldata.size - 4 >= 64
    if not uint8(sub_23007a8d[arg1][4][address(arg2)].field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lockbox#getRequestPrice: There is no open request for that lockbox and reader.'
    return uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor51[address(arg1)])
}

function paused() payable {
    return bool(paused)
}

function sub_7a37ac26(?) payable {
    return sub_7a37ac26
}

function sub_a4edfeca(?) payable {
    require calldata.size - 4 >= 64
    return bool(uint8(sub_23007a8d[arg1][4][address(arg2)].field_256))
}

function sub_f9f59268(?) payable {
    return sub_f9f59268
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender
    require stor51[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor51[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor51[address(msg.sender)]
    stor51[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor51[address(msg.sender)]
    require arg1
    require not stor51[address(arg1)]
    stor51[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function updatePrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    if uint256(sub_23007a8d[arg1].field_512):
        require 25000 * uint256(sub_23007a8d[arg1].field_512) / uint256(sub_23007a8d[arg1].field_512) == 25000
    if sub_23007a8d[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lockbox#updatePrice: Only the lockbox writer can update the lockbox price.'
    uint256(sub_23007a8d[arg1].field_512) = arg2
    emit PriceUpdated(arg2, arg1);
}

function sub_f0e3fdc6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 < 1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require not paused
    if sub_23007a8d[arg2].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lockbox#updateLockbox: The sender must be the lockbox writer.'
    require arg1 < 1
    emit 0x3adfd19a: arg1, Array(len=arg3.length, data=arg3[all]), arg2, sub_23007a8d[arg2].field_0, sub_23007a8d[arg2].field_256
}

function sub_1b986154(?) payable {
    require calldata.size - 4 >= 64
    if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
        require uint256(sub_23007a8d[arg1].field_768) > 0
        if uint256(sub_23007a8d[arg1].field_768):
            return (0 / uint256(sub_23007a8d[arg1].field_768))
    else:
        require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
        require uint256(sub_23007a8d[arg1].field_768) > 0
        if uint256(sub_23007a8d[arg1].field_768):
            return (25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768))
    ('iszero', ('type', 256, ('field', 768, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_23007a8d', 154))))))
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require arg1
    if not stor51[address(arg1)]:
        require arg1
        require not stor51[address(arg1)]
        stor51[address(arg1)] = 1
        emit PauserAdded(arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    paused = 0
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_c8d9f4c9(?) payable {
    require calldata.size - 4 >= 64
    if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
        require uint256(sub_23007a8d[arg1].field_768) > 0
        require uint256(sub_23007a8d[arg1].field_768)
        if not 0 / uint256(sub_23007a8d[arg1].field_768):
            return 0
        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
        return (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768))
    require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
    require uint256(sub_23007a8d[arg1].field_768) > 0
    require uint256(sub_23007a8d[arg1].field_768)
    if not 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
        return 0
    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
    return (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768))
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lockbox#initialize: The pauser address must not be 0x0.'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lockbox#initialize: The protocolToken address must not be 0x0.'
    sub_f9f59268 = 1
    protocolTokenAddress = arg2
    sub_7a37ac26 = 0
    emit Initialized(arg2);
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require arg1
    if not stor51[address(arg1)]:
        require arg1
        require not stor51[address(arg1)]
        stor51[address(arg1)] = 1
        emit PauserAdded(arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    paused = 0
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_97b553fc(?) payable {
    require calldata.size - 4 >= 64
    if sub_23007a8d[arg1].field_256 == arg2:
        return 0
    if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
        require uint256(sub_23007a8d[arg1].field_768) > 0
        require uint256(sub_23007a8d[arg1].field_768)
        if not 0 / uint256(sub_23007a8d[arg1].field_768):
            require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
            return uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
        return (uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)))
    require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
    require uint256(sub_23007a8d[arg1].field_768) > 0
    require uint256(sub_23007a8d[arg1].field_768)
    if not 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
        require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
        return uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
    return (uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)))
}

function sub_68646040(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] < 1
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require ceil32(('cd', 100).length) + 128 >= 96 and ceil32(('cd', 100).length) + 128 <= test266151307()
    mem[96] = ('cd', 100).length
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    mem[128 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[('cd', 100).length + 128] = 0
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require ceil32(('cd', 132).length) + 160 >= 128 and ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 160 <= test266151307()
    mem[ceil32(('cd', 100).length) + 128] = ('cd', 132).length
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[ceil32(('cd', 100).length) + 160 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 132).length + ceil32(('cd', 100).length) + 160] = 0
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require (32 * ('cd', 164).length) + 192 >= 160 and ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 192 <= test266151307()
    mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 160] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 192
    while idx < ('cd', 164).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require not paused
    if ('cd', 164).length <= 0:
        revert with 0, 'Lockbox#createLockbox: The smpcMembers list must have at least one member.'
    if cd[68]:
        require 25000 * cd[68] / cd[68] == 25000
    sub_f9f59268++
    mem[64] = ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 320
    mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 192] = msg.sender
    mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 224] = address(cd[36])
    mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 256] = cd[68]
    mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 288] = ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 160
    mem[32] = 154
    sub_23007a8d[stor155].field_0 = msg.sender
    sub_23007a8d[stor155].field_256 = address(cd[36])
    uint256(sub_23007a8d[stor155].field_512) = cd[68]
    uint256(sub_23007a8d[stor155].field_768) = Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(('cd', 100).length) + ('cd', 132).length + 192 len -('cd', 132).length + ceil32(('cd', 132).length)]
    mem[0] = sha3(sub_f9f59268, 154) + 3
    if not Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(('cd', 100).length) + ('cd', 132).length + 192 len -('cd', 132).length + ceil32(('cd', 132).length)]:
        idx = 0
        while uint256(sub_23007a8d[stor155].field_768) > idx:
            sub_23007a8d[stor155][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 192
        while ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(('cd', 100).length) + ('cd', 132).length + 192 len -('cd', 132).length + ceil32(('cd', 132).length)]) + 192 > idx:
            sub_23007a8d[stor155][s + 3].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[ceil32(('cd', 100).length) + ('cd', 132).length + 192 len -('cd', 132).length + ceil32(('cd', 132).length)]) + 31) >> 5
        while uint256(sub_23007a8d[stor155].field_768) > idx:
            sub_23007a8d[stor155][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    require cd[4] < 1
    mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 320] = cd[4]
    mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 352] = 96
    mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 416] = ('cd', 164).length
    idx = 0
    s = ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 192
    t = ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 448
    while idx < ('cd', 164).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 384] = (32 * ('cd', 164).length) + 128
    mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (64 * ('cd', 164).length) + 448] = Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 160 len -('cd', 100).length + ceil32(('cd', 100).length)]
    s = 0
    while ('cd', 164).length < Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 160 len -('cd', 100).length + ceil32(('cd', 100).length)]:
        mem[(67 * ('cd', 164).length) + ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + 480] = mem[('cd', 164).length + ceil32(('cd', 100).length) + 160]
        s = ('cd', 164).length + 32
        continue 
    if ('cd', 164).length > Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 160 len -('cd', 100).length + ceil32(('cd', 100).length)]:
        mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (64 * ('cd', 164).length) + Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 160 len -('cd', 100).length + ceil32(('cd', 100).length)] + 480] = 0
    emit 0x89865bb9: mem[ceil32(('cd', 100).length) + ceil32(('cd', 132).length) + (32 * ('cd', 164).length) + 320 len (32 * ('cd', 164).length) + ceil32(Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 160 len -('cd', 100).length + ceil32(('cd', 100).length)]) + 160], sub_f9f59268, msg.sender, address(cd[36])
    require cd[4] < 1
    emit 0x3adfd19a: cd[4], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]), sub_f9f59268, msg.sender, address(cd[36])
    emit PriceUpdated(cd[68], sub_f9f59268);
}

function sub_c898cf8c(?) payable {
    require calldata.size - 4 >= 64
    if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
        require uint256(sub_23007a8d[arg1].field_768) > 0
        require uint256(sub_23007a8d[arg1].field_768)
        if not 0 / uint256(sub_23007a8d[arg1].field_768):
            if sub_23007a8d[arg1].field_256 == arg2:
                return 0
            if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
                require uint256(sub_23007a8d[arg1].field_768) > 0
                require uint256(sub_23007a8d[arg1].field_768)
                if 0 / uint256(sub_23007a8d[arg1].field_768):
                    require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                    require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                    return (uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)))
            else:
                require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
                require uint256(sub_23007a8d[arg1].field_768) > 0
                require uint256(sub_23007a8d[arg1].field_768)
                if 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                    return (uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)))
            require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
            require uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) >= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
            return uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
        if sub_23007a8d[arg1].field_256 == arg2:
            require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) >= 0
            return (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768))
        if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
            require uint256(sub_23007a8d[arg1].field_768) > 0
            require uint256(sub_23007a8d[arg1].field_768)
            if not 0 / uint256(sub_23007a8d[arg1].field_768):
                require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                require (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) >= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                return ((uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0))
            require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
            require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
            require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) >= 0
            return ((uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)))
        require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
        require uint256(sub_23007a8d[arg1].field_768) > 0
        require uint256(sub_23007a8d[arg1].field_768)
        if not 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
            require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
            require (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) >= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
            return ((uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0))
        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) >= 0
        return ((uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)))
    require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
    require uint256(sub_23007a8d[arg1].field_768) > 0
    require uint256(sub_23007a8d[arg1].field_768)
    if not 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
        if sub_23007a8d[arg1].field_256 == arg2:
            return 0
        if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
            require uint256(sub_23007a8d[arg1].field_768) > 0
            require uint256(sub_23007a8d[arg1].field_768)
            if 0 / uint256(sub_23007a8d[arg1].field_768):
                require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                return (uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)))
        else:
            require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
            require uint256(sub_23007a8d[arg1].field_768) > 0
            require uint256(sub_23007a8d[arg1].field_768)
            if 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                return (uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)))
        require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
        require uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) >= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
        return uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
    if sub_23007a8d[arg1].field_256 == arg2:
        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) >= 0
        return (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768))
    if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
        require uint256(sub_23007a8d[arg1].field_768) > 0
        require uint256(sub_23007a8d[arg1].field_768)
        if not 0 / uint256(sub_23007a8d[arg1].field_768):
            require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
            require (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) >= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
            return ((uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0))
        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) >= 0
        return ((uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)))
    require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
    require uint256(sub_23007a8d[arg1].field_768) > 0
    require uint256(sub_23007a8d[arg1].field_768)
    if not 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
        require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
        require (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) >= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
        return ((uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0))
    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) >= 0
    return ((uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)))
}

function sub_d8a5287e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require uint256(sub_23007a8d[arg1].field_768)
    if sub_23007a8d[arg1][3].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lockbox#fillRequest: Only the SMPC leader may fill requests.'
    if not uint8(sub_23007a8d[arg1][4][address(arg2)].field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lockbox#fillRequest: There is no open request from that reader.'
    if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
        require uint256(sub_23007a8d[arg1].field_768) > 0
        require uint256(sub_23007a8d[arg1].field_768)
        if sub_23007a8d[arg1].field_256 == arg2:
            uint8(sub_23007a8d[arg1][4][address(arg2)].field_256) = 0
            uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) = 0
            emit 0x29ec8c34: Array(len=arg3.length, data=arg3[all]), arg1, arg2
            if 0 / uint256(sub_23007a8d[arg1].field_768):
                idx = 0
                while idx < uint256(sub_23007a8d[arg1].field_768):
                    mem[0] = sha3(arg1, 154) + 3
                    mem[mem[64] + 4] = sub_23007a8d[arg1][idx + 3].field_0
                    mem[mem[64] + 36] = 0 / uint256(sub_23007a8d[arg1].field_768)
                    require ext_code.size(protocolTokenAddress)
                    call protocolTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_23007a8d[arg1][idx + 3].field_0, 0 / uint256(sub_23007a8d[arg1].field_768)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    continue 
        else:
            if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
                require uint256(sub_23007a8d[arg1].field_768) > 0
                require uint256(sub_23007a8d[arg1].field_768)
                if not 0 / uint256(sub_23007a8d[arg1].field_768):
                    require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                    uint8(sub_23007a8d[arg1][4][address(arg2)].field_256) = 0
                    uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) = 0
                    emit 0x29ec8c34: Array(len=arg3.length, data=arg3[all]), arg1, arg2
                    if 0 / uint256(sub_23007a8d[arg1].field_768):
                        idx = 0
                        while idx < uint256(sub_23007a8d[arg1].field_768):
                            mem[0] = sha3(arg1, 154) + 3
                            mem[mem[64] + 4] = sub_23007a8d[arg1][idx + 3].field_0
                            mem[mem[64] + 36] = 0 / uint256(sub_23007a8d[arg1].field_768)
                            require ext_code.size(protocolTokenAddress)
                            call protocolTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_23007a8d[arg1][idx + 3].field_0, 0 / uint256(sub_23007a8d[arg1].field_768)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    if uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_23007a8d[arg1].field_0, uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                    require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                    uint8(sub_23007a8d[arg1][4][address(arg2)].field_256) = 0
                    uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) = 0
                    emit 0x29ec8c34: Array(len=arg3.length, data=arg3[all]), arg1, arg2
                    if 0 / uint256(sub_23007a8d[arg1].field_768):
                        idx = 0
                        while idx < uint256(sub_23007a8d[arg1].field_768):
                            mem[0] = sha3(arg1, 154) + 3
                            mem[mem[64] + 4] = sub_23007a8d[arg1][idx + 3].field_0
                            mem[mem[64] + 36] = 0 / uint256(sub_23007a8d[arg1].field_768)
                            require ext_code.size(protocolTokenAddress)
                            call protocolTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_23007a8d[arg1][idx + 3].field_0, 0 / uint256(sub_23007a8d[arg1].field_768)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    if uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)):
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_23007a8d[arg1].field_0, uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
                require uint256(sub_23007a8d[arg1].field_768) > 0
                require uint256(sub_23007a8d[arg1].field_768)
                if not 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                    require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                    uint8(sub_23007a8d[arg1][4][address(arg2)].field_256) = 0
                    uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) = 0
                    emit 0x29ec8c34: Array(len=arg3.length, data=arg3[all]), arg1, arg2
                    if 0 / uint256(sub_23007a8d[arg1].field_768):
                        idx = 0
                        while idx < uint256(sub_23007a8d[arg1].field_768):
                            mem[0] = sha3(arg1, 154) + 3
                            mem[mem[64] + 4] = sub_23007a8d[arg1][idx + 3].field_0
                            mem[mem[64] + 36] = 0 / uint256(sub_23007a8d[arg1].field_768)
                            require ext_code.size(protocolTokenAddress)
                            call protocolTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_23007a8d[arg1][idx + 3].field_0, 0 / uint256(sub_23007a8d[arg1].field_768)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    if uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_23007a8d[arg1].field_0, uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                    uint8(sub_23007a8d[arg1][4][address(arg2)].field_256) = 0
                    uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) = 0
                    emit 0x29ec8c34: Array(len=arg3.length, data=arg3[all]), arg1, arg2
                    if 0 / uint256(sub_23007a8d[arg1].field_768):
                        idx = 0
                        while idx < uint256(sub_23007a8d[arg1].field_768):
                            mem[0] = sha3(arg1, 154) + 3
                            mem[mem[64] + 4] = sub_23007a8d[arg1][idx + 3].field_0
                            mem[mem[64] + 36] = 0 / uint256(sub_23007a8d[arg1].field_768)
                            require ext_code.size(protocolTokenAddress)
                            call protocolTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_23007a8d[arg1][idx + 3].field_0, 0 / uint256(sub_23007a8d[arg1].field_768)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    if uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)):
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_23007a8d[arg1].field_0, uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
    else:
        require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
        require uint256(sub_23007a8d[arg1].field_768) > 0
        require uint256(sub_23007a8d[arg1].field_768)
        if sub_23007a8d[arg1].field_256 == arg2:
            uint8(sub_23007a8d[arg1][4][address(arg2)].field_256) = 0
            uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) = 0
            emit 0x29ec8c34: Array(len=arg3.length, data=arg3[all]), arg1, arg2
            if 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                idx = 0
                while idx < uint256(sub_23007a8d[arg1].field_768):
                    mem[0] = sha3(arg1, 154) + 3
                    mem[mem[64] + 4] = sub_23007a8d[arg1][idx + 3].field_0
                    mem[mem[64] + 36] = 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
                    require ext_code.size(protocolTokenAddress)
                    call protocolTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_23007a8d[arg1][idx + 3].field_0, 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    continue 
        else:
            if not uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
                require uint256(sub_23007a8d[arg1].field_768) > 0
                require uint256(sub_23007a8d[arg1].field_768)
                if not 0 / uint256(sub_23007a8d[arg1].field_768):
                    require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                    uint8(sub_23007a8d[arg1][4][address(arg2)].field_256) = 0
                    uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) = 0
                    emit 0x29ec8c34: Array(len=arg3.length, data=arg3[all]), arg1, arg2
                    if 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                        idx = 0
                        while idx < uint256(sub_23007a8d[arg1].field_768):
                            mem[0] = sha3(arg1, 154) + 3
                            mem[mem[64] + 4] = sub_23007a8d[arg1][idx + 3].field_0
                            mem[mem[64] + 36] = 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
                            require ext_code.size(protocolTokenAddress)
                            call protocolTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_23007a8d[arg1][idx + 3].field_0, 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    if uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_23007a8d[arg1].field_0, uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                    require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                    uint8(sub_23007a8d[arg1][4][address(arg2)].field_256) = 0
                    uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) = 0
                    emit 0x29ec8c34: Array(len=arg3.length, data=arg3[all]), arg1, arg2
                    if 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                        idx = 0
                        while idx < uint256(sub_23007a8d[arg1].field_768):
                            mem[0] = sha3(arg1, 154) + 3
                            mem[mem[64] + 4] = sub_23007a8d[arg1][idx + 3].field_0
                            mem[mem[64] + 36] = 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
                            require ext_code.size(protocolTokenAddress)
                            call protocolTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_23007a8d[arg1][idx + 3].field_0, 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    if uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)):
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_23007a8d[arg1].field_0, uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                require 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) == 25000
                require uint256(sub_23007a8d[arg1].field_768) > 0
                require uint256(sub_23007a8d[arg1].field_768)
                if not 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                    require 0 <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                    uint8(sub_23007a8d[arg1][4][address(arg2)].field_256) = 0
                    uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) = 0
                    emit 0x29ec8c34: Array(len=arg3.length, data=arg3[all]), arg1, arg2
                    if 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                        idx = 0
                        while idx < uint256(sub_23007a8d[arg1].field_768):
                            mem[0] = sha3(arg1, 154) + 3
                            mem[mem[64] + 4] = sub_23007a8d[arg1][idx + 3].field_0
                            mem[mem[64] + 36] = 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
                            require ext_code.size(protocolTokenAddress)
                            call protocolTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_23007a8d[arg1][idx + 3].field_0, 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    if uint256(sub_23007a8d[arg1][4][address(arg2)].field_0):
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_23007a8d[arg1].field_0, uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                    require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(arg2)].field_0)
                    uint8(sub_23007a8d[arg1][4][address(arg2)].field_256) = 0
                    uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) = 0
                    emit 0x29ec8c34: Array(len=arg3.length, data=arg3[all]), arg1, arg2
                    if 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                        idx = 0
                        while idx < uint256(sub_23007a8d[arg1].field_768):
                            mem[0] = sha3(arg1, 154) + 3
                            mem[mem[64] + 4] = sub_23007a8d[arg1][idx + 3].field_0
                            mem[mem[64] + 36] = 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
                            require ext_code.size(protocolTokenAddress)
                            call protocolTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_23007a8d[arg1][idx + 3].field_0, 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    if uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)):
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_23007a8d[arg1].field_0, uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(arg2)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
}

function sub_d418040d(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] < 1
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 160 >= 128 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 <= test266151307()
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 68).length) + 160
    while idx < ('cd', 100).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 132).length) + 192 >= 160 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192 <= test266151307()
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require (32 * ('cd', 164).length) + 224 >= 192 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224 <= test266151307()
    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192] = ('cd', 164).length
    idx = 0
    s = cd[164] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224
    while idx < ('cd', 164).length:
        require cd[164] + cd[s] + 67 < calldata.size
        require cd[(cd[164] + cd[s] + 36)] <= test266151307()
        _1907 = mem[64]
        require mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[164] + cd[s] + 36)]) + 32
        mem[_1907] = cd[(cd[164] + cd[s] + 36)]
        require cd[164] + cd[s] + cd[(cd[164] + cd[s] + 36)] + 68 <= calldata.size
        mem[_1907 + 32 len cd[(cd[164] + cd[s] + 36)]] = call.data[cd[164] + cd[s] + 68 len cd[(cd[164] + cd[s] + 36)]]
        mem[cd[(cd[164] + cd[s] + 36)] + _1907 + 32] = 0
        mem[t] = _1907
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    _1908 = mem[64]
    require mem[64] + (32 * ('cd', 196).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 196).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 196).length) + 32
    mem[_1908] = ('cd', 196).length
    idx = 0
    s = cd[196] + 36
    t = _1908 + 32
    while idx < ('cd', 196).length:
        require cd[196] + cd[s] + 67 < calldata.size
        require cd[(cd[196] + cd[s] + 36)] <= test266151307()
        _2381 = mem[64]
        require mem[64] + ceil32(cd[(cd[196] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[196] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[196] + cd[s] + 36)]) + 32
        mem[_2381] = cd[(cd[196] + cd[s] + 36)]
        require cd[196] + cd[s] + cd[(cd[196] + cd[s] + 36)] + 68 <= calldata.size
        mem[_2381 + 32 len cd[(cd[196] + cd[s] + 36)]] = call.data[cd[196] + cd[s] + 68 len cd[(cd[196] + cd[s] + 36)]]
        mem[cd[(cd[196] + cd[s] + 36)] + _2381 + 32] = 0
        mem[t] = _2381
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    require ('cd', 228).length <= test266151307()
    _2382 = mem[64]
    require mem[64] + (32 * ('cd', 228).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 228).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 228).length) + 32
    mem[_2382] = ('cd', 228).length
    require cd[228] + (32 * ('cd', 228).length) + 36 <= calldata.size
    idx = 0
    s = cd[228] + 36
    t = _2382 + 32
    while idx < ('cd', 228).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender
    mem[0] = msg.sender
    mem[32] = 51
    require stor51[address(msg.sender)]
    if sub_7a37ac26 >= 10:
        revert with 0, 'Lockbox#migrate: The contract has already been migrated the max number of times.'
    if not cd[36]:
        sub_7a37ac26 = uint8(sub_7a37ac26 + 1)
        mem[mem[64]] = cd[36]
        mem[mem[64] + 32] = sub_f9f59268
        emit Migrated(cd[36], sub_f9f59268);
        idx = 0
        while idx < cd[36]:
            require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
            if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                sub_f9f59268++
                require idx < mem[96]
                sub_23007a8d[stor155].field_0 = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                sub_23007a8d[stor155].field_256 = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                mem[0] = sub_f9f59268
                mem[32] = 154
                uint256(sub_23007a8d[stor155].field_512) = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                _3354 = mem[_2382]
                uint256(sub_23007a8d[stor155].field_768) = mem[_2382]
                mem[0] = sha3(sub_f9f59268, 154) + 3
                if not _3354:
                    s = sha3(sha3(sub_f9f59268, 154) + 3)
                    while sha3(sha3(sub_f9f59268, 154) + 3) + uint256(sub_23007a8d[stor155].field_768) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _3793 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[96]
                    _3801 = mem[(32 * idx) + 128]
                    require idx < mem[_1908]
                    _3810 = mem[(32 * idx) + _1908 + 32]
                    _3811 = mem[64]
                    require cd[4] < 1
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = 96
                    _3844 = mem[_2382]
                    mem[mem[64] + 96] = mem[_2382]
                    s = 0
                    t = _2382 + 32
                    u = mem[64] + 128
                    while s < _3844:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 64] = (32 * _3844) + 128
                    _4201 = mem[_3810]
                    mem[_3811 + (32 * _3844) + 128] = mem[_3810]
                    s = 0
                    while _3844 < _4201:
                        mem[(34 * _3844) + _3811 + 160] = mem[_3844 + _3810 + 32]
                        s = _3844 + 32
                        continue 
                    if _3844 <= _4201:
                        emit 0x89865bb9: mem[mem[64] len _3811 + (32 * _3844) + ceil32(_4201) + -mem[64] + 160], sub_f9f59268, address(_3801), address(_3793)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4595 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _4611 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _4628 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _4629 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _4710 = mem[_4628]
                        mem[mem[64] + 64] = mem[_4628]
                        s = 0
                        while s < _4710:
                            mem[s + mem[64] + 96] = mem[s + _4628 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4710) > _4710:
                            mem[_4629 + _4710 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _4629 + ceil32(_4710) + -mem[64] + 96], sub_f9f59268, address(_4611), address(_4595)
                    else:
                        mem[_3811 + (32 * _3844) + _4201 + 160] = 0
                        emit 0x89865bb9: mem[mem[64] len _3811 + (32 * _3844) + ceil32(_4201) + -mem[64] + 160], sub_f9f59268, address(_3801), address(_3793)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4613 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _4630 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _4645 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _4646 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _4720 = mem[_4645]
                        mem[mem[64] + 64] = mem[_4645]
                        s = 0
                        while s < _4720:
                            mem[s + mem[64] + 96] = mem[s + _4645 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4720) > _4720:
                            mem[_4646 + _4720 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _4646 + ceil32(_4720) + -mem[64] + 96], sub_f9f59268, address(_4630), address(_4613)
                else:
                    t = sha3(sha3(sub_f9f59268, 154) + 3)
                    s = _2382 + 32
                    while _2382 + (32 * _3354) + 32 > s:
                        stor[t] = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(sub_f9f59268, 154) + 3) + (Mask(251, 0, (32 * _3354) + 31) >> 5)
                    while sha3(sha3(sub_f9f59268, 154) + 3) + uint256(sub_23007a8d[stor155].field_768) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _4209 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[96]
                    _4217 = mem[(32 * idx) + 128]
                    require idx < mem[_1908]
                    _4225 = mem[(32 * idx) + _1908 + 32]
                    _4226 = mem[64]
                    require cd[4] < 1
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = 96
                    _4252 = mem[_2382]
                    mem[mem[64] + 96] = mem[_2382]
                    s = 0
                    t = _2382 + 32
                    u = mem[64] + 128
                    while s < _4252:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 64] = (32 * _4252) + 128
                    _4580 = mem[_4225]
                    mem[_4226 + (32 * _4252) + 128] = mem[_4225]
                    s = 0
                    while _4252 < _4580:
                        mem[(34 * _4252) + _4226 + 160] = mem[_4252 + _4225 + 32]
                        s = _4252 + 32
                        continue 
                    if _4252 <= _4580:
                        emit 0x89865bb9: mem[mem[64] len _4226 + (32 * _4252) + ceil32(_4580) + -mem[64] + 160], sub_f9f59268, address(_4217), address(_4209)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4963 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _5003 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _5027 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _5028 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _5064 = mem[_5027]
                        mem[mem[64] + 64] = mem[_5027]
                        s = 0
                        while s < _5064:
                            mem[s + mem[64] + 96] = mem[s + _5027 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5064) > _5064:
                            mem[_5028 + _5064 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _5028 + ceil32(_5064) + -mem[64] + 96], sub_f9f59268, address(_5003), address(_4963)
                    else:
                        mem[_4226 + (32 * _4252) + _4580 + 160] = 0
                        emit 0x89865bb9: mem[mem[64] len _4226 + (32 * _4252) + ceil32(_4580) + -mem[64] + 160], sub_f9f59268, address(_4217), address(_4209)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _5005 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _5029 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _5041 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _5042 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _5068 = mem[_5041]
                        mem[mem[64] + 64] = mem[_5041]
                        s = 0
                        while s < _5068:
                            mem[s + mem[64] + 96] = mem[s + _5041 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5068) > _5068:
                            mem[_5042 + _5068 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _5042 + ceil32(_5068) + -mem[64] + 96], sub_f9f59268, address(_5029), address(_5005)
            else:
                require 25000 * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] == 25000
                sub_f9f59268++
                require idx < mem[96]
                sub_23007a8d[stor155].field_0 = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                sub_23007a8d[stor155].field_256 = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                mem[0] = sub_f9f59268
                mem[32] = 154
                uint256(sub_23007a8d[stor155].field_512) = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                _3363 = mem[_2382]
                uint256(sub_23007a8d[stor155].field_768) = mem[_2382]
                mem[0] = sha3(sub_f9f59268, 154) + 3
                if not _3363:
                    s = sha3(sha3(sub_f9f59268, 154) + 3)
                    while sha3(sha3(sub_f9f59268, 154) + 3) + uint256(sub_23007a8d[stor155].field_768) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _3791 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[96]
                    _3799 = mem[(32 * idx) + 128]
                    require idx < mem[_1908]
                    _3807 = mem[(32 * idx) + _1908 + 32]
                    _3808 = mem[64]
                    require cd[4] < 1
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = 96
                    _3843 = mem[_2382]
                    mem[mem[64] + 96] = mem[_2382]
                    s = 0
                    t = _2382 + 32
                    u = mem[64] + 128
                    while s < _3843:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 64] = (32 * _3843) + 128
                    _4199 = mem[_3807]
                    mem[_3808 + (32 * _3843) + 128] = mem[_3807]
                    s = 0
                    while _3843 < _4199:
                        mem[(34 * _3843) + _3808 + 160] = mem[_3843 + _3807 + 32]
                        s = _3843 + 32
                        continue 
                    if _3843 <= _4199:
                        emit 0x89865bb9: mem[mem[64] len _3808 + (32 * _3843) + ceil32(_4199) + -mem[64] + 160], sub_f9f59268, address(_3799), address(_3791)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4591 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _4607 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _4623 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _4624 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _4707 = mem[_4623]
                        mem[mem[64] + 64] = mem[_4623]
                        s = 0
                        while s < _4707:
                            mem[s + mem[64] + 96] = mem[s + _4623 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4707) > _4707:
                            mem[_4624 + _4707 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _4624 + ceil32(_4707) + -mem[64] + 96], sub_f9f59268, address(_4607), address(_4591)
                    else:
                        mem[_3808 + (32 * _3843) + _4199 + 160] = 0
                        emit 0x89865bb9: mem[mem[64] len _3808 + (32 * _3843) + ceil32(_4199) + -mem[64] + 160], sub_f9f59268, address(_3799), address(_3791)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4609 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _4625 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _4643 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _4644 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _4719 = mem[_4643]
                        mem[mem[64] + 64] = mem[_4643]
                        s = 0
                        while s < _4719:
                            mem[s + mem[64] + 96] = mem[s + _4643 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4719) > _4719:
                            mem[_4644 + _4719 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _4644 + ceil32(_4719) + -mem[64] + 96], sub_f9f59268, address(_4625), address(_4609)
                else:
                    t = sha3(sha3(sub_f9f59268, 154) + 3)
                    s = _2382 + 32
                    while _2382 + (32 * _3363) + 32 > s:
                        stor[t] = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(sub_f9f59268, 154) + 3) + (Mask(251, 0, (32 * _3363) + 31) >> 5)
                    while sha3(sha3(sub_f9f59268, 154) + 3) + uint256(sub_23007a8d[stor155].field_768) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _4207 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[96]
                    _4215 = mem[(32 * idx) + 128]
                    require idx < mem[_1908]
                    _4223 = mem[(32 * idx) + _1908 + 32]
                    _4224 = mem[64]
                    require cd[4] < 1
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = 96
                    _4247 = mem[_2382]
                    mem[mem[64] + 96] = mem[_2382]
                    s = 0
                    t = _2382 + 32
                    u = mem[64] + 128
                    while s < _4247:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 64] = (32 * _4247) + 128
                    _4579 = mem[_4223]
                    mem[_4224 + (32 * _4247) + 128] = mem[_4223]
                    s = 0
                    while _4247 < _4579:
                        mem[(34 * _4247) + _4224 + 160] = mem[_4247 + _4223 + 32]
                        s = _4247 + 32
                        continue 
                    if _4247 <= _4579:
                        emit 0x89865bb9: mem[mem[64] len _4224 + (32 * _4247) + ceil32(_4579) + -mem[64] + 160], sub_f9f59268, address(_4215), address(_4207)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4951 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _4995 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _5023 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _5024 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _5063 = mem[_5023]
                        mem[mem[64] + 64] = mem[_5023]
                        s = 0
                        while s < _5063:
                            mem[s + mem[64] + 96] = mem[s + _5023 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5063) > _5063:
                            mem[_5024 + _5063 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _5024 + ceil32(_5063) + -mem[64] + 96], sub_f9f59268, address(_4995), address(_4951)
                    else:
                        mem[_4224 + (32 * _4247) + _4579 + 160] = 0
                        emit 0x89865bb9: mem[mem[64] len _4224 + (32 * _4247) + ceil32(_4579) + -mem[64] + 160], sub_f9f59268, address(_4215), address(_4207)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4997 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _5025 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _5039 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _5040 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _5067 = mem[_5039]
                        mem[mem[64] + 64] = mem[_5039]
                        s = 0
                        while s < _5067:
                            mem[s + mem[64] + 96] = mem[s + _5039 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5067) > _5067:
                            mem[_5040 + _5067 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _5040 + ceil32(_5067) + -mem[64] + 96], sub_f9f59268, address(_5025), address(_4997)
            require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
            mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            emit PriceUpdated(mem[mem[64]], sub_f9f59268);
            idx = idx + 1
            continue 
    else:
        if ('cd', 228).length <= 0:
            revert with 0, 'Lockbox#migrate: The smpcMembers list must have at least one member.'
        sub_7a37ac26 = uint8(sub_7a37ac26 + 1)
        mem[mem[64]] = cd[36]
        mem[mem[64] + 32] = sub_f9f59268
        emit Migrated(cd[36], sub_f9f59268);
        idx = 0
        while idx < cd[36]:
            require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
            if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]:
                sub_f9f59268++
                require idx < mem[96]
                sub_23007a8d[stor155].field_0 = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                sub_23007a8d[stor155].field_256 = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                mem[0] = sub_f9f59268
                mem[32] = 154
                uint256(sub_23007a8d[stor155].field_512) = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                _3360 = mem[_2382]
                uint256(sub_23007a8d[stor155].field_768) = mem[_2382]
                mem[0] = sha3(sub_f9f59268, 154) + 3
                if not _3360:
                    s = sha3(sha3(sub_f9f59268, 154) + 3)
                    while sha3(sha3(sub_f9f59268, 154) + 3) + uint256(sub_23007a8d[stor155].field_768) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _3797 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[96]
                    _3805 = mem[(32 * idx) + 128]
                    require idx < mem[_1908]
                    _3816 = mem[(32 * idx) + _1908 + 32]
                    _3817 = mem[64]
                    require cd[4] < 1
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = 96
                    _3846 = mem[_2382]
                    mem[mem[64] + 96] = mem[_2382]
                    s = 0
                    t = _2382 + 32
                    u = mem[64] + 128
                    while s < _3846:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 64] = (32 * _3846) + 128
                    _4205 = mem[_3816]
                    mem[_3817 + (32 * _3846) + 128] = mem[_3816]
                    s = 0
                    while _3846 < _4205:
                        mem[(34 * _3846) + _3817 + 160] = mem[_3846 + _3816 + 32]
                        s = _3846 + 32
                        continue 
                    if _3846 <= _4205:
                        emit 0x89865bb9: mem[mem[64] len _3817 + (32 * _3846) + ceil32(_4205) + -mem[64] + 160], sub_f9f59268, address(_3805), address(_3797)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4603 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _4619 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _4638 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _4639 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _4716 = mem[_4638]
                        mem[mem[64] + 64] = mem[_4638]
                        s = 0
                        while s < _4716:
                            mem[s + mem[64] + 96] = mem[s + _4638 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4716) > _4716:
                            mem[_4639 + _4716 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _4639 + ceil32(_4716) + -mem[64] + 96], sub_f9f59268, address(_4619), address(_4603)
                    else:
                        mem[_3817 + (32 * _3846) + _4205 + 160] = 0
                        emit 0x89865bb9: mem[mem[64] len _3817 + (32 * _3846) + ceil32(_4205) + -mem[64] + 160], sub_f9f59268, address(_3805), address(_3797)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4621 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _4640 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _4649 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _4650 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _4722 = mem[_4649]
                        mem[mem[64] + 64] = mem[_4649]
                        s = 0
                        while s < _4722:
                            mem[s + mem[64] + 96] = mem[s + _4649 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4722) > _4722:
                            mem[_4650 + _4722 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _4650 + ceil32(_4722) + -mem[64] + 96], sub_f9f59268, address(_4640), address(_4621)
                else:
                    t = sha3(sha3(sub_f9f59268, 154) + 3)
                    s = _2382 + 32
                    while _2382 + (32 * _3360) + 32 > s:
                        stor[t] = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(sub_f9f59268, 154) + 3) + (Mask(251, 0, (32 * _3360) + 31) >> 5)
                    while sha3(sha3(sub_f9f59268, 154) + 3) + uint256(sub_23007a8d[stor155].field_768) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _4213 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[96]
                    _4221 = mem[(32 * idx) + 128]
                    require idx < mem[_1908]
                    _4229 = mem[(32 * idx) + _1908 + 32]
                    _4230 = mem[64]
                    require cd[4] < 1
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = 96
                    _4262 = mem[_2382]
                    mem[mem[64] + 96] = mem[_2382]
                    s = 0
                    t = _2382 + 32
                    u = mem[64] + 128
                    while s < _4262:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_4230 + 64] = (32 * _4262) + 128
                    _4582 = mem[_4229]
                    mem[_4230 + (32 * _4262) + 128] = mem[_4229]
                    s = 0
                    while _4262 < _4582:
                        mem[(34 * _4262) + _4230 + 160] = mem[_4262 + _4229 + 32]
                        s = _4262 + 32
                        continue 
                    if _4262 <= _4582:
                        emit 0x89865bb9: mem[mem[64] len _4230 + (32 * _4262) + ceil32(_4582) + -mem[64] + 160], sub_f9f59268, address(_4221), address(_4213)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4987 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _5019 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _5035 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _5036 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _5066 = mem[_5035]
                        mem[mem[64] + 64] = mem[_5035]
                        s = 0
                        while s < _5066:
                            mem[s + mem[64] + 96] = mem[s + _5035 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5066) > _5066:
                            mem[_5036 + _5066 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _5036 + ceil32(_5066) + -mem[64] + 96], sub_f9f59268, address(_5019), address(_4987)
                    else:
                        mem[_4230 + (32 * _4262) + _4582 + 160] = 0
                        emit 0x89865bb9: mem[mem[64] len _4230 + (32 * _4262) + ceil32(_4582) + -mem[64] + 160], sub_f9f59268, address(_4221), address(_4213)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _5021 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _5037 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _5045 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _5046 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _5070 = mem[_5045]
                        mem[mem[64] + 64] = mem[_5045]
                        s = 0
                        while s < _5070:
                            mem[s + mem[64] + 96] = mem[s + _5045 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5070) > _5070:
                            mem[_5046 + _5070 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _5046 + ceil32(_5070) + -mem[64] + 96], sub_f9f59268, address(_5037), address(_5021)
            else:
                require 25000 * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] == 25000
                sub_f9f59268++
                require idx < mem[96]
                sub_23007a8d[stor155].field_0 = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 68).length) + 128]
                sub_23007a8d[stor155].field_256 = mem[(32 * idx) + (32 * ('cd', 68).length) + 172 len 20]
                require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
                mem[0] = sub_f9f59268
                mem[32] = 154
                uint256(sub_23007a8d[stor155].field_512) = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
                _3367 = mem[_2382]
                uint256(sub_23007a8d[stor155].field_768) = mem[_2382]
                mem[0] = sha3(sub_f9f59268, 154) + 3
                if not _3367:
                    s = sha3(sha3(sub_f9f59268, 154) + 3)
                    while sha3(sha3(sub_f9f59268, 154) + 3) + uint256(sub_23007a8d[stor155].field_768) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _3795 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[96]
                    _3803 = mem[(32 * idx) + 128]
                    require idx < mem[_1908]
                    _3813 = mem[(32 * idx) + _1908 + 32]
                    _3814 = mem[64]
                    require cd[4] < 1
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = 96
                    _3845 = mem[_2382]
                    mem[mem[64] + 96] = mem[_2382]
                    s = 0
                    t = _2382 + 32
                    u = mem[64] + 128
                    while s < _3845:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 64] = (32 * _3845) + 128
                    _4203 = mem[_3813]
                    mem[_3814 + (32 * _3845) + 128] = mem[_3813]
                    s = 0
                    while _3845 < _4203:
                        mem[(34 * _3845) + _3814 + 160] = mem[_3845 + _3813 + 32]
                        s = _3845 + 32
                        continue 
                    if _3845 <= _4203:
                        emit 0x89865bb9: mem[mem[64] len _3814 + (32 * _3845) + ceil32(_4203) + -mem[64] + 160], sub_f9f59268, address(_3803), address(_3795)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4599 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _4615 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _4633 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _4634 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _4713 = mem[_4633]
                        mem[mem[64] + 64] = mem[_4633]
                        s = 0
                        while s < _4713:
                            mem[s + mem[64] + 96] = mem[s + _4633 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4713) > _4713:
                            mem[_4634 + _4713 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _4634 + ceil32(_4713) + -mem[64] + 96], sub_f9f59268, address(_4615), address(_4599)
                    else:
                        mem[_3814 + (32 * _3845) + _4203 + 160] = 0
                        emit 0x89865bb9: mem[mem[64] len _3814 + (32 * _3845) + ceil32(_4203) + -mem[64] + 160], sub_f9f59268, address(_3803), address(_3795)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4617 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _4635 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _4647 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _4648 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _4721 = mem[_4647]
                        mem[mem[64] + 64] = mem[_4647]
                        s = 0
                        while s < _4721:
                            mem[s + mem[64] + 96] = mem[s + _4647 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4721) > _4721:
                            mem[_4648 + _4721 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _4648 + ceil32(_4721) + -mem[64] + 96], sub_f9f59268, address(_4635), address(_4617)
                else:
                    t = sha3(sha3(sub_f9f59268, 154) + 3)
                    s = _2382 + 32
                    while _2382 + (32 * _3367) + 32 > s:
                        stor[t] = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(sub_f9f59268, 154) + 3) + (Mask(251, 0, (32 * _3367) + 31) >> 5)
                    while sha3(sha3(sub_f9f59268, 154) + 3) + uint256(sub_23007a8d[stor155].field_768) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    require idx < mem[(32 * ('cd', 68).length) + 128]
                    _4211 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                    require idx < mem[96]
                    _4219 = mem[(32 * idx) + 128]
                    require idx < mem[_1908]
                    _4227 = mem[(32 * idx) + _1908 + 32]
                    _4228 = mem[64]
                    require cd[4] < 1
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = 96
                    _4257 = mem[_2382]
                    mem[mem[64] + 96] = mem[_2382]
                    s = 0
                    t = _2382 + 32
                    u = mem[64] + 128
                    while s < _4257:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_4228 + 64] = (32 * _4257) + 128
                    _4581 = mem[_4227]
                    mem[_4228 + (32 * _4257) + 128] = mem[_4227]
                    s = 0
                    while _4257 < _4581:
                        mem[(34 * _4257) + _4228 + 160] = mem[_4257 + _4227 + 32]
                        s = _4257 + 32
                        continue 
                    if _4257 <= _4581:
                        emit 0x89865bb9: mem[mem[64] len _4228 + (32 * _4257) + ceil32(_4581) + -mem[64] + 160], sub_f9f59268, address(_4219), address(_4211)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _4975 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _5011 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _5031 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _5032 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _5065 = mem[_5031]
                        mem[mem[64] + 64] = mem[_5031]
                        s = 0
                        while s < _5065:
                            mem[s + mem[64] + 96] = mem[s + _5031 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5065) > _5065:
                            mem[_5032 + _5065 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _5032 + ceil32(_5065) + -mem[64] + 96], sub_f9f59268, address(_5011), address(_4975)
                    else:
                        mem[_4228 + (32 * _4257) + _4581 + 160] = 0
                        emit 0x89865bb9: mem[mem[64] len _4228 + (32 * _4257) + ceil32(_4581) + -mem[64] + 160], sub_f9f59268, address(_4219), address(_4211)
                        require idx < mem[(32 * ('cd', 68).length) + 128]
                        _5013 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        require idx < mem[96]
                        _5033 = mem[(32 * idx) + 128]
                        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
                        _5043 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
                        _5044 = mem[64]
                        require cd[4] < 1
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = 64
                        _5069 = mem[_5043]
                        mem[mem[64] + 64] = mem[_5043]
                        s = 0
                        while s < _5069:
                            mem[s + mem[64] + 96] = mem[s + _5043 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5069) > _5069:
                            mem[_5044 + _5069 + 96] = 0
                        emit 0x3adfd19a: mem[mem[64] len _5044 + ceil32(_5069) + -mem[64] + 96], sub_f9f59268, address(_5033), address(_5013)
            require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
            mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
            emit PriceUpdated(mem[mem[64]], sub_f9f59268);
            idx = idx + 1
            continue 
}

function sub_07884af7(?) payable {
    require calldata.size - 4 >= 160
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require not paused
    if arg2 < uint256(sub_23007a8d[arg1].field_512):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lockbox#openRequest: Lockbox price is more expensive than the reader's maximum price.'
    if uint8(sub_23007a8d[arg1][4][address(msg.sender)].field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lockbox#openRequest: There is already an open request from that reader.'
    uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) = uint256(sub_23007a8d[arg1].field_512)
    uint8(sub_23007a8d[arg1][4][address(msg.sender)].field_256) = 1
    if not uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
        require uint256(sub_23007a8d[arg1].field_768) > 0
        require uint256(sub_23007a8d[arg1].field_768)
        if not 0 / uint256(sub_23007a8d[arg1].field_768):
            if sub_23007a8d[arg1].field_256 == msg.sender:
                require ext_code.size(protocolTokenAddress)
                staticcall protocolTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                require ext_code.size(protocolTokenAddress)
                staticcall protocolTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                require ext_code.size(protocolTokenAddress)
                call protocolTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 0
            else:
                if not uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                    require uint256(sub_23007a8d[arg1].field_768) > 0
                    require uint256(sub_23007a8d[arg1].field_768)
                    if 0 / uint256(sub_23007a8d[arg1].field_768):
                        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768))
                    else:
                        require 0 <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) >= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                else:
                    require 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) == 25000
                    require uint256(sub_23007a8d[arg1].field_768) > 0
                    require uint256(sub_23007a8d[arg1].field_768)
                    if 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768))
                    else:
                        require 0 <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) >= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
        else:
            require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
            if sub_23007a8d[arg1].field_256 == msg.sender:
                require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) >= 0
                require ext_code.size(protocolTokenAddress)
                staticcall protocolTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768):
                    revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                require ext_code.size(protocolTokenAddress)
                staticcall protocolTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768):
                    revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                require ext_code.size(protocolTokenAddress)
                call protocolTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)
            else:
                if not uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                    require uint256(sub_23007a8d[arg1].field_768) > 0
                    require uint256(sub_23007a8d[arg1].field_768)
                    if not 0 / uint256(sub_23007a8d[arg1].field_768):
                        require 0 <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) >= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                    else:
                        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) >= 0
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768))
                else:
                    require 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) == 25000
                    require uint256(sub_23007a8d[arg1].field_768) > 0
                    require uint256(sub_23007a8d[arg1].field_768)
                    if not 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                        require 0 <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) >= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                    else:
                        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) >= 0
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768))
    else:
        require 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) == 25000
        require uint256(sub_23007a8d[arg1].field_768) > 0
        require uint256(sub_23007a8d[arg1].field_768)
        if not 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
            if sub_23007a8d[arg1].field_256 == msg.sender:
                require ext_code.size(protocolTokenAddress)
                staticcall protocolTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                require ext_code.size(protocolTokenAddress)
                staticcall protocolTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                require ext_code.size(protocolTokenAddress)
                call protocolTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 0
            else:
                if not uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                    require uint256(sub_23007a8d[arg1].field_768) > 0
                    require uint256(sub_23007a8d[arg1].field_768)
                    if 0 / uint256(sub_23007a8d[arg1].field_768):
                        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768))
                    else:
                        require 0 <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) >= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                else:
                    require 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) == 25000
                    require uint256(sub_23007a8d[arg1].field_768) > 0
                    require uint256(sub_23007a8d[arg1].field_768)
                    if 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768))
                    else:
                        require 0 <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) >= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
        else:
            require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
            if sub_23007a8d[arg1].field_256 == msg.sender:
                require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) >= 0
                require ext_code.size(protocolTokenAddress)
                staticcall protocolTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                    revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                require ext_code.size(protocolTokenAddress)
                staticcall protocolTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                    revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                require ext_code.size(protocolTokenAddress)
                call protocolTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)
            else:
                if not uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                    require uint256(sub_23007a8d[arg1].field_768) > 0
                    require uint256(sub_23007a8d[arg1].field_768)
                    if not 0 / uint256(sub_23007a8d[arg1].field_768):
                        require 0 <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) >= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                    else:
                        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) / 0 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                        require uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) >= 0
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 0 / uint256(sub_23007a8d[arg1].field_768))
                else:
                    require 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) == 25000
                    require uint256(sub_23007a8d[arg1].field_768) > 0
                    require uint256(sub_23007a8d[arg1].field_768)
                    if not 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768):
                        require 0 <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) >= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                    else:
                        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) / 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) == uint256(sub_23007a8d[arg1].field_768)
                        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) <= uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0)
                        require uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768) >= 0
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender must provide the contract with enough allowance to pay the request fee.'
                        require ext_code.size(protocolTokenAddress)
                        staticcall protocolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)):
                            revert with 0, 'Lockbox#openRequest: The sender's balance must contain enough token to pay the request fee.'
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 320] = arg5.length
                        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 352] = 0
                        emit 0x5c4cac78: uint256(sub_23007a8d[arg1].field_512), arg3, 128, ceil32(arg4.length) + 160, arg4.length, arg4[all], 0, mem[(2 * ceil32(return_data.size)) + arg4.length + 352 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length], arg1, msg.sender
                        require ext_code.size(protocolTokenAddress)
                        call protocolTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768)) + uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) - (uint256(sub_23007a8d[arg1].field_768) * 25000 * uint256(sub_23007a8d[arg1][4][address(msg.sender)].field_0) / 100000 / uint256(sub_23007a8d[arg1].field_768))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
