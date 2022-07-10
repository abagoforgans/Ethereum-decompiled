contract main {




// =====================  Runtime code  =====================


#
#  - sub_06c11b24(?)
#  - sub_0e5324be(?)
#  - preTransferCheck(address arg1, address arg2, uint256 arg3)
#  - sub_2043f773(?)
#  - sub_2786ff69(?)
#  - sub_36e7081e(?)
#  - sub_65df0d16(?)
#  - validate(address arg1, address arg2, uint256 arg3)
#  - sub_fdfc3b92(?)
#
const sub_15ffddc5(?) = 128

const sub_4021d0a2(?) = 2

const sub_7f407235(?) = 64

const sub_848d7495(?) = 16

const sub_897c002e(?) = 4

const sub_9c37b8e1(?) = 32

const sub_b696bf02(?) = 1

const sub_b8632a04(?) = 8


address owner;
address eternalStorageAddress;
array of struct namespace;
uint8 stor3;
uint8 stor3; offset 8
uint256 stor3; offset 16
uint256 stor3; offset 8
uint256 sub_f7697ae4;
uint256 sub_766fc9a7;
uint8 stor6;

function initialized() {
    return bool(stor6)
}

function sub_17fe7ad5(?) {
    return bool(uint8(stor3.field_0))
}

function sub_766fc9a7(?) {
    return sub_766fc9a7
}

function namespace() {
    return namespace[0 len namespace.length].field_0
}

function owner() {
    return owner
}

function eternalStorage() {
    return eternalStorageAddress
}

function sub_ee93d608(?) {
    return bool(uint8(stor3.field_8))
}

function sub_f7697ae4(?) {
    return sub_f7697ae4
}

function _fallback() payable {
    revert
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

function sub_e0903c92(?) {
    if stor6:
        revert with 0, 'already initialized'
    stor6 = 1
    uint8(stor3.field_0) = uint8(arg1)
    Mask(248, 0, stor3.field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor3.field_16) = Mask(240, 16, arg1) >> 16
    sub_f7697ae4 = arg3
    sub_766fc9a7 = arg4
    return 1
}

function sub_bffbf7e9(?) {
    mem[192] = uint256(namespace.field_0)
    idx = 192
    s = 0
    while namespace.length + 160 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[namespace.length + 192 len 0] = None
    mem[namespace.length + 209 len 15] = 0
    mem[namespace.length + 208 len 1] = 116
    if namespace.length + 16 < 32:
        mem[namespace.length + 208] = 256^(-namespace.length + 16) - 1 and 116, 0, mem[namespace.length + 224 len 16] or mem[192] and !(256^(-namespace.length + 16) - 1)
    else:
        mem[namespace.length + 208] = mem[192]
        mem[namespace.length + 240 len floor32(namespace.length - 16)] = mem[224 len floor32(namespace.length - 16)]
        mem[namespace.length + floor32(namespace.length - 16) + 240] = 256^(-namespace.length + floor32(namespace.length - 16) + 48) - 1 and mem[namespace.length + floor32(namespace.length - 16) + 240] or mem[floor32(namespace.length - 16) + 224] and !(256^(-namespace.length + floor32(namespace.length - 16) + 48) - 1)
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[namespace.length + 208 len namespace.length + 16])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4d751a46(?) {
    mem[192] = uint256(namespace.field_0)
    idx = 192
    s = 0
    while namespace.length + 160 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[namespace.length + 192 len 0] = None
    mem[namespace.length + 210 len 14] = 0
    mem[namespace.length + 192 len 0] = 0
    if namespace.length + 14 < 32:
        mem[namespace.length + 206] = 256^(-namespace.length + 18) - 1 and mem[namespace.length + 206 len 4], 0, mem[namespace.length + 224 len 14] or mem[192] and !(256^(-namespace.length + 18) - 1)
    else:
        mem[namespace.length + 206] = mem[192]
        mem[namespace.length + 238 len floor32(namespace.length - 18)] = mem[224 len floor32(namespace.length - 18)]
        mem[namespace.length + floor32(namespace.length - 18) + 238] = 256^(-namespace.length + floor32(namespace.length - 18) + 50) - 1 and mem[namespace.length + floor32(namespace.length - 18) + 238] or mem[floor32(namespace.length - 18) + 224] and !(256^(-namespace.length + floor32(namespace.length - 18) + 50) - 1)
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[namespace.length + 206 len namespace.length + 14])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6a528307(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 9
    mem[ceil32(arg1.length) + 160] = 'countries'
    mem[ceil32(arg1.length) + 224] = uint256(namespace.field_0)
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + namespace.length + 192 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + namespace.length + 224 len 0] = None
    mem[ceil32(arg1.length) + namespace.length + 224 len 9] = 'countries'
    mem[ceil32(arg1.length) + namespace.length + 233 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + namespace.length + floor32(arg1.length) + -(arg1.length % 32) + 265 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if arg1.length + namespace.length + 9 < 32:
        mem[arg1.length + ceil32(arg1.length) + namespace.length + 233] = 256^(-arg1.length + -namespace.length + 23) - 1 and mem[arg1.length + ceil32(arg1.length) + namespace.length + 233] or mem[ceil32(arg1.length) + 224] and !(256^(-arg1.length + -namespace.length + 23) - 1)
    else:
        mem[arg1.length + ceil32(arg1.length) + namespace.length + 233] = mem[ceil32(arg1.length) + 224]
        mem[arg1.length + ceil32(arg1.length) + namespace.length + 265 len floor32(arg1.length + namespace.length - 23)] = mem[ceil32(arg1.length) + 256 len floor32(arg1.length + namespace.length - 23)]
        mem[arg1.length + ceil32(arg1.length) + namespace.length + floor32(arg1.length + namespace.length - 23) + 265] = 256^(-arg1.length + -namespace.length + floor32(arg1.length + namespace.length - 23) + 55) - 1 and mem[arg1.length + ceil32(arg1.length) + namespace.length + floor32(arg1.length + namespace.length - 23) + 265] or mem[ceil32(arg1.length) + floor32(arg1.length + namespace.length - 23) + 256] and !(256^(-arg1.length + -namespace.length + floor32(arg1.length + namespace.length - 23) + 55) - 1)
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[arg1.length + ceil32(arg1.length) + namespace.length + 233 len arg1.length + namespace.length + 9])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_efa5218d(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 22
    mem[ceil32(arg1.length) + 160] = 0x657552657461696c496e766573746f7273436f756e74000000000000000000
    mem[ceil32(arg1.length) + 224] = uint256(namespace.field_0)
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + namespace.length + 192 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + namespace.length + 224 len 0] = None
    mem[ceil32(arg1.length) + namespace.length + 225 len 21] = 0x657552657461696c496e766573746f7273436f756e
    mem[ceil32(arg1.length) + namespace.length + 224 len 1] = 0
    mem[ceil32(arg1.length) + namespace.length + 246 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + namespace.length + floor32(arg1.length) + -(arg1.length % 32) + 278 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if arg1.length + namespace.length + 22 < 32:
        mem[arg1.length + ceil32(arg1.length) + namespace.length + 246] = 256^(-arg1.length + -namespace.length + 10) - 1 and mem[arg1.length + ceil32(arg1.length) + namespace.length + 246] or mem[ceil32(arg1.length) + 224] and !(256^(-arg1.length + -namespace.length + 10) - 1)
    else:
        mem[arg1.length + ceil32(arg1.length) + namespace.length + 246] = mem[ceil32(arg1.length) + 224]
        mem[arg1.length + ceil32(arg1.length) + namespace.length + 278 len floor32(arg1.length + namespace.length - 10)] = mem[ceil32(arg1.length) + 256 len floor32(arg1.length + namespace.length - 10)]
        mem[arg1.length + ceil32(arg1.length) + namespace.length + floor32(arg1.length + namespace.length - 10) + 278] = 256^(-arg1.length + -namespace.length + floor32(arg1.length + namespace.length - 10) + 42) - 1 and mem[arg1.length + ceil32(arg1.length) + namespace.length + floor32(arg1.length + namespace.length - 10) + 278] or mem[ceil32(arg1.length) + floor32(arg1.length + namespace.length - 10) + 256] and !(256^(-arg1.length + -namespace.length + floor32(arg1.length + namespace.length - 10) + 42) - 1)
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[arg1.length + ceil32(arg1.length) + namespace.length + 246 len arg1.length + namespace.length + 22])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_06eed2e9(?) {
    mem[96] = 8
    mem[128] = 'services'
    mem[192] = uint256(namespace.field_0)
    idx = 192
    s = 0
    while namespace.length + 160 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[namespace.length + 192 len 0] = None
    mem[namespace.length + 192 len 8] = 'services'
    mem[namespace.length + 200] = 1
    mem[160] = namespace.length + 40
    mem[namespace.length + 232 len floor32(namespace.length + 40)] = mem[192 len namespace.length + 8], Mask(8 * floor32(namespace.length + 40) + -namespace.length - 8, -(8 * floor32(namespace.length + 40) + -namespace.length - 8) + 256, 1) << (8 * floor32(namespace.length + 40) + -namespace.length - 8) - 256
    mem[namespace.length + floor32(namespace.length + 40) + 232] = 256^(-(namespace.length + 40 % 32) + 32) - 1 and mem[namespace.length + floor32(namespace.length + 40) + 232] or Mask(8 * -floor32(namespace.length + 40) + namespace.length + 40, 0, 1), mem[192 len floor32(namespace.length + 40) + -namespace.length - 8] and !(256^(-(namespace.length + 40 % 32) + 32) - 1)
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[192 len namespace.length + 8], Mask(8 * floor32(namespace.length + 40) + -namespace.length - 8, -(8 * floor32(namespace.length + 40) + -namespace.length - 8) + 256, 1) << (8 * floor32(namespace.length + 40) + -namespace.length - 8) - 256, mem[namespace.length + floor32(namespace.length + 40) + 232 len namespace.length + -floor32(namespace.length + 40) + 40])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(this.address)
    call this.address.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == msg.sender:
        mem[64] = namespace.length + 296
        mem[namespace.length + 232] = 14
        mem[namespace.length + 264] = 0x746f74616c496e766573746f72730000000000000000000000000000000000
        mem[0] = 2
        mem[namespace.length + 328] = uint256(namespace.field_0)
        idx = namespace.length + 328
        s = 0
        while Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 296 > idx:
            mem[idx + 32] = namespace[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1237 = mem[namespace.length + 232]
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len floor32(mem[namespace.length + 232])] = mem[namespace.length + 264 len floor32(mem[namespace.length + 232])]
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[namespace.length + 232]) + -(mem[namespace.length + 232] % 32) + 360 len mem[namespace.length + 232] % 32] = mem[namespace.length + floor32(mem[namespace.length + 232]) + -(mem[namespace.length + 232] % 32) + 296 len mem[namespace.length + 232] % 32]
        _1333 = mem[64]
        mem[mem[64]] = _1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + -mem[64] + 296
        mem[64] = _1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328
        _1340 = mem[_1333]
        mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len floor32(mem[_1333])] = mem[_1333 + 32 len floor32(mem[_1333])]
        mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[_1333]) + 328] = mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[_1333]) + 328] and 256^(-(mem[_1333] % 32) + 32) - 1 or mem[_1333 + floor32(mem[_1333]) + 32] and !(256^(-(mem[_1333] % 32) + 32) - 1)
        mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 332] = sha3(mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1340 - (2 * namespace.length)])
        mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 364] = arg1
        require ext_code.size(eternalStorageAddress)
        call eternalStorageAddress.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 332 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328] = 1
        return memory
          from _1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328
           len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x471aedc2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getRole(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
        revert with 0, 'Insufficient trust level'
    mem[64] = namespace.length + 296
    mem[namespace.length + 232] = 14
    mem[namespace.length + 264] = 0x746f74616c496e766573746f72730000000000000000000000000000000000
    mem[0] = 2
    mem[namespace.length + 328] = uint256(namespace.field_0)
    idx = namespace.length + 328
    s = 0
    while Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 296 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _1238 = mem[namespace.length + 232]
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len floor32(mem[namespace.length + 232])] = mem[namespace.length + 264 len floor32(mem[namespace.length + 232])]
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[namespace.length + 232]) + -(mem[namespace.length + 232] % 32) + 360 len mem[namespace.length + 232] % 32] = mem[namespace.length + floor32(mem[namespace.length + 232]) + -(mem[namespace.length + 232] % 32) + 296 len mem[namespace.length + 232] % 32]
    _1337 = mem[64]
    mem[mem[64]] = _1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + -mem[64] + 296
    mem[64] = _1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328
    _1342 = mem[_1337]
    mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len floor32(mem[_1337])] = mem[_1337 + 32 len floor32(mem[_1337])]
    mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[_1337]) + 328] = mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[_1337]) + 328] and 256^(-(mem[_1337] % 32) + 32) - 1 or mem[_1337 + floor32(mem[_1337]) + 32] and !(256^(-(mem[_1337] % 32) + 32) - 1)
    mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 332] = sha3(mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1342 - (2 * namespace.length)])
    mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 364] = arg1
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 332 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328] = 1
    return memory
      from _1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328
       len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 32
}

