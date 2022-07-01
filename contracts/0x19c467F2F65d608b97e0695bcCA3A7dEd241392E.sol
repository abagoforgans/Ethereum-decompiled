contract main {




// =====================  Runtime code  =====================


#
#  - sub_a8e6c14a(?)
#
const name = Array(len=43, data=0xfe4e656f6e20446973747269637420466f756e64657273204b6579204974656d20426f7820466163746f72, mem[171 len 21], mem[213 len 11])

const symbol = 'NDKEYBOXF'

const supportsFactoryInterface = 1


address owner;
mapping of uint8 stor1;
uint256 numOptions;
array of uint256 sub_1ae048c5;
array of uint256 sub_73de6692;
array of uint256 stor16;
array of struct sub_6f9220b0;
uint8 stor2;
array of uint256 items;
array of uint256 stor23;
array of uint256 sub_bcbc9479;
uint256 stor25;
array of struct baseTokenURI;
uint256 stor3;
address proxyRegistryAddress;
address nftAddress;
address sub_55ac951bAddress;
uint256 sub_d0d87008;
array of uint256 sub_318102a6;

function sub_1ae048c5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1ae048c5.length
    return sub_1ae048c5[arg1]
}

function sub_318102a6(?) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_318102a6[arg1]
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function numOptions() {
    return numOptions
}

function sub_55ac951b(?) {
    return sub_55ac951bAddress
}

function nftAddress() {
    return nftAddress
}

function paused() {
    return bool(stor2)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return owner
}

function sub_6f9220b0(?) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_6f9220b0[arg1].field_0
}

function sub_73de6692(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_73de6692.length
    return sub_73de6692[arg1]
}

function owner() {
    return owner
}

function sub_bcbc9479(?) {
    require calldata.size - 4 >= 64
    require arg2 < 5
    return sub_bcbc9479[arg1][arg2]
}

function items(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < items.length
    return items[arg1]
}

function proxyRegistryAddress() {
    return proxyRegistryAddress
}

function sub_d0d87008(?) {
    return sub_d0d87008
}

function baseTokenURI() {
    return baseTokenURI[0 len baseTokenURI.length].field_0
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function canMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    return not bool(stor2)
}

function sub_96c41c57(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor25 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8f5a8c44(?) {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    sub_d0d87008 = cd[4]
    idx = 0
    while idx < 5:
        sub_318102a6[idx] = cd[((32 * idx) + 36)]
        idx = idx + 1
        continue 
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_bee7064f(?) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    idx = 0
    while idx < 5:
        sub_6f9220b0[idx].field_0 = uint16(cd[((32 * idx) + 4)])
        sub_6f9220b0[idx].field_16 = 0
        idx = idx + 1
        continue 
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ce630970(?) {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    idx = 0
    while idx < 5:
        mem[0] = cd[4]
        mem[32] = 16
        stor16[cd[4]][0.0625 / idx] = uint16(cd[((32 * idx) + 36)]) * 256^(2 * idx % 16) or !(65535 * 256^(2 * idx % 16)) and stor16[cd[4]][0.0625 / idx]
        idx = idx + 1
        continue 
}

function sub_38e32d4e(?) {
    require calldata.size - 4 >= 96
    if arg2 <= 0:
        return 0
    require arg2 < 5
    require 2^arg3
    if uint16(stor('array', ('div', 0.0625, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'stor16', 16)))[uint8(arg2)] / 2^arg3):
        return uint16(stor('array', ('div', 0.0625, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'stor16', 16)))[uint8(arg2)] / 2^arg3)
    return 1
}

function getPrice(uint16 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_1ae048c5.length:
        mem[0] = 14
        if sub_1ae048c5[idx] != arg1:
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_1ae048c5.length:
            mem[0] = 14
            if sub_1ae048c5[idx] != arg1:
                idx = idx + 1
                continue 
            require idx < sub_73de6692.length
            return sub_73de6692[idx]
        return 0
    revert with 0, 'Number of packs not supported'
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != arg1:
        return 0
    if arg1 != arg2:
        if owner != arg1:
            return 0
        require ext_code.size(proxyRegistryAddress)
        staticcall proxyRegistryAddress.proxies(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg2:
            return 0
    return 1
}

function setBaseTokenURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    baseTokenURI.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        baseTokenURI[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while baseTokenURI.length + 31 / 32 > idx:
        baseTokenURI[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_51d26723(?) {
    require msg.sender == owner
    require ext_code.size(nftAddress)
    staticcall nftAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Must mint boss first!'
    require ext_code.size(nftAddress)
    call nftAddress.0xb723b34e with:
         gas gas_remaining wei
        args 1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0, 'Boss created with wrong ID'
}

function sub_ae5861b7(?) {
    require calldata.size - 4 >= 96
    idx = 4
    s = arg3
    while idx > 0:
        require idx < 5
        mem[0] = arg1
        mem[32] = 24
        require sub_6f9220b0[idx].field_0
        if idx <= 0:
            if uint16(s) >= 0:
                idx = idx - 1
                s = s
                continue 
        else:
            mem[0] = arg2
            mem[32] = 16
            require idx < 5
            require 2^(sub_bcbc9479[arg1][idx] / sub_6f9220b0[idx].field_0)
            if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('param', 'arg2'), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[arg1][idx] / sub_6f9220b0[idx].field_0)):
                if uint16(s) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('param', 'arg2'), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[arg1][idx] / sub_6f9220b0[idx].field_0)):
                    idx = idx - 1
                    s = s - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('param', 'arg2'), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[arg1][idx] / sub_6f9220b0[idx].field_0))
                    continue 
            else:
                if uint16(s) >= 1:
                    idx = idx - 1
                    s = s - 1
                    continue 
        return idx
    return 0
}

function sub_b90053dd(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require msg.sender == owner
    if ('cd', 36).length != cd[4]:
        revert with 0, 'Must have correct option count'
    if ('cd', 68).length != cd[4]:
        revert with 0, 'Must have correct option count'
    numOptions = cd[4]
    sub_1ae048c5.length = cd[4]
    if sub_1ae048c5.length > cd[4]:
        idx = cd[4]
        while sub_1ae048c5.length > idx:
            sub_1ae048c5[idx] = 0
            idx = idx + 1
            continue 
    sub_73de6692.length = cd[4]
    if sub_73de6692.length > cd[4]:
        idx = cd[4]
        while sub_73de6692.length > idx:
            sub_73de6692[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < cd[4]:
        require idx < ('cd', 36).length
        require idx < sub_1ae048c5.length
        sub_1ae048c5[idx] = cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 68).length
        require idx < sub_73de6692.length
        mem[0] = 15
        sub_73de6692[idx] = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
}

