contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const name = 'PixelConsRinkeby'

const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000

const symbol = 'PXCN(R)'


mapping of uint8 stor0;
address owner;
array of uint256 stor10;
array of struct sub_26a50862;
array of uint256 stor12;
address adminAddress;
array of uint256 stor3;
mapping of struct tokenIndex;
mapping of struct balanceOf;
mapping of struct sub_08702682;
mapping of address approved;
mapping of uint8 stor8;
array of struct tokenOfOwnerByIndex;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    if not arg1:
        revert with 0, 'wInvalid ID'
    if not tokenIndex[arg1].field_0:
        revert with 0, 'PixelCon does not exist'
    return approved[arg1]
}

function sub_08702682(?) {
    if not arg1:
        revert with 0, 'Invalid address'
    return sub_08702682[address(arg1)].field_0
}

function totalSupply() {
    return tokenOfOwnerByIndex.length
}

function sub_26a50862(?) {
    if not arg1:
        revert with 0, 'Invalid index'
    if arg1 >= stor12.length:
        revert with 0, 'Collection does not exist'
    return sub_26a50862[arg1 << 192].field_0
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'Invalid address'
    if arg2 >= balanceOf[address(arg1)].field_0:
        revert with 0, 'Index is out of bounds'
    require arg2 < balanceOf[address(arg1)].field_0
    require stor('array', ('div', 0.25, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5)))[uint8(arg2)] < tokenOfOwnerByIndex.length
    return tokenOfOwnerByIndex[2 * uint64(stor5[address(arg1)][0.25 / arg2].field_0 / 256^(8 * arg2 % 4))].field_0
}

function getTokenIndex(uint256 arg1) {
    if not arg1:
        revert with 0, 'wInvalid ID'
    if not tokenIndex[arg1].field_0:
        revert with 0, 'PixelCon does not exist'
    return tokenIndex[arg1].field_160
}

function sub_4aeabcb6(?) {
    if not arg1:
        revert with 0, 'Invalid index'
    if arg1 >= stor12.length:
        revert with 0, 'Collection does not exist'
    if arg2 >= sub_26a50862[arg1 << 192].field_0:
        revert with 0, 'Index is out of bounds'
    require arg2 < sub_26a50862[arg1 << 192].field_0
    require stor('array', ('div', 0.25, ('param', 'arg2')), ('map', ('mask_shl', 64, 0, 192, ('param', 'arg1')), ('name', 'stor11', 11)))[uint8(arg2)] < tokenOfOwnerByIndex.length
    return tokenOfOwnerByIndex[2 * uint64(stor11[arg1 << 192][0.25 / arg2].field_0 / 256^(8 * arg2 % 4))].field_0
}

function exists(uint256 arg1) {
    if not arg1:
        revert with 0, 'wInvalid ID'
    return bool(tokenIndex[arg1].field_0)
}

function tokenByIndex(uint256 arg1) {
    if arg1 >= tokenOfOwnerByIndex.length:
        revert with 0, 'PixelCon index is out of bounds'
    return tokenOfOwnerByIndex[arg1].field_0
}