function sub_3633657e(?) {
    mem[96] = 8
    mem[128] = 'services'
    mem[192] = uint256(namespace.field_0)
    idx = 192
    s = 0
    while namespace.length + 160 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[namespace.length + 192 len 0] = None
    mem[namespace.length + 192 len 8] = 'services'
    mem[namespace.length + 200] = 1
    mem[160] = namespace.length + 40
    mem[namespace.length + 232 len floor32(namespace.length + 40)] = mem[192 len namespace.length + 8], Mask(8 * floor32(namespace.length + 40) + -namespace.length - 8, -(8 * floor32(namespace.length + 40) + -namespace.length - 8) + 256, 1) << (8 * floor32(namespace.length + 40) + -namespace.length - 8) - 256
    mem[namespace.length + floor32(namespace.length + 40) + 232] = 256^(-(namespace.length + 40 % 32) + 32) - 1 and mem[namespace.length + floor32(namespace.length + 40) + 232] or Mask(8 * -floor32(namespace.length + 40) + namespace.length + 40, 0, 1), mem[192 len floor32(namespace.length + 40) + -namespace.length - 8] and !(256^(-(namespace.length + 40 % 32) + 32) - 1)
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[192 len namespace.length + 8], Mask(8 * floor32(namespace.length + 40) + -namespace.length - 8, -(8 * floor32(namespace.length + 40) + -namespace.length - 8) + 256, 1) << (8 * floor32(namespace.length + 40) + -namespace.length - 8) - 256, mem[namespace.length + floor32(namespace.length + 40) + 232 len namespace.length + -floor32(namespace.length + 40) + 40])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(this.address)
    call this.address.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == msg.sender:
        mem[64] = namespace.length + 296
        mem[namespace.length + 232] = 16
        mem[namespace.length + 264] = 0x7573496e766573746f7273436f756e74000000000000000000000000000000
        mem[0] = 2
        mem[namespace.length + 328] = uint256(namespace.field_0)
        idx = namespace.length + 328
        s = 0
        while Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 296 > idx:
            mem[idx + 32] = namespace[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1237 = mem[namespace.length + 232]
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len floor32(mem[namespace.length + 232])] = mem[namespace.length + 264 len floor32(mem[namespace.length + 232])]
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[namespace.length + 232]) + -(mem[namespace.length + 232] % 32) + 360 len mem[namespace.length + 232] % 32] = mem[namespace.length + floor32(mem[namespace.length + 232]) + -(mem[namespace.length + 232] % 32) + 296 len mem[namespace.length + 232] % 32]
        _1333 = mem[64]
        mem[mem[64]] = _1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + -mem[64] + 296
        mem[64] = _1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328
        _1340 = mem[_1333]
        mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len floor32(mem[_1333])] = mem[_1333 + 32 len floor32(mem[_1333])]
        mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[_1333]) + 328] = mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[_1333]) + 328] and 256^(-(mem[_1333] % 32) + 32) - 1 or mem[_1333 + floor32(mem[_1333]) + 32] and !(256^(-(mem[_1333] % 32) + 32) - 1)
        mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 332] = sha3(mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1340 - (2 * namespace.length)])
        mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 364] = arg1
        require ext_code.size(eternalStorageAddress)
        call eternalStorageAddress.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 332 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328] = 1
        return memory
          from _1237 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328
           len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x471aedc2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getRole(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
        revert with 0, 'Insufficient trust level'
    mem[64] = namespace.length + 296
    mem[namespace.length + 232] = 16
    mem[namespace.length + 264] = 0x7573496e766573746f7273436f756e74000000000000000000000000000000
    mem[0] = 2
    mem[namespace.length + 328] = uint256(namespace.field_0)
    idx = namespace.length + 328
    s = 0
    while Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 296 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _1238 = mem[namespace.length + 232]
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len floor32(mem[namespace.length + 232])] = mem[namespace.length + 264 len floor32(mem[namespace.length + 232])]
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[namespace.length + 232]) + -(mem[namespace.length + 232] % 32) + 360 len mem[namespace.length + 232] % 32] = mem[namespace.length + floor32(mem[namespace.length + 232]) + -(mem[namespace.length + 232] % 32) + 296 len mem[namespace.length + 232] % 32]
    _1337 = mem[64]
    mem[mem[64]] = _1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + -mem[64] + 296
    mem[64] = _1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328
    _1342 = mem[_1337]
    mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len floor32(mem[_1337])] = mem[_1337 + 32 len floor32(mem[_1337])]
    mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[_1337]) + 328] = mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[_1337]) + 328] and 256^(-(mem[_1337] % 32) + 32) - 1 or mem[_1337 + floor32(mem[_1337]) + 32] and !(256^(-(mem[_1337] % 32) + 32) - 1)
    mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 332] = sha3(mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1342 - (2 * namespace.length)])
    mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 364] = arg1
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 332 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328] = 1
    return memory
      from _1238 + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328
       len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 32
}