function sub_e6c0f980(?) {
    require calldata.size - 4 >= 192
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require msg.sender == owner
    items.length++
    items[items.length] = cd[4]
    idx = 0
    while idx < ('cd', 36).length:
        mem[32] = sha3(cd[4], 23)
        stor23[cd[4]][0]++
        mem[0] = sha3(0, sha3(cd[4], 23))
        stor23[cd[4]][0][stor23[cd[4]][0]] = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 68).length:
        mem[32] = sha3(cd[4], 23)
        stor23[cd[4]][1]++
        mem[0] = sha3(1, sha3(cd[4], 23))
        stor23[cd[4]][1][stor23[cd[4]][1]] = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 100).length:
        mem[32] = sha3(cd[4], 23)
        stor23[cd[4]][2]++
        mem[0] = sha3(2, sha3(cd[4], 23))
        stor23[cd[4]][2][stor23[cd[4]][2]] = cd[((32 * idx) + cd[100] + 36)]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 132).length:
        mem[32] = sha3(cd[4], 23)
        stor23[cd[4]][3]++
        mem[0] = sha3(3, sha3(cd[4], 23))
        stor23[cd[4]][3][stor23[cd[4]][3]] = cd[((32 * idx) + cd[132] + 36)]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 164).length:
        mem[32] = sha3(cd[4], 23)
        stor23[cd[4]][4]++
        mem[0] = sha3(4, sha3(cd[4], 23))
        stor23[cd[4]][4][stor23[cd[4]][4]] = cd[((32 * idx) + cd[164] + 36)]
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = baseTokenURI.length
    mem[0] = 26
    mem[128] = uint256(baseTokenURI.field_0)
    idx = 128
    s = 0
    while baseTokenURI.length + 96 > idx:
        mem[idx + 32] = baseTokenURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[ceil32(baseTokenURI.length) + 128] = 1
        mem[ceil32(baseTokenURI.length) + 160] = '0'
        mem[ceil32(baseTokenURI.length) + 192] = 0
        mem[ceil32(baseTokenURI.length) + 224] = 0
        mem[ceil32(baseTokenURI.length) + 256] = 0
        mem[ceil32(baseTokenURI.length) + 288] = baseTokenURI.length + 1
        mem[64] = ceil32(baseTokenURI.length) + floor32(baseTokenURI.length + 32) + 320
        if not baseTokenURI.length + 1:
            idx = 0
            s = 0
            while idx < baseTokenURI.length:
                require idx < baseTokenURI.length
                require s < baseTokenURI.length + 1
                mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = baseTokenURI.length
            while idx < 1:
                require idx < 1
                require s < baseTokenURI.length + 1
                mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
            while idx < mem[ceil32(baseTokenURI.length) + 192]:
                require idx < mem[ceil32(baseTokenURI.length) + 192]
                require s < mem[ceil32(baseTokenURI.length) + 288]
                mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
            while idx < mem[ceil32(baseTokenURI.length) + 224]:
                require idx < mem[ceil32(baseTokenURI.length) + 224]
                require s < mem[ceil32(baseTokenURI.length) + 288]
                mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128] + mem[ceil32(baseTokenURI.length) + 224]
            while idx < mem[ceil32(baseTokenURI.length) + 256]:
                require idx < mem[ceil32(baseTokenURI.length) + 256]
                require s < mem[ceil32(baseTokenURI.length) + 288]
                mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + 288]
            _2448 = mem[ceil32(baseTokenURI.length) + 288]
            mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + 288])] = mem[ceil32(baseTokenURI.length) + 320 len ceil32(mem[ceil32(baseTokenURI.length) + 288])]
            var38001 = ceil32(_2448)
            if not _2448 % 32:
                return 32, mem[mem[64] + 32 len _2448 + 32]
            mem[floor32(_2448) + mem[64] + 64] = mem[floor32(_2448) + mem[64] + -(_2448 % 32) + 96 len _2448 % 32]
            return 32, mem[mem[64] + 32 len floor32(_2448) + 64]
        mem[ceil32(baseTokenURI.length) + 320 len baseTokenURI.length + 1] = code.data[17679 len baseTokenURI.length + 1]
        idx = 0
        s = 0
        while idx < baseTokenURI.length:
            require idx < baseTokenURI.length
            require s < baseTokenURI.length + 1
            mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = baseTokenURI.length
        while idx < 1:
            require idx < 1
            require s < baseTokenURI.length + 1
            mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
        while idx < mem[ceil32(baseTokenURI.length) + 192]:
            require idx < mem[ceil32(baseTokenURI.length) + 192]
            require s < mem[ceil32(baseTokenURI.length) + 288]
            mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
        while idx < mem[ceil32(baseTokenURI.length) + 224]:
            require idx < mem[ceil32(baseTokenURI.length) + 224]
            require s < mem[ceil32(baseTokenURI.length) + 288]
            mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128] + mem[ceil32(baseTokenURI.length) + 224]
        while idx < mem[ceil32(baseTokenURI.length) + 256]:
            require idx < mem[ceil32(baseTokenURI.length) + 256]
            require s < mem[ceil32(baseTokenURI.length) + 288]
            mem[ceil32(baseTokenURI.length) + s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + 288]
        _2451 = mem[ceil32(baseTokenURI.length) + 288]
        mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + 288])] = mem[ceil32(baseTokenURI.length) + 320 len ceil32(mem[ceil32(baseTokenURI.length) + 288])]
        var39001 = ceil32(_2451)
        if not _2451 % 32:
            return 32, mem[mem[64] + 32 len _2451 + 32]
        mem[floor32(_2451) + mem[64] + 64] = mem[floor32(_2451) + mem[64] + -(_2451 % 32) + 96 len _2451 % 32]
        return 32, mem[mem[64] + 32 len floor32(_2451) + 64]
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[ceil32(baseTokenURI.length) + 128] = s
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[ceil32(baseTokenURI.length) + t + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] = 0
        mem[ceil32(baseTokenURI.length) + ceil32(s) + 192] = 0
        mem[ceil32(baseTokenURI.length) + ceil32(s) + 224] = 0
        mem[ceil32(baseTokenURI.length) + ceil32(s) + 256] = baseTokenURI.length + s
        mem[64] = ceil32(baseTokenURI.length) + ceil32(s) + floor32(baseTokenURI.length + s + 31) + 288
        if not baseTokenURI.length + s:
            idx = 0
            t = 0
            while idx < baseTokenURI.length:
                require idx < baseTokenURI.length
                require t < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            t = 0
            u = baseTokenURI.length
            while t < s:
                require t < s
                require u < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + u + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 2)), 32))), 0) - 256
                t = t + 1
                u = u + 1
                continue 
            idx = 0
            t = baseTokenURI.length + s
            while idx < 0:
                require idx < 0
                require t < baseTokenURI.length + s
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            idx = 0
            t = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128] + mem[ceil32(baseTokenURI.length) + ceil32(s) + 160]
            while idx < 0:
                require idx < mem[ceil32(baseTokenURI.length) + ceil32(s) + 192]
                require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
                mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                t = t + 1
                continue 
            t = 0
            u = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
            while t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]:
                require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]
                require u < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
                mem[ceil32(baseTokenURI.length) + ceil32(s) + u + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 2)), 32))), 0) - 256
                t = t + 1
                u = u + 1
                continue 
            _2768 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            _2770 = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])]
            if not _2770 % 32:
                return 32, mem[mem[64] + 32 len _2770 + 32]
            mem[floor32(_2770) + mem[64] + 64] = mem[floor32(_2770) + mem[64] + -(_2770 % 32) + 96 len _2770 % 32]
            return memory
              from mem[64]
               len floor32(_2770) + _2768 + -mem[64] + 96
        mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len baseTokenURI.length + s] = code.data[17679 len baseTokenURI.length + s]
        idx = 0
        t = 0
        while idx < baseTokenURI.length:
            require idx < baseTokenURI.length
            require t < baseTokenURI.length + s
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        t = 0
        u = baseTokenURI.length
        while t < s:
            require t < s
            require u < baseTokenURI.length + s
            mem[ceil32(baseTokenURI.length) + ceil32(s) + u + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 2)), 32))), 0) - 256
            t = t + 1
            u = u + 1
            continue 
        idx = 0
        t = baseTokenURI.length + s
        while idx < 0:
            require idx < 0
            require t < baseTokenURI.length + s
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        idx = 0
        t = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128] + mem[ceil32(baseTokenURI.length) + ceil32(s) + 160]
        while idx < 0:
            require idx < mem[ceil32(baseTokenURI.length) + ceil32(s) + 192]
            require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        t = 0
        u = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
        while t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]:
            require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]
            require u < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            mem[ceil32(baseTokenURI.length) + ceil32(s) + u + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 2)), 32))), 0) - 256
            t = t + 1
            u = u + 1
            continue 
        _2771 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
        _2773 = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
        mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])]
        if not _2773 % 32:
            return 32, mem[mem[64] + 32 len _2773 + 32]
        mem[floor32(_2773) + mem[64] + 64] = mem[floor32(_2773) + mem[64] + -(_2773 % 32) + 96 len _2773 % 32]
        return memory
          from mem[64]
           len floor32(_2773) + _2771 + -mem[64] + 96
    mem[ceil32(baseTokenURI.length) + 160 len s] = code.data[17679 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[ceil32(baseTokenURI.length) + t + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] = 0
    mem[ceil32(baseTokenURI.length) + ceil32(s) + 192] = 0
    mem[ceil32(baseTokenURI.length) + ceil32(s) + 224] = 0
    mem[ceil32(baseTokenURI.length) + ceil32(s) + 256] = baseTokenURI.length + s
    mem[64] = ceil32(baseTokenURI.length) + ceil32(s) + floor32(baseTokenURI.length + s + 31) + 288
    if not baseTokenURI.length + s:
        idx = 0
        t = 0
        while idx < baseTokenURI.length:
            require idx < baseTokenURI.length
            require t < baseTokenURI.length + s
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        t = 0
        u = baseTokenURI.length
        while t < s:
            require t < s
            require u < baseTokenURI.length + s
            mem[ceil32(baseTokenURI.length) + ceil32(s) + u + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 2)), 32))), 0) - 256
            t = t + 1
            u = u + 1
            continue 
        idx = 0
        t = baseTokenURI.length + s
        while idx < 0:
            require idx < 0
            require t < baseTokenURI.length + s
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        idx = 0
        t = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128] + mem[ceil32(baseTokenURI.length) + ceil32(s) + 160]
        while idx < 0:
            require idx < mem[ceil32(baseTokenURI.length) + ceil32(s) + 192]
            require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            t = t + 1
            continue 
        t = 0
        u = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
        while t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]:
            require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]
            require u < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
            mem[ceil32(baseTokenURI.length) + ceil32(s) + u + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 2)), 32))), 0) - 256
            t = t + 1
            u = u + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
        _2776 = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
        mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])]
        if not _2776 % 32:
            return 32, mem[mem[64] + 32 len _2776 + 32]
        mem[floor32(_2776) + mem[64] + 64] = mem[floor32(_2776) + mem[64] + -(_2776 % 32) + 96 len _2776 % 32]
        return 32, mem[mem[64] + 32 len floor32(_2776) + 64]
    mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len baseTokenURI.length + s] = code.data[17679 len baseTokenURI.length + s]
    idx = 0
    t = 0
    while idx < baseTokenURI.length:
        require idx < baseTokenURI.length
        require t < baseTokenURI.length + s
        mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        t = t + 1
        continue 
    t = 0
    u = baseTokenURI.length
    while t < s:
        require t < s
        require u < baseTokenURI.length + s
        mem[ceil32(baseTokenURI.length) + ceil32(s) + u + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('var', 2)), 32))), 0) - 256
        t = t + 1
        u = u + 1
        continue 
    idx = 0
    t = baseTokenURI.length + s
    while idx < 0:
        require idx < 0
        require t < baseTokenURI.length + s
        mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        t = t + 1
        continue 
    idx = 0
    t = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128] + mem[ceil32(baseTokenURI.length) + ceil32(s) + 160]
    while idx < 0:
        require idx < mem[ceil32(baseTokenURI.length) + ceil32(s) + 192]
        require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
        mem[ceil32(baseTokenURI.length) + ceil32(s) + t + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        t = t + 1
        continue 
    t = 0
    u = baseTokenURI.length + mem[ceil32(baseTokenURI.length) + 128]
    while t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]:
        require t < mem[ceil32(baseTokenURI.length) + ceil32(s) + 224]
        require u < mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
        mem[ceil32(baseTokenURI.length) + ceil32(s) + u + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'baseTokenURI', 26))))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1))), ('var', 2)), 32))), 0) - 256
        t = t + 1
        u = u + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
    _2779 = mem[ceil32(baseTokenURI.length) + ceil32(s) + 256]
    mem[mem[64] + 64 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 256])]
    if not _2779 % 32:
        return 32, mem[mem[64] + 32 len _2779 + 32]
    mem[floor32(_2779) + mem[64] + 64] = mem[floor32(_2779) + mem[64] + -(_2779 % 32) + 96 len _2779 % 32]
    return 32, mem[mem[64] + 32 len floor32(_2779) + 64]
}

