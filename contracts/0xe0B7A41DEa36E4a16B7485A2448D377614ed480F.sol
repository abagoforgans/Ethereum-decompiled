contract main {




// =====================  Runtime code  =====================


address owner;
address sub_a2ce10b4Address;
uint256 stor1;
address relayAddress;
array of address sub_44403388;
mapping of struct sub_35f89d5c;
array of uint256 stor5;
mapping of struct sub_3e784516;
mapping of struct sub_cb831d16;
mapping of struct sub_05b5cbfa;
mapping of uint8 stor9;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_05b5cbfa(?) {
    mem[128] = sub_05b5cbfa[Mask(128, 128, arg1)].field_0
    idx = 128
    s = 0
    while sub_05b5cbfa[Mask(128, 128, arg1)].length + 96 > idx:
        mem[idx + 32] = sub_05b5cbfa[Mask(128, 128, arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_05b5cbfa[Mask(128, 128, arg1)].length, data=mem[128 len sub_05b5cbfa[Mask(128, 128, arg1)].length]), 
           sub_05b5cbfa[Mask(128, 128, arg1)].field_256,
           sub_05b5cbfa[Mask(128, 128, arg1)].field_512,
           Mask(128, 128, sub_05b5cbfa[Mask(128, 128, arg1)].field_768),
           bool(sub_05b5cbfa[Mask(128, 128, arg1)].field_2048),
           bool(sub_05b5cbfa[Mask(128, 128, arg1)].field_2056),
           sub_05b5cbfa[Mask(128, 128, arg1)].field_2048
}

function sub_2dd039c4(?) {
    return sub_05b5cbfa[Mask(128, 128, arg1)].field_1024
}

function sub_35f89d5c(?) {
    mem[128] = sub_35f89d5c[arg1].field_0
    idx = 128
    s = 0
    while sub_35f89d5c[arg1].length + 96 > idx:
        mem[idx + 32] = sub_35f89d5c[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_35f89d5c[arg1].field_256 <= 5:
        return Array(len=sub_35f89d5c[arg1].length, data=mem[128 len sub_35f89d5c[arg1].length]), 
               sub_35f89d5c[arg1].field_256,
               sub_35f89d5c[arg1].field_264 << 128,
               bool(sub_35f89d5c[arg1].field_392)
    revert
}

function sub_3e784516(?) {
    return sub_3e784516[Mask(128, 128, arg1)].field_512
}

function sub_44403388(?) {
    require arg1 < sub_44403388.length
    return sub_44403388[arg1]
}

function sub_4ef19dbc(?) {
    return sub_44403388.length
}

function sub_4fad9e20(?) {
    return stor5.length
}

function sub_5b51566d(?) {
    mem[128] = sub_3e784516[Mask(128, 128, arg1)].field_0
    idx = 128
    s = 0
    while sub_3e784516[Mask(128, 128, arg1)].length + 96 > idx:
        mem[idx + 32] = sub_3e784516[Mask(128, 128, arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_3e784516[Mask(128, 128, arg1)].length, data=mem[128 len sub_3e784516[Mask(128, 128, arg1)].length]), 
           Mask(128, 128, sub_3e784516[Mask(128, 128, arg1)].field_256)
}

function owner() {
    return owner
}

function sub_9e84a480(?) {
    return bool(stor9[arg1])
}

function sub_a2ce10b4(?) {
    return address(sub_a2ce10b4Address)
}

function relay() {
    return relayAddress
}

function sub_cb831d16(?) {
    mem[128] = sub_cb831d16[Mask(128, 128, arg1)].field_0
    idx = 128
    s = 0
    while sub_cb831d16[Mask(128, 128, arg1)].length + 96 > idx:
        mem[idx + 32] = sub_cb831d16[Mask(128, 128, arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_cb831d16[Mask(128, 128, arg1)].length, data=mem[128 len sub_cb831d16[Mask(128, 128, arg1)].length]), 
           sub_cb831d16[Mask(128, 128, arg1)].field_256,
           sub_cb831d16[Mask(128, 128, arg1)].field_512,
           Mask(128, 128, sub_cb831d16[Mask(128, 128, arg1)].field_768),
           sub_cb831d16[Mask(128, 128, arg1)].field_896 << 128
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_92afdc80(?) {
    return (msg.sender == relayAddress)
}

function sub_99a1c06d(?) {
    return (msg.sender == address(sub_a2ce10b4Address))
}

function sub_60a0bdda(?) {
    require arg1 < stor5.length
    return (stor5[0.5 / arg1].field_0 / 256^(16 * bool(arg1)) << 128)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateRelay(address arg1) {
    require msg.sender == address(sub_a2ce10b4Address)
    require ext_code.size(arg1) > 0
    emit 0xe2a0aba5: relayAddress, arg1
    relayAddress = arg1
}

function sub_9d03391d(?) {
    require msg.sender == address(sub_a2ce10b4Address)
    require arg1
    emit 0x622f795c: address(sub_a2ce10b4Address), arg1
    address(sub_a2ce10b4Address) = arg1
}

function sub_0b189b92(?) {
    require msg.sender == relayAddress
    if owner != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Chief Admin can call this function'
    if not arg2:
        revert with 0, 'Target hash can not be empty.'
    if stor9[arg2]:
        revert with 0, 'Certificate already revoked.'
    stor9[arg2] = 1
    emit 0x2ec5444d: arg1, arg2
    return 1
}

function initialize(address arg1, address arg2) {
    if msg.sender != 0x9563ece5064e68a408ca756a0dbe7f8d6c47fb3e:
        revert with 0, 'Sender must be initializer'
    require not owner
    owner = arg1
    require not relayAddress
    require ext_code.size(arg2) > 0
    relayAddress = arg2
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    emit 0x622f795c: 0, msg.sender
    emit 0xe2a0aba5: 0, relayAddress
}

function sub_a4a51c1f(?) {
    require msg.sender == relayAddress
    require sub_35f89d5c[address(arg1)].field_256 <= 5
    if sub_35f89d5c[address(arg1)].field_256 != 3:
        revert with 0, 'Only Institute can add course.'
    if arg3.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Required fields can not be empt.'
    if not Mask(128, 128, arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Required fields can not be empt.'
    if Mask(128, 128, sub_3e784516[Mask(128, 128, arg2)].field_256):
        revert with 0, 'Course already exists.'
    sub_3e784516[Mask(128, 128, arg2)][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_3e784516[Mask(128, 128, arg2)].field_256 = sub_35f89d5c[address(arg1)].field_264
    sub_3e784516[Mask(128, 128, arg2)].field_512 = 0
    idx = 0
    while sub_3e784516[Mask(128, 128, arg2)].field_512 + 1 / 2 > idx:
        sub_3e784516[Mask(128, 128, arg2)][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    stor5.length++
    stor36B6[stor5.length.field_1] = arg2 * 256^(16 * bool(stor5.length)) or stor36B6[stor5.length.field_1] and !(test266151307() * 256^(16 * bool(stor5.length)))
    emit 0x9b2aa25f: arg1, Mask(128, 128, arg2), sha3(arg3[all])
    return 1
}

function sub_dc621823(?) {
    require msg.sender == relayAddress
    if owner != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Chief Admin can call this function'
    if not Mask(128, 128, sub_05b5cbfa[Mask(128, 128, arg2)].field_768):
        revert with 0, 'Certificate has not been issued'
    if sub_cb831d16[Mask(128, 128, stor8[Mask(128, 128, arg2)].field_768)].field_256 != sub_05b5cbfa[Mask(128, 128, arg2)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Certificates must be issued for all students to revoke batch'
    if Mask(128, 128, sub_3e784516[Mask(128, 128, stor7[Mask(128, 128, stor8[Mask(128, 128, arg2)].field_768)].field_768)].field_256) != sub_35f89d5c[address(arg1)].field_264 << 128:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Batch certificates are not owned by signer'
    if sub_05b5cbfa[Mask(128, 128, arg2)].field_2064:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Batch certificates are already revoked.'
    sub_05b5cbfa[Mask(128, 128, arg2)].field_2056 = 1
    sub_05b5cbfa[Mask(128, 128, arg2)].field_2064 = arg1
    sub_05b5cbfa[Mask(128, 128, arg2)].field_2224 = 0
    sub_05b5cbfa[Mask(128, 128, arg2)].field_2304 = 0
    emit 0x1e5394df: arg1, Mask(128, 128, arg2)
    return 1
}

function sub_140d3e70(?) {
    require msg.sender == relayAddress
    if owner != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Chief Admin can call this function'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Required fields can not be empt & valid.'
    if not Mask(128, 128, arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Required fields can not be empt & valid.'
    require arg5 <= 5
    if arg5 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Required fields can not be empt & valid.'
    require arg5 <= 5
    if arg5 > 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Required fields can not be empt & valid.'
    if sub_35f89d5c[address(arg2)].field_264:
        revert with 0, 'Ethereum address already used.'
    require arg5 <= 5
    sub_35f89d5c[address(arg2)][].field_0 = Array(len=arg4.length, data=arg4[all])
    require arg5 <= 5
    sub_35f89d5c[address(arg2)].field_256 = arg5
    sub_35f89d5c[address(arg2)].field_264 = arg3
    sub_35f89d5c[address(arg2)].field_392 = 1
    sub_35f89d5c[address(arg2)].field_400 = 0
    sub_44403388.length++
    sub_44403388[sub_44403388.length] = arg2
    require arg5 <= 5
    emit 0x170efbc7: Mask(128, 128, arg3), Array(len=arg4.length, data=arg4[all]), 1, arg1, arg2, arg5
    return 1
}

function sub_e655806e(?) {
    if not sub_3e784516[Mask(128, 128, arg1)].field_512:
        mem[(32 * sub_3e784516[Mask(128, 128, arg1)].field_512) + 128] = 32
        mem[(32 * sub_3e784516[Mask(128, 128, arg1)].field_512) + 160] = sub_3e784516[Mask(128, 128, arg1)].field_512
        mem[(32 * sub_3e784516[Mask(128, 128, arg1)].field_512) + 192 len floor32(sub_3e784516[Mask(128, 128, arg1)].field_512)] = mem[128 len floor32(sub_3e784516[Mask(128, 128, arg1)].field_512)]
        return memory
          from (32 * sub_3e784516[Mask(128, 128, arg1)].field_512) + 128
           len (96 * sub_3e784516[Mask(128, 128, arg1)].field_512) + 64
    mem[128] = sub_3e784516[Mask(128, 128, arg1)][2].field_0 / 256^0 << 128
    idx = 128
    s = 0
    while (32 * sub_3e784516[Mask(128, 128, arg1)].field_512) + 96 > idx:
        mem[idx + 32] = sub_3e784516[Mask(128, 128, arg1)][2].field_0 / 256^((16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)) << 128
        idx = idx + 32
        s = (16 * -(s + 31 / 32) + 1) + s - (s + 31 / 32 * s)
        continue 
    mem[(32 * sub_3e784516[Mask(128, 128, arg1)].field_512) + 192 len floor32(sub_3e784516[Mask(128, 128, arg1)].field_512)] = mem[128 len floor32(sub_3e784516[Mask(128, 128, arg1)].field_512)]
    return Array(len=sub_3e784516[Mask(128, 128, arg1)].field_512, data=mem[128 len floor32(sub_3e784516[Mask(128, 128, arg1)].field_512)], mem[(32 * sub_3e784516[Mask(128, 128, arg1)].field_512) + floor32(sub_3e784516[Mask(128, 128, arg1)].field_512) + 192 len (32 * sub_3e784516[Mask(128, 128, arg1)].field_512) - floor32(sub_3e784516[Mask(128, 128, arg1)].field_512)]), 
}

function sub_8b8d17ea(?) {
    require msg.sender == relayAddress
    require sub_35f89d5c[address(arg1)].field_256 <= 5
    if sub_35f89d5c[address(arg1)].field_256 != 3:
        revert with 0, 'Only Institute can add a batch.'
    if arg4.length <= 0:
        revert with 0, 'Required fields can not be empt.'
    if arg6 <= 0:
        revert with 0, 'Required fields can not be empt.'
    if not Mask(128, 128, arg3):
        revert with 0, 'Required fields can not be empt.'
    if arg5 <= block.timestamp:
        revert with 0, 'Certificate issue expiry date can not be in past.'
    if Mask(128, 128, sub_cb831d16[Mask(128, 128, arg3)].field_768):
        revert with 0, 'Batch already exists.'
    if sub_35f89d5c[address(arg1)].field_264 << 128 != Mask(128, 128, sub_3e784516[Mask(128, 128, arg2)].field_256):
        revert with 0, 'Course does not exist or is not owned by signer'
    sub_cb831d16[Mask(128, 128, arg3)][].field_0 = Array(len=arg4.length, data=arg4[all])
    sub_cb831d16[Mask(128, 128, arg3)].field_256 = arg6
    sub_cb831d16[Mask(128, 128, arg3)].field_512 = arg5
    sub_cb831d16[Mask(128, 128, arg3)].field_768 = arg2
    sub_cb831d16[Mask(128, 128, arg3)].field_896 = 0
    sub_cb831d16[Mask(128, 128, arg3)].field_1024 = 0
    sub_3e784516[Mask(128, 128, arg2)].field_512++
    stor[sub_3e784516[Mask(128, 128, arg2)].field_513 + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg2')), ('name', 'sub_3e784516', 6)))].field_0 = arg3 * 256^(16 * sub_3e784516[Mask(128, 128, arg2)].field_512) or !(test266151307() * 256^(16 * sub_3e784516[Mask(128, 128, arg2)].field_512)) and stor[sub_3e784516[Mask(128, 128, arg2)].field_513 + ('array', 2, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg2')), ('name', 'sub_3e784516', 6)))].field_0
    emit 0x47aa0955: Array(len=arg4.length, data=arg4[all]), arg6, arg5, arg1, Mask(128, 128, arg2), Mask(128, 128, arg3)
    return 1
}

function sub_29b0e37e(?) {
    require msg.sender == relayAddress
    if owner != arg1:
        revert with 0, 'Only Chief Admin can call this function'
    if arg3 <= 0:
        revert with 0, 'Required fields can not be empt.'
    if not arg4:
        revert with 0, 'Required fields can not be empt.'
    if arg5.length <= 0:
        revert with 0, 'Required fields can not be empt.'
    if arg6 <= 0:
        revert with 0, 'Certificate graduate date can not be future date.'
    if arg6 > block.timestamp:
        revert with 0, 'Certificate graduate date can not be future date.'
    if block.timestamp >= sub_cb831d16[Mask(128, 128, stor8[Mask(128, 128, arg2)].field_768)].field_512:
        revert with 0, 'Certificate issue time has been expired'
    require arg3 + sub_05b5cbfa[Mask(128, 128, arg2)].field_512 >= sub_05b5cbfa[Mask(128, 128, arg2)].field_512
    if arg3 + sub_05b5cbfa[Mask(128, 128, arg2)].field_512 > sub_cb831d16[Mask(128, 128, stor8[Mask(128, 128, arg2)].field_768)].field_256:
        revert with 0, 'Sum of total issue count and certificate issue count must be less than or equal to batch student count'
    sub_05b5cbfa[Mask(128, 128, arg2)].field_512 += arg3
    sub_05b5cbfa[Mask(128, 128, arg2)].field_1024++
    stor[sub_05b5cbfa[Mask(128, 128, arg2)].field_1024 + ('array', 4, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg2')), ('name', 'sub_05b5cbfa', 8)))].field_0 = arg3
    sub_05b5cbfa[Mask(128, 128, arg2)].field_1280++
    stor[('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg2')), ('name', 'sub_05b5cbfa', 8))) + sub_05b5cbfa[Mask(128, 128, arg2)].field_1280].field_0 = arg4
    sub_05b5cbfa[Mask(128, 128, arg2)].field_1536++
    stor[sha3(sub_05b5cbfa[Mask(128, 128, arg2)].field_1536 + ('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg2')), ('name', 'sub_05b5cbfa', 8))))][].field_0 = Array(len=arg5.length, data=arg5[all])
    emit 0xfe5f8ac0: arg3, Array(len=arg5.length, data=arg5[all]), arg6, arg1, Mask(128, 128, arg2), arg4
    return 1
}

function sub_41ff94ed(?) {
    require arg2 < sub_05b5cbfa[Mask(128, 128, arg1)].field_1024
    require arg2 < sub_05b5cbfa[Mask(128, 128, arg1)].field_1280
    require arg2 < sub_05b5cbfa[Mask(128, 128, arg1)].field_1536
    mem[128] = stor[sha3(('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2)].field_0
    idx = 128
    s = 0
    while stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3(('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require arg2 < sub_05b5cbfa[Mask(128, 128, arg1)].field_1792
    mem[ceil32(stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length) + 128] = stor[('array', 4, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].field_0
    mem[ceil32(stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length) + 160] = stor[('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].field_0
    mem[ceil32(stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length) + 224] = stor[('array', 7, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].field_0
    mem[ceil32(stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length) + 192] = 128
    mem[ceil32(stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length) + 256] = stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length
    if 0 < stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length:
        mem[ceil32(stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length) + 288] = mem[128]
        mem[ceil32(stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length) + 320 len floor32(stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length - 1)] = mem[160 len floor32(stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length - 1)]
    return stor[('array', 4, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].field_0, 
           stor[('array', 5, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].field_0,
           Array(len=stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length, data=mem[ceil32(stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length) + 288 len stor[('array', 6, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].length]),
           stor[('array', 7, ('map', ('mask_shl', 128, 128, 0, ('param', 'arg1')), ('name', 'sub_05b5cbfa', 8))) + arg2].field_0
}

function sub_f1933532(?) {
    require msg.sender == relayAddress
    if owner != address(cd[4]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Chief Admin can call this function'
    if ('cd', 100).length <= 0:
        revert with 0, 'Require fields can not be empty.'
    if Mask(128, 128, sub_05b5cbfa[Mask(128, 128, cd[68])].field_768):
        revert with 0, 'Certificate exist'
    if sub_cb831d16[Mask(128, 128, cd[36])].field_896:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Certificate already exists for batch'
    if block.timestamp >= sub_cb831d16[Mask(128, 128, cd[36])].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Certificate issue expire time should be greater than current time.'
    if cd[164] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Requested issue count should be greater than zero and less than or equal to batch size.'
    if cd[164] > sub_cb831d16[Mask(128, 128, cd[36])].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Requested issue count should be greater than zero and less than or equal to batch size.'
    if cd[132] > 0:
        if cd[132] <= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Certificate expiry datetime can not be greater than current datetime'
    sub_05b5cbfa[Mask(128, 128, cd[68])].field_0 = (2 * ('cd', 100).length) + 1
    s = 0
    idx = cd[100] + 36
    while cd[100] + ('cd', 100).length + 36 > idx:
        sub_05b5cbfa[Mask(128, 128, cd[68])][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
    while sub_05b5cbfa[Mask(128, 128, cd[68])].length + 31 / 32 > idx:
        sub_05b5cbfa[Mask(128, 128, cd[68])][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_05b5cbfa[Mask(128, 128, cd[68])].field_2048 = cd[132] > 0 or Mask(248, 8, sub_05b5cbfa[Mask(128, 128, cd[68])].field_2048)
    sub_05b5cbfa[Mask(128, 128, cd[68])].field_256 = cd[132]
    sub_05b5cbfa[Mask(128, 128, cd[68])].field_768 = uint128(cd[36])
    sub_cb831d16[Mask(128, 128, cd[36])].field_896 = uint128(cd[68])
    emit 0x20b0fc34: Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]), cd[132], cd[132] > 0, address(cd[4]), Mask(128, 128, cd[68])
    require msg.sender == relayAddress
    if owner != address(cd[4]):
        revert with 0, 'Only Chief Admin can call this function'
    if cd[164] <= 0:
        revert with 0, 'Required fields can not be empt.'
    if not cd[196]:
        revert with 0, 'Required fields can not be empt.'
    if ('cd', 228).length <= 0:
        revert with 0, 'Required fields can not be empt.'
    if cd[260] <= 0:
        revert with 0, 'Certificate graduate date can not be future date.'
    if cd[260] > block.timestamp:
        revert with 0, 'Certificate graduate date can not be future date.'
    if block.timestamp >= sub_cb831d16[Mask(128, 128, stor8[Mask(128, 128, cd[68])].field_768)].field_512:
        revert with 0, 'Certificate issue time has been expired'
    require cd[164] + sub_05b5cbfa[Mask(128, 128, cd[68])].field_512 >= sub_05b5cbfa[Mask(128, 128, cd[68])].field_512
    if cd[164] + sub_05b5cbfa[Mask(128, 128, cd[68])].field_512 > sub_cb831d16[Mask(128, 128, stor8[Mask(128, 128, cd[68])].field_768)].field_256:
        revert with 0, 'Sum of total issue count and certificate issue count must be less than or equal to batch student count'
    sub_05b5cbfa[Mask(128, 128, cd[68])].field_512 += cd[164]
    sub_05b5cbfa[Mask(128, 128, cd[68])].field_1024++
    stor[sub_05b5cbfa[Mask(128, 128, cd[68])].field_1024 + ('array', 4, ('map', ('mask_shl', 128, 128, 0, ('cd', 68)), ('name', 'sub_05b5cbfa', 8)))].field_0 = cd[164]
    sub_05b5cbfa[Mask(128, 128, cd[68])].field_1280++
    stor[('array', 5, ('map', ('mask_shl', 128, 128, 0, ('cd', 68)), ('name', 'sub_05b5cbfa', 8))) + sub_05b5cbfa[Mask(128, 128, cd[68])].field_1280].field_0 = cd[196]
    sub_05b5cbfa[Mask(128, 128, cd[68])].field_1536++
    stor[sha3(sub_05b5cbfa[Mask(128, 128, cd[68])].field_1536 + ('array', 6, ('map', ('mask_shl', 128, 128, 0, ('cd', 68)), ('name', 'sub_05b5cbfa', 8))))][].field_0 = Array(len=('cd', 228).length, data=call.data[cd[228] + 36 len ('cd', 228).length])
    emit 0xfe5f8ac0: cd[164], Array(len=('cd', 228).length, data=call.data[cd[228] + 36 len ('cd', 228).length]), cd[260], address(cd[4]), Mask(128, 128, cd[68]), cd[196]
    return 1
}



}