function sub_082af7c0(?) {
    mem[96] = 8
    mem[128] = 'services'
    mem[192] = uint256(namespace.field_0)
    idx = 192
    s = 0
    while namespace.length + 160 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[namespace.length + 192 len 0] = None
    mem[namespace.length + 192 len 8] = 'services'
    mem[namespace.length + 200] = 1
    mem[160] = namespace.length + 40
    mem[namespace.length + 232 len floor32(namespace.length + 40)] = mem[192 len namespace.length + 8], Mask(8 * floor32(namespace.length + 40) + -namespace.length - 8, -(8 * floor32(namespace.length + 40) + -namespace.length - 8) + 256, 1) << (8 * floor32(namespace.length + 40) + -namespace.length - 8) - 256
    mem[namespace.length + floor32(namespace.length + 40) + 232] = 256^(-(namespace.length + 40 % 32) + 32) - 1 and mem[namespace.length + floor32(namespace.length + 40) + 232] or Mask(8 * -floor32(namespace.length + 40) + namespace.length + 40, 0, 1), mem[192 len floor32(namespace.length + 40) + -namespace.length - 8] and !(256^(-(namespace.length + 40 % 32) + 32) - 1)
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[192 len namespace.length + 8], Mask(8 * floor32(namespace.length + 40) + -namespace.length - 8, -(8 * floor32(namespace.length + 40) + -namespace.length - 8) + 256, 1) << (8 * floor32(namespace.length + 40) + -namespace.length - 8) - 256, mem[namespace.length + floor32(namespace.length + 40) + 232 len namespace.length + -floor32(namespace.length + 40) + 40])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(this.address)
    call this.address.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == msg.sender:
        mem[64] = namespace.length + 296
        mem[namespace.length + 232] = 8
        mem[namespace.length + 264] = 'services'
        mem[0] = 2
        mem[namespace.length + 328] = uint256(namespace.field_0)
        idx = namespace.length + 328
        s = 0
        while Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 296 > idx:
            mem[idx + 32] = namespace[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1329 = mem[namespace.length + 232]
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len floor32(mem[namespace.length + 232])] = mem[namespace.length + 264 len floor32(mem[namespace.length + 232])]
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[namespace.length + 232]) + 328] = 256^(-(mem[namespace.length + 232] % 32) + 32) - 1 and mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[namespace.length + 232]) + 328] or mem[namespace.length + floor32(mem[namespace.length + 232]) + 264] and !(256^(-(mem[namespace.length + 232] % 32) + 32) - 1)
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 328] = arg1
        _1445 = mem[64]
        mem[mem[64]] = Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + -mem[64] + 328
        mem[64] = Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 360
        _1452 = mem[_1445]
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 360 len floor32(mem[_1445])] = mem[_1445 + 32 len floor32(mem[_1445])]
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + floor32(mem[_1445]) + 360] = mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + floor32(mem[_1445]) + 360] and 256^(-(mem[_1445] % 32) + 32) - 1 or mem[_1445 + floor32(mem[_1445]) + 32] and !(256^(-(mem[_1445] % 32) + 32) - 1)
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 364] = sha3(mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 360 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1452 - (2 * namespace.length)])
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 396] = arg2
        require ext_code.size(eternalStorageAddress)
        call eternalStorageAddress.setAddress(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 364 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 360] = arg1
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 392] = arg2
        emit 0x8a9dba1d: mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 360 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 64]
        mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 360] = 1
        return memory
          from Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1329 + 360
           len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x471aedc2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getRole(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
        revert with 0, 'Insufficient trust level'
    mem[64] = namespace.length + 296
    mem[namespace.length + 232] = 8
    mem[namespace.length + 264] = 'services'
    mem[0] = 2
    mem[namespace.length + 328] = uint256(namespace.field_0)
    idx = namespace.length + 328
    s = 0
    while Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 296 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _1330 = mem[namespace.length + 232]
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 len floor32(mem[namespace.length + 232])] = mem[namespace.length + 264 len floor32(mem[namespace.length + 232])]
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[namespace.length + 232]) + 328] = 256^(-(mem[namespace.length + 232] % 32) + 32) - 1 and mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[namespace.length + 232]) + 328] or mem[namespace.length + floor32(mem[namespace.length + 232]) + 264] and !(256^(-(mem[namespace.length + 232] % 32) + 32) - 1)
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 328] = arg1
    _1449 = mem[64]
    mem[mem[64]] = Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + -mem[64] + 328
    mem[64] = Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 360
    _1454 = mem[_1449]
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 360 len floor32(mem[_1449])] = mem[_1449 + 32 len floor32(mem[_1449])]
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + floor32(mem[_1449]) + 360] = mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + floor32(mem[_1449]) + 360] and 256^(-(mem[_1449] % 32) + 32) - 1 or mem[_1449 + floor32(mem[_1449]) + 32] and !(256^(-(mem[_1449] % 32) + 32) - 1)
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 364] = sha3(mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 360 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1454 - (2 * namespace.length)])
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 396] = arg2
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 364 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 360] = arg1
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 392] = arg2
    emit 0x8a9dba1d: mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 360 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 64]
    mem[Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 360] = 1
    return memory
      from Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1330 + 360
       len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 32
}

