contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sub_fe72ae13;
array of uint256 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;

function sub_01278eae(?) {
    require arg1 < stor2.length
    return bool(stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor2', 2))[uint8(arg1)])
}

function sub_0e38ed3c(?) {
    return bool(stor3[Mask(160, 96, arg1)])
}

function identityApproved(address arg1) {
    return bool(stor4[arg1])
}

function owner() {
    return owner
}

function sub_bf190db9(?) {
    return bool(stor3[Mask(160, 96, arg1)])
}

function sub_fe72ae13(?) {
    require arg1 < sub_fe72ae13.length
    return Mask(160, 96, sub_fe72ae13[arg1].field_0)
}

function _fallback() payable {
    revert
}

function sub_97fa8406(?) {
    if sub_fe72ae13.length:
        return bool(stor4[address(arg1)])
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_feb5b2e9(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    if arg1:
        if arg2 != bool(stor4[address(arg1)]):
            stor4[address(arg1)] = uint8(arg2)
}

function sub_6850e7fb(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    if arg1:
        if stor4[address(arg1)]:
            stor4[address(arg1)] = 0
    if Mask(160, 96, arg2):
        if stor3[Mask(160, 96, arg2)]:
            require arg3 < sub_fe72ae13.length
            if Mask(160, 96, sub_fe72ae13[arg3].field_0) == Mask(160, 96, arg2):
                require arg3 < stor2.length
                if stor('array', ('div', 0.03125, ('param', 'arg3')), ('name', 'stor2', 2))[uint8(arg3)]:
                    require arg3 < stor2.length
                    stor2[0.03125 / arg3].field_0 = 0
                    stor3[Mask(160, 96, arg2)] = 0
                    emit 0x2f73372f: Mask(160, 96, arg2)
}

function sub_89a367f9(?) {
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = bool(uint8(stor2.field_0))
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = bool(stor('name', 'stor2', 2)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function getAllNodes() {
    if not sub_fe72ae13.length:
        mem[(32 * sub_fe72ae13.length) + 128] = 32
        mem[(32 * sub_fe72ae13.length) + 160] = sub_fe72ae13.length
        mem[(32 * sub_fe72ae13.length) + 192 len floor32(sub_fe72ae13.length)] = mem[128 len floor32(sub_fe72ae13.length)]
        return memory
          from (32 * sub_fe72ae13.length) + 128
           len (96 * sub_fe72ae13.length) + 64
    mem[128] = Mask(160, 96, address(sub_fe72ae13.field_0))
    idx = 128
    s = 0
    while (32 * sub_fe72ae13.length) + 96 > idx:
        mem[idx + 32] = Mask(160, 96, sub_fe72ae13[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_fe72ae13.length) + 192 len floor32(sub_fe72ae13.length)] = mem[128 len floor32(sub_fe72ae13.length)]
    return Array(len=sub_fe72ae13.length, data=mem[128 len floor32(sub_fe72ae13.length)], mem[(32 * sub_fe72ae13.length) + floor32(sub_fe72ae13.length) + 192 len (32 * sub_fe72ae13.length) - floor32(sub_fe72ae13.length)]), 
}

function sub_70a59445(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contract owner can call ths function'
    if arg1:
        stor4[address(arg1)] = 1
    if Mask(160, 96, arg2):
        if arg3 >= sub_fe72ae13.length:
            sub_fe72ae13.length++
            sub_fe72ae13[sub_fe72ae13.length].field_0 = Mask(160, 96, arg2) >> 96
            stor2.length++
            stor2[stor2.length.field_5].field_0 = 256^stor2.length % 32 or !(255 * 256^stor2.length % 32) and stor2[stor2.length.field_5].field_0
            stor3[Mask(160, 96, arg2)] = 1
            emit 0xf7521880: Mask(160, 96, arg2)
        else:
            if Mask(160, 96, sub_fe72ae13[arg3].field_0) != Mask(160, 96, arg2):
                sub_fe72ae13.length++
                sub_fe72ae13[sub_fe72ae13.length].field_0 = Mask(160, 96, arg2) >> 96
                stor2.length++
                stor2[stor2.length.field_5].field_0 = 256^stor2.length % 32 or !(255 * 256^stor2.length % 32) and stor2[stor2.length.field_5].field_0
                stor3[Mask(160, 96, arg2)] = 1
                emit 0xf7521880: Mask(160, 96, arg2)
            else:
                require arg3 < stor2.length
                if not stor('array', ('div', 0.03125, ('param', 'arg3')), ('name', 'stor2', 2))[uint8(arg3)]:
                    require arg3 < stor2.length
                    stor2[0.03125 / arg3].field_0 = 256^(arg3 % 32) or !(255 * 256^(arg3 % 32)) and stor2[0.03125 / arg3].field_0
                else:
                    sub_fe72ae13.length++
                    sub_fe72ae13[sub_fe72ae13.length].field_0 = Mask(160, 96, arg2) >> 96
                    stor2.length++
                    stor2[stor2.length.field_5].field_0 = 256^stor2.length % 32 or !(255 * 256^stor2.length % 32) and stor2[stor2.length.field_5].field_0
                    stor3[Mask(160, 96, arg2)] = 1
                    emit 0xf7521880: Mask(160, 96, arg2)
}



}