function mint(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require not stor2
    if arg1 >= numOptions:
        revert with 0, 'Invalid option id'
    require arg1 < sub_73de6692.length
    if sub_73de6692[arg1] != msg.value:
        revert with 0, 'Invalid payment for option'
    require ext_code.size(proxyRegistryAddress)
    staticcall proxyRegistryAddress.proxies(address arg1) with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == msg.sender:
        require arg1 < sub_1ae048c5.length
        mem[0] = 14
        stor3++
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.hasKey(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Must have Founder's Key to mint'
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0xdcf6a41b with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0x5a018127 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp > sub_d0d87008:
            revert with 0, 'Sale has ended'
        require ext_call.return_data[0] < 5
        if block.timestamp < sub_318102a6[ext_call.return_data[0]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7953616c6520686173206e6f74207374617274656420666f72206b657920636c6173,
                        mem[198 len 30]
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0xaf0573a8 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Founder's key must be engaged'
        mem[128] = stor25
        mem[160] = block.hash(block.number - 1)
        mem[192] = msg.sender
        mem[96] = 96
        mem[64] = 224
        idx = 0
        while idx < sub_1ae048c5[arg1]:
            if idx <= 0:
                s = 0
                t = 0
                while s < 4:
                    if t >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 1 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 2 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    require items.length
                    require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length < items.length
                    idx = 4
                    u = sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 1)
                    while idx > 0:
                        require idx < 5
                        mem[0] = items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length]
                        mem[32] = 24
                        require sub_6f9220b0[idx].field_0
                        if idx <= 0:
                            if uint16(u) >= 0:
                                idx = idx - 1
                                u = u
                                continue 
                        else:
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 16
                            require idx < 5
                            require 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                            if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    idx = idx - 1
                                    u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                    continue 
                            else:
                                if uint16(u) >= 1:
                                    idx = idx - 1
                                    u = u - 1
                                    continue 
                        require idx < 5
                        sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]++
                        mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                        require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                        mem[0] = sha3(idx, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]]
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]], address(arg2), ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                    sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]]++
                    mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                    require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                    require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                    mem[0] = sha3(0, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                    mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    require ext_code.size(nftAddress)
                    call nftAddress.0x3d3161c0 with:
                         gas gas_remaining wei
                        args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]], address(arg2), ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = s + 1
                    t = t + 3
                    continue 
            else:
                mem[mem[64] + 32] = sha3(stor25, block.hash(block.number - 1), msg.sender)
                _165 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _167 = sha3(mem[_165 + 32 len mem[_165]])
                s = 0
                t = 0
                while s < 4:
                    if t >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 1 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 2 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    require items.length
                    require uint16(_167 / 2^(16 * t)) % items.length < items.length
                    idx = 4
                    u = _167 / 2^(16 * t + 1)
                    while idx > 0:
                        require idx < 5
                        mem[0] = items[uint16(_167 / 2^(16 * t)) % items.length]
                        mem[32] = 24
                        require sub_6f9220b0[idx].field_0
                        if idx <= 0:
                            if uint16(u) >= 0:
                                idx = idx - 1
                                u = u
                                continue 
                        else:
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 16
                            require idx < 5
                            require 2^(sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                            if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    idx = idx - 1
                                    u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                    continue 
                            else:
                                if uint16(u) >= 1:
                                    idx = idx - 1
                                    u = u - 1
                                    continue 
                        require idx < 5
                        sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx]++
                        mem[32] = sha3(items[uint16(_167 / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx]
                        require uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx]
                        mem[0] = sha3(idx, sha3(items[uint16(_167 / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx][uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx]]
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx][uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx]], address(arg2), ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                    sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]]++
                    mem[32] = sha3(items[uint16(_167 / 2^(16 * t)) % items.length], 23)
                    require stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0]
                    require uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0]
                    mem[0] = sha3(0, sha3(items[uint16(_167 / 2^(16 * t)) % items.length], 23))
                    mem[mem[64] + 4] = stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0][uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0]]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    require ext_code.size(nftAddress)
                    call nftAddress.0x3d3161c0 with:
                         gas gas_remaining wei
                        args stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0][uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0]], address(arg2), ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = s + 1
                    t = t + 3
                    continue 
            idx = idx + 1
            continue 
    else:
        require owner == msg.sender
        require arg1 < sub_1ae048c5.length
        mem[0] = 14
        stor3++
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.hasKey(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Must have Founder's Key to mint'
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0xdcf6a41b with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0x5a018127 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp > sub_d0d87008:
            revert with 0, 'Sale has ended'
        require ext_call.return_data[0] < 5
        if block.timestamp < sub_318102a6[ext_call.return_data[0]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7953616c6520686173206e6f74207374617274656420666f72206b657920636c6173,
                        mem[198 len 30]
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0xaf0573a8 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Founder's key must be engaged'
        mem[128] = stor25
        mem[160] = block.hash(block.number - 1)
        mem[192] = msg.sender
        mem[96] = 96
        mem[64] = 224
        idx = 0
        while idx < sub_1ae048c5[arg1]:
            if idx <= 0:
                s = 0
                t = 0
                while s < 4:
                    if t >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 1 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 2 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    require items.length
                    require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length < items.length
                    idx = 4
                    u = sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 1)
                    while idx > 0:
                        require idx < 5
                        mem[0] = items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length]
                        mem[32] = 24
                        require sub_6f9220b0[idx].field_0
                        if idx <= 0:
                            if uint16(u) >= 0:
                                idx = idx - 1
                                u = u
                                continue 
                        else:
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 16
                            require idx < 5
                            require 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                            if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    idx = idx - 1
                                    u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                    continue 
                            else:
                                if uint16(u) >= 1:
                                    idx = idx - 1
                                    u = u - 1
                                    continue 
                        require idx < 5
                        sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]++
                        mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                        require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                        mem[0] = sha3(idx, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]]
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]], address(arg2), ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                    sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]]++
                    mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                    require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                    require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                    mem[0] = sha3(0, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                    mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    require ext_code.size(nftAddress)
                    call nftAddress.0x3d3161c0 with:
                         gas gas_remaining wei
                        args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]], address(arg2), ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = s + 1
                    t = t + 3
                    continue 
            else:
                mem[mem[64] + 32] = sha3(stor25, block.hash(block.number - 1), msg.sender)
                _169 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _171 = sha3(mem[_169 + 32 len mem[_169]])
                s = 0
                t = 0
                while s < 4:
                    if t >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 1 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 2 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    require items.length
                    require uint16(_171 / 2^(16 * t)) % items.length < items.length
                    idx = 4
                    u = _171 / 2^(16 * t + 1)
                    while idx > 0:
                        require idx < 5
                        mem[0] = items[uint16(_171 / 2^(16 * t)) % items.length]
                        mem[32] = 24
                        require sub_6f9220b0[idx].field_0
                        if idx <= 0:
                            if uint16(u) >= 0:
                                idx = idx - 1
                                u = u
                                continue 
                        else:
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 16
                            require idx < 5
                            require 2^(sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                            if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    idx = idx - 1
                                    u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                    continue 
                            else:
                                if uint16(u) >= 1:
                                    idx = idx - 1
                                    u = u - 1
                                    continue 
                        require idx < 5
                        sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx]++
                        mem[32] = sha3(items[uint16(_171 / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx]
                        require uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx]
                        mem[0] = sha3(idx, sha3(items[uint16(_171 / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx][uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx]]
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx][uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx]], address(arg2), ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                    sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]]++
                    mem[32] = sha3(items[uint16(_171 / 2^(16 * t)) % items.length], 23)
                    require stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0]
                    require uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0]
                    mem[0] = sha3(0, sha3(items[uint16(_171 / 2^(16 * t)) % items.length], 23))
                    mem[mem[64] + 4] = stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0][uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0]]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    require ext_code.size(nftAddress)
                    call nftAddress.0x3d3161c0 with:
                         gas gas_remaining wei
                        args stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0][uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0]], address(arg2), ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = s + 1
                    t = t + 3
                    continue 
            idx = idx + 1
            continue 
    stor25 = sha3(stor25, block.hash(block.number - 1), msg.sender)
    require stor3 == stor3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor2
    if arg3 >= numOptions:
        revert with 0, 'Invalid option id'
    require arg3 < sub_73de6692.length
    if sub_73de6692[arg3] != msg.value:
        revert with 0, 'Invalid payment for option'
    require ext_code.size(proxyRegistryAddress)
    staticcall proxyRegistryAddress.proxies(address arg1) with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == msg.sender:
        require arg3 < sub_1ae048c5.length
        mem[0] = 14
        stor3++
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.hasKey(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Must have Founder's Key to mint'
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0xdcf6a41b with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0x5a018127 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp > sub_d0d87008:
            revert with 0, 'Sale has ended'
        require ext_call.return_data[0] < 5
        if block.timestamp < sub_318102a6[ext_call.return_data[0]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7953616c6520686173206e6f74207374617274656420666f72206b657920636c6173,
                        mem[198 len 30]
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0xaf0573a8 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Founder's key must be engaged'
        mem[128] = stor25
        mem[160] = block.hash(block.number - 1)
        mem[192] = msg.sender
        mem[96] = 96
        mem[64] = 224
        idx = 0
        while idx < sub_1ae048c5[arg3]:
            if idx <= 0:
                s = 0
                t = 0
                while s < 4:
                    if t >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 1 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 2 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    require items.length
                    require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length < items.length
                    idx = 4
                    u = sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 1)
                    while idx > 0:
                        require idx < 5
                        mem[0] = items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length]
                        mem[32] = 24
                        require sub_6f9220b0[idx].field_0
                        if idx <= 0:
                            if uint16(u) >= 0:
                                idx = idx - 1
                                u = u
                                continue 
                        else:
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 16
                            require idx < 5
                            require 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                            if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    idx = idx - 1
                                    u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                    continue 
                            else:
                                if uint16(u) >= 1:
                                    idx = idx - 1
                                    u = u - 1
                                    continue 
                        require idx < 5
                        sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]++
                        mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                        require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                        mem[0] = sha3(idx, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]]
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]], address(arg2), ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                    sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]]++
                    mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                    require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                    require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                    mem[0] = sha3(0, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                    mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    require ext_code.size(nftAddress)
                    call nftAddress.0x3d3161c0 with:
                         gas gas_remaining wei
                        args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]], address(arg2), ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = s + 1
                    t = t + 3
                    continue 
            else:
                mem[mem[64] + 32] = sha3(stor25, block.hash(block.number - 1), msg.sender)
                _165 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _167 = sha3(mem[_165 + 32 len mem[_165]])
                s = 0
                t = 0
                while s < 4:
                    if t >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 1 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 2 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    require items.length
                    require uint16(_167 / 2^(16 * t)) % items.length < items.length
                    idx = 4
                    u = _167 / 2^(16 * t + 1)
                    while idx > 0:
                        require idx < 5
                        mem[0] = items[uint16(_167 / 2^(16 * t)) % items.length]
                        mem[32] = 24
                        require sub_6f9220b0[idx].field_0
                        if idx <= 0:
                            if uint16(u) >= 0:
                                idx = idx - 1
                                u = u
                                continue 
                        else:
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 16
                            require idx < 5
                            require 2^(sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                            if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    idx = idx - 1
                                    u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                    continue 
                            else:
                                if uint16(u) >= 1:
                                    idx = idx - 1
                                    u = u - 1
                                    continue 
                        require idx < 5
                        sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx]++
                        mem[32] = sha3(items[uint16(_167 / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx]
                        require uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx]
                        mem[0] = sha3(idx, sha3(items[uint16(_167 / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx][uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx]]
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx][uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][idx]], address(arg2), ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                    sub_bcbc9479[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]]++
                    mem[32] = sha3(items[uint16(_167 / 2^(16 * t)) % items.length], 23)
                    require stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0]
                    require uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0]
                    mem[0] = sha3(0, sha3(items[uint16(_167 / 2^(16 * t)) % items.length], 23))
                    mem[mem[64] + 4] = stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0][uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0]]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    require ext_code.size(nftAddress)
                    call nftAddress.0x3d3161c0 with:
                         gas gas_remaining wei
                        args stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0][uint16(_167 / 2^(16 * t + 2)) % stor23[stor22[uint16(_167 / 2^(16 * t)) % stor22.length]][0]], address(arg2), ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = s + 1
                    t = t + 3
                    continue 
            idx = idx + 1
            continue 
    else:
        require owner == msg.sender
        require arg3 < sub_1ae048c5.length
        mem[0] = 14
        stor3++
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.hasKey(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Must have Founder's Key to mint'
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0xdcf6a41b with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0x5a018127 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp > sub_d0d87008:
            revert with 0, 'Sale has ended'
        require ext_call.return_data[0] < 5
        if block.timestamp < sub_318102a6[ext_call.return_data[0]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7953616c6520686173206e6f74207374617274656420666f72206b657920636c6173,
                        mem[198 len 30]
        require ext_code.size(sub_55ac951bAddress)
        staticcall sub_55ac951bAddress.0xaf0573a8 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Founder's key must be engaged'
        mem[128] = stor25
        mem[160] = block.hash(block.number - 1)
        mem[192] = msg.sender
        mem[96] = 96
        mem[64] = 224
        idx = 0
        while idx < sub_1ae048c5[arg3]:
            if idx <= 0:
                s = 0
                t = 0
                while s < 4:
                    if t >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 1 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 2 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    require items.length
                    require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length < items.length
                    idx = 4
                    u = sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 1)
                    while idx > 0:
                        require idx < 5
                        mem[0] = items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length]
                        mem[32] = 24
                        require sub_6f9220b0[idx].field_0
                        if idx <= 0:
                            if uint16(u) >= 0:
                                idx = idx - 1
                                u = u
                                continue 
                        else:
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 16
                            require idx < 5
                            require 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                            if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    idx = idx - 1
                                    u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                    continue 
                            else:
                                if uint16(u) >= 1:
                                    idx = idx - 1
                                    u = u - 1
                                    continue 
                        require idx < 5
                        sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]++
                        mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                        require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                        mem[0] = sha3(idx, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]]
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]], address(arg2), ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                    sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]]++
                    mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                    require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                    require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                    mem[0] = sha3(0, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                    mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    require ext_code.size(nftAddress)
                    call nftAddress.0x3d3161c0 with:
                         gas gas_remaining wei
                        args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]], address(arg2), ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = s + 1
                    t = t + 3
                    continue 
            else:
                mem[mem[64] + 32] = sha3(stor25, block.hash(block.number - 1), msg.sender)
                _169 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _171 = sha3(mem[_169 + 32 len mem[_169]])
                s = 0
                t = 0
                while s < 4:
                    if t >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 1 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    if t + 2 >= 16:
                        revert with 0, 'uint16 index too high in uint256'
                    require items.length
                    require uint16(_171 / 2^(16 * t)) % items.length < items.length
                    idx = 4
                    u = _171 / 2^(16 * t + 1)
                    while idx > 0:
                        require idx < 5
                        mem[0] = items[uint16(_171 / 2^(16 * t)) % items.length]
                        mem[32] = 24
                        require sub_6f9220b0[idx].field_0
                        if idx <= 0:
                            if uint16(u) >= 0:
                                idx = idx - 1
                                u = u
                                continue 
                        else:
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 16
                            require idx < 5
                            require 2^(sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                            if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    idx = idx - 1
                                    u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                    continue 
                            else:
                                if uint16(u) >= 1:
                                    idx = idx - 1
                                    u = u - 1
                                    continue 
                        require idx < 5
                        sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx]++
                        mem[32] = sha3(items[uint16(_171 / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx]
                        require uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx]
                        mem[0] = sha3(idx, sha3(items[uint16(_171 / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx][uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx]]
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx][uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][idx]], address(arg2), ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                    sub_bcbc9479[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]]++
                    mem[32] = sha3(items[uint16(_171 / 2^(16 * t)) % items.length], 23)
                    require stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0]
                    require uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0]
                    mem[0] = sha3(0, sha3(items[uint16(_171 / 2^(16 * t)) % items.length], 23))
                    mem[mem[64] + 4] = stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0][uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0]]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    require ext_code.size(nftAddress)
                    call nftAddress.0x3d3161c0 with:
                         gas gas_remaining wei
                        args stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0][uint16(_171 / 2^(16 * t + 2)) % stor23[stor22[uint16(_171 / 2^(16 * t)) % stor22.length]][0]], address(arg2), ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = s + 1
                    t = t + 3
                    continue 
            idx = idx + 1
            continue 
    stor25 = sha3(stor25, block.hash(block.number - 1), msg.sender)
    require stor3 == stor3
}

