contract main {




// =====================  Runtime code  =====================


#
#  - sub_28bf7faa(?)
#
bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 176
uint128 stor0; offset 168
address owner;
array of uint8 stor7;
uint256 sub_b4d7b98b;
address sub_ae41ed8aAddress;
mapping of uint256 sub_8aba3e97;
array of struct sub_0b4b67d6;
mapping of uint256 sub_1a91e6e3;

function sub_0b4b67d6(?) {
    return sub_0b4b67d6[arg1].field_0
}

function sub_1a91e6e3(?) {
    return sub_1a91e6e3[arg1][arg2]
}

function sub_6a028907(?) {
    require arg2 < sub_0b4b67d6[arg1].field_0
    require arg2 < sub_0b4b67d6[arg1].field_0
    require arg2 < sub_0b4b67d6[arg1].field_0
    return sub_0b4b67d6[arg1][arg2].field_0, address(sub_0b4b67d6[arg1][arg2].field_256), sub_0b4b67d6[arg1][arg2].field_512
}

function isIssuer(address arg1) {
    return bool(sub_8aba3e97[address(arg1)])
}

function sub_8aba3e97(?) {
    return sub_8aba3e97[address(arg1)]
}

function owner() {
    return owner
}

function requests(uint256 arg1, uint256 arg2) {
    require arg2 < sub_0b4b67d6[arg1].field_0
    return sub_0b4b67d6[arg1][arg2].field_0, address(sub_0b4b67d6[arg1][arg2].field_256), sub_0b4b67d6[arg1][arg2].field_512
}

function sub_ae41ed8a(?) {
    return sub_ae41ed8aAddress
}

function sub_b4d7b98b(?) {
    return sub_b4d7b98b
}

function _fallback() payable {
    revert
}

function sub_67f74486(?) {
    require msg.sender == owner
    sub_ae41ed8aAddress = arg1
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

function initialize(address arg1) {
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    sub_ae41ed8aAddress = arg1
    uint8(stor0.field_160) = 1
    Mask(88, 0, stor0.field_168) = Mask(88, 0, bool(uint8(stor0.field_168)))
    Mask(80, 0, stor0.field_176) = 0
    Mask(80, 0, stor0.field_176) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
}

function addValidator(address arg1) {
    if not sub_8aba3e97[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not a registered isser'
    if stor54[stor53[msg.sender]][5][address(arg1)].field_0:
        revert with 0, 'Address is already a validator'
    stor54[stor53[msg.sender]].field_1536++
    address(stor[('array', 6, ('map', ('stor', ('map', 'msg.sender', ('name', 'stor53', 53))), ('name', 'stor54', 54))) + stor54[stor53[msg.sender]].field_1536].field_0) = arg1
    stor54[stor53[msg.sender]][5][address(arg1)].field_0 = stor54[stor53[msg.sender]].field_1536 + 1
    emit 0x9000b209: arg1, sub_8aba3e97[msg.sender]
}

function sub_f0f43acc(?) {
    if arg1 > sub_b4d7b98b:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not a registered isser'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not a registered isser'
    if sub_1a91e6e3[arg1][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'An address has already requested a validation for this token'
    sub_0b4b67d6[arg1].field_0++
    sub_0b4b67d6[arg1][sub_0b4b67d6[arg1].field_0].field_0 = arg2
    address(sub_0b4b67d6[arg1][sub_0b4b67d6[arg1].field_0].field_256) = msg.sender
    sub_0b4b67d6[arg1][sub_0b4b67d6[arg1].field_0].field_512 = arg3
    sub_1a91e6e3[arg1][arg2] = sub_0b4b67d6[arg1].field_0 + 1
    emit 0xf24947f8: msg.sender, arg3, arg1, arg2
}

function sub_fb88d352(?) {
    if not stor54[arg1].field_768:
        mem[(32 * stor54[arg1].field_768) + 128] = 32
        mem[(32 * stor54[arg1].field_768) + 160] = stor54[arg1].field_768
        mem[(32 * stor54[arg1].field_768) + 192 len floor32(stor54[arg1].field_768)] = mem[128 len floor32(stor54[arg1].field_768)]
        return memory
          from (32 * stor54[arg1].field_768) + 128
           len (96 * stor54[arg1].field_768) + 64
    mem[128] = stor54[arg1][3].field_0
    idx = 128
    s = 0
    while (32 * stor54[arg1].field_768) + 96 > idx:
        mem[idx + 32] = stor54[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor54[arg1].field_768) + 192 len floor32(stor54[arg1].field_768)] = mem[128 len floor32(stor54[arg1].field_768)]
    return Array(len=stor54[arg1].field_768, data=mem[128 len floor32(stor54[arg1].field_768)], mem[(32 * stor54[arg1].field_768) + floor32(stor54[arg1].field_768) + 192 len (32 * stor54[arg1].field_768) - floor32(stor54[arg1].field_768)]), 
}

function sub_254a185b(?) {
    if not stor54[arg1].field_1536:
        mem[(32 * stor54[arg1].field_1536) + 128] = 32
        mem[(32 * stor54[arg1].field_1536) + 160] = stor54[arg1].field_1536
        mem[(32 * stor54[arg1].field_1536) + 192 len floor32(stor54[arg1].field_1536)] = mem[128 len floor32(stor54[arg1].field_1536)]
        return memory
          from (32 * stor54[arg1].field_1536) + 128
           len (96 * stor54[arg1].field_1536) + 64
    mem[128] = address(stor54[arg1][6].field_0)
    idx = 128
    s = 0
    while (32 * stor54[arg1].field_1536) + 96 > idx:
        mem[idx + 32] = address(stor54[arg1][s + 6].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor54[arg1].field_1536) + 192 len floor32(stor54[arg1].field_1536)] = mem[128 len floor32(stor54[arg1].field_1536)]
    return Array(len=stor54[arg1].field_1536, data=mem[128 len floor32(stor54[arg1].field_1536)], mem[(32 * stor54[arg1].field_1536) + floor32(stor54[arg1].field_1536) + 192 len (32 * stor54[arg1].field_1536) - floor32(stor54[arg1].field_1536)]), 
}

function sub_345d57aa(?) {
    if arg1 > sub_b4d7b98b:
        revert with 0, 'Id is not a registered issuer'
    if not arg1:
        revert with 0, 'Id is not a registered issuer'
    if sub_1a91e6e3[arg1][arg2]:
        if not stor54[arg1][5][msg.sender].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You have not requested a validation for this token and you are not a validator'
    require sub_0b4b67d6[arg1].field_0 - 1 < sub_0b4b67d6[arg1].field_0
    require sub_1a91e6e3[arg1][arg2] - 1 < sub_0b4b67d6[arg1].field_0
    sub_0b4b67d6[arg1][stor56[arg1][arg2]].field_0 = sub_0b4b67d6[arg1][sub_0b4b67d6[arg1].field_0].field_0
    address(sub_0b4b67d6[arg1][stor56[arg1][arg2]].field_0) = address(sub_0b4b67d6[arg1][sub_0b4b67d6[arg1].field_0].field_0)
    sub_0b4b67d6[arg1][stor56[arg1][arg2]].field_0 = sub_0b4b67d6[arg1][sub_0b4b67d6[arg1].field_0].field_0
    require sub_0b4b67d6[arg1].field_0 - 1 < sub_0b4b67d6[arg1].field_0
    sub_1a91e6e3[arg1][stor55[arg1][stor55[arg1].field_0].field_0] = sub_1a91e6e3[arg1][arg2]
    sub_1a91e6e3[arg1][arg2] = 0
    sub_0b4b67d6[arg1].field_0--
    if sub_0b4b67d6[arg1].field_0 > sub_0b4b67d6[arg1].field_0 - 1:
        idx = (3 * sub_0b4b67d6[arg1].field_0) - 3
        while 3 * sub_0b4b67d6[arg1].field_0 > idx:
            sub_0b4b67d6[arg1][idx].field_0 = 0
            address(sub_0b4b67d6[arg1][idx].field_256) = 0
            sub_0b4b67d6[arg1][idx].field_512 = 0
            idx = idx + 3
            continue 
    emit 0x3539f55e: arg1, arg2
}

function removeValidator(address arg1) {
    if not sub_8aba3e97[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not a registered isser'
    if not stor54[stor53[msg.sender]][5][address(arg1)].field_0:
        revert with 0, 'Address is not a validator'
    require stor54[stor53[msg.sender]].field_1536 - 1 < stor54[stor53[msg.sender]].field_1536
    require stor54[stor53[msg.sender]][5][address(arg1)].field_0 - 1 < stor54[stor53[msg.sender]].field_1536
    address(stor[('array', 6, ('map', ('stor', ('map', 'msg.sender', ('name', 'stor53', 53))), ('name', 'stor54', 54))) + stor54[stor53[msg.sender]][5][address(arg1)].field_0].field_0) = address(stor[stor54[stor53[msg.sender]].field_1536 + ('array', 6, ('map', ('stor', ('map', 'msg.sender', ('name', 'stor53', 53))), ('name', 'stor54', 54)))].field_0)
    require stor54[stor53[msg.sender]].field_1536 - 1 < stor54[stor53[msg.sender]].field_1536
    stor54[stor53[msg.sender]][5][address(stor[stor54[stor53[msg.sender]].field_1536 + ('array', 6, ('map', ('stor', ('map', 'msg.sender', ('name', 'stor53', 53))), ('name', 'stor54', 54)))].field_0)].field_0 = stor54[stor53[msg.sender]][5][address(arg1)].field_0
    stor54[stor53[msg.sender]][5][address(arg1)].field_0 = 0
    stor54[stor53[msg.sender]].field_1536--
    if stor54[stor53[msg.sender]].field_1536 > stor54[stor53[msg.sender]].field_1536 - 1:
        idx = stor54[stor53[msg.sender]].field_1536 - 1
        while stor54[stor53[msg.sender]].field_1536 > idx:
            stor54[stor53[msg.sender]][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x50ecbf35: arg1, sub_8aba3e97[msg.sender]
}

function sub_bd048b1e(?) {
    mem[128 len arg1.length] = arg1[all]
    if not sub_8aba3e97[address(msg.sender)]:
        revert with 0, 'Address is not a registered isser'
    mem[ceil32(arg1.length) + 128] = stor54[stor53[msg.sender]][2].length
    mem[ceil32(arg1.length) + 160] = stor54[stor53[msg.sender]][2].field_0
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor54[stor53[msg.sender]][2].length + 128 > idx:
        mem[idx + 32] = stor54[stor53[msg.sender]][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    stor54[stor53[msg.sender]][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(stor54[stor53[msg.sender]][2].length) + 256 len ceil32(stor54[stor53[msg.sender]][2].length)] = mem[ceil32(arg1.length) + 160 len ceil32(stor54[stor53[msg.sender]][2].length)]
    mem[stor54[stor53[msg.sender]][2].length + ceil32(arg1.length) + ceil32(stor54[stor53[msg.sender]][2].length) + 256] = arg1.length
    mem[stor54[stor53[msg.sender]][2].length + ceil32(arg1.length) + ceil32(stor54[stor53[msg.sender]][2].length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x3ff19451: Array(len=stor54[stor53[msg.sender]][2].length, data=mem[ceil32(arg1.length) + 160 len ceil32(stor54[stor53[msg.sender]][2].length)], mem[ceil32(arg1.length) + (2 * ceil32(stor54[stor53[msg.sender]][2].length)) + 256 len arg1.length + stor54[stor53[msg.sender]][2].length + -ceil32(stor54[stor53[msg.sender]][2].length) + 32]), stor54[stor53[msg.sender]][2].length + 96, sub_8aba3e97[address(msg.sender)]
    else:
        mem[floor32(arg1.length) + stor54[stor53[msg.sender]][2].length + ceil32(arg1.length) + ceil32(stor54[stor53[msg.sender]][2].length) + 288] = mem[floor32(arg1.length) + stor54[stor53[msg.sender]][2].length + ceil32(arg1.length) + ceil32(stor54[stor53[msg.sender]][2].length) + -(arg1.length % 32) + 320 len arg1.length % 32]
        emit 0x3ff19451: Array(len=stor54[stor53[msg.sender]][2].length, data=mem[ceil32(arg1.length) + 160 len ceil32(stor54[stor53[msg.sender]][2].length)], mem[ceil32(arg1.length) + (2 * ceil32(stor54[stor53[msg.sender]][2].length)) + 256 len floor32(arg1.length) + stor54[stor53[msg.sender]][2].length + -ceil32(stor54[stor53[msg.sender]][2].length) + 64]), stor54[stor53[msg.sender]][2].length + 96, sub_8aba3e97[address(msg.sender)]
}

function sub_6060ab49(?) {
    mem[128 len arg1.length] = arg1[all]
    if not sub_8aba3e97[address(msg.sender)]:
        revert with 0, 'Address is not a registered isser'
    if 0 >= arg1.length:
        revert with 0, 'Issuer name must not be null'
    mem[ceil32(arg1.length) + 128] = stor54[stor53[msg.sender]][1].length
    mem[ceil32(arg1.length) + 160] = stor54[stor53[msg.sender]][1].field_0
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor54[stor53[msg.sender]][1].length + 128 > idx:
        mem[idx + 32] = stor54[stor53[msg.sender]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    stor54[stor53[msg.sender]][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(stor54[stor53[msg.sender]][1].length) + 256 len ceil32(stor54[stor53[msg.sender]][1].length)] = mem[ceil32(arg1.length) + 160 len ceil32(stor54[stor53[msg.sender]][1].length)]
    mem[stor54[stor53[msg.sender]][1].length + ceil32(arg1.length) + ceil32(stor54[stor53[msg.sender]][1].length) + 256] = arg1.length
    mem[stor54[stor53[msg.sender]][1].length + ceil32(arg1.length) + ceil32(stor54[stor53[msg.sender]][1].length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x3ff19451: Array(len=stor54[stor53[msg.sender]][1].length, data=mem[ceil32(arg1.length) + 160 len ceil32(stor54[stor53[msg.sender]][1].length)], mem[ceil32(arg1.length) + (2 * ceil32(stor54[stor53[msg.sender]][1].length)) + 256 len arg1.length + stor54[stor53[msg.sender]][1].length + -ceil32(stor54[stor53[msg.sender]][1].length) + 32]), stor54[stor53[msg.sender]][1].length + 96, sub_8aba3e97[address(msg.sender)]
    else:
        mem[floor32(arg1.length) + stor54[stor53[msg.sender]][1].length + ceil32(arg1.length) + ceil32(stor54[stor53[msg.sender]][1].length) + 288] = mem[floor32(arg1.length) + stor54[stor53[msg.sender]][1].length + ceil32(arg1.length) + ceil32(stor54[stor53[msg.sender]][1].length) + -(arg1.length % 32) + 320 len arg1.length % 32]
        emit 0x3ff19451: Array(len=stor54[stor53[msg.sender]][1].length, data=mem[ceil32(arg1.length) + 160 len ceil32(stor54[stor53[msg.sender]][1].length)], mem[ceil32(arg1.length) + (2 * ceil32(stor54[stor53[msg.sender]][1].length)) + 256 len floor32(arg1.length) + stor54[stor53[msg.sender]][1].length + -ceil32(stor54[stor53[msg.sender]][1].length) + 64]), stor54[stor53[msg.sender]][1].length + 96, sub_8aba3e97[address(msg.sender)]
}

function sub_61ec30c4(?) {
    mem[32] = 54
    mem[96] = stor54[arg1][1].length
    mem[128] = stor54[arg1][1].field_0
    idx = 128
    s = 0
    while stor54[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor54[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor54[arg1][1].length) + ceil32(stor54[arg1][2].length) + 160
    mem[ceil32(stor54[arg1][1].length) + 128] = stor54[arg1][2].length
    mem[0] = sha3(arg1, 54) + 2
    mem[ceil32(stor54[arg1][1].length) + 160] = stor54[arg1][2].field_0
    idx = ceil32(stor54[arg1][1].length) + 160
    s = 0
    while ceil32(stor54[arg1][1].length) + stor54[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor54[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor54[arg1][1].length) + ceil32(stor54[arg1][2].length) + 160] = address(stor54[arg1].field_0)
    mem[ceil32(stor54[arg1][1].length) + ceil32(stor54[arg1][2].length) + 192] = 96
    mem[ceil32(stor54[arg1][1].length) + ceil32(stor54[arg1][2].length) + 256] = stor54[arg1][1].length
    mem[ceil32(stor54[arg1][1].length) + ceil32(stor54[arg1][2].length) + 288 len ceil32(stor54[arg1][1].length)] = mem[128 len ceil32(stor54[arg1][1].length)]
    mem[ceil32(stor54[arg1][1].length) + ceil32(stor54[arg1][2].length) + 224] = stor54[arg1][1].length + 128
    mem[stor54[arg1][1].length + ceil32(stor54[arg1][1].length) + ceil32(stor54[arg1][2].length) + 288] = stor54[arg1][2].length
    mem[stor54[arg1][1].length + ceil32(stor54[arg1][1].length) + ceil32(stor54[arg1][2].length) + 320 len ceil32(stor54[arg1][2].length)] = mem[ceil32(stor54[arg1][1].length) + 160 len ceil32(stor54[arg1][2].length)]
    if not stor54[arg1][2].length % 32:
        return address(stor54[arg1].field_0), 
               Array(len=stor54[arg1][1].length, data=mem[128 len ceil32(stor54[arg1][1].length)], mem[(2 * ceil32(stor54[arg1][1].length)) + ceil32(stor54[arg1][2].length) + 288 len stor54[arg1][2].length + stor54[arg1][1].length + -ceil32(stor54[arg1][1].length) + 32]),
               stor54[arg1][1].length + 128
    mem[floor32(stor54[arg1][2].length) + stor54[arg1][1].length + ceil32(stor54[arg1][1].length) + ceil32(stor54[arg1][2].length) + 320] = mem[floor32(stor54[arg1][2].length) + stor54[arg1][1].length + ceil32(stor54[arg1][1].length) + ceil32(stor54[arg1][2].length) + -stor54[arg1][2].length % 32 + 352 len stor54[arg1][2].length % 32]
    return address(stor54[arg1].field_0), 
           Array(len=stor54[arg1][1].length, data=mem[128 len ceil32(stor54[arg1][1].length)], mem[(2 * ceil32(stor54[arg1][1].length)) + ceil32(stor54[arg1][2].length) + 288 len floor32(stor54[arg1][2].length) + stor54[arg1][1].length + -ceil32(stor54[arg1][1].length) + 64]),
           stor54[arg1][1].length + 128
}

function sub_ad2562a3(?) {
    if not sub_8aba3e97[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not a registered isser'
    if sub_8aba3e97[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New address is already registered as issuer'
    if not arg1:
        revert with 0, 'New address must not be null'
    if not sub_8aba3e97[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not a registered isser'
    if not stor54[stor53[msg.sender]][5][address(msg.sender)].field_0:
        revert with 0, 'Address is not a validator'
    require stor54[stor53[msg.sender]].field_1536 - 1 < stor54[stor53[msg.sender]].field_1536
    require stor54[stor53[msg.sender]][5][address(msg.sender)].field_0 - 1 < stor54[stor53[msg.sender]].field_1536
    address(stor[('array', 6, ('map', ('stor', ('map', 'msg.sender', ('name', 'stor53', 53))), ('name', 'stor54', 54))) + stor54[stor53[msg.sender]][5][address(msg.sender)].field_0].field_0) = address(stor[stor54[stor53[msg.sender]].field_1536 + ('array', 6, ('map', ('stor', ('map', 'msg.sender', ('name', 'stor53', 53))), ('name', 'stor54', 54)))].field_0)
    require stor54[stor53[msg.sender]].field_1536 - 1 < stor54[stor53[msg.sender]].field_1536
    stor54[stor53[msg.sender]][5][address(stor[stor54[stor53[msg.sender]].field_1536 + ('array', 6, ('map', ('stor', ('map', 'msg.sender', ('name', 'stor53', 53))), ('name', 'stor54', 54)))].field_0)].field_0 = stor54[stor53[msg.sender]][5][address(msg.sender)].field_0
    stor54[stor53[msg.sender]][5][address(msg.sender)].field_0 = 0
    stor54[stor53[msg.sender]].field_1536--
    if stor54[stor53[msg.sender]].field_1536 > stor54[stor53[msg.sender]].field_1536 - 1:
        idx = stor54[stor53[msg.sender]].field_1536 - 1
        while stor54[stor53[msg.sender]].field_1536 > idx:
            stor54[stor53[msg.sender]][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x50ecbf35: msg.sender, sub_8aba3e97[msg.sender]
    if not sub_8aba3e97[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not a registered isser'
    if stor54[stor53[msg.sender]][5][address(arg1)].field_0:
        revert with 0, 'Address is already a validator'
    stor54[stor53[msg.sender]].field_1536++
    address(stor[('array', 6, ('map', ('stor', ('map', 'msg.sender', ('name', 'stor53', 53))), ('name', 'stor54', 54))) + stor54[stor53[msg.sender]].field_1536].field_0) = arg1
    stor54[stor53[msg.sender]][5][address(arg1)].field_0 = stor54[stor53[msg.sender]].field_1536 + 1
    emit 0x9000b209: arg1, sub_8aba3e97[msg.sender]
    address(stor54[stor53[msg.sender]].field_0) = arg1
    sub_8aba3e97[arg1] = sub_8aba3e97[msg.sender]
    sub_8aba3e97[msg.sender] = 0
}

function sub_c7f13ff5(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if sub_8aba3e97[address(msg.sender)]:
        revert with 0, 'Address is already registered as issuer'
    if 0 >= arg1.length:
        revert with 0, 'Issuer name must not be null'
    sub_b4d7b98b++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 96
    address(stor54[stor51 + 1].field_0) = msg.sender
    stor54[stor51 + 1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor54[stor51 + 1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor54[stor51 + 1].field_768 = arg1.length
    if not arg1.length:
        idx = 0
        while stor54[stor51 + 1].field_768 > idx:
            stor54[stor51 + 1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if 32 * arg1.length <= 0:
            idx = 0
            while stor54[stor51 + 1].field_768 > idx:
                stor54[stor51 + 1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor54[stor51 + 1][3].field_0 = mem[128]
            s = 1
            idx = 160
            while (32 * arg1.length) + 128 > idx:
                stor54[stor51 + 1][s + 3].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, (32 * arg1.length) - 1) >> 5) + 1
            while stor54[stor51 + 1].field_768 > idx:
                stor54[stor51 + 1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    stor54[stor51 + 1].field_1536 = arg1.length
    if not arg1.length:
        idx = 0
        while stor54[stor51 + 1].field_1536 > idx:
            address(stor54[stor51 + 1][idx + 6].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(stor54[stor51 + 1][s + 6].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor54[stor51 + 1].field_1536 > idx:
            address(stor54[stor51 + 1][idx + 6].field_0) = 0
            idx = idx + 1
            continue 
    sub_8aba3e97[msg.sender] = sub_b4d7b98b
    if not sub_8aba3e97[address(msg.sender)]:
        revert with 0, 'Address is not a registered isser'
    if stor54[stor53[msg.sender]][5][address(msg.sender)].field_0:
        revert with 0, 'Address is already a validator'
    stor54[stor53[msg.sender]].field_1536++
    address(stor[('array', 6, ('map', ('stor', ('map', 'msg.sender', ('name', 'stor53', 53))), ('name', 'stor54', 54))) + stor54[stor53[msg.sender]].field_1536].field_0) = msg.sender
    stor54[stor53[msg.sender]][5][address(msg.sender)].field_0 = stor54[stor53[msg.sender]].field_1536 + 1
    emit 0x9000b209: msg.sender, sub_8aba3e97[msg.sender]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x12323ff8: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 128, sub_b4d7b98b, msg.sender
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
        emit 0x12323ff8: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128, sub_b4d7b98b, msg.sender
    return sub_b4d7b98b
}

function sub_2ebbb17d(?) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg6.length
    mem[ceil32(arg4.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg4.length) + ceil32(arg6.length) + 160 len 160] = call.data[228 len 160]
    if not address(stor54[arg1].field_0):
        revert with 0, 'Issuer ID does not exist'
    if not stor54[arg1][5][msg.sender].field_0:
        revert with 0, 'Address is not a validator'
    if not arg5:
        revert with 0, 'Value must not be 0'
    if not stor54[arg1][4][arg2].field_1024:
        stor54[arg1].field_768++
        stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor54', 54))) + stor54[arg1].field_768].field_0 = arg2
    mem[ceil32(arg4.length) + ceil32(arg6.length) + 320] = arg2
    stor54[arg1][4][arg2].field_0 = arg2
    stor54[arg1][4][arg2].field_256 = block.timestamp
    stor54[arg1][4][arg2].field_512 = arg3
    stor54[arg1][4][arg2][3][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor54[arg1][4][arg2].field_1024 = arg5
    stor54[arg1][4][arg2][5][].field_0 = Array(len=arg6.length, data=arg6[all])
    stor54[arg1][4][arg2].field_1536 = arg7
    s = 0
    idx = ceil32(arg4.length) + ceil32(arg6.length) + 160
    while ceil32(arg4.length) + ceil32(arg6.length) + 320 > idx:
        stor54[arg1][4][arg2].field_1792 = bool(mem[idx]) * 256^s or !(255 * 256^s) and stor54[arg1][4][arg2].field_1792
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 5
    s = sha3(arg2, sha3(arg1, 54) + 4) + 7
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-3 * None + 3 / 32) + (None * None + 3 / 32) + 7
    while 8 > idx:
        uint8(stor54[arg1][4][arg2][idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg4.length) + ceil32(arg6.length) + 960 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg6.length) + 960] = arg6.length
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg6.length) + 992 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + arg6.length + 160 len ceil32(arg6.length) - arg6.length]
        if not arg6.length % 32:
            emit 0x3abf6106: block.timestamp, arg3, 352, arg5, arg4.length + 384, arg7, call.data[228 len 160], arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg6.length) + 960 len arg6.length + arg4.length + -ceil32(arg4.length) + 32], arg1, arg2
        else:
            mem[floor32(arg6.length) + arg4.length + ceil32(arg4.length) + ceil32(arg6.length) + 992] = mem[floor32(arg6.length) + arg4.length + ceil32(arg4.length) + ceil32(arg6.length) + -(arg6.length % 32) + 1024 len arg6.length % 32]
            emit 0x3abf6106: block.timestamp, arg3, 352, arg5, arg4.length + 384, arg7, call.data[228 len 160], arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg6.length) + 960 len floor32(arg6.length) + arg4.length + -ceil32(arg4.length) + 64], arg1, arg2
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg6.length) + 960] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg6.length) + -(arg4.length % 32) + 992 len arg4.length % 32]
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg6.length) + 992] = arg6.length
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg6.length) + 1024 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg4.length) + arg6.length + 160 len ceil32(arg6.length) - arg6.length]
        if not arg6.length % 32:
            emit 0x3abf6106: block.timestamp, arg3, 352, arg5, floor32(arg4.length) + 416, arg7, call.data[228 len 160], arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg6.length) + 960 len arg6.length + floor32(arg4.length) + -ceil32(arg4.length) + 64], arg1, arg2
        else:
            mem[floor32(arg6.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg6.length) + 1024] = mem[floor32(arg6.length) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg6.length) + -(arg6.length % 32) + 1056 len arg6.length % 32]
            emit 0x3abf6106: block.timestamp, arg3, 352, arg5, floor32(arg4.length) + 416, arg7, call.data[228 len 160], arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg6.length) + 960 len floor32(arg6.length) + floor32(arg4.length) + -ceil32(arg4.length) + 96], arg1, arg2
}

