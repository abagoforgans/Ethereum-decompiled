contract main {




// =====================  Runtime code  =====================


#
#  - sub_81613c2f(?)
#  - sub_f826123d(?)
#
address owner;
uint256 sub_69161f06;
uint256 sub_8e0192e4;
uint256 sub_94fadf5d;
uint256 sub_5cec72a4;
uint256 sub_1ae82676;
address stor6;
mapping of uint8 stor7;
mapping of uint256 sub_680381e0;
array of struct sub_c2a55f84;
mapping of struct sub_2bff8dd6;
mapping of uint256 sub_965d3743;
mapping of struct sub_0f9f2c06;
array of struct stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of struct sub_777a904a;
mapping of struct sub_e9676bde;
mapping of struct sub_a979c377;
array of struct sub_30a9b84b;

function sub_0f9f2c06(?) {
    return sub_0f9f2c06[arg1][arg2][arg3].field_0, bool(sub_0f9f2c06[arg1][arg2][arg3].field_256)
}

function sub_1ae82676(?) {
    return sub_1ae82676
}

function sub_2bff8dd6(?) {
    return bool(sub_2bff8dd6[arg1].field_512), sub_2bff8dd6[arg1].field_520
}

function sub_30a9b84b(?) {
    return sub_30a9b84b[arg1][arg2].field_256
}

function sub_389c2f94(?) {
    return bool(stor14[arg1][arg2])
}

function sub_5cec72a4(?) {
    return sub_5cec72a4
}

function sub_680381e0(?) {
    return sub_680381e0[arg1]
}

function sub_69161f06(?) {
    return sub_69161f06
}

function sub_75cb93fc(?) {
    return bool(stor15[arg1][arg2])
}

function sub_777a904a(?) {
    return sub_777a904a[arg1][arg2][arg3].field_0, 
           sub_777a904a[arg1][arg2][arg3].field_256,
           sub_777a904a[arg1][arg2][arg3].field_512,
           bool(sub_777a904a[arg1][arg2][arg3].field_768)
}

function sub_78254ca3(?) {
    return bool(stor7[arg1])
}

function owner() {
    return owner
}

function sub_8e0192e4(?) {
    return sub_8e0192e4
}

function sub_94fadf5d(?) {
    return sub_94fadf5d
}

function sub_965d3743(?) {
    return sub_965d3743[arg1][arg2]
}

function sub_a979c377(?) {
    return sub_a979c377[arg1][arg2][arg3].field_0, 
           sub_a979c377[arg1][arg2][arg3].field_256,
           sub_a979c377[arg1][arg2][arg3].field_512
}

function sub_c2a55f84(?) {
    return sub_c2a55f84[arg1][arg2].field_0, 
           sub_c2a55f84[arg1][arg2].field_256,
           sub_c2a55f84[arg1][arg2].field_512,
           sub_c2a55f84[arg1][arg2].field_768,
           sub_c2a55f84[arg1][arg2].field_1024,
           sub_c2a55f84[arg1][arg2].field_1536,
           sub_c2a55f84[arg1][arg2].field_1792,
           sub_c2a55f84[arg1][arg2].field_2048,
           sub_c2a55f84[arg1][arg2].field_2304
}

function sub_e9676bde(?) {
    return sub_e9676bde[arg1][arg2].field_0, sub_e9676bde[arg1][arg2].field_256, sub_e9676bde[arg1][arg2].field_512
}

function sendFund() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_367b90bb(?) {
    stor7[arg1 << 224] = 1
    emit 0xf1e8264c: arg1 << 224, block.timestamp
}

function sub_0088d8ce(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_5cec72a4 = arg1
}

function sub_7fcc6554(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_8e0192e4 = arg1
}

function sub_85b33c8d(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_1ae82676 = arg1
}

function sub_87c924e6(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_69161f06 = arg1
}

function sub_c576bd61(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_94fadf5d = arg1
}

function setHouseAddress(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    stor6 = arg1
}

function sub_c6b5112e(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if not stor7[arg4 << 224]:
        revert with 0, 'Invalid VaultMode'
    sub_e9676bde[address(arg1)][arg4 << 224].field_256 = arg2
    sub_e9676bde[address(arg1)][arg4 << 224].field_512 = arg3
    emit 0x1db59a2b: arg4 << 224, block.timestamp, arg1
}

function withdrawFunds(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract doesn't have that much balance to withdraw'
    call stor6 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0x35faa92a: arg1, 'internal-withdraw', stor6
    else:
        emit 0x4c208d58: arg1, 'internal-withdraw', stor6
}

function sub_86b0b70d(?) {
    if not stor7[arg3 << 224]:
        revert with 0, 'Invalid PixelMode'
    if sub_c2a55f84[arg3 << 224][stor12[address(arg2)][arg3 << 224][arg1].field_0].field_1280:
        idx = 896
        s = 0
        while (32 * sub_c2a55f84[arg3 << 224][stor12[address(arg2)][arg3 << 224][arg1].field_0].field_1280) + 864 > idx:
            mem[idx + 32] = sub_c2a55f84[arg3 << 224][stor12[address(arg2)][arg3 << 224][arg1].field_0][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_c2a55f84[arg3 << 224][stor12[address(arg2)][arg3 << 224][arg1].field_0].field_768 > 0:
        return 0
    return 1
}

function sub_cc7ce250(?) payable {
    if msg.value < sub_5cec72a4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough amount to buy new slot'
    if not stor7[arg1 << 224]:
        revert with 0, 'Invalid Slot Mode'
    if not sub_2bff8dd6[address(msg.sender)].field_512:
        sub_2bff8dd6[address(msg.sender)].field_512 = 1
        sub_965d3743[address(msg.sender)][128] = 1
        sub_965d3743[address(msg.sender)][64] = 1
    sub_965d3743[address(msg.sender)][arg1 << 224]++
    emit 0xf5b960df: sub_965d3743[address(msg.sender)][arg1 << 224], arg1 << 224, block.timestamp, msg.sender
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0x35faa92a: msg.value, 'house_share', stor6
    else:
        emit 0x4c208d58: msg.value, 'house_share', stor6
}

function sub_6946ff99(?) payable {
    if msg.value < sub_69161f06:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough amount to buy Color Pallete'
    if sub_2bff8dd6[address(msg.sender)].field_512:
        if stor14[address(msg.sender)][arg1 << 224]:
            revert with 0, 'You already owned this pallete'
    else:
        sub_2bff8dd6[address(msg.sender)].field_512 = 1
        sub_965d3743[address(msg.sender)][128] = 1
        sub_965d3743[address(msg.sender)][64] = 1
    stor14[address(msg.sender)][arg1 << 224] = 1
    sub_2bff8dd6[address(msg.sender)].field_0++
    sub_2bff8dd6[address(msg.sender)][sub_2bff8dd6[address(msg.sender)].field_0].field_0 = arg1
    sub_2bff8dd6[address(msg.sender)][sub_2bff8dd6[address(msg.sender)].field_0].field_32 = 0
    emit 0xd7065679: arg1 << 224, block.timestamp, msg.sender
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0x35faa92a: msg.value, 'house_share', stor6
    else:
        emit 0x4c208d58: msg.value, 'house_share', stor6
}

function sub_6ab4df08(?) {
    if not stor7[arg4 << 224]:
        revert with 0, 'Invalid VaultMode'
    if sub_e9676bde[address(arg1)][arg4 << 224].field_0 > arg2:
        revert with 0, 'SafeMath sub failed'
    if arg2 - sub_e9676bde[address(arg1)][arg4 << 224].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Don't have enough amount to withdraw'
    if arg3 != sub_e9676bde[address(arg1)][arg4 << 224].field_256:
        revert with 0, 'withdrawToken Didn't match'
    if arg2 - sub_e9676bde[address(arg1)][arg4 << 224].field_0 != sub_e9676bde[address(arg1)][arg4 << 224].field_512:
        revert with 0, 'withdraw amount invalid'
    sub_e9676bde[address(arg1)][arg4 << 224].field_0 = arg2
    sub_e9676bde[address(arg1)][arg4 << 224].field_256 = 0
    sub_e9676bde[address(arg1)][arg4 << 224].field_512 = 0
    call arg1 with:
       value arg2 - sub_e9676bde[address(arg1)][arg4 << 224].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0x35faa92a: arg2 - sub_e9676bde[address(arg1)][arg4 << 224].field_0, 'withdraw', arg1
    else:
        emit 0x4c208d58: arg2 - sub_e9676bde[address(arg1)][arg4 << 224].field_0, 'withdraw', arg1
}

function sub_3b235886(?) {
    if not sub_2bff8dd6[address(arg1)].field_0:
        mem[(32 * sub_2bff8dd6[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_2bff8dd6[address(arg1)].field_0) + 160] = sub_2bff8dd6[address(arg1)].field_0
        mem[(32 * sub_2bff8dd6[address(arg1)].field_0) + 192 len floor32(sub_2bff8dd6[address(arg1)].field_0)] = mem[128 len floor32(sub_2bff8dd6[address(arg1)].field_0)]
        return memory
          from (32 * sub_2bff8dd6[address(arg1)].field_0) + 128
           len (96 * sub_2bff8dd6[address(arg1)].field_0) + 64
    mem[128] = sub_2bff8dd6[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_2bff8dd6[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_2bff8dd6[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_2bff8dd6[address(arg1)].field_0) + 192 len floor32(sub_2bff8dd6[address(arg1)].field_0)] = mem[128 len floor32(sub_2bff8dd6[address(arg1)].field_0)]
    return Array(len=sub_2bff8dd6[address(arg1)].field_0, data=mem[128 len floor32(sub_2bff8dd6[address(arg1)].field_0)], mem[(32 * sub_2bff8dd6[address(arg1)].field_0) + floor32(sub_2bff8dd6[address(arg1)].field_0) + 192 len (32 * sub_2bff8dd6[address(arg1)].field_0) - floor32(sub_2bff8dd6[address(arg1)].field_0)]), 
}

function sub_24049912(?) payable {
    if msg.value < sub_8e0192e4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough amount to buy Glow Color'
    if sub_2bff8dd6[address(msg.sender)].field_512:
        if stor15[address(msg.sender)][arg1 << 248]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You already owned this glow color'
    else:
        sub_2bff8dd6[address(msg.sender)].field_512 = 1
        sub_965d3743[address(msg.sender)][128] = 1
        sub_965d3743[address(msg.sender)][64] = 1
    stor15[address(msg.sender)][arg1 << 248] = 1
    sub_2bff8dd6[address(msg.sender)].field_256++
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_2bff8dd6', 10))) + sub_2bff8dd6[address(msg.sender)].field_256].field_0 = arg1
    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_2bff8dd6', 10))) + sub_2bff8dd6[address(msg.sender)].field_256].field_8 = 0
    emit 0x7ade3f52: arg1 << 248, block.timestamp, msg.sender
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0x35faa92a: msg.value, 'house_share', stor6
    else:
        emit 0x4c208d58: msg.value, 'house_share', stor6
}

function sub_1bc9dbc5(?) {
    if not sub_2bff8dd6[address(arg1)].field_256:
        mem[(32 * sub_2bff8dd6[address(arg1)].field_256) + 128] = 32
        mem[(32 * sub_2bff8dd6[address(arg1)].field_256) + 160] = sub_2bff8dd6[address(arg1)].field_256
        mem[(32 * sub_2bff8dd6[address(arg1)].field_256) + 192 len floor32(sub_2bff8dd6[address(arg1)].field_256)] = mem[128 len floor32(sub_2bff8dd6[address(arg1)].field_256)]
        return memory
          from (32 * sub_2bff8dd6[address(arg1)].field_256) + 128
           len (96 * sub_2bff8dd6[address(arg1)].field_256) + 64
    mem[128] = sub_2bff8dd6[address(arg1)][1].field_0
    idx = 128
    s = 0
    while (32 * sub_2bff8dd6[address(arg1)].field_256) + 96 > idx:
        mem[idx + 32] = sub_2bff8dd6[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_2bff8dd6[address(arg1)].field_256) + 192 len floor32(sub_2bff8dd6[address(arg1)].field_256)] = mem[128 len floor32(sub_2bff8dd6[address(arg1)].field_256)]
    return Array(len=sub_2bff8dd6[address(arg1)].field_256, data=mem[128 len floor32(sub_2bff8dd6[address(arg1)].field_256)], mem[(32 * sub_2bff8dd6[address(arg1)].field_256) + floor32(sub_2bff8dd6[address(arg1)].field_256) + 192 len (32 * sub_2bff8dd6[address(arg1)].field_256) - floor32(sub_2bff8dd6[address(arg1)].field_256)]), 
}

function sub_5ff5b58d(?) {
    if not stor13[address(arg1)][arg2 << 224].field_0:
        mem[(32 * stor13[address(arg1)][arg2 << 224].field_0) + 128] = 32
        mem[(32 * stor13[address(arg1)][arg2 << 224].field_0) + 160] = stor13[address(arg1)][arg2 << 224].field_0
        mem[(32 * stor13[address(arg1)][arg2 << 224].field_0) + 192 len floor32(stor13[address(arg1)][arg2 << 224].field_0)] = mem[128 len floor32(stor13[address(arg1)][arg2 << 224].field_0)]
        return memory
          from (32 * stor13[address(arg1)][arg2 << 224].field_0) + 128
           len (96 * stor13[address(arg1)][arg2 << 224].field_0) + 64
    mem[128] = stor13[address(arg1)][arg2 << 224].field_0
    idx = 128
    s = 0
    while (32 * stor13[address(arg1)][arg2 << 224].field_0) + 96 > idx:
        mem[idx + 32] = stor13[address(arg1)][arg2 << 224][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor13[address(arg1)][arg2 << 224].field_0) + 192 len floor32(stor13[address(arg1)][arg2 << 224].field_0)] = mem[128 len floor32(stor13[address(arg1)][arg2 << 224].field_0)]
    return Array(len=stor13[address(arg1)][arg2 << 224].field_0, data=mem[128 len floor32(stor13[address(arg1)][arg2 << 224].field_0)], mem[(32 * stor13[address(arg1)][arg2 << 224].field_0) + floor32(stor13[address(arg1)][arg2 << 224].field_0) + 192 len (32 * stor13[address(arg1)][arg2 << 224].field_0) - floor32(stor13[address(arg1)][arg2 << 224].field_0)]), 
}

function sub_0eb33688(?) {
    if not sub_c2a55f84[arg2 << 224][arg1].field_1280:
        mem[(32 * sub_c2a55f84[arg2 << 224][arg1].field_1280) + 128] = 32
        mem[(32 * sub_c2a55f84[arg2 << 224][arg1].field_1280) + 160] = sub_c2a55f84[arg2 << 224][arg1].field_1280
        mem[(32 * sub_c2a55f84[arg2 << 224][arg1].field_1280) + 192 len floor32(sub_c2a55f84[arg2 << 224][arg1].field_1280)] = mem[128 len floor32(sub_c2a55f84[arg2 << 224][arg1].field_1280)]
        return memory
          from (32 * sub_c2a55f84[arg2 << 224][arg1].field_1280) + 128
           len (96 * sub_c2a55f84[arg2 << 224][arg1].field_1280) + 64
    mem[128] = sub_c2a55f84[arg2 << 224][arg1][5].field_0
    idx = 128
    s = 0
    while (32 * sub_c2a55f84[arg2 << 224][arg1].field_1280) + 96 > idx:
        mem[idx + 32] = sub_c2a55f84[arg2 << 224][arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_c2a55f84[arg2 << 224][arg1].field_1280) + 192 len floor32(sub_c2a55f84[arg2 << 224][arg1].field_1280)] = mem[128 len floor32(sub_c2a55f84[arg2 << 224][arg1].field_1280)]
    return Array(len=sub_c2a55f84[arg2 << 224][arg1].field_1280, data=mem[128 len floor32(sub_c2a55f84[arg2 << 224][arg1].field_1280)], mem[(32 * sub_c2a55f84[arg2 << 224][arg1].field_1280) + floor32(sub_c2a55f84[arg2 << 224][arg1].field_1280) + 192 len (32 * sub_c2a55f84[arg2 << 224][arg1].field_1280) - floor32(sub_c2a55f84[arg2 << 224][arg1].field_1280)]), 
}

function sub_4a1192ba(?) {
    if not sub_30a9b84b[address(arg1)][arg2 << 224].field_0:
        mem[(32 * sub_30a9b84b[address(arg1)][arg2 << 224].field_0) + 128] = 32
        mem[(32 * sub_30a9b84b[address(arg1)][arg2 << 224].field_0) + 160] = sub_30a9b84b[address(arg1)][arg2 << 224].field_0
        mem[(32 * sub_30a9b84b[address(arg1)][arg2 << 224].field_0) + 192 len floor32(sub_30a9b84b[address(arg1)][arg2 << 224].field_0)] = mem[128 len floor32(sub_30a9b84b[address(arg1)][arg2 << 224].field_0)]
        return memory
          from (32 * sub_30a9b84b[address(arg1)][arg2 << 224].field_0) + 128
           len (96 * sub_30a9b84b[address(arg1)][arg2 << 224].field_0) + 64
    mem[128] = sub_30a9b84b[address(arg1)][arg2 << 224].field_0
    idx = 128
    s = 0
    while (32 * sub_30a9b84b[address(arg1)][arg2 << 224].field_0) + 96 > idx:
        mem[idx + 32] = sub_30a9b84b[address(arg1)][arg2 << 224][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_30a9b84b[address(arg1)][arg2 << 224].field_0) + 192 len floor32(sub_30a9b84b[address(arg1)][arg2 << 224].field_0)] = mem[128 len floor32(sub_30a9b84b[address(arg1)][arg2 << 224].field_0)]
    return Array(len=sub_30a9b84b[address(arg1)][arg2 << 224].field_0, data=mem[128 len floor32(sub_30a9b84b[address(arg1)][arg2 << 224].field_0)], mem[(32 * sub_30a9b84b[address(arg1)][arg2 << 224].field_0) + floor32(sub_30a9b84b[address(arg1)][arg2 << 224].field_0) + 192 len (32 * sub_30a9b84b[address(arg1)][arg2 << 224].field_0) - floor32(sub_30a9b84b[address(arg1)][arg2 << 224].field_0)]), 
}