function tokenOfCreatorByIndex(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'Invalid address'
    if arg2 >= sub_08702682[address(arg1)].field_0:
        revert with 0, 'Index is out of bounds'
    require arg2 < sub_08702682[address(arg1)].field_0
    require stor('array', ('div', 0.25, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor6', 6)))[uint8(arg2)] < tokenOfOwnerByIndex.length
    return tokenOfOwnerByIndex[2 * uint64(stor6[address(arg1)][0.25 / arg2].field_0 / 256^(8 * arg2 % 4))].field_0
}

function creatorOf(uint256 arg1) {
    if not arg1:
        revert with 0, 'wInvalid ID'
    if not tokenIndex[arg1].field_0:
        revert with 0, 'PixelCon does not exist'
    require tokenIndex[arg1].field_160 < tokenOfOwnerByIndex.length
    return tokenOfOwnerByIndex[stor4[arg1].field_160].field_256
}

function totalCollections() {
    return stor12.length
}

function ownerOf(uint256 arg1) {
    if not arg1:
        revert with 0, 'wInvalid ID'
    if not tokenIndex[arg1].field_0:
        revert with 0, 'PixelCon does not exist'
    return tokenIndex[arg1].field_0
}

function getAdmin() {
    return adminAddress
}

function balanceOf(address arg1) {
    if not arg1:
        revert with 0, 'Invalid address'
    return balanceOf[address(arg1)].field_0
}

function owner() {
    return owner
}

function getTokenData(uint256 arg1) {
    if not arg1:
        revert with 0, 'wInvalid ID'
    if not tokenIndex[arg1].field_0:
        revert with 0, 'PixelCon does not exist'
    require tokenIndex[arg1].field_160 < tokenOfOwnerByIndex.length
    require tokenIndex[arg1].field_160 < stor10.length
    return tokenOfOwnerByIndex[stor4[arg1].field_160].field_0, 
           tokenIndex[arg1].field_0,
           tokenOfOwnerByIndex[stor4[arg1].field_160].field_256,
           tokenIndex[arg1].field_0,
           tokenOfOwnerByIndex[stor4[arg1].field_160].field_256,
           uint256(stor10[stor4[arg1].field_162]) / 256^(8 * tokenIndex[arg1].field_160) << 192,
           tokenOfOwnerByIndex[stor4[arg1].field_160].field_480
}

function collectionOf(uint256 arg1) {
    if not arg1:
        revert with 0, 'wInvalid ID'
    if not tokenIndex[arg1].field_0:
        revert with 0, 'PixelCon does not exist'
    require tokenIndex[arg1].field_160 < tokenOfOwnerByIndex.length
    return tokenOfOwnerByIndex[stor4[arg1].field_160].field_416
}

function isApprovedForAll(address arg1, address arg2) {
    if not arg1:
        revert with 0, 'Invalid address'
    if not arg2:
        revert with 0, 'Invalid address'
    return bool(stor8[address(arg1)][address(arg2)])
}

function close() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_d694f109(?) {
    if not arg1:
        revert with 0, 'Invalid index'
    return (arg1 < stor12.length)
}

function sub_b2f42210(?) {
    if adminAddress != msg.sender:
        revert with 0, 'Only the admin can call this function'
    stor3[] = Array(len=arg1.length, data=arg1[all])
}

function sub_8a153c28(?) {
    if not arg1:
        revert with 0, 'Invalid index'
    if arg1 >= stor12.length:
        revert with 0, 'Collection does not exist'
    return not bool(sub_26a50862[arg1 << 192].field_0)
}

function adminChange(address arg1) {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the admin can call this function'
    adminAddress = arg1
}

function sub_e8545f1b(?) {
    if not arg1:
        revert with 0, 'Invalid index'
    if arg1 >= stor12.length:
        revert with 0, 'Collection does not exist'
    return (stor12[uint64(arg1) / 4].field_0 / 256^(8 * arg1 % 4) << 192)
}

function setApprovalForAll(address arg1, bool arg2) {
    if not arg1:
        revert with 0, 'Invalid address'
    if msg.sender == arg1:
        revert with 0, 'Cannot approve self'
    stor8[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function adminWithdraw(address arg1) {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the admin can call this function'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    if not arg2:
        revert with 0, 'wInvalid ID'
    if tokenIndex[arg2].field_0 == arg1:
        revert with 0, 'Cannot approve PixelCon owner'
    if tokenIndex[arg2].field_0 != msg.sender:
        if not stor8[stor4[arg2].field_0][msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender does not have permission to approve address'
    approved[arg2] = arg1
    emit Approval(tokenIndex[arg2].field_0, arg1, arg2);
}

function sub_062401c2(?) {
    if arg1 >= tokenOfOwnerByIndex.length:
        revert with 0, 'PixelCon index is out of bounds'
    require tokenIndex[stor9[2 * uint64(arg1)].field_0].field_160 < stor10.length
    return tokenOfOwnerByIndex[2 * uint64(arg1)].field_0, 
           tokenIndex[stor9[2 * uint64(arg1)].field_0].field_0,
           tokenOfOwnerByIndex[2 * uint64(arg1)].field_256,
           tokenIndex[stor9[2 * uint64(arg1)].field_0].field_0,
           tokenOfOwnerByIndex[2 * uint64(arg1)].field_256,
           uint256(stor10[stor4[stor9[2 * uint64(arg1)].field_0].field_162]) / 256^(8 * tokenIndex[stor9[2 * uint64(arg1)].field_0].field_160) << 192,
           tokenOfOwnerByIndex[2 * uint64(arg1)].field_480
}

function getAllNames() {
    if stor10.length:
        mem[128] = Mask(64, 192, uint64(stor10))
        if (32 * stor10.length) + 32 > 64:
            mem[160] = uint256(stor10) / 256^8 << 192
            idx = 160
            s = 8
            while (32 * stor10.length) + 96 > idx:
                mem[idx + 32] = uint256(stor10) / 256^((8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)) << 192
                idx = idx + 32
                s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
                continue 
    mem[(32 * stor10.length) + 128] = 32
    mem[(32 * stor10.length) + 160] = stor10.length
    mem[(32 * stor10.length) + 192 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
    return memory
      from (32 * stor10.length) + 128
       len (96 * stor10.length) + 64
}

function sub_75d28011(?) {
    if not arg1:
        revert with 0, 'wInvalid ID'
    require tokenIndex[arg1].field_160 < tokenOfOwnerByIndex.length
    if tokenIndex[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender is not the creator and oner'
    if tokenOfOwnerByIndex[stor4[arg1].field_160].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender is not the creator and oner'
    require tokenIndex[arg1].field_160 < stor10.length
    uint256(stor10[stor4[arg1].field_162]) = arg2 * 256^(8 * tokenIndex[arg1].field_160) or !(test266151307() * 256^(8 * tokenIndex[arg1].field_160)) and uint256(stor10[stor4[arg1].field_162])
    emit 0xd3d90f94: Mask(64, 192, arg2), arg1
    return tokenIndex[arg1].field_160
}

function sub_ace8116d(?) {
    if not stor12.length:
        mem[(32 * stor12.length) + 128] = 32
        mem[(32 * stor12.length) + 160] = stor12.length
        mem[(32 * stor12.length) + 192 len floor32(stor12.length)] = mem[128 len floor32(stor12.length)]
        return memory
          from (32 * stor12.length) + 128
           len (96 * stor12.length) + 64
    mem[128] = uint256(stor12.field_0) / 256^0 << 192
    idx = 128
    s = 0
    while (32 * stor12.length) + 96 > idx:
        mem[idx + 32] = uint256(stor12.field_0) / 256^((8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)) << 192
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    mem[(32 * stor12.length) + 192 len floor32(stor12.length)] = mem[128 len floor32(stor12.length)]
    return Array(len=stor12.length, data=mem[128 len floor32(stor12.length)], mem[(32 * stor12.length) + floor32(stor12.length) + 192 len (32 * stor12.length) - floor32(stor12.length)]), 
}

function sub_602c4f05(?) {
    if arg1 > stor12.length:
        revert with 0, 'Start index is out of bounds'
    if arg2 > stor12.length:
        revert with 0, 'End index is out of bounds'
    if arg1 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End index is less than the start index'
    mem[96] = uint64(arg2 - arg1)
    if uint64(arg2 - arg1):
        mem[128 len 32 * uint64(arg2 - arg1)] = code.data[21145 len 32 * uint64(arg2 - arg1)]
    idx = 0
    while idx < uint64(arg2 - arg1):
        require idx + arg1 < stor12.length
        mem[0] = 12
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor12[0.25 / idx + arg1].field_0 / 256^(8 * idx + arg1 % 4) << 192
        idx = idx + 1
        continue 
    mem[(32 * uint64(arg2 - arg1)) + 128] = 32
    mem[(32 * uint64(arg2 - arg1)) + 160] = mem[96]
    mem[(32 * uint64(arg2 - arg1)) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * uint64(arg2 - arg1)) + 160 len (32 * mem[96]) + 32]
}

function sub_58350681(?) {
    if arg1 > tokenOfOwnerByIndex.length:
        revert with 0, 'Start index is out of bounds'
    if arg2 > tokenOfOwnerByIndex.length:
        revert with 0, 'End index is out of bounds'
    if arg1 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End index is less than the start index'
    mem[96] = uint64(arg2 - arg1)
    if uint64(arg2 - arg1):
        mem[128 len 32 * uint64(arg2 - arg1)] = code.data[21145 len 32 * uint64(arg2 - arg1)]
    idx = 0
    while idx < uint64(arg2 - arg1):
        require idx + arg1 < stor10.length
        mem[0] = 10
        require idx < mem[96]
        mem[(32 * idx) + 128] = uint256(stor10[0.25 / idx + arg1]) / 256^(8 * idx + arg1 % 4) << 192
        idx = idx + 1
        continue 
    mem[(32 * uint64(arg2 - arg1)) + 128] = 32
    mem[(32 * uint64(arg2 - arg1)) + 160] = mem[96]
    mem[(32 * uint64(arg2 - arg1)) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * uint64(arg2 - arg1)) + 160 len (32 * mem[96]) + 32]
}

function sub_ad732154(?) {
    if not arg1:
        revert with 0, 'Invalid index'
    if sub_26a50862[arg1 << 192].field_0:
        mem[128] = sub_26a50862[arg1 << 192].field_0
        if (32 * sub_26a50862[arg1 << 192].field_0) + 32 > 64:
            mem[160] = sub_26a50862[arg1 << 192].field_64
            idx = 160
            s = 8
            while (32 * sub_26a50862[arg1 << 192].field_0) + 96 > idx:
                mem[idx + 32] = sub_26a50862[arg1 << 192].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
                idx = idx + 32
                s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
                continue 
    mem[(32 * sub_26a50862[arg1 << 192].field_0) + 128] = 32
    mem[(32 * sub_26a50862[arg1 << 192].field_0) + 160] = sub_26a50862[arg1 << 192].field_0
    mem[(32 * sub_26a50862[arg1 << 192].field_0) + 192 len floor32(sub_26a50862[arg1 << 192].field_0)] = mem[128 len floor32(sub_26a50862[arg1 << 192].field_0)]
    return memory
      from (32 * sub_26a50862[arg1 << 192].field_0) + 128
       len (96 * sub_26a50862[arg1 << 192].field_0) + 64
}

function sub_6bb2a9a8(?) {
    if not arg1:
        revert with 0, 'Invalid index'
    if arg1 >= stor12.length:
        revert with 0, 'Collection does not exist'
    if sub_26a50862[arg1 << 192].field_0:
        mem[128] = sub_26a50862[arg1 << 192].field_0
        idx = 128
        s = 0
        while (32 * sub_26a50862[arg1 << 192].field_0) + 96 > idx:
            mem[idx + 32] = sub_26a50862[arg1 << 192].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
            idx = idx + 32
            s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
            continue 
    mem[(32 * sub_26a50862[arg1 << 192].field_0) + 224 len floor32(sub_26a50862[arg1 << 192].field_0)] = mem[128 len floor32(sub_26a50862[arg1 << 192].field_0)]
    return stor12[uint64(arg1) / 4].field_0 / 256^(8 * arg1 % 4) << 192, 
           Array(len=sub_26a50862[arg1 << 192].field_0, data=mem[128 len floor32(sub_26a50862[arg1 << 192].field_0)], mem[(32 * sub_26a50862[arg1 << 192].field_0) + floor32(sub_26a50862[arg1 << 192].field_0) + 224 len (32 * sub_26a50862[arg1 << 192].field_0) - floor32(sub_26a50862[arg1 << 192].field_0)])
}

function sub_d4aa25cc(?) {
    if not arg1:
        revert with 0, 'Invalid address'
    if sub_08702682[address(arg1)].field_0:
        mem[128] = sub_08702682[address(arg1)].field_0
        if (32 * sub_08702682[address(arg1)].field_0) + 32 > 64:
            mem[160] = sub_08702682[address(arg1)].field_64
            idx = 160
            s = 8
            while (32 * sub_08702682[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = sub_08702682[address(arg1)].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
                idx = idx + 32
                s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
                continue 
    mem[(32 * sub_08702682[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_08702682[address(arg1)].field_0) + 160] = sub_08702682[address(arg1)].field_0
    mem[(32 * sub_08702682[address(arg1)].field_0) + 192 len floor32(sub_08702682[address(arg1)].field_0)] = mem[128 len floor32(sub_08702682[address(arg1)].field_0)]
    return memory
      from (32 * sub_08702682[address(arg1)].field_0) + 128
       len (96 * sub_08702682[address(arg1)].field_0) + 64
}

function sub_57643118(?) {
    if not arg1:
        revert with 0, 'Invalid address'
    if not balanceOf[address(arg1)].field_0:
        mem[(32 * balanceOf[address(arg1)].field_0) + 128] = 32
        mem[(32 * balanceOf[address(arg1)].field_0) + 160] = balanceOf[address(arg1)].field_0
        mem[(32 * balanceOf[address(arg1)].field_0) + 192 len floor32(balanceOf[address(arg1)].field_0)] = mem[128 len floor32(balanceOf[address(arg1)].field_0)]
        return memory
          from (32 * balanceOf[address(arg1)].field_0) + 128
           len (96 * balanceOf[address(arg1)].field_0) + 64
    mem[128] = balanceOf[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * balanceOf[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = balanceOf[address(arg1)].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    mem[(32 * balanceOf[address(arg1)].field_0) + 192 len floor32(balanceOf[address(arg1)].field_0)] = mem[128 len floor32(balanceOf[address(arg1)].field_0)]
    return Array(len=balanceOf[address(arg1)].field_0, data=mem[128 len floor32(balanceOf[address(arg1)].field_0)], mem[(32 * balanceOf[address(arg1)].field_0) + floor32(balanceOf[address(arg1)].field_0) + 192 len (32 * balanceOf[address(arg1)].field_0) - floor32(balanceOf[address(arg1)].field_0)]), 
}

function sub_50ff9a5b(?) {
    if not arg1:
        revert with 0, 'Invalid index'
    if arg1 >= stor12.length:
        revert with 0, 'Collection does not exist'
    if sub_26a50862[arg1 << 192].field_0 <= 0:
        revert with 0, 'Collection has been cleared'
    s = 0
    idx = 0
    while idx < sub_26a50862[arg1 << 192].field_0:
        require stor('array', ('div', 0.25, ('var', 0)), ('map', ('mask_shl', 64, 0, 192, ('param', 'arg1')), ('name', 'stor11', 11)))[uint8(idx)] < tokenOfOwnerByIndex.length
        mem[32] = 4
        require tokenIndex[stor9[2 * uint64(stor11[arg1 << 192][0.25 / idx].field_0 / 256^(8 * idx % 4))].field_0].field_160 < tokenOfOwnerByIndex.length
        mem[0] = 9
        if tokenIndex[stor9[2 * uint64(stor11[arg1 << 192][0.25 / idx].field_0 / 256^(8 * idx % 4))].field_0].field_0 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Sender is not the creator and oner of the PixelCons'
        if tokenOfOwnerByIndex[stor4[tokenOfOwnerByIndex[2 * uint64(stor11[arg1 << 192][0.25 / idx].field_0 / 256^(8 * idx % 4))].field_0].field_160].field_256 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Sender is not the creator and oner of the PixelCons'
        s = (2 * uint64(sub_26a50862[arg1 << 192][0.25 / idx].field_0 / 256^(8 * idx % 4))) + sha3(9)
        idx = idx + 1
        continue 
    require arg1 < stor12.length
    stor12[uint64(arg1) / 4].field_0 = arg2 * 256^(8 * arg1 % 4) or !(test266151307() * 256^(8 * arg1 % 4)) and stor12[uint64(arg1) / 4].field_0
    emit 0x7a2598b6: Mask(64, 192, arg2), arg1
    return arg1
}

function sub_a05d821b(?) {
    if not arg1:
        revert with 0, 'Invalid index'
    if arg1 >= stor12.length:
        revert with 0, 'Collection does not exist'
    if sub_26a50862[arg1 << 192].field_0 <= 0:
        revert with 0, 'Collection is already cleared'
    s = 0
    idx = 0
    while idx < sub_26a50862[arg1 << 192].field_0:
        require stor('array', ('div', 0.25, ('var', 0)), ('map', ('mask_shl', 64, 0, 192, ('param', 'arg1')), ('name', 'stor11', 11)))[uint8(idx)] < tokenOfOwnerByIndex.length
        mem[32] = 4
        require tokenIndex[stor9[2 * uint64(stor11[arg1 << 192][0.25 / idx].field_0 / 256^(8 * idx % 4))].field_0].field_160 < tokenOfOwnerByIndex.length
        mem[0] = 9
        if tokenIndex[stor9[2 * uint64(stor11[arg1 << 192][0.25 / idx].field_0 / 256^(8 * idx % 4))].field_0].field_0 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Sender is not the creator and oner of the PixelCons'
        if tokenOfOwnerByIndex[stor4[tokenOfOwnerByIndex[2 * uint64(stor11[arg1 << 192][0.25 / idx].field_0 / 256^(8 * idx % 4))].field_0].field_160].field_256 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Sender is not the creator and oner of the PixelCons'
        tokenOfOwnerByIndex[2 * uint64(stor11[arg1 << 192][0.25 / idx].field_0 / 256^(8 * idx % 4))].field_416 = 0
        s = (2 * uint64(sub_26a50862[arg1 << 192][0.25 / idx].field_0 / 256^(8 * idx % 4))) + sha3(9)
        idx = idx + 1
        continue 
    require arg1 < stor12.length
    stor12[uint64(arg1) / 4].field_0 = !(test266151307() * 256^(8 * arg1 % 4)) and stor12[uint64(arg1) / 4].field_0
    sub_26a50862[arg1 << 192].field_0 = 0
    idx = 0
    while sub_26a50862[arg1 << 192].field_0 + 3 / 4 > idx:
        sub_26a50862[arg1 << 192][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit 0xde081b46: arg1
    return arg1
}

function sub_c82a94a1(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor12.length >= test266151307():
        revert with 0, 'Max number of collections has been reached'
    if 1 >= arg1.length:
        revert with 0, 'Collection must contain more than one PixelCon'
    sub_26a50862[uint64(stor12.length)].field_0 = arg1.length
    if sub_26a50862[uint64(stor12.length)].field_0 > arg1.length:
        idx = arg1.length + 3 / 4
        while sub_26a50862[uint64(stor12.length)].field_0 + 3 / 4 > idx:
            sub_26a50862[uint64(stor12.length)][idx].field_0 = 0
            idx = idx + 1
            continue 
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
            revert with 0, 'PixelCon index is out of bounds'
        mem[32] = 4
        require tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_160 < tokenOfOwnerByIndex.length
        if tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0 != msg.sender:
            revert with 0, 'Sender is not the creator and oner of the PixelCons'
        if tokenOfOwnerByIndex[stor4[tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0].field_160].field_256 != msg.sender:
            revert with 0, 'Sender is not the creator and oner of the PixelCons'
        if tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416:
            revert with 0, 'PixelCon is already in a collection'
        tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416 = uint64(stor12.length)
        require idx < sub_26a50862[uint64(stor12.length)].field_0
        mem[0] = sha3(uint64(stor12.length), 11)
        sub_26a50862[uint64(stor12.length)][0.25 / idx].field_0 = mem[(32 * idx) + 152 len 8] * 256^(8 * idx % 4) or !(test266151307() * 256^(8 * idx % 4)) and sub_26a50862[uint64(stor12.length)][0.25 / idx].field_0
        s = (2 * uint64(mem[(32 * idx) + 128])) + sha3(9)
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    stor12.length++
    if stor12.length > stor12.length + 1:
        idx = stor12.length + 4 / 4
        while stor12.length + 3 / 4 > idx:
            stor12[idx].field_0 = 0
            idx = idx + 1
            continue 
    require uint64(stor12.length) < stor12.length
    stor12[stor12.length.field_2].field_0 = arg2 * 256^(8 * stor12.length % 4) or !(test266151307() * 256^(8 * stor12.length % 4)) and stor12[stor12.length.field_2].field_0
    emit 0x19c41bfd: msg.sender, uint64(stor12.length)
    return uint64(stor12.length)
}

function sub_9fee49ba(?) payable {
    if not arg1:
        revert with 0, 'Invalid address'
    if not arg2:
        revert with 0, 'wInvalid ID'
    if test266151307() <= tokenOfOwnerByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max number of PixelCons has been reached'
    if tokenIndex[arg2].field_0:
        revert with 0, 'PixelCon already exists'
    tokenIndex[arg2].field_160 = uint64(tokenOfOwnerByIndex.length)
    tokenOfOwnerByIndex.length++
    if tokenOfOwnerByIndex.length > tokenOfOwnerByIndex.length + 1:
        idx = 2 * tokenOfOwnerByIndex.length + 1
        while 2 * tokenOfOwnerByIndex.length > idx:
            tokenOfOwnerByIndex[idx].field_0 = 0
            tokenOfOwnerByIndex[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor10.length++
    if stor10.length > stor10.length + 1:
        idx = stor10.length + 4 / 4
        while stor10.length + 3 / 4 > idx:
            uint256(stor10[idx]) = 0
            idx = idx + 1
            continue 
    require uint64(tokenOfOwnerByIndex.length) < tokenOfOwnerByIndex.length
    tokenOfOwnerByIndex[uint64(tokenOfOwnerByIndex.length)].field_0 = arg2
    tokenOfOwnerByIndex[uint64(tokenOfOwnerByIndex.length)].field_256 = Mask(224, 0, msg.sender)
    if block.timestamp >= 4294967296:
        tokenOfOwnerByIndex[uint64(tokenOfOwnerByIndex.length)].field_480 = 0
    else:
        tokenOfOwnerByIndex[uint64(tokenOfOwnerByIndex.length)].field_480 = uint32(block.timestamp)
    require uint64(tokenOfOwnerByIndex.length) < stor10.length
    uint256(stor10[stor9.length.field_2]) = arg3 * 256^(8 * tokenOfOwnerByIndex.length % 4) or !(test266151307() * 256^(8 * tokenOfOwnerByIndex.length % 4)) and uint256(stor10[stor9.length.field_2])
    sub_08702682[msg.sender].field_0++
    if sub_08702682[msg.sender].field_0 > sub_08702682[msg.sender].field_0 + 1:
        idx = sub_08702682[msg.sender].field_0 + 4 / 4
        while sub_08702682[msg.sender].field_0 + 3 / 4 > idx:
            sub_08702682[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
    require sub_08702682[msg.sender].field_0 < sub_08702682[msg.sender].field_0
    sub_08702682[msg.sender][sub_08702682[msg.sender].field_2].field_0 = uint64(tokenOfOwnerByIndex.length) * 256^(8 * sub_08702682[msg.sender].field_0) or !(test266151307() * 256^(8 * sub_08702682[msg.sender].field_0)) and sub_08702682[msg.sender][sub_08702682[msg.sender].field_2].field_0
    if test266151307() <= balanceOf[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max number of PixelCons per owner has been reached'
    if tokenIndex[arg2].field_0:
        revert with 0, 'PixelCon already has an owner'
    tokenIndex[arg2].field_0 = arg1
    balanceOf[address(arg1)].field_0++
    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0 + 1:
        idx = balanceOf[address(arg1)].field_0 + 4 / 4
        while balanceOf[address(arg1)].field_0 + 3 / 4 > idx:
            balanceOf[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    tokenIndex[arg2].field_0 = balanceOf[address(arg1)].field_0
    tokenIndex[arg2].field_224 = 0
    require balanceOf[address(arg1)].field_0 < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_2].field_0 = 0 or tokenIndex[arg2].field_160 * 256^(8 * balanceOf[address(arg1)].field_0) or !(test266151307() * 256^(8 * balanceOf[address(arg1)].field_0)) and balanceOf[address(arg1)][balanceOf[address(arg1)].field_2].field_0
    emit 0x5ada7cc7: uint64(tokenOfOwnerByIndex.length), arg1, arg2, msg.sender
    emit Transfer(0, arg1, arg2);
    return uint64(tokenOfOwnerByIndex.length)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg1:
        revert with 0, 'Invalid address'
    if not arg2:
        revert with 0, 'Invalid address'
    if not arg3:
        revert with 0, 'wInvalid ID'
    if not tokenIndex[arg3].field_0:
        revert with 0, 'PixelCon does not exist'
    if tokenIndex[arg3].field_0 != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor8[stor4[arg3].field_0][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Sender does not have permission to transfer PixelCon'
    if tokenIndex[arg3].field_0 != arg1:
        revert with 0, 'Incorrect PixelCon owner'
    if approved[arg3]:
        approved[arg3] = 0
    if tokenIndex[arg3].field_0 != arg1:
        revert with 0, 'From address is incorrect'
    tokenIndex[arg3].field_0 = 0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][0.25 / balanceOf[address(arg1)].field_0 - 1].field_0 = !(test266151307() * 256^(8 * balanceOf[address(arg1)].field_0 - 1 % 4)) and balanceOf[address(arg1)][0.25 / balanceOf[address(arg1)].field_0 - 1].field_0
    balanceOf[address(arg1)].field_0--
    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0 - 1:
        idx = balanceOf[address(arg1)].field_0 + 2 / 4
        while balanceOf[address(arg1)].field_0 + 3 / 4 > idx:
            balanceOf[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    if tokenIndex[arg3].field_224 < balanceOf[address(arg1)].field_0:
        balanceOf[address(arg1)][stor4[arg3].field_226].field_0 = stor('array', ('div', 0.25, ('add', -1, ('stor', 256, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5))))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5)))[uint8(stor5[address(arg1)].field_0 - 1)] * 256^(8 * tokenIndex[arg3].field_224) or !(test266151307() * 256^(8 * tokenIndex[arg3].field_224)) and balanceOf[address(arg1)][stor4[arg3].field_226].field_0
        require stor('array', ('div', 0.25, ('add', -1, ('stor', 256, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5))))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5)))[uint8(stor5[address(arg1)].field_0 - 1)] < tokenOfOwnerByIndex.length
        tokenIndex[stor9[2 * uint64(stor5[address(arg1)][0.25 / stor5[address(arg1)].field_0 - 1].field_0 / 256^(8 * stor5[address(arg1)].field_0 - 1 % 4))].field_0].field_224 = tokenIndex[arg3].field_224
    tokenIndex[arg3].field_0 = tokenIndex[arg3].field_0
    if test266151307() <= balanceOf[address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max number of PixelCons per owner has been reached'
    if tokenIndex[arg3].field_0:
        revert with 0, 'PixelCon already has an owner'
    tokenIndex[arg3].field_0 = arg2
    balanceOf[address(arg2)].field_0++
    if balanceOf[address(arg2)].field_0 > balanceOf[address(arg2)].field_0 + 1:
        idx = balanceOf[address(arg2)].field_0 + 4 / 4
        while balanceOf[address(arg2)].field_0 + 3 / 4 > idx:
            balanceOf[address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    tokenIndex[arg3].field_0 = balanceOf[address(arg2)].field_0
    tokenIndex[arg3].field_224 = 0
    require balanceOf[address(arg2)].field_0 < balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)][balanceOf[address(arg2)].field_2].field_0 = 0 or tokenIndex[arg3].field_160 * 256^(8 * balanceOf[address(arg2)].field_0) or !(test266151307() * 256^(8 * balanceOf[address(arg2)].field_0)) and balanceOf[address(arg2)][balanceOf[address(arg2)].field_2].field_0
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg1:
        revert with 0, 'Invalid address'
    if not arg2:
        revert with 0, 'Invalid address'
    if not arg3:
        revert with 0, 'wInvalid ID'
    if not tokenIndex[arg3].field_0:
        revert with 0, 'PixelCon does not exist'
    if tokenIndex[arg3].field_0 != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor8[stor4[arg3].field_0][address(msg.sender)]:
                revert with 0, 'Sender does not have permission to transfer PixelCon'
    if tokenIndex[arg3].field_0 != arg1:
        revert with 0, 'Incorrect PixelCon owner'
    if approved[arg3]:
        approved[arg3] = 0
    if tokenIndex[arg3].field_0 != arg1:
        revert with 0, 'From address is incorrect'
    tokenIndex[arg3].field_0 = 0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][0.25 / balanceOf[address(arg1)].field_0 - 1].field_0 = !(test266151307() * 256^(8 * balanceOf[address(arg1)].field_0 - 1 % 4)) and balanceOf[address(arg1)][0.25 / balanceOf[address(arg1)].field_0 - 1].field_0
    balanceOf[address(arg1)].field_0--
    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0 - 1:
        idx = balanceOf[address(arg1)].field_0 + 2 / 4
        while balanceOf[address(arg1)].field_0 + 3 / 4 > idx:
            balanceOf[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    if tokenIndex[arg3].field_224 < balanceOf[address(arg1)].field_0:
        balanceOf[address(arg1)][stor4[arg3].field_226].field_0 = stor('array', ('div', 0.25, ('add', -1, ('stor', 256, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5))))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5)))[uint8(stor5[address(arg1)].field_0 - 1)] * 256^(8 * tokenIndex[arg3].field_224) or !(test266151307() * 256^(8 * tokenIndex[arg3].field_224)) and balanceOf[address(arg1)][stor4[arg3].field_226].field_0
        require stor('array', ('div', 0.25, ('add', -1, ('stor', 256, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5))))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5)))[uint8(stor5[address(arg1)].field_0 - 1)] < tokenOfOwnerByIndex.length
        tokenIndex[stor9[2 * uint64(stor5[address(arg1)][0.25 / stor5[address(arg1)].field_0 - 1].field_0 / 256^(8 * stor5[address(arg1)].field_0 - 1 % 4))].field_0].field_224 = tokenIndex[arg3].field_224
    tokenIndex[arg3].field_0 = tokenIndex[arg3].field_0
    if test266151307() <= balanceOf[address(arg2)].field_0:
        revert with 0, 'Max number of PixelCons per owner has been reached'
    if tokenIndex[arg3].field_0:
        revert with 0, 'PixelCon already has an owner'
    tokenIndex[arg3].field_0 = arg2
    balanceOf[address(arg2)].field_0++
    if balanceOf[address(arg2)].field_0 > balanceOf[address(arg2)].field_0 + 1:
        idx = balanceOf[address(arg2)].field_0 + 4 / 4
        while balanceOf[address(arg2)].field_0 + 3 / 4 > idx:
            balanceOf[address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    tokenIndex[arg3].field_0 = balanceOf[address(arg2)].field_0
    tokenIndex[arg3].field_224 = 0
    require balanceOf[address(arg2)].field_0 < balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)][balanceOf[address(arg2)].field_2].field_0 = 0 or tokenIndex[arg3].field_160 * 256^(8 * balanceOf[address(arg2)].field_0) or !(test266151307() * 256^(8 * balanceOf[address(arg2)].field_0)) and balanceOf[address(arg2)][balanceOf[address(arg2)].field_2].field_0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'Transfer was not safe'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    if not arg1:
        revert with 0, 'Invalid address'
    if not arg2:
        revert with 0, 'Invalid address'
    if not arg3:
        revert with 0, 'wInvalid ID'
    if not tokenIndex[arg3].field_0:
        revert with 0, 'PixelCon does not exist'
    if tokenIndex[arg3].field_0 != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor8[stor4[arg3].field_0][address(msg.sender)]:
                revert with 0, 'Sender does not have permission to transfer PixelCon'
    if tokenIndex[arg3].field_0 != arg1:
        revert with 0, 'Incorrect PixelCon owner'
    if approved[arg3]:
        approved[arg3] = 0
    if tokenIndex[arg3].field_0 != arg1:
        revert with 0, 'From address is incorrect'
    tokenIndex[arg3].field_0 = 0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][0.25 / balanceOf[address(arg1)].field_0 - 1].field_0 = !(test266151307() * 256^(8 * balanceOf[address(arg1)].field_0 - 1 % 4)) and balanceOf[address(arg1)][0.25 / balanceOf[address(arg1)].field_0 - 1].field_0
    balanceOf[address(arg1)].field_0--
    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0 - 1:
        idx = balanceOf[address(arg1)].field_0 + 2 / 4
        while balanceOf[address(arg1)].field_0 + 3 / 4 > idx:
            balanceOf[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    if tokenIndex[arg3].field_224 < balanceOf[address(arg1)].field_0:
        balanceOf[address(arg1)][stor4[arg3].field_226].field_0 = stor('array', ('div', 0.25, ('add', -1, ('stor', 256, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5))))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5)))[uint8(stor5[address(arg1)].field_0 - 1)] * 256^(8 * tokenIndex[arg3].field_224) or !(test266151307() * 256^(8 * tokenIndex[arg3].field_224)) and balanceOf[address(arg1)][stor4[arg3].field_226].field_0
        require stor('array', ('div', 0.25, ('add', -1, ('stor', 256, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5))))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor5', 5)))[uint8(stor5[address(arg1)].field_0 - 1)] < tokenOfOwnerByIndex.length
        tokenIndex[stor9[2 * uint64(stor5[address(arg1)][0.25 / stor5[address(arg1)].field_0 - 1].field_0 / 256^(8 * stor5[address(arg1)].field_0 - 1 % 4))].field_0].field_224 = tokenIndex[arg3].field_224
    tokenIndex[arg3].field_0 = tokenIndex[arg3].field_0
    if test266151307() <= balanceOf[address(arg2)].field_0:
        revert with 0, 'Max number of PixelCons per owner has been reached'
    if tokenIndex[arg3].field_0:
        revert with 0, 'PixelCon already has an owner'
    tokenIndex[arg3].field_0 = arg2
    balanceOf[address(arg2)].field_0++
    if balanceOf[address(arg2)].field_0 > balanceOf[address(arg2)].field_0 + 1:
        idx = balanceOf[address(arg2)].field_0 + 4 / 4
        while balanceOf[address(arg2)].field_0 + 3 / 4 > idx:
            balanceOf[address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    tokenIndex[arg3].field_0 = balanceOf[address(arg2)].field_0
    tokenIndex[arg3].field_224 = 0
    require balanceOf[address(arg2)].field_0 < balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)][balanceOf[address(arg2)].field_2].field_0 = 0 or tokenIndex[arg3].field_160 * 256^(8 * balanceOf[address(arg2)].field_0) or !(test266151307() * 256^(8 * balanceOf[address(arg2)].field_0)) and balanceOf[address(arg2)][balanceOf[address(arg2)].field_2].field_0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'Transfer was not safe'
}