function purchaseFor(address arg1, uint16 arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require not stor2
    idx = 0
    while idx < sub_1ae048c5.length:
        mem[0] = 14
        if sub_1ae048c5[idx] != arg2:
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_1ae048c5.length:
            mem[0] = 14
            if sub_1ae048c5[idx] != arg2:
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_1ae048c5.length:
                mem[0] = 14
                if sub_1ae048c5[idx] != arg2:
                    idx = idx + 1
                    continue 
                require idx < sub_73de6692.length
                mem[0] = 15
                if sub_73de6692[idx] != msg.value:
                    revert with 0, 'Invalid payment for option'
                stor3++
                require ext_code.size(sub_55ac951bAddress)
                staticcall sub_55ac951bAddress.hasKey(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Must have Founder's Key to mint'
                require ext_code.size(sub_55ac951bAddress)
                staticcall sub_55ac951bAddress.0xdcf6a41b with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_55ac951bAddress)
                staticcall sub_55ac951bAddress.0x5a018127 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp > sub_d0d87008:
                    revert with 0, 'Sale has ended'
                require ext_call.return_data[0] < 5
                if block.timestamp < sub_318102a6[ext_call.return_data[0]]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0x7953616c6520686173206e6f74207374617274656420666f72206b657920636c6173,
                                mem[198 len 30]
                require ext_code.size(sub_55ac951bAddress)
                staticcall sub_55ac951bAddress.0xaf0573a8 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Founder's key must be engaged'
                mem[128] = stor25
                mem[160] = block.hash(block.number - 1)
                mem[192] = msg.sender
                mem[96] = 96
                mem[64] = 224
                idx = 0
                while idx < arg2:
                    if idx <= 0:
                        s = 0
                        t = 0
                        while s < 4:
                            if t >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            if t + 1 >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            if t + 2 >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            require items.length
                            require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length < items.length
                            idx = 4
                            u = sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 1)
                            while idx > 0:
                                require idx < 5
                                mem[0] = items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length]
                                mem[32] = 24
                                require sub_6f9220b0[idx].field_0
                                if idx <= 0:
                                    if uint16(u) >= 0:
                                        idx = idx - 1
                                        u = u
                                        continue 
                                else:
                                    mem[0] = ext_call.return_data[0]
                                    mem[32] = 16
                                    require idx < 5
                                    require 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                                    if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                        if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                            idx = idx - 1
                                            u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                            continue 
                                    else:
                                        if uint16(u) >= 1:
                                            idx = idx - 1
                                            u = u - 1
                                            continue 
                                require idx < 5
                                sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]++
                                mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                                require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                                require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                                mem[0] = sha3(idx, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                                mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]]
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = ext_call.return_data[0]
                                require ext_code.size(nftAddress)
                                call nftAddress.0x3d3161c0 with:
                                     gas gas_remaining wei
                                    args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]], address(arg1), ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                s = s + 1
                                t = t + 3
                                continue 
                            sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]]++
                            mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                            require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                            require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                            mem[0] = sha3(0, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                            mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]]
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = ext_call.return_data[0]
                            require ext_code.size(nftAddress)
                            call nftAddress.0x3d3161c0 with:
                                 gas gas_remaining wei
                                args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]], address(arg1), ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 3
                            continue 
                    else:
                        mem[mem[64] + 32] = sha3(stor25, block.hash(block.number - 1), msg.sender)
                        _491 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        _493 = sha3(mem[_491 + 32 len mem[_491]])
                        s = 0
                        t = 0
                        while s < 4:
                            if t >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            if t + 1 >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            if t + 2 >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            require items.length
                            require uint16(_493 / 2^(16 * t)) % items.length < items.length
                            idx = 4
                            u = _493 / 2^(16 * t + 1)
                            while idx > 0:
                                require idx < 5
                                mem[0] = items[uint16(_493 / 2^(16 * t)) % items.length]
                                mem[32] = 24
                                require sub_6f9220b0[idx].field_0
                                if idx <= 0:
                                    if uint16(u) >= 0:
                                        idx = idx - 1
                                        u = u
                                        continue 
                                else:
                                    mem[0] = ext_call.return_data[0]
                                    mem[32] = 16
                                    require idx < 5
                                    require 2^(sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                                    if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                        if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                            idx = idx - 1
                                            u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                            continue 
                                    else:
                                        if uint16(u) >= 1:
                                            idx = idx - 1
                                            u = u - 1
                                            continue 
                                require idx < 5
                                sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx]++
                                mem[32] = sha3(items[uint16(_493 / 2^(16 * t)) % items.length], 23)
                                require stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx]
                                require uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx]
                                mem[0] = sha3(idx, sha3(items[uint16(_493 / 2^(16 * t)) % items.length], 23))
                                mem[mem[64] + 4] = stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx][uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx]]
                                mem[mem[64] + 36] = arg1
                                mem[mem[64] + 68] = ext_call.return_data[0]
                                require ext_code.size(nftAddress)
                                call nftAddress.0x3d3161c0 with:
                                     gas gas_remaining wei
                                    args stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx][uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx]], address(arg1), ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                s = s + 1
                                t = t + 3
                                continue 
                            sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]]++
                            mem[32] = sha3(items[uint16(_493 / 2^(16 * t)) % items.length], 23)
                            require stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0]
                            require uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0]
                            mem[0] = sha3(0, sha3(items[uint16(_493 / 2^(16 * t)) % items.length], 23))
                            mem[mem[64] + 4] = stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0][uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0]]
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = ext_call.return_data[0]
                            require ext_code.size(nftAddress)
                            call nftAddress.0x3d3161c0 with:
                                 gas gas_remaining wei
                                args stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0][uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0]], address(arg1), ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 3
                            continue 
                    idx = idx + 1
                    continue 
                stor25 = sha3(stor25, block.hash(block.number - 1), msg.sender)
                require stor3 == stor3
            if msg.value:
                revert with 0, 'Invalid payment for option'
            stor3++
            require ext_code.size(sub_55ac951bAddress)
            staticcall sub_55ac951bAddress.hasKey(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Must have Founder's Key to mint'
            require ext_code.size(sub_55ac951bAddress)
            staticcall sub_55ac951bAddress.0xdcf6a41b with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_55ac951bAddress)
            staticcall sub_55ac951bAddress.0x5a018127 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp > sub_d0d87008:
                revert with 0, 'Sale has ended'
            require ext_call.return_data[0] < 5
            if block.timestamp < sub_318102a6[ext_call.return_data[0]]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x7953616c6520686173206e6f74207374617274656420666f72206b657920636c6173,
                            mem[198 len 30]
            require ext_code.size(sub_55ac951bAddress)
            staticcall sub_55ac951bAddress.0xaf0573a8 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Founder's key must be engaged'
            mem[128] = stor25
            mem[160] = block.hash(block.number - 1)
            mem[192] = msg.sender
            mem[96] = 96
            mem[64] = 224
            idx = 0
            while idx < arg2:
                if idx <= 0:
                    s = 0
                    t = 0
                    while s < 4:
                        if t >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        if t + 1 >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        if t + 2 >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        require items.length
                        require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length < items.length
                        idx = 4
                        u = sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 1)
                        while idx > 0:
                            require idx < 5
                            mem[0] = items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length]
                            mem[32] = 24
                            require sub_6f9220b0[idx].field_0
                            if idx <= 0:
                                if uint16(u) >= 0:
                                    idx = idx - 1
                                    u = u
                                    continue 
                            else:
                                mem[0] = ext_call.return_data[0]
                                mem[32] = 16
                                require idx < 5
                                require 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                                if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                        idx = idx - 1
                                        u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                        continue 
                                else:
                                    if uint16(u) >= 1:
                                        idx = idx - 1
                                        u = u - 1
                                        continue 
                            require idx < 5
                            sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]++
                            mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                            require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                            require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                            mem[0] = sha3(idx, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                            mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]]
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = ext_call.return_data[0]
                            require ext_code.size(nftAddress)
                            call nftAddress.0x3d3161c0 with:
                                 gas gas_remaining wei
                                args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]], address(arg1), ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 3
                            continue 
                        sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]]++
                        mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                        require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                        mem[0] = sha3(0, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]]
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]], address(arg1), ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                else:
                    mem[mem[64] + 32] = sha3(stor25, block.hash(block.number - 1), msg.sender)
                    _487 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _489 = sha3(mem[_487 + 32 len mem[_487]])
                    s = 0
                    t = 0
                    while s < 4:
                        if t >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        if t + 1 >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        if t + 2 >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        require items.length
                        require uint16(_489 / 2^(16 * t)) % items.length < items.length
                        idx = 4
                        u = _489 / 2^(16 * t + 1)
                        while idx > 0:
                            require idx < 5
                            mem[0] = items[uint16(_489 / 2^(16 * t)) % items.length]
                            mem[32] = 24
                            require sub_6f9220b0[idx].field_0
                            if idx <= 0:
                                if uint16(u) >= 0:
                                    idx = idx - 1
                                    u = u
                                    continue 
                            else:
                                mem[0] = ext_call.return_data[0]
                                mem[32] = 16
                                require idx < 5
                                require 2^(sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                                if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                        idx = idx - 1
                                        u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                        continue 
                                else:
                                    if uint16(u) >= 1:
                                        idx = idx - 1
                                        u = u - 1
                                        continue 
                            require idx < 5
                            sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx]++
                            mem[32] = sha3(items[uint16(_489 / 2^(16 * t)) % items.length], 23)
                            require stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx]
                            require uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx]
                            mem[0] = sha3(idx, sha3(items[uint16(_489 / 2^(16 * t)) % items.length], 23))
                            mem[mem[64] + 4] = stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx][uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx]]
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = ext_call.return_data[0]
                            require ext_code.size(nftAddress)
                            call nftAddress.0x3d3161c0 with:
                                 gas gas_remaining wei
                                args stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx][uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx]], address(arg1), ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 3
                            continue 
                        sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]]++
                        mem[32] = sha3(items[uint16(_489 / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0]
                        require uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0]
                        mem[0] = sha3(0, sha3(items[uint16(_489 / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0][uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0]]
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0][uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0]], address(arg1), ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                idx = idx + 1
                continue 
            stor25 = sha3(stor25, block.hash(block.number - 1), msg.sender)
            require stor3 == stor3
        revert with 0, 'Number of packs not supported'
    revert with 0, 'Number of packs not supported'
}