function getClaim(uint256 arg1, uint256 arg2) {
    mem[96 len 160] = code.data[12463 len 160]
    mem[256] = stor54[arg1][4][arg2][3].length
    mem[288] = stor54[arg1][4][arg2][3].field_0
    idx = 288
    s = 0
    while stor54[arg1][4][arg2][3].length + 256 > idx:
        mem[idx + 32] = stor54[arg1][4][arg2][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor54[arg1][4][arg2][3].length) + 288] = stor54[arg1][4][arg2][5].length
    mem[ceil32(stor54[arg1][4][arg2][3].length) + 320] = stor54[arg1][4][arg2][5].field_0
    idx = ceil32(stor54[arg1][4][arg2][3].length) + 320
    s = 0
    while ceil32(stor54[arg1][4][arg2][3].length) + stor54[arg1][4][arg2][5].length + 288 > idx:
        mem[idx + 32] = stor54[arg1][4][arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg2
    mem[32] = sha3(arg1, 54) + 4
    mem[64] = ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 480
    mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 320] = bool(uint8(stor54[arg1][4][arg2].field_1792))
    idx = ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 320
    s = 0
    while ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 480 > idx + 32:
        mem[idx + 32] = bool(stor7[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 480] = arg2
    mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 512] = stor54[arg1][4][arg2].field_256
    mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 544] = stor54[arg1][4][arg2].field_512
    mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 608] = stor54[arg1][4][arg2].field_1024
    mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 672] = stor54[arg1][4][arg2].field_1536
    mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 704 len 160] = bool(uint8(stor54[arg1][4][arg2].field_1792)), mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 352 len 128]
    mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 576] = 384
    mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 864] = stor54[arg1][4][arg2][3].length
    mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 896 len ceil32(stor54[arg1][4][arg2][3].length)] = mem[288 len ceil32(stor54[arg1][4][arg2][3].length)]
    if not stor54[arg1][4][arg2][3].length % 32:
        mem[stor54[arg1][4][arg2][3].length + ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 896] = stor54[arg1][4][arg2][5].length
        mem[stor54[arg1][4][arg2][3].length + ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 928 len ceil32(stor54[arg1][4][arg2][5].length)] = mem[ceil32(stor54[arg1][4][arg2][3].length) + 320 len ceil32(stor54[arg1][4][arg2][5].length)]
        if not stor54[arg1][4][arg2][5].length % 32:
            return arg2, 
                   stor54[arg1][4][arg2].field_256,
                   stor54[arg1][4][arg2].field_512,
                   384,
                   stor54[arg1][4][arg2].field_1024,
                   stor54[arg1][4][arg2][3].length + 416,
                   stor54[arg1][4][arg2].field_1536,
                   mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 352 len 128] >> 1024,
                   stor54[arg1][4][arg2][3].length,
                   mem[288 len ceil32(stor54[arg1][4][arg2][3].length)],
                   mem[(2 * ceil32(stor54[arg1][4][arg2][3].length)) + ceil32(stor54[arg1][4][arg2][5].length) + 896 len stor54[arg1][4][arg2][5].length + stor54[arg1][4][arg2][3].length + -ceil32(stor54[arg1][4][arg2][3].length) + 32]
        mem[floor32(stor54[arg1][4][arg2][5].length) + stor54[arg1][4][arg2][3].length + ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 928] = mem[floor32(stor54[arg1][4][arg2][5].length) + stor54[arg1][4][arg2][3].length + ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + -stor54[arg1][4][arg2][5].length % 32 + 960 len stor54[arg1][4][arg2][5].length % 32]
        return arg2, 
               stor54[arg1][4][arg2].field_256,
               stor54[arg1][4][arg2].field_512,
               384,
               stor54[arg1][4][arg2].field_1024,
               stor54[arg1][4][arg2][3].length + 416,
               stor54[arg1][4][arg2].field_1536,
               mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 352 len 128] >> 1024,
               stor54[arg1][4][arg2][3].length,
               mem[288 len ceil32(stor54[arg1][4][arg2][3].length)],
               mem[(2 * ceil32(stor54[arg1][4][arg2][3].length)) + ceil32(stor54[arg1][4][arg2][5].length) + 896 len floor32(stor54[arg1][4][arg2][5].length) + stor54[arg1][4][arg2][3].length + -ceil32(stor54[arg1][4][arg2][3].length) + 64]
    mem[floor32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 896] = mem[floor32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + -stor54[arg1][4][arg2][3].length % 32 + 928 len stor54[arg1][4][arg2][3].length % 32]
    mem[floor32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 960 len ceil32(stor54[arg1][4][arg2][5].length)] = mem[ceil32(stor54[arg1][4][arg2][3].length) + 320 len ceil32(stor54[arg1][4][arg2][5].length)]
    if not stor54[arg1][4][arg2][5].length % 32:
        return arg2, 
               stor54[arg1][4][arg2].field_256,
               stor54[arg1][4][arg2].field_512,
               384,
               stor54[arg1][4][arg2].field_1024,
               floor32(stor54[arg1][4][arg2][3].length) + 448,
               stor54[arg1][4][arg2].field_1536,
               mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 352 len 128] >> 1024,
               stor54[arg1][4][arg2][3].length,
               mem[288 len ceil32(stor54[arg1][4][arg2][3].length)],
               mem[(2 * ceil32(stor54[arg1][4][arg2][3].length)) + ceil32(stor54[arg1][4][arg2][5].length) + 896 len floor32(stor54[arg1][4][arg2][3].length) + -ceil32(stor54[arg1][4][arg2][3].length) + 32],
               stor54[arg1][4][arg2][5].length,
               mem[ceil32(stor54[arg1][4][arg2][3].length) + 320 len stor54[arg1][4][arg2][5].length]
    mem[floor32(stor54[arg1][4][arg2][5].length) + floor32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 960] = mem[floor32(stor54[arg1][4][arg2][5].length) + floor32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + -stor54[arg1][4][arg2][5].length % 32 + 992 len stor54[arg1][4][arg2][5].length % 32]
    return arg2, 
           stor54[arg1][4][arg2].field_256,
           stor54[arg1][4][arg2].field_512,
           Array(len=mem[ceil32(stor54[arg1][4][arg2][3].length) + 320 len ceil32(stor54[arg1][4][arg2][5].length)], data=mem[ceil32(stor54[arg1][4][arg2][3].length) + (2 * ceil32(stor54[arg1][4][arg2][5].length)) + floor32(stor54[arg1][4][arg2][3].length) + 960 len floor32(stor54[arg1][4][arg2][5].length) + -ceil32(stor54[arg1][4][arg2][5].length) + 32]),
           stor54[arg1][4][arg2].field_1024,
           floor32(stor54[arg1][4][arg2][3].length) + 448,
           stor54[arg1][4][arg2].field_1536,
           mem[ceil32(stor54[arg1][4][arg2][3].length) + ceil32(stor54[arg1][4][arg2][5].length) + 352 len 128] >> 1024,
           stor54[arg1][4][arg2][3].length,
           mem[288 len ceil32(stor54[arg1][4][arg2][3].length)],
           mem[(2 * ceil32(stor54[arg1][4][arg2][3].length)) + ceil32(stor54[arg1][4][arg2][5].length) + 896 len floor32(stor54[arg1][4][arg2][3].length) + -ceil32(stor54[arg1][4][arg2][3].length) + 32],
           stor54[arg1][4][arg2][5].length
}



}