function sub_e2b31903(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 160] = arg1.length
        if not arg1.length:
            mem[(98 * arg1.length) + 192] = arg1.length
            if not arg1.length:
                mem[(131 * arg1.length) + 224] = arg1.length
                mem[64] = (164 * arg1.length) + 256
                if not arg1.length:
                    s = 0
                    idx = 0
                    while idx < arg1.length:
                        require idx < mem[96]
                        if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                            revert with 0, 'PixelCon index is out of bounds'
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                        require mem[(32 * idx) + 152 len 8] < stor10.length
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                        require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                        mem[32] = 4
                        require idx < mem[(98 * arg1.length) + 192]
                        mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                        require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                        mem[0] = 9
                        require idx < mem[(131 * arg1.length) + 224]
                        mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                        s = mem[(32 * idx) + 128]
                        idx = idx + 1
                        continue 
                    _544 = mem[64]
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
                    _546 = mem[(32 * arg1.length) + 128]
                    mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                    mem[mem[64] + 32] = (32 * _546) + 160
                    mem[(32 * _546) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
                    _993 = mem[(64 * arg1.length) + 160]
                    mem[(32 * _546) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                    mem[mem[64] + 64] = (32 * _993) + (32 * _546) + 192
                    mem[(32 * _993) + (32 * _546) + _544 + 192] = mem[(98 * arg1.length) + 192]
                    _1169 = mem[(98 * arg1.length) + 192]
                    mem[(32 * _993) + (32 * _546) + _544 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                    mem[_544 + 96] = (32 * _1169) + (32 * _993) + (32 * _546) + 224
                    mem[(32 * _1169) + (32 * _993) + (32 * _546) + _544 + 224] = mem[(131 * arg1.length) + 224]
                    _1297 = mem[(131 * arg1.length) + 224]
                    mem[(32 * _1169) + (32 * _993) + (32 * _546) + _544 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
                    return memory
                      from mem[64]
                       len (32 * _1297) + (32 * _1169) + (32 * _993) + (32 * _546) + _544 + -mem[64] + 256
                mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
                s = 0
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                        revert with 0, 'PixelCon index is out of bounds'
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                    require mem[(32 * idx) + 152 len 8] < stor10.length
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                    require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                    mem[32] = 4
                    require idx < mem[(98 * arg1.length) + 192]
                    mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                    require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                    mem[0] = 9
                    require idx < mem[(131 * arg1.length) + 224]
                    mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                    s = mem[(32 * idx) + 128]
                    idx = idx + 1
                    continue 
                _548 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
                _550 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[mem[64] + 32] = (32 * _550) + 160
                mem[(32 * _550) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
                _996 = mem[(64 * arg1.length) + 160]
                mem[(32 * _550) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                mem[mem[64] + 64] = (32 * _996) + (32 * _550) + 192
                mem[(32 * _996) + (32 * _550) + _548 + 192] = mem[(98 * arg1.length) + 192]
                _1172 = mem[(98 * arg1.length) + 192]
                mem[(32 * _996) + (32 * _550) + _548 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                mem[_548 + 96] = (32 * _1172) + (32 * _996) + (32 * _550) + 224
                mem[(32 * _1172) + (32 * _996) + (32 * _550) + _548 + 224] = mem[(131 * arg1.length) + 224]
                _1300 = mem[(131 * arg1.length) + 224]
                mem[(32 * _1172) + (32 * _996) + (32 * _550) + _548 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
                return memory
                  from mem[64]
                   len (32 * _1300) + (32 * _1172) + (32 * _996) + (32 * _550) + _548 + -mem[64] + 256
            mem[(98 * arg1.length) + 224 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
            mem[(131 * arg1.length) + 224] = arg1.length
            mem[64] = (164 * arg1.length) + 256
            if not arg1.length:
                s = 0
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                        revert with 0, 'PixelCon index is out of bounds'
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                    require mem[(32 * idx) + 152 len 8] < stor10.length
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                    require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                    mem[32] = 4
                    require idx < mem[(98 * arg1.length) + 192]
                    mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                    require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                    mem[0] = 9
                    require idx < mem[(131 * arg1.length) + 224]
                    mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                    s = mem[(32 * idx) + 128]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
                _554 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[mem[64] + 32] = (32 * _554) + 160
                mem[(32 * _554) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
                _999 = mem[(64 * arg1.length) + 160]
                mem[(32 * _554) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                mem[mem[64] + 64] = (32 * _999) + (32 * _554) + 192
                mem[(32 * _999) + (32 * _554) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
                _1175 = mem[(98 * arg1.length) + 192]
                mem[(32 * _999) + (32 * _554) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                mem[mem[64] + 96] = (32 * _1175) + (32 * _999) + (32 * _554) + 224
                mem[(32 * _1175) + (32 * _999) + (32 * _554) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
                _1303 = mem[(131 * arg1.length) + 224]
                mem[(32 * _1175) + (32 * _999) + (32 * _554) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
                return 128, 
                       (32 * _554) + 160,
                       (32 * _999) + (32 * _554) + 192,
                       (32 * _1175) + (32 * _999) + (32 * _554) + 224,
                       mem[mem[64] + 128 len (32 * _1303) + (32 * _1175) + (32 * _999) + (32 * _554) + 128]
            mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                    revert with 0, 'PixelCon index is out of bounds'
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                require mem[(32 * idx) + 152 len 8] < stor10.length
                require idx < mem[(64 * arg1.length) + 160]
                mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[32] = 4
                require idx < mem[(98 * arg1.length) + 192]
                mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[0] = 9
                require idx < mem[(131 * arg1.length) + 224]
                mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            _556 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _558 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _558) + 160
            mem[(32 * _558) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _1002 = mem[(64 * arg1.length) + 160]
            mem[(32 * _558) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _1002) + (32 * _558) + 192
            mem[(32 * _1002) + (32 * _558) + _556 + 192] = mem[(98 * arg1.length) + 192]
            _1178 = mem[(98 * arg1.length) + 192]
            mem[(32 * _1002) + (32 * _558) + _556 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[_556 + 96] = (32 * _1178) + (32 * _1002) + (32 * _558) + 224
            mem[(32 * _1178) + (32 * _1002) + (32 * _558) + _556 + 224] = mem[(131 * arg1.length) + 224]
            _1306 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1178) + (32 * _1002) + (32 * _558) + _556 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return memory
              from mem[64]
               len (32 * _1306) + (32 * _1178) + (32 * _1002) + (32 * _558) + _556 + -mem[64] + 256
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
        mem[(98 * arg1.length) + 192] = arg1.length
        if not arg1.length:
            mem[(131 * arg1.length) + 224] = arg1.length
            mem[64] = (164 * arg1.length) + 256
            if not arg1.length:
                s = 0
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                        revert with 0, 'PixelCon index is out of bounds'
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                    require mem[(32 * idx) + 152 len 8] < stor10.length
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                    require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                    mem[32] = 4
                    require idx < mem[(98 * arg1.length) + 192]
                    mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                    require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                    mem[0] = 9
                    require idx < mem[(131 * arg1.length) + 224]
                    mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                    s = mem[(32 * idx) + 128]
                    idx = idx + 1
                    continue 
                _560 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
                _562 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[mem[64] + 32] = (32 * _562) + 160
                mem[(32 * _562) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
                _1005 = mem[(64 * arg1.length) + 160]
                mem[(32 * _562) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                mem[mem[64] + 64] = (32 * _1005) + (32 * _562) + 192
                mem[(32 * _1005) + (32 * _562) + _560 + 192] = mem[(98 * arg1.length) + 192]
                _1181 = mem[(98 * arg1.length) + 192]
                mem[(32 * _1005) + (32 * _562) + _560 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                mem[_560 + 96] = (32 * _1181) + (32 * _1005) + (32 * _562) + 224
                mem[(32 * _1181) + (32 * _1005) + (32 * _562) + _560 + 224] = mem[(131 * arg1.length) + 224]
                _1309 = mem[(131 * arg1.length) + 224]
                mem[(32 * _1181) + (32 * _1005) + (32 * _562) + _560 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
                return memory
                  from mem[64]
                   len (32 * _1309) + (32 * _1181) + (32 * _1005) + (32 * _562) + _560 + -mem[64] + 256
            mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                    revert with 0, 'PixelCon index is out of bounds'
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                require mem[(32 * idx) + 152 len 8] < stor10.length
                require idx < mem[(64 * arg1.length) + 160]
                mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[32] = 4
                require idx < mem[(98 * arg1.length) + 192]
                mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[0] = 9
                require idx < mem[(131 * arg1.length) + 224]
                mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _566 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _566) + 160
            mem[(32 * _566) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _1008 = mem[(64 * arg1.length) + 160]
            mem[(32 * _566) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _1008) + (32 * _566) + 192
            mem[(32 * _1008) + (32 * _566) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
            _1184 = mem[(98 * arg1.length) + 192]
            mem[(32 * _1008) + (32 * _566) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[mem[64] + 96] = (32 * _1184) + (32 * _1008) + (32 * _566) + 224
            mem[(32 * _1184) + (32 * _1008) + (32 * _566) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
            _1312 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1184) + (32 * _1008) + (32 * _566) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return 128, 
                   (32 * _566) + 160,
                   (32 * _1008) + (32 * _566) + 192,
                   (32 * _1184) + (32 * _1008) + (32 * _566) + 224,
                   mem[mem[64] + 128 len (32 * _1312) + (32 * _1184) + (32 * _1008) + (32 * _566) + 128]
        mem[(98 * arg1.length) + 224 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
        mem[(131 * arg1.length) + 224] = arg1.length
        mem[64] = (164 * arg1.length) + 256
        if not arg1.length:
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                    revert with 0, 'PixelCon index is out of bounds'
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                require mem[(32 * idx) + 152 len 8] < stor10.length
                require idx < mem[(64 * arg1.length) + 160]
                mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[32] = 4
                require idx < mem[(98 * arg1.length) + 192]
                mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[0] = 9
                require idx < mem[(131 * arg1.length) + 224]
                mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _570 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _570) + 160
            mem[(32 * _570) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _1011 = mem[(64 * arg1.length) + 160]
            mem[(32 * _570) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _1011) + (32 * _570) + 192
            mem[(32 * _1011) + (32 * _570) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
            _1187 = mem[(98 * arg1.length) + 192]
            mem[(32 * _1011) + (32 * _570) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[mem[64] + 96] = (32 * _1187) + (32 * _1011) + (32 * _570) + 224
            mem[(32 * _1187) + (32 * _1011) + (32 * _570) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
            _1315 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1187) + (32 * _1011) + (32 * _570) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return 128, 
                   (32 * _570) + 160,
                   (32 * _1011) + (32 * _570) + 192,
                   (32 * _1187) + (32 * _1011) + (32 * _570) + 224,
                   mem[mem[64] + 128 len (32 * _1315) + (32 * _1187) + (32 * _1011) + (32 * _570) + 128]
        mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                revert with 0, 'PixelCon index is out of bounds'
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
            require mem[(32 * idx) + 152 len 8] < stor10.length
            require idx < mem[(64 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
            require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
            mem[32] = 4
            require idx < mem[(98 * arg1.length) + 192]
            mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
            require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
            mem[0] = 9
            require idx < mem[(131 * arg1.length) + 224]
            mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        _572 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
        _574 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _574) + 160
        mem[(32 * _574) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
        _1014 = mem[(64 * arg1.length) + 160]
        mem[(32 * _574) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[mem[64] + 64] = (32 * _1014) + (32 * _574) + 192
        mem[(32 * _1014) + (32 * _574) + _572 + 192] = mem[(98 * arg1.length) + 192]
        _1190 = mem[(98 * arg1.length) + 192]
        mem[(32 * _1014) + (32 * _574) + _572 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        mem[_572 + 96] = (32 * _1190) + (32 * _1014) + (32 * _574) + 224
        mem[(32 * _1190) + (32 * _1014) + (32 * _574) + _572 + 224] = mem[(131 * arg1.length) + 224]
        _1318 = mem[(131 * arg1.length) + 224]
        mem[(32 * _1190) + (32 * _1014) + (32 * _574) + _572 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
        return memory
          from mem[64]
           len (32 * _1318) + (32 * _1190) + (32 * _1014) + (32 * _574) + _572 + -mem[64] + 256
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
    mem[(64 * arg1.length) + 160] = arg1.length
    if not arg1.length:
        mem[(98 * arg1.length) + 192] = arg1.length
        if not arg1.length:
            mem[(131 * arg1.length) + 224] = arg1.length
            mem[64] = (164 * arg1.length) + 256
            if not arg1.length:
                s = 0
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                        revert with 0, 'PixelCon index is out of bounds'
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                    require mem[(32 * idx) + 152 len 8] < stor10.length
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                    require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                    mem[32] = 4
                    require idx < mem[(98 * arg1.length) + 192]
                    mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                    require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                    mem[0] = 9
                    require idx < mem[(131 * arg1.length) + 224]
                    mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                    s = mem[(32 * idx) + 128]
                    idx = idx + 1
                    continue 
                _576 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
                _578 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[mem[64] + 32] = (32 * _578) + 160
                mem[(32 * _578) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
                _1017 = mem[(64 * arg1.length) + 160]
                mem[(32 * _578) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                mem[mem[64] + 64] = (32 * _1017) + (32 * _578) + 192
                mem[(32 * _1017) + (32 * _578) + _576 + 192] = mem[(98 * arg1.length) + 192]
                _1193 = mem[(98 * arg1.length) + 192]
                mem[(32 * _1017) + (32 * _578) + _576 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                mem[_576 + 96] = (32 * _1193) + (32 * _1017) + (32 * _578) + 224
                mem[(32 * _1193) + (32 * _1017) + (32 * _578) + _576 + 224] = mem[(131 * arg1.length) + 224]
                _1321 = mem[(131 * arg1.length) + 224]
                mem[(32 * _1193) + (32 * _1017) + (32 * _578) + _576 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
                return memory
                  from mem[64]
                   len (32 * _1321) + (32 * _1193) + (32 * _1017) + (32 * _578) + _576 + -mem[64] + 256
            mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                    revert with 0, 'PixelCon index is out of bounds'
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                require mem[(32 * idx) + 152 len 8] < stor10.length
                require idx < mem[(64 * arg1.length) + 160]
                mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[32] = 4
                require idx < mem[(98 * arg1.length) + 192]
                mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[0] = 9
                require idx < mem[(131 * arg1.length) + 224]
                mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            _580 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _582 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _582) + 160
            mem[(32 * _582) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _1020 = mem[(64 * arg1.length) + 160]
            mem[(32 * _582) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _1020) + (32 * _582) + 192
            mem[(32 * _1020) + (32 * _582) + _580 + 192] = mem[(98 * arg1.length) + 192]
            _1196 = mem[(98 * arg1.length) + 192]
            mem[(32 * _1020) + (32 * _582) + _580 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[_580 + 96] = (32 * _1196) + (32 * _1020) + (32 * _582) + 224
            mem[(32 * _1196) + (32 * _1020) + (32 * _582) + _580 + 224] = mem[(131 * arg1.length) + 224]
            _1324 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1196) + (32 * _1020) + (32 * _582) + _580 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return memory
              from mem[64]
               len (32 * _1324) + (32 * _1196) + (32 * _1020) + (32 * _582) + _580 + -mem[64] + 256
        mem[(98 * arg1.length) + 224 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
        mem[(131 * arg1.length) + 224] = arg1.length
        mem[64] = (164 * arg1.length) + 256
        if not arg1.length:
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                    revert with 0, 'PixelCon index is out of bounds'
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                require mem[(32 * idx) + 152 len 8] < stor10.length
                require idx < mem[(64 * arg1.length) + 160]
                mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[32] = 4
                require idx < mem[(98 * arg1.length) + 192]
                mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[0] = 9
                require idx < mem[(131 * arg1.length) + 224]
                mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            _584 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _586 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _586) + 160
            mem[(32 * _586) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _1023 = mem[(64 * arg1.length) + 160]
            mem[(32 * _586) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _1023) + (32 * _586) + 192
            mem[(32 * _1023) + (32 * _586) + _584 + 192] = mem[(98 * arg1.length) + 192]
            _1199 = mem[(98 * arg1.length) + 192]
            mem[(32 * _1023) + (32 * _586) + _584 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[_584 + 96] = (32 * _1199) + (32 * _1023) + (32 * _586) + 224
            mem[(32 * _1199) + (32 * _1023) + (32 * _586) + _584 + 224] = mem[(131 * arg1.length) + 224]
            _1327 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1199) + (32 * _1023) + (32 * _586) + _584 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return memory
              from mem[64]
               len (32 * _1327) + (32 * _1199) + (32 * _1023) + (32 * _586) + _584 + -mem[64] + 256
        mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                revert with 0, 'PixelCon index is out of bounds'
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
            require mem[(32 * idx) + 152 len 8] < stor10.length
            require idx < mem[(64 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
            require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
            mem[32] = 4
            require idx < mem[(98 * arg1.length) + 192]
            mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
            require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
            mem[0] = 9
            require idx < mem[(131 * arg1.length) + 224]
            mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        _588 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
        _590 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _590) + 160
        mem[(32 * _590) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
        _1026 = mem[(64 * arg1.length) + 160]
        mem[(32 * _590) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[mem[64] + 64] = (32 * _1026) + (32 * _590) + 192
        mem[(32 * _1026) + (32 * _590) + _588 + 192] = mem[(98 * arg1.length) + 192]
        _1202 = mem[(98 * arg1.length) + 192]
        mem[(32 * _1026) + (32 * _590) + _588 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        mem[_588 + 96] = (32 * _1202) + (32 * _1026) + (32 * _590) + 224
        mem[(32 * _1202) + (32 * _1026) + (32 * _590) + _588 + 224] = mem[(131 * arg1.length) + 224]
        _1330 = mem[(131 * arg1.length) + 224]
        mem[(32 * _1202) + (32 * _1026) + (32 * _590) + _588 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
        return memory
          from mem[64]
           len (32 * _1330) + (32 * _1202) + (32 * _1026) + (32 * _590) + _588 + -mem[64] + 256
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
    mem[(98 * arg1.length) + 192] = arg1.length
    if not arg1.length:
        mem[(131 * arg1.length) + 224] = arg1.length
        mem[64] = (164 * arg1.length) + 256
        if not arg1.length:
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                    revert with 0, 'PixelCon index is out of bounds'
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
                require mem[(32 * idx) + 152 len 8] < stor10.length
                require idx < mem[(64 * arg1.length) + 160]
                mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[32] = 4
                require idx < mem[(98 * arg1.length) + 192]
                mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
                require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
                mem[0] = 9
                require idx < mem[(131 * arg1.length) + 224]
                mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            _592 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _594 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _594) + 160
            mem[(32 * _594) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _1029 = mem[(64 * arg1.length) + 160]
            mem[(32 * _594) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _1029) + (32 * _594) + 192
            mem[(32 * _1029) + (32 * _594) + _592 + 192] = mem[(98 * arg1.length) + 192]
            _1205 = mem[(98 * arg1.length) + 192]
            mem[(32 * _1029) + (32 * _594) + _592 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[_592 + 96] = (32 * _1205) + (32 * _1029) + (32 * _594) + 224
            mem[(32 * _1205) + (32 * _1029) + (32 * _594) + _592 + 224] = mem[(131 * arg1.length) + 224]
            _1333 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1205) + (32 * _1029) + (32 * _594) + _592 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return memory
              from mem[64]
               len (32 * _1333) + (32 * _1205) + (32 * _1029) + (32 * _594) + _592 + -mem[64] + 256
        mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                revert with 0, 'PixelCon index is out of bounds'
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
            require mem[(32 * idx) + 152 len 8] < stor10.length
            require idx < mem[(64 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
            require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
            mem[32] = 4
            require idx < mem[(98 * arg1.length) + 192]
            mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
            require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
            mem[0] = 9
            require idx < mem[(131 * arg1.length) + 224]
            mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        _596 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
        _598 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _598) + 160
        mem[(32 * _598) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
        _1032 = mem[(64 * arg1.length) + 160]
        mem[(32 * _598) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[mem[64] + 64] = (32 * _1032) + (32 * _598) + 192
        mem[(32 * _1032) + (32 * _598) + _596 + 192] = mem[(98 * arg1.length) + 192]
        _1208 = mem[(98 * arg1.length) + 192]
        mem[(32 * _1032) + (32 * _598) + _596 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        mem[_596 + 96] = (32 * _1208) + (32 * _1032) + (32 * _598) + 224
        mem[(32 * _1208) + (32 * _1032) + (32 * _598) + _596 + 224] = mem[(131 * arg1.length) + 224]
        _1336 = mem[(131 * arg1.length) + 224]
        mem[(32 * _1208) + (32 * _1032) + (32 * _598) + _596 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
        return memory
          from mem[64]
           len (32 * _1336) + (32 * _1208) + (32 * _1032) + (32 * _598) + _596 + -mem[64] + 256
    mem[(98 * arg1.length) + 224 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
    mem[(131 * arg1.length) + 224] = arg1.length
    mem[64] = (164 * arg1.length) + 256
    if not arg1.length:
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
                revert with 0, 'PixelCon index is out of bounds'
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
            require mem[(32 * idx) + 152 len 8] < stor10.length
            require idx < mem[(64 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
            require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
            mem[32] = 4
            require idx < mem[(98 * arg1.length) + 192]
            mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
            require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
            mem[0] = 9
            require idx < mem[(131 * arg1.length) + 224]
            mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        _600 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
        _602 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _602) + 160
        mem[(32 * _602) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
        _1035 = mem[(64 * arg1.length) + 160]
        mem[(32 * _602) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[mem[64] + 64] = (32 * _1035) + (32 * _602) + 192
        mem[(32 * _1035) + (32 * _602) + _600 + 192] = mem[(98 * arg1.length) + 192]
        _1211 = mem[(98 * arg1.length) + 192]
        mem[(32 * _1035) + (32 * _602) + _600 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        mem[_600 + 96] = (32 * _1211) + (32 * _1035) + (32 * _602) + 224
        mem[(32 * _1211) + (32 * _1035) + (32 * _602) + _600 + 224] = mem[(131 * arg1.length) + 224]
        _1339 = mem[(131 * arg1.length) + 224]
        mem[(32 * _1211) + (32 * _1035) + (32 * _602) + _600 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
        return memory
          from mem[64]
           len (32 * _1339) + (32 * _1211) + (32 * _1035) + (32 * _602) + _600 + -mem[64] + 256
    mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[21145 len 32 * arg1.length]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if mem[(32 * idx) + 152 len 8] >= tokenOfOwnerByIndex.length:
            revert with 0, 'PixelCon index is out of bounds'
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * arg1.length) + (32 * idx) + 160] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_0
        require mem[(32 * idx) + 152 len 8] < stor10.length
        require idx < mem[(64 * arg1.length) + 160]
        mem[(64 * arg1.length) + (32 * idx) + 192] = uint256(stor10[uint64(mem[(32 * idx) + 128]) / 4]) / 256^(8 * mem[(32 * idx) + 128] % 4) << 192
        require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
        mem[32] = 4
        require idx < mem[(98 * arg1.length) + 192]
        mem[(98 * arg1.length) + (32 * idx) + 224] = tokenIndex[stor9[2 * uint64(mem[(32 * idx) + 128])].field_0].field_0
        require mem[(32 * idx) + 152 len 8] < tokenOfOwnerByIndex.length
        mem[0] = 9
        require idx < mem[(131 * arg1.length) + 224]
        mem[(131 * arg1.length) + (32 * idx) + 256] = tokenOfOwnerByIndex[2 * uint64(mem[(32 * idx) + 128])].field_416
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    _604 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
    _606 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[mem[64] + 32] = (32 * _606) + 160
    mem[(32 * _606) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
    _1038 = mem[(64 * arg1.length) + 160]
    mem[(32 * _606) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    mem[mem[64] + 64] = (32 * _1038) + (32 * _606) + 192
    mem[(32 * _1038) + (32 * _606) + _604 + 192] = mem[(98 * arg1.length) + 192]
    _1214 = mem[(98 * arg1.length) + 192]
    mem[(32 * _1038) + (32 * _606) + _604 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
    mem[_604 + 96] = (32 * _1214) + (32 * _1038) + (32 * _606) + 224
    mem[(32 * _1214) + (32 * _1038) + (32 * _606) + _604 + 224] = mem[(131 * arg1.length) + 224]
    _1342 = mem[(131 * arg1.length) + 224]
    mem[(32 * _1214) + (32 * _1038) + (32 * _606) + _604 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
    return memory
      from mem[64]
       len (32 * _1342) + (32 * _1214) + (32 * _1038) + (32 * _606) + _604 + -mem[64] + 256
}



}
