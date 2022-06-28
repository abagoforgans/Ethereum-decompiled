contract main {




// =====================  Runtime code  =====================


const VERSION = 1


mapping of struct sub_ada78075;
mapping of address sub_0d69ac04;
mapping of address sub_2b19e34e;

function sub_0d69ac04(?) {
    return sub_0d69ac04[Mask(32, 224, arg1)]
}

function sub_2b19e34e(?) {
    return sub_2b19e34e[Mask(160, 96, arg1)]
}

function sub_ada78075(?) {
    return Mask(160, 96, sub_ada78075[address(arg1)].field_768)
}

function _fallback() payable {
    revert
}

function isValidator(address arg1) {
    return (sub_ada78075[address(arg1)].field_1024 > 0)
}

function sub_50d8f786(?) {
    if sub_ada78075[address(arg1)].field_1024 <= 0:
        revert with 0, 'Unlisted Validator'
    return sub_ada78075[address(arg1)].field_1024, sub_ada78075[address(arg1)].field_1280
}

function leave() {
    if sub_ada78075[address(msg.sender)].field_1024 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be a registered validator'
    sub_0d69ac04[Mask(32, 224, stor0[address(msg.sender)].field_256)] = 0
    sub_2b19e34e[Mask(160, 96, stor0[address(msg.sender)].field_768)] = 0
    sub_ada78075[address(msg.sender)].field_0 = 0
    if 31 < sub_ada78075[address(msg.sender)].length:
        idx = 0
        while sub_ada78075[address(msg.sender)].length + 31 / 32 > idx:
            sub_ada78075[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_ada78075[address(msg.sender)].field_256 = 0
    sub_ada78075[address(msg.sender)].field_512 = 0
    if 31 < sub_ada78075[address(msg.sender)][2].length:
        idx = 0
        while sub_ada78075[address(msg.sender)][2].length + 31 / 32 > idx:
            sub_ada78075[address(msg.sender)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    sub_ada78075[address(msg.sender)].field_768 = 0
    sub_ada78075[address(msg.sender)].field_1024 = 0
    sub_ada78075[address(msg.sender)].field_1280 = 0
    emit 0x457a63bb: msg.sender
}

function sub_c611e584(?) {
    if arg1.length <= 0:
        revert with 0, 'Please provide a valid name'
    if arg3.length <= 0:
        revert with 0, 'Please provide a valid website'
    if sub_ada78075[address(msg.sender)].field_1024 > 0:
        revert with 0, 'Validator already exists'
    if not Mask(32, 224, arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please pass a valid ip address represented as an array of exactly 4 bytes'
    if not Mask(160, 96, arg4):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please provide a valid Orbs Address'
    if sub_0d69ac04[Mask(32, 224, arg2)]:
        revert with 0, 'IP address already in use'
    if sub_2b19e34e[Mask(160, 96, arg4)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Orbs Address is already in use by another validator'
    sub_0d69ac04[Mask(32, 224, arg2)] = msg.sender
    sub_2b19e34e[Mask(160, 96, arg4)] = msg.sender
    sub_ada78075[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_ada78075[address(msg.sender)].field_256 = arg2
    sub_ada78075[address(msg.sender)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_ada78075[address(msg.sender)].field_768 = Mask(160, 96, arg4) >> 96
    sub_ada78075[address(msg.sender)].field_1024 = block.number
    sub_ada78075[address(msg.sender)].field_1280 = block.number
    emit ValidatorRegistered(msg.sender);
}

function sub_9b9fb164(?) {
    if sub_ada78075[address(msg.sender)].field_1024 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be a registered validator'
    if ('cd', 4).length <= 0:
        revert with 0, 'Please provide a valid name'
    if ('cd', 68).length <= 0:
        revert with 0, 'Please provide a valid website'
    if not Mask(32, 224, cd[36]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please pass a valid ip address represented as an array of exactly 4 bytes'
    if not Mask(160, 96, cd[100]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please provide a valid Orbs Address'
    if sub_0d69ac04[Mask(32, 224, cd[36])]:
        if sub_0d69ac04[Mask(32, 224, cd[36])] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IP Address is already in use by another validator'
    if sub_2b19e34e[Mask(160, 96, cd[100])]:
        if sub_2b19e34e[Mask(160, 96, cd[100])] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Orbs Address is already in use by another validator'
    sub_0d69ac04[Mask(32, 224, stor0[address(msg.sender)].field_256)] = 0
    sub_2b19e34e[Mask(160, 96, stor0[address(msg.sender)].field_768)] = 0
    sub_0d69ac04[Mask(32, 224, cd[36])] = msg.sender
    sub_2b19e34e[Mask(160, 96, cd[100])] = msg.sender
    sub_ada78075[address(msg.sender)].field_0 = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_ada78075[address(msg.sender)][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_ada78075[address(msg.sender)].length + 31 / 32 > idx:
        sub_ada78075[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_ada78075[address(msg.sender)].field_256 = uint32(cd[36])
    sub_ada78075[address(msg.sender)].field_512 = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        sub_ada78075[address(msg.sender)][s + 2].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while sub_ada78075[address(msg.sender)][2].length + 31 / 32 > idx:
        sub_ada78075[address(msg.sender)][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    sub_ada78075[address(msg.sender)].field_768 = Mask(160, 96, cd[100]) >> 96
    sub_ada78075[address(msg.sender)].field_1280 = block.number
    emit 0xb3a3a562: msg.sender
}

function sub_2536f8b5(?) {
    mem[32] = 0
    mem[96] = sub_ada78075[address(arg1)].length
    mem[128] = sub_ada78075[address(arg1)].field_0
    idx = 128
    s = 0
    while sub_ada78075[address(arg1)].length + 96 > idx:
        mem[idx + 32] = sub_ada78075[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 160
    mem[ceil32(sub_ada78075[address(arg1)].length) + 128] = sub_ada78075[address(arg1)][2].length
    mem[0] = sha3(address(arg1), 0) + 2
    mem[ceil32(sub_ada78075[address(arg1)].length) + 160] = sub_ada78075[address(arg1)][2].field_0
    idx = ceil32(sub_ada78075[address(arg1)].length) + 160
    s = 0
    while ceil32(sub_ada78075[address(arg1)].length) + sub_ada78075[address(arg1)][2].length + 128 > idx:
        mem[idx + 32] = sub_ada78075[address(arg1)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 192] = Mask(32, 224, sub_ada78075[address(arg1)].field_256)
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 256] = Mask(160, 96, sub_ada78075[address(arg1)].field_768)
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 160] = 128
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 288] = sub_ada78075[address(arg1)].length
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 320 len ceil32(sub_ada78075[address(arg1)].length)] = mem[128 len ceil32(sub_ada78075[address(arg1)].length)]
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 224] = sub_ada78075[address(arg1)].length + 160
    mem[sub_ada78075[address(arg1)].length + ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 320] = sub_ada78075[address(arg1)][2].length
    mem[sub_ada78075[address(arg1)].length + ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 352 len ceil32(sub_ada78075[address(arg1)][2].length)] = mem[ceil32(sub_ada78075[address(arg1)].length) + 160 len ceil32(sub_ada78075[address(arg1)][2].length)]
    if not sub_ada78075[address(arg1)][2].length % 32:
        return Array(len=sub_ada78075[address(arg1)].length, data=mem[128 len ceil32(sub_ada78075[address(arg1)].length)], mem[(2 * ceil32(sub_ada78075[address(arg1)].length)) + ceil32(sub_ada78075[address(arg1)][2].length) + 320 len sub_ada78075[address(arg1)][2].length + sub_ada78075[address(arg1)].length + -ceil32(sub_ada78075[address(arg1)].length) + 32]), 
               Mask(32, 224, sub_ada78075[address(arg1)].field_256),
               sub_ada78075[address(arg1)].length + 160,
               Mask(160, 96, sub_ada78075[address(arg1)].field_768)
    mem[floor32(sub_ada78075[address(arg1)][2].length) + sub_ada78075[address(arg1)].length + ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 352] = mem[floor32(sub_ada78075[address(arg1)][2].length) + sub_ada78075[address(arg1)].length + ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + -sub_ada78075[address(arg1)][2].length % 32 + 384 len sub_ada78075[address(arg1)][2].length % 32]
    return Array(len=sub_ada78075[address(arg1)].length, data=mem[128 len ceil32(sub_ada78075[address(arg1)].length)], mem[(2 * ceil32(sub_ada78075[address(arg1)].length)) + ceil32(sub_ada78075[address(arg1)][2].length) + 320 len floor32(sub_ada78075[address(arg1)][2].length) + sub_ada78075[address(arg1)].length + -ceil32(sub_ada78075[address(arg1)].length) + 64]), 
           Mask(32, 224, sub_ada78075[address(arg1)].field_256),
           sub_ada78075[address(arg1)].length + 160,
           Mask(160, 96, sub_ada78075[address(arg1)].field_768)
}



}