function purchase(uint16 arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require not stor2
    idx = 0
    while idx < sub_1ae048c5.length:
        mem[0] = 14
        if sub_1ae048c5[idx] != arg1:
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_1ae048c5.length:
            mem[0] = 14
            if sub_1ae048c5[idx] != arg1:
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_1ae048c5.length:
                mem[0] = 14
                if sub_1ae048c5[idx] != arg1:
                    idx = idx + 1
                    continue 
                require idx < sub_73de6692.length
                mem[0] = 15
                if sub_73de6692[idx] != msg.value:
                    revert with 0, 'Invalid payment for option'
                stor3++
                require ext_code.size(sub_55ac951bAddress)
                staticcall sub_55ac951bAddress.hasKey(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Must have Founder's Key to mint'
                require ext_code.size(sub_55ac951bAddress)
                staticcall sub_55ac951bAddress.0xdcf6a41b with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_55ac951bAddress)
                staticcall sub_55ac951bAddress.0x5a018127 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp > sub_d0d87008:
                    revert with 0, 'Sale has ended'
                require ext_call.return_data[0] < 5
                if block.timestamp < sub_318102a6[ext_call.return_data[0]]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0x7953616c6520686173206e6f74207374617274656420666f72206b657920636c6173,
                                mem[198 len 30]
                require ext_code.size(sub_55ac951bAddress)
                staticcall sub_55ac951bAddress.0xaf0573a8 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Founder's key must be engaged'
                mem[128] = stor25
                mem[160] = block.hash(block.number - 1)
                mem[192] = msg.sender
                mem[96] = 96
                mem[64] = 224
                idx = 0
                while idx < arg1:
                    if idx <= 0:
                        s = 0
                        t = 0
                        while s < 4:
                            if t >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            if t + 1 >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            if t + 2 >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            require items.length
                            require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length < items.length
                            idx = 4
                            u = sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 1)
                            while idx > 0:
                                require idx < 5
                                mem[0] = items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length]
                                mem[32] = 24
                                require sub_6f9220b0[idx].field_0
                                if idx <= 0:
                                    if uint16(u) >= 0:
                                        idx = idx - 1
                                        u = u
                                        continue 
                                else:
                                    mem[0] = ext_call.return_data[0]
                                    mem[32] = 16
                                    require idx < 5
                                    require 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                                    if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                        if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                            idx = idx - 1
                                            u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                            continue 
                                    else:
                                        if uint16(u) >= 1:
                                            idx = idx - 1
                                            u = u - 1
                                            continue 
                                require idx < 5
                                sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]++
                                mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                                require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                                require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                                mem[0] = sha3(idx, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                                mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ext_call.return_data[0]
                                require ext_code.size(nftAddress)
                                call nftAddress.0x3d3161c0 with:
                                     gas gas_remaining wei
                                    args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]], msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                s = s + 1
                                t = t + 3
                                continue 
                            sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]]++
                            mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                            require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                            require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                            mem[0] = sha3(0, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                            mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ext_call.return_data[0]
                            require ext_code.size(nftAddress)
                            call nftAddress.0x3d3161c0 with:
                                 gas gas_remaining wei
                                args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]], msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 3
                            continue 
                    else:
                        mem[mem[64] + 32] = sha3(stor25, block.hash(block.number - 1), msg.sender)
                        _491 = mem[64]
                        mem[mem[64]] = 32
                        mem[64] = mem[64] + 64
                        _493 = sha3(mem[_491 + 32 len mem[_491]])
                        s = 0
                        t = 0
                        while s < 4:
                            if t >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            if t + 1 >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            if t + 2 >= 16:
                                revert with 0, 'uint16 index too high in uint256'
                            require items.length
                            require uint16(_493 / 2^(16 * t)) % items.length < items.length
                            idx = 4
                            u = _493 / 2^(16 * t + 1)
                            while idx > 0:
                                require idx < 5
                                mem[0] = items[uint16(_493 / 2^(16 * t)) % items.length]
                                mem[32] = 24
                                require sub_6f9220b0[idx].field_0
                                if idx <= 0:
                                    if uint16(u) >= 0:
                                        idx = idx - 1
                                        u = u
                                        continue 
                                else:
                                    mem[0] = ext_call.return_data[0]
                                    mem[32] = 16
                                    require idx < 5
                                    require 2^(sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                                    if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                        if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                            idx = idx - 1
                                            u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                            continue 
                                    else:
                                        if uint16(u) >= 1:
                                            idx = idx - 1
                                            u = u - 1
                                            continue 
                                require idx < 5
                                sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx]++
                                mem[32] = sha3(items[uint16(_493 / 2^(16 * t)) % items.length], 23)
                                require stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx]
                                require uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx]
                                mem[0] = sha3(idx, sha3(items[uint16(_493 / 2^(16 * t)) % items.length], 23))
                                mem[mem[64] + 4] = stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx][uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx]]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = ext_call.return_data[0]
                                require ext_code.size(nftAddress)
                                call nftAddress.0x3d3161c0 with:
                                     gas gas_remaining wei
                                    args stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx][uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][idx]], msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                s = s + 1
                                t = t + 3
                                continue 
                            sub_bcbc9479[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]]++
                            mem[32] = sha3(items[uint16(_493 / 2^(16 * t)) % items.length], 23)
                            require stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0]
                            require uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0]
                            mem[0] = sha3(0, sha3(items[uint16(_493 / 2^(16 * t)) % items.length], 23))
                            mem[mem[64] + 4] = stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0][uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0]]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ext_call.return_data[0]
                            require ext_code.size(nftAddress)
                            call nftAddress.0x3d3161c0 with:
                                 gas gas_remaining wei
                                args stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0][uint16(_493 / 2^(16 * t + 2)) % stor23[stor22[uint16(_493 / 2^(16 * t)) % stor22.length]][0]], msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 3
                            continue 
                    idx = idx + 1
                    continue 
                stor25 = sha3(stor25, block.hash(block.number - 1), msg.sender)
                require stor3 == stor3
            if msg.value:
                revert with 0, 'Invalid payment for option'
            stor3++
            require ext_code.size(sub_55ac951bAddress)
            staticcall sub_55ac951bAddress.hasKey(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Must have Founder's Key to mint'
            require ext_code.size(sub_55ac951bAddress)
            staticcall sub_55ac951bAddress.0xdcf6a41b with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_55ac951bAddress)
            staticcall sub_55ac951bAddress.0x5a018127 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp > sub_d0d87008:
                revert with 0, 'Sale has ended'
            require ext_call.return_data[0] < 5
            if block.timestamp < sub_318102a6[ext_call.return_data[0]]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x7953616c6520686173206e6f74207374617274656420666f72206b657920636c6173,
                            mem[198 len 30]
            require ext_code.size(sub_55ac951bAddress)
            staticcall sub_55ac951bAddress.0xaf0573a8 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Founder's key must be engaged'
            mem[128] = stor25
            mem[160] = block.hash(block.number - 1)
            mem[192] = msg.sender
            mem[96] = 96
            mem[64] = 224
            idx = 0
            while idx < arg1:
                if idx <= 0:
                    s = 0
                    t = 0
                    while s < 4:
                        if t >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        if t + 1 >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        if t + 2 >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        require items.length
                        require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length < items.length
                        idx = 4
                        u = sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 1)
                        while idx > 0:
                            require idx < 5
                            mem[0] = items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length]
                            mem[32] = 24
                            require sub_6f9220b0[idx].field_0
                            if idx <= 0:
                                if uint16(u) >= 0:
                                    idx = idx - 1
                                    u = u
                                    continue 
                            else:
                                mem[0] = ext_call.return_data[0]
                                mem[32] = 16
                                require idx < 5
                                require 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                                if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                        idx = idx - 1
                                        u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                        continue 
                                else:
                                    if uint16(u) >= 1:
                                        idx = idx - 1
                                        u = u - 1
                                        continue 
                            require idx < 5
                            sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]++
                            mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                            require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                            require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]
                            mem[0] = sha3(idx, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                            mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ext_call.return_data[0]
                            require ext_code.size(nftAddress)
                            call nftAddress.0x3d3161c0 with:
                                 gas gas_remaining wei
                                args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][idx]], msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 3
                            continue 
                        sub_bcbc9479[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]]++
                        mem[32] = sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                        require uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]
                        mem[0] = sha3(0, sha3(items[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0][uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t + 2)) % stor23[stor22[uint16(sha3(stor25, block.hash(block.number - 1), msg.sender) / 2^(16 * t)) % stor22.length]][0]], msg.sender, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                else:
                    mem[mem[64] + 32] = sha3(stor25, block.hash(block.number - 1), msg.sender)
                    _487 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _489 = sha3(mem[_487 + 32 len mem[_487]])
                    s = 0
                    t = 0
                    while s < 4:
                        if t >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        if t + 1 >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        if t + 2 >= 16:
                            revert with 0, 'uint16 index too high in uint256'
                        require items.length
                        require uint16(_489 / 2^(16 * t)) % items.length < items.length
                        idx = 4
                        u = _489 / 2^(16 * t + 1)
                        while idx > 0:
                            require idx < 5
                            mem[0] = items[uint16(_489 / 2^(16 * t)) % items.length]
                            mem[32] = 24
                            require sub_6f9220b0[idx].field_0
                            if idx <= 0:
                                if uint16(u) >= 0:
                                    idx = idx - 1
                                    u = u
                                    continue 
                            else:
                                mem[0] = ext_call.return_data[0]
                                mem[32] = 16
                                require idx < 5
                                require 2^(sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)
                                if uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                    if uint16(u) >= uint16(stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0)):
                                        idx = idx - 1
                                        u = u - (stor('array', ('div', 0.0625, ('var', 0)), ('map', ('ext_call.return_data', 0, 32), ('name', 'stor16', 16)))[uint8(idx)] / 2^(sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx] / sub_6f9220b0[idx].field_0))
                                        continue 
                                else:
                                    if uint16(u) >= 1:
                                        idx = idx - 1
                                        u = u - 1
                                        continue 
                            require idx < 5
                            sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx]++
                            mem[32] = sha3(items[uint16(_489 / 2^(16 * t)) % items.length], 23)
                            require stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx]
                            require uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx] < stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx]
                            mem[0] = sha3(idx, sha3(items[uint16(_489 / 2^(16 * t)) % items.length], 23))
                            mem[mem[64] + 4] = stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx][uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx]]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = ext_call.return_data[0]
                            require ext_code.size(nftAddress)
                            call nftAddress.0x3d3161c0 with:
                                 gas gas_remaining wei
                                args stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx][uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][idx]], msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 3
                            continue 
                        sub_bcbc9479[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]]++
                        mem[32] = sha3(items[uint16(_489 / 2^(16 * t)) % items.length], 23)
                        require stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0]
                        require uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0] < stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0]
                        mem[0] = sha3(0, sha3(items[uint16(_489 / 2^(16 * t)) % items.length], 23))
                        mem[mem[64] + 4] = stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0][uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0]]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = ext_call.return_data[0]
                        require ext_code.size(nftAddress)
                        call nftAddress.0x3d3161c0 with:
                             gas gas_remaining wei
                            args stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0][uint16(_489 / 2^(16 * t + 2)) % stor23[stor22[uint16(_489 / 2^(16 * t)) % stor22.length]][0]], msg.sender, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = s + 1
                        t = t + 3
                        continue 
                idx = idx + 1
                continue 
            stor25 = sha3(stor25, block.hash(block.number - 1), msg.sender)
            require stor3 == stor3
        revert with 0, 'Number of packs not supported'
    revert with 0, 'Number of packs not supported'
}



}