function sub_b1595763(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 8
    mem[ceil32(arg1.length) + 160] = 'services'
    mem[ceil32(arg1.length) + 224] = uint256(namespace.field_0)
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + namespace.length + 192 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + namespace.length + 224 len 0] = None
    mem[ceil32(arg1.length) + namespace.length + 224 len 8] = 'services'
    mem[ceil32(arg1.length) + namespace.length + 232] = 1
    mem[ceil32(arg1.length) + 192] = namespace.length + 40
    mem[ceil32(arg1.length) + namespace.length + 264 len floor32(namespace.length + 40)] = mem[ceil32(arg1.length) + 224 len namespace.length + 8], Mask(8 * floor32(namespace.length + 40) + -namespace.length - 8, -(8 * floor32(namespace.length + 40) + -namespace.length - 8) + 256, 1) << (8 * floor32(namespace.length + 40) + -namespace.length - 8) - 256
    mem[ceil32(arg1.length) + namespace.length + floor32(namespace.length + 40) + 264] = 256^(-(namespace.length + 40 % 32) + 32) - 1 and mem[ceil32(arg1.length) + namespace.length + floor32(namespace.length + 40) + 264] or Mask(8 * -floor32(namespace.length + 40) + namespace.length + 40, 0, 1), mem[ceil32(arg1.length) + 224 len floor32(namespace.length + 40) + -namespace.length - 8] and !(256^(-(namespace.length + 40 % 32) + 32) - 1)
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[ceil32(arg1.length) + 224 len namespace.length + 8], Mask(8 * floor32(namespace.length + 40) + -namespace.length - 8, -(8 * floor32(namespace.length + 40) + -namespace.length - 8) + 256, 1) << (8 * floor32(namespace.length + 40) + -namespace.length - 8) - 256, mem[ceil32(arg1.length) + namespace.length + floor32(namespace.length + 40) + 264 len namespace.length + -floor32(namespace.length + 40) + 40])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(this.address)
    call this.address.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == msg.sender:
        mem[64] = ceil32(arg1.length) + namespace.length + 328
        mem[ceil32(arg1.length) + namespace.length + 264] = 22
        mem[ceil32(arg1.length) + namespace.length + 296] = 0x657552657461696c496e766573746f7273436f756e74000000000000000000
        mem[0] = 2
        mem[ceil32(arg1.length) + namespace.length + 360] = uint256(namespace.field_0)
        idx = ceil32(arg1.length) + namespace.length + 360
        s = 0
        while ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 > idx:
            mem[idx + 32] = namespace[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1574 = mem[ceil32(arg1.length) + namespace.length + 264]
        mem[ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 360 len floor32(mem[ceil32(arg1.length) + namespace.length + 264])] = mem[ceil32(arg1.length) + namespace.length + 296 len floor32(mem[ceil32(arg1.length) + namespace.length + 264])]
        mem[ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[ceil32(arg1.length) + namespace.length + 264]) + 360] = 256^(-(mem[ceil32(arg1.length) + namespace.length + 264] % 32) + 32) - 1 and mem[ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[ceil32(arg1.length) + namespace.length + 264]) + 360] or mem[ceil32(arg1.length) + namespace.length + floor32(mem[ceil32(arg1.length) + namespace.length + 264]) + 296] and !(256^(-(mem[ceil32(arg1.length) + namespace.length + 264] % 32) + 32) - 1)
        _1744 = mem[96]
        mem[ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + 360 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + floor32(mem[96]) + -(mem[96] % 32) + 392 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _1826 = mem[64]
        mem[mem[64]] = _1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + -mem[64] + 328
        mem[64] = _1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + 360
        _1833 = mem[_1826]
        mem[_1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + 360 len floor32(mem[_1826])] = mem[_1826 + 32 len floor32(mem[_1826])]
        mem[_1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + floor32(mem[_1826]) + 360] = mem[_1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + floor32(mem[_1826]) + 360] and 256^(-(mem[_1826] % 32) + 32) - 1 or mem[_1826 + floor32(mem[_1826]) + 32] and !(256^(-(mem[_1826] % 32) + 32) - 1)
        mem[_1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + 364] = sha3(mem[_1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + 360 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1833 - (2 * namespace.length)])
        mem[_1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + 396] = arg2
        require ext_code.size(eternalStorageAddress)
        call eternalStorageAddress.setUint(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[_1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + 364 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + 360] = 1
        return memory
          from _1744 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1574 + 360
           len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x471aedc2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getRole(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
        revert with 0, 'Insufficient trust level'
    mem[64] = ceil32(arg1.length) + namespace.length + 328
    mem[ceil32(arg1.length) + namespace.length + 264] = 22
    mem[ceil32(arg1.length) + namespace.length + 296] = 0x657552657461696c496e766573746f7273436f756e74000000000000000000
    mem[0] = 2
    mem[ceil32(arg1.length) + namespace.length + 360] = uint256(namespace.field_0)
    idx = ceil32(arg1.length) + namespace.length + 360
    s = 0
    while ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 328 > idx:
        mem[idx + 32] = namespace[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _1575 = mem[ceil32(arg1.length) + namespace.length + 264]
    mem[ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + 360 len floor32(mem[ceil32(arg1.length) + namespace.length + 264])] = mem[ceil32(arg1.length) + namespace.length + 296 len floor32(mem[ceil32(arg1.length) + namespace.length + 264])]
    mem[ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[ceil32(arg1.length) + namespace.length + 264]) + 360] = 256^(-(mem[ceil32(arg1.length) + namespace.length + 264] % 32) + 32) - 1 and mem[ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + floor32(mem[ceil32(arg1.length) + namespace.length + 264]) + 360] or mem[ceil32(arg1.length) + namespace.length + floor32(mem[ceil32(arg1.length) + namespace.length + 264]) + 296] and !(256^(-(mem[ceil32(arg1.length) + namespace.length + 264] % 32) + 32) - 1)
    _1760 = mem[96]
    mem[ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + 360 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + floor32(mem[96]) + -(mem[96] % 32) + 392 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _1830 = mem[64]
    mem[mem[64]] = _1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + -mem[64] + 328
    mem[64] = _1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + 360
    _1835 = mem[_1830]
    mem[_1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + 360 len floor32(mem[_1830])] = mem[_1830 + 32 len floor32(mem[_1830])]
    mem[_1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + floor32(mem[_1830]) + 360] = mem[_1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + floor32(mem[_1830]) + 360] and 256^(-(mem[_1830] % 32) + 32) - 1 or mem[_1830 + floor32(mem[_1830]) + 32] and !(256^(-(mem[_1830] % 32) + 32) - 1)
    mem[_1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + 364] = sha3(mem[_1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + 360 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1835 - (2 * namespace.length)])
    mem[_1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + 396] = arg2
    require ext_code.size(eternalStorageAddress)
    call eternalStorageAddress.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[_1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + 364 len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + 360] = 1
    return memory
      from _1760 + ceil32(arg1.length) + Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + _1575 + 360
       len Mask(255, 1, (256 * not bool(namespace.length)) - 1 and namespace.length) + (-2 * namespace.length) + 32
}



}