function sub_d68945dd(?) {
    if not stor7[arg2 << 224]:
        revert with 0, 'Invalid PixelMode'
    if not sub_2bff8dd6[address(msg.sender)].field_512:
        sub_2bff8dd6[address(msg.sender)].field_512 = 1
        sub_965d3743[address(msg.sender)][128] = 1
        sub_965d3743[address(msg.sender)][64] = 1
    if sub_965d3743[address(msg.sender)][arg2 << 224] < arg1:
        revert with 0, 'You don't own this slot'
    if sub_0f9f2c06[address(msg.sender)][arg2 << 224][arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'An art has already been published on this slot'
    sub_680381e0[arg2 << 224]++
    if sub_c2a55f84[arg2 << 224][stor8[arg2 << 224]].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This art has already been published'
    sub_c2a55f84[arg2 << 224][stor8[arg2 << 224]].field_0 = sub_680381e0[arg2 << 224]
    sub_c2a55f84[arg2 << 224][stor8[arg2 << 224]].field_256 = block.timestamp
    sub_c2a55f84[arg2 << 224][stor8[arg2 << 224]].field_512 = msg.sender
    sub_c2a55f84[arg2 << 224][stor8[arg2 << 224]].field_1792 = sub_94fadf5d
    sub_c2a55f84[arg2 << 224][stor8[arg2 << 224]].field_1536 = msg.sender
    sub_0f9f2c06[address(msg.sender)][arg2 << 224][arg1].field_256 = 1
    sub_0f9f2c06[address(msg.sender)][arg2 << 224][arg1].field_0 = sub_680381e0[arg2 << 224]
    stor13[address(msg.sender)][arg2 << 224].field_0++
    stor13[address(msg.sender)][arg2 << 224][stor13[address(msg.sender)][arg2 << 224].field_0].field_0 = sub_680381e0[arg2 << 224]
    emit 0x38e46c76: sub_680381e0[arg2 << 224], arg2 << 224, block.timestamp, msg.sender
}

function sub_60e4f07b(?) {
    if sub_c2a55f84[arg3 << 224][arg2].field_1280:
        idx = 1024
        s = 0
        while (32 * sub_c2a55f84[arg3 << 224][arg2].field_1280) + 992 > idx:
            mem[idx + 32] = sub_c2a55f84[arg3 << 224][arg2][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if not sub_c2a55f84[arg3 << 224][arg2].field_2048:
        if sub_777a904a[address(arg1)][arg3 << 224][arg2].field_0 > 0:
            revert with 0, 'SafeMath sub failed'
        if sub_777a904a[address(arg1)][arg3 << 224][arg2].field_256 - sub_777a904a[address(arg1)][arg3 << 224][arg2].field_0 < sub_777a904a[address(arg1)][arg3 << 224][arg2].field_256:
            revert with 0, 'SafeMath add failed'
        return (sub_777a904a[address(arg1)][arg3 << 224][arg2].field_256 - sub_777a904a[address(arg1)][arg3 << 224][arg2].field_0)
    require sub_c2a55f84[arg3 << 224][arg2].field_2048
    if sub_c2a55f84[arg3 << 224][arg2].field_2048 * sub_777a904a[address(arg1)][arg3 << 224][arg2].field_512 / sub_c2a55f84[arg3 << 224][arg2].field_2048 != sub_777a904a[address(arg1)][arg3 << 224][arg2].field_512:
        revert with 0, 'SafeMath mul failed'
    if sub_777a904a[address(arg1)][arg3 << 224][arg2].field_0 > sub_c2a55f84[arg3 << 224][arg2].field_2048 * sub_777a904a[address(arg1)][arg3 << 224][arg2].field_512 / 10^18:
        revert with 0, 'SafeMath sub failed'
    if sub_777a904a[address(arg1)][arg3 << 224][arg2].field_256 + (sub_c2a55f84[arg3 << 224][arg2].field_2048 * sub_777a904a[address(arg1)][arg3 << 224][arg2].field_512 / 10^18) - sub_777a904a[address(arg1)][arg3 << 224][arg2].field_0 < sub_777a904a[address(arg1)][arg3 << 224][arg2].field_256:
        revert with 0, 'SafeMath add failed'
    return (sub_777a904a[address(arg1)][arg3 << 224][arg2].field_256 + (sub_c2a55f84[arg3 << 224][arg2].field_2048 * sub_777a904a[address(arg1)][arg3 << 224][arg2].field_512 / 10^18) - sub_777a904a[address(arg1)][arg3 << 224][arg2].field_0)
}

function sub_2cb8a04d(?) payable {
    if not stor7[arg3 << 224]:
        revert with 0, 'Invalid PixelMode'
    if msg.value < sub_1ae82676:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough amount to like this art'
    if not sub_c2a55f84[arg3 << 224][arg1].field_256:
        revert with 0, 'No art found regarding this ID'
    if not msg.value:
        if sub_777a904a[stor9[arg3 << 224][arg1].field_1536][arg3 << 224][arg1].field_256 < sub_777a904a[stor9[arg3 << 224][arg1].field_1536][arg3 << 224][arg1].field_256:
            revert with 0, 'SafeMath add failed'
        if sub_777a904a[stor9[arg3 << 224][arg1].field_512][arg3 << 224][arg1].field_256 < sub_777a904a[stor9[arg3 << 224][arg1].field_512][arg3 << 224][arg1].field_256:
            revert with 0, 'SafeMath add failed'
    else:
        require msg.value
        if 50 * msg.value / msg.value != 50:
            revert with 0, 'SafeMath mul failed'
        if sub_777a904a[stor9[arg3 << 224][arg1].field_1536][arg3 << 224][arg1].field_256 + (50 * msg.value / 100) < sub_777a904a[stor9[arg3 << 224][arg1].field_1536][arg3 << 224][arg1].field_256:
            revert with 0, 'SafeMath add failed'
        sub_777a904a[stor9[arg3 << 224][arg1].field_1536][arg3 << 224][arg1].field_256 += 50 * msg.value / 100
        if sub_777a904a[stor9[arg3 << 224][arg1].field_512][arg3 << 224][arg1].field_256 + (50 * msg.value / 100) < sub_777a904a[stor9[arg3 << 224][arg1].field_512][arg3 << 224][arg1].field_256:
            revert with 0, 'SafeMath add failed'
        sub_777a904a[stor9[arg3 << 224][arg1].field_512][arg3 << 224][arg1].field_256 += 50 * msg.value / 100
    sub_c2a55f84[arg3 << 224][arg1].field_2304++
    if sub_a979c377[address(msg.sender)][arg3 << 224][arg1].field_512 == arg2:
        revert with 0, 'Signature invalid'
    if sub_a979c377[address(msg.sender)][arg3 << 224][arg1].field_0 <= 0:
        sub_30a9b84b[address(msg.sender)][arg3 << 224].field_0++
        sub_30a9b84b[address(msg.sender)][arg3 << 224][sub_30a9b84b[address(msg.sender)][arg3 << 224].field_0].field_0 = arg1
    sub_a979c377[address(msg.sender)][arg3 << 224][arg1].field_0++
    sub_a979c377[address(msg.sender)][arg3 << 224][arg1].field_256 = block.timestamp
    sub_a979c377[address(msg.sender)][arg3 << 224][arg1].field_512 = arg2
    sub_30a9b84b[address(msg.sender)][arg3 << 224].field_256 = block.timestamp
    emit 0xf7280ba6: arg1, arg3 << 224, block.timestamp, arg2, msg.sender
}



}
