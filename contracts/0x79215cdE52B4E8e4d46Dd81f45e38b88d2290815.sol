contract main {




// =====================  Runtime code  =====================


const name = 'Pillar Badges'

const implementsERC721 = 1

const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000

const tokenOfOwnerByIndex(address arg1, uint256 arg2) = 0

const sub_7fb42a36(?) = 1

const symbol = 'PBG'


address owner;
mapping of uint8 stor1;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address ownerOf;
mapping of uint8 stor5;
mapping of address approved;
mapping of uint256 stor7;
mapping of uint256 sub_17be1933;
mapping of uint8 stor9;
array of struct sub_b762fcfc;

function supportsInterface(bytes4 arg1) {
    return bool(stor1[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function sub_17be1933(?) {
    return sub_17be1933[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function exists(uint256 arg1) {
    return bool(stor7[arg1])
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    if not ownerOf[arg1]:
        revert with 0, 'Coin does not exist'
    return ownerOf[arg1]
}

function owner() {
    return owner
}

function isTransferable(uint256 arg1) {
    return bool(stor9[arg1])
}

function sub_b762fcfc(?) {
    return sub_b762fcfc[0 len sub_b762fcfc.length].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_e47952c2(?) {
    return (2 == stor7[arg1])
}

function isNFT(uint256 arg1) {
    return (1 == stor7[arg1])
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_3f87db25(?) {
    require msg.sender == owner
    sub_b762fcfc[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function balanceOf(address arg1, uint256 arg2) {
    return uint16(stor3[address(arg1)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256))
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    if not ownerOf[arg2]:
        revert with 0, 'Coin does not exist'
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor5[stor4[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_f2693c49(?) {
    require msg.sender == owner
    if stor7[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Tried to mint duplicate token id'
    if stor7[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Tried to mint duplicate token id'
    stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] = 2^(-(16 * (arg1 % 16) + 1) + 256) or !(65535 * 2^(-(16 * (arg1 % 16) + 1) + 256)) and stor3[address(msg.sender)][Mask(252, 0, arg1) * 16]
    ownerOf[arg1] = msg.sender
    stor7[arg1] = 1
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = arg1
    emit Transfer(this.address, msg.sender, arg1);
    sub_17be1933[arg1] = -1
    stor9[arg1] = uint8(arg2)
    emit 0xd81dad97: 1, 1, arg2, arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor7[arg3]:
        revert with 0, 'TokenID has not been minted'
    if not stor9[arg3]:
        revert with 0, 'TokenID is not transferable'
    require 1 == stor7[arg3]
    if not ownerOf[arg3]:
        revert with 0, 'Coin does not exist'
    if arg1 != ownerOf[arg3]:
        if approved[arg3] != arg1:
            require stor5[stor4[arg3]][address(arg1)]
    if not arg2:
        revert with 0, 'Invalid to address'
    stor3[address(arg1)][Mask(252, 0, arg3) * 16] = !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, arg3) * 16]
    stor3[address(arg2)][Mask(252, 0, arg3) * 16] = 2^(-(16 * (arg3 % 16) + 1) + 256) or !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg2)][Mask(252, 0, arg3) * 16]
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function sub_bb44e357(?) {
    require msg.sender == owner
    if stor7[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error: Tried to mint duplicate token id'
    if stor7[arg1]:
        if stor7[arg1] != 2:
            revert with 0, 'Not a FT'
    else:
        stor7[arg1] = 2
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
    require arg2 + uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) >= uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256))
    if arg2 + uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) >= 65536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to write in bin is too large'
    stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] = (arg2 * 2^(-(16 * (arg1 % 16) + 1) + 256)) + (uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) * 2^(-(16 * (arg1 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg1 % 16) + 1) + 256)) and stor3[address(msg.sender)][Mask(252, 0, arg1) * 16]
    emit TransferWithQuantity(arg2, this.address, msg.sender, arg1);
    sub_17be1933[arg1] = arg2
    stor9[arg1] = uint8(arg3)
    emit 0xd81dad97: arg2, 2, arg3, arg1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    if not stor7[arg3]:
        revert with 0, 'TokenID has not been minted'
    if not stor9[arg3]:
        revert with 0, 'TokenID is not transferable'
    require 1 == stor7[arg3]
    if not ownerOf[arg3]:
        revert with 0, 'Coin does not exist'
    if arg1 != ownerOf[arg3]:
        if approved[arg3] != arg1:
            require stor5[stor4[arg3]][address(arg1)]
    if not arg2:
        revert with 0, 'Invalid to address'
    stor3[address(arg1)][Mask(252, 0, arg3) * 16] = !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, arg3) * 16]
    stor3[address(arg2)][Mask(252, 0, arg3) * 16] = 2^(-(16 * (arg3 % 16) + 1) + 256) or !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg2)][Mask(252, 0, arg3) * 16]
    ownerOf[arg3] = arg2
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
            revert with 0, 'Sent to a contract which is not an ERC721 receiver'
}

function sub_aed92421(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require msg.sender == owner
        if stor7[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'Error: Tried to mint duplicate token id'
        if stor7[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'Error: Tried to mint duplicate token id'
        stor3[address(msg.sender)][Mask(252, 0, cd[((32 * idx) + cd[4] + 36)]) * 16] = 2^(-(16 * (cd[((32 * idx) + cd[4] + 36)] % 16) + 1) + 256) or !(65535 * 2^(-(16 * (cd[((32 * idx) + cd[4] + 36)] % 16) + 1) + 256)) and stor3[address(msg.sender)][Mask(252, 0, cd[((32 * idx) + cd[4] + 36)]) * 16]
        ownerOf[cd[((32 * idx) + cd[4] + 36)]] = msg.sender
        stor7[cd[((32 * idx) + cd[4] + 36)]] = 1
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = cd[((32 * idx) + cd[4] + 36)]
        emit Transfer(this.address, msg.sender, cd[((32 * idx) + cd[4] + 36)]);
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        sub_17be1933[cd[((32 * idx) + cd[4] + 36)]] = -1
        mem[32] = 9
        stor9[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        mem[mem[64]] = 1
        mem[mem[64] + 32] = 1
        mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[36] + 36)])
        emit 0xd81dad97: 1, 1, bool(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function tokensMinted() {
    if not tokenByIndex.length:
        mem[(32 * tokenByIndex.length) + 128] = tokenByIndex.length
    else:
        mem[128 len 32 * tokenByIndex.length] = code.data[14195 len 32 * tokenByIndex.length]
        mem[(32 * tokenByIndex.length) + 128] = tokenByIndex.length
        mem[(32 * tokenByIndex.length) + 160 len 32 * tokenByIndex.length] = code.data[14195 len 32 * tokenByIndex.length]
    s = 0
    idx = 0
    while idx < tokenByIndex.length:
        require idx < tokenByIndex.length
        mem[(32 * idx) + 128] = tokenByIndex[idx].field_0
        mem[0] = tokenByIndex[idx].field_0
        mem[32] = 8
        require idx < mem[(32 * tokenByIndex.length) + 128]
        mem[(32 * tokenByIndex.length) + (32 * idx) + 160] = sub_17be1933[stor2[idx].field_0]
        s = tokenByIndex[idx].field_0
        idx = idx + 1
        continue 
    mem[(64 * tokenByIndex.length) + 160] = 64
    mem[(64 * tokenByIndex.length) + 224] = tokenByIndex.length
    mem[(64 * tokenByIndex.length) + 256 len floor32(tokenByIndex.length)] = mem[128 len floor32(tokenByIndex.length)]
    mem[(64 * tokenByIndex.length) + 192] = (32 * tokenByIndex.length) + 96
    mem[(98 * tokenByIndex.length) + 256] = mem[(32 * tokenByIndex.length) + 128]
    mem[(98 * tokenByIndex.length) + 288 len floor32(mem[(32 * tokenByIndex.length) + 128])] = mem[(32 * tokenByIndex.length) + 160 len floor32(mem[(32 * tokenByIndex.length) + 128])]
    return memory
      from (64 * tokenByIndex.length) + 160
       len (32 * mem[(32 * tokenByIndex.length) + 128]) + (161 * tokenByIndex.length) + 128
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor7[arg3]:
        revert with 0, 'TokenID has not been minted'
    if not stor9[arg3]:
        revert with 0, 'TokenID is not transferable'
    if not stor7[arg3]:
        revert with 0, 'TokenID has not been minted'
    if not stor9[arg3]:
        revert with 0, 'TokenID is not transferable'
    require 1 == stor7[arg3]
    if not ownerOf[arg3]:
        revert with 0, 'Coin does not exist'
    if arg1 != ownerOf[arg3]:
        if approved[arg3] != arg1:
            require stor5[stor4[arg3]][address(arg1)]
    if not arg2:
        revert with 0, 'Invalid to address'
    stor3[address(arg1)][Mask(252, 0, arg3) * 16] = !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, arg3) * 16]
    stor3[address(arg2)][Mask(252, 0, arg3) * 16] = 2^(-(16 * (arg3 % 16) + 1) + 256) or !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg2)][Mask(252, 0, arg3) * 16]
    ownerOf[arg3] = arg2
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
            revert with 0, 'Sent to a contract which is not an ERC721 receiver'
}

function transferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    if not stor7[arg3]:
        revert with 0, 'TokenID has not been minted'
    if not stor9[arg3]:
        revert with 0, 'TokenID is not transferable'
    if arg1 != msg.sender:
        if not stor5[address(arg1)][msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender is neither _from nor operator'
    require 2 == stor7[arg3]
    if arg4 > uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quantity greater than from balance'
    if not arg2:
        revert with 0, 'Invalid to address'
    require arg4 <= uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256))
    if uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) - arg4 >= 65536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to write in bin is too large'
    stor3[address(arg1)][Mask(252, 0, arg3) * 16] = (uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) * 2^(-(16 * (arg3 % 16) + 1) + 256)) - (arg4 * 2^(-(16 * (arg3 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, arg3) * 16]
    require arg4 + uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) >= uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256))
    if arg4 + uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) >= 65536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to write in bin is too large'
    stor3[address(arg2)][Mask(252, 0, arg3) * 16] = (arg4 * 2^(-(16 * (arg3 % 16) + 1) + 256)) + (uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) * 2^(-(16 * (arg3 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg2)][Mask(252, 0, arg3) * 16]
    emit TransferWithQuantity(arg4, arg1, arg2, arg3);
}

function balanceOf(address arg1) {
    if not tokenByIndex.length:
        mem[(32 * tokenByIndex.length) + 128] = tokenByIndex.length
    else:
        mem[128 len 32 * tokenByIndex.length] = code.data[14195 len 32 * tokenByIndex.length]
        mem[(32 * tokenByIndex.length) + 128] = tokenByIndex.length
        mem[(32 * tokenByIndex.length) + 160 len 32 * tokenByIndex.length] = code.data[14195 len 32 * tokenByIndex.length]
    s = 0
    idx = 0
    s = 0
    while idx < tokenByIndex.length:
        mem[0] = Mask(248, 0, tokenByIndex[idx].field_4)
        mem[32] = sha3(address(arg1), 3)
        if uint16(stor3[address(arg1)][Mask(248, 0, stor2[idx].field_0)] / 2^(-(16 * tokenByIndex[idx].field_0 % 16 + 1) + 256)) <= 0:
            s = tokenByIndex[idx].field_0
            idx = idx + 1
            s = s
            continue 
        mem[0] = Mask(248, 0, tokenByIndex[idx].field_4)
        mem[32] = sha3(address(arg1), 3)
        require s < mem[(32 * tokenByIndex.length) + 128]
        mem[(32 * tokenByIndex.length) + (32 * s) + 160] = uint16(stor3[address(arg1)][Mask(248, 0, stor2[idx].field_0)] / 2^(-(16 * tokenByIndex[idx].field_0 % 16 + 1) + 256))
        require s < tokenByIndex.length
        mem[(32 * s) + 128] = tokenByIndex[idx].field_0
        s = tokenByIndex[idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    if not s:
        mem[(64 * tokenByIndex.length) + (32 * s) + 192] = s
    else:
        mem[(64 * tokenByIndex.length) + 192 len 32 * s] = code.data[14195 len 32 * s]
        mem[(64 * tokenByIndex.length) + (32 * s) + 192] = s
        mem[(64 * tokenByIndex.length) + (32 * s) + 224 len 32 * s] = code.data[14195 len 32 * s]
    t = 0
    while t < s:
        require t < mem[(32 * tokenByIndex.length) + 128]
        require t < mem[(64 * tokenByIndex.length) + 160]
        mem[(64 * tokenByIndex.length) + (32 * t) + 192] = mem[(32 * t) + (32 * tokenByIndex.length) + 160]
        require t < tokenByIndex.length
        require t < mem[(64 * tokenByIndex.length) + (32 * s) + 192]
        mem[(64 * tokenByIndex.length) + (32 * s) + (32 * t) + 224] = mem[(32 * t) + 128]
        t = t + 1
        continue 
    return memory
      from (64 * tokenByIndex.length) + 160
       len 32
}

function transfer(address arg1, uint256 arg2, uint256 arg3) {
    if not stor7[arg2]:
        revert with 0, 'TokenID has not been minted'
    if not stor9[arg2]:
        revert with 0, 'TokenID is not transferable'
    if msg.sender != msg.sender:
        if not stor5[address(msg.sender)][msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.sender is neither _from nor operator'
    require 2 == stor7[arg2]
    if arg3 > uint16(stor3[address(msg.sender)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256)):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quantity greater than from balance'
    if not arg1:
        revert with 0, 'Invalid to address'
    require arg3 <= uint16(stor3[address(msg.sender)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256))
    if uint16(stor3[address(msg.sender)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256)) - arg3 >= 65536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to write in bin is too large'
    stor3[address(msg.sender)][Mask(252, 0, arg2) * 16] = (uint16(stor3[address(msg.sender)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256)) * 2^(-(16 * (arg2 % 16) + 1) + 256)) - (arg3 * 2^(-(16 * (arg2 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg2 % 16) + 1) + 256)) and stor3[address(msg.sender)][Mask(252, 0, arg2) * 16]
    require arg3 + uint16(stor3[address(arg1)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256)) >= uint16(stor3[address(arg1)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256))
    if arg3 + uint16(stor3[address(arg1)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256)) >= 65536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to write in bin is too large'
    stor3[address(arg1)][Mask(252, 0, arg2) * 16] = (arg3 * 2^(-(16 * (arg2 % 16) + 1) + 256)) + (uint16(stor3[address(arg1)][Mask(252, 0, arg2) * 16] / 2^(-(16 * (arg2 % 16) + 1) + 256)) * 2^(-(16 * (arg2 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg2 % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, arg2) * 16]
    emit TransferWithQuantity(arg3, msg.sender, arg1, arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    if not stor7[arg3]:
        revert with 0, 'TokenID has not been minted'
    if not stor9[arg3]:
        revert with 0, 'TokenID is not transferable'
    if arg1 != msg.sender:
        if not stor5[address(arg1)][msg.sender]:
            revert with 0, 'msg.sender is neither _from nor operator'
    require 2 == stor7[arg3]
    if arg4 > uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)):
        revert with 0, 'Quantity greater than from balance'
    if not arg2:
        revert with 0, 'Invalid to address'
    require arg4 <= uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256))
    if uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) - arg4 >= 65536:
        revert with 0, 'Amount to write in bin is too large'
    stor3[address(arg1)][Mask(252, 0, arg3) * 16] = (uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) * 2^(-(16 * (arg3 % 16) + 1) + 256)) - (arg4 * 2^(-(16 * (arg3 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, arg3) * 16]
    require arg4 + uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) >= uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256))
    if arg4 + uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) >= 65536:
        revert with 0, 'Amount to write in bin is too large'
    stor3[address(arg2)][Mask(252, 0, arg3) * 16] = (arg4 * 2^(-(16 * (arg3 % 16) + 1) + 256)) + (uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) * 2^(-(16 * (arg3 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg2)][Mask(252, 0, arg3) * 16]
    emit TransferWithQuantity(arg4, arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x93ba7daa with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 'f3p':
            revert with 0, 'Sent to a contract which is not an ERC721X receiver'
}

function sub_f048a431(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require msg.sender == owner
        if stor7[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'Error: Tried to mint duplicate token id'
        if stor7[cd[((32 * idx) + cd[4] + 36)]]:
            if stor7[cd[((32 * idx) + cd[4] + 36)]] != 2:
                revert with 0, 'Not a FT'
        else:
            stor7[cd[((32 * idx) + cd[4] + 36)]] = 2
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = cd[((32 * idx) + cd[4] + 36)]
        require cd[((32 * idx) + cd[36] + 36)] + uint16(stor3[address(msg.sender)][Mask(252, 0, cd[((32 * idx) + cd[4] + 36)]) * 16] / 2^(-(16 * (cd[((32 * idx) + cd[4] + 36)] % 16) + 1) + 256)) >= uint16(stor3[address(msg.sender)][Mask(252, 0, cd[((32 * idx) + cd[4] + 36)]) * 16] / 2^(-(16 * (cd[((32 * idx) + cd[4] + 36)] % 16) + 1) + 256))
        if cd[((32 * idx) + cd[36] + 36)] + uint16(stor3[address(msg.sender)][Mask(252, 0, cd[((32 * idx) + cd[4] + 36)]) * 16] / 2^(-(16 * (cd[((32 * idx) + cd[4] + 36)] % 16) + 1) + 256)) >= 65536:
            revert with 0, 'Amount to write in bin is too large'
        stor3[address(msg.sender)][Mask(252, 0, cd[((32 * idx) + cd[4] + 36)]) * 16] = (cd[((32 * idx) + cd[36] + 36)] * 2^(-(16 * (cd[((32 * idx) + cd[4] + 36)] % 16) + 1) + 256)) + (uint16(stor3[address(msg.sender)][Mask(252, 0, cd[((32 * idx) + cd[4] + 36)]) * 16] / 2^(-(16 * (cd[((32 * idx) + cd[4] + 36)] % 16) + 1) + 256)) * 2^(-(16 * (cd[((32 * idx) + cd[4] + 36)] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (cd[((32 * idx) + cd[4] + 36)] % 16) + 1) + 256)) and stor3[address(msg.sender)][Mask(252, 0, cd[((32 * idx) + cd[4] + 36)]) * 16]
        emit TransferWithQuantity(cd[((32 * idx) + cd[36] + 36)], this.address, msg.sender, cd[((32 * idx) + cd[4] + 36)]);
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        sub_17be1933[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = 9
        stor9[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
        mem[mem[64]] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 32] = 2
        mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
        emit 0xd81dad97: cd[((32 * idx) + cd[36] + 36)], 2, bool(cd[((32 * idx) + cd[68] + 36)]), cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    mem[32] = 7
    if not stor7[arg1]:
        revert with 0, 'Token doesn't exist'
    mem[96] = sub_b762fcfc.length
    mem[0] = 10
    mem[128] = uint256(sub_b762fcfc.field_0)
    idx = 128
    s = 0
    while sub_b762fcfc.length + 96 > idx:
        mem[idx + 32] = sub_b762fcfc[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_b762fcfc.length) + 128] = 78
    mem[ceil32(sub_b762fcfc.length) + 160 len 2496] = code.data[14195 len 2496]
    s = 0
    s = 0
    idx = arg1
    while idx:
        require s < 78
        mem[ceil32(sub_b762fcfc.length) + s + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        s = idx % 10
        s = s + 1
        idx = idx / 10
        continue 
    mem[ceil32(sub_b762fcfc.length) + 256] = sub_b762fcfc.length + s
    mem[64] = ceil32(sub_b762fcfc.length) + floor32(sub_b762fcfc.length + s + 31) + 288
    if sub_b762fcfc.length + s:
        mem[ceil32(sub_b762fcfc.length) + 288 len 32 * sub_b762fcfc.length + s] = code.data[14195 len 32 * sub_b762fcfc.length + s]
    idx = 0
    while idx < sub_b762fcfc.length:
        require idx < sub_b762fcfc.length
        require idx < sub_b762fcfc.length + s
        mem[ceil32(sub_b762fcfc.length) + idx + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    t = 0
    while t < s:
        require s + -t - 1 < 78
        require t < s
        mem[ceil32(sub_b762fcfc.length) + t + sub_b762fcfc.length + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 159, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'sub_b762fcfc', 10))))), ('var', 1), ('mul', -1, ('var', 2))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 159, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'sub_b762fcfc', 10))))), ('var', 1), ('mul', -1, ('var', 2))), 32))), 0) - 256
        t = t + 1
        continue 
    mem[ceil32(sub_b762fcfc.length) + floor32(sub_b762fcfc.length + s + 31) + 352 len floor32(sub_b762fcfc.length + s + 31)] = mem[ceil32(sub_b762fcfc.length) + 288 len floor32(sub_b762fcfc.length + s + 31)]
    return Array(len=sub_b762fcfc.length + s, data=mem[ceil32(sub_b762fcfc.length) + floor32(sub_b762fcfc.length + s + 31) + 352 len sub_b762fcfc.length + s]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    if not stor7[arg3]:
        revert with 0, 'TokenID has not been minted'
    if not stor9[arg3]:
        revert with 0, 'TokenID is not transferable'
    if not stor7[arg3]:
        revert with 0, 'TokenID has not been minted'
    if not stor9[arg3]:
        revert with 0, 'TokenID is not transferable'
    if arg1 != msg.sender:
        if not stor5[address(arg1)][msg.sender]:
            revert with 0, 'msg.sender is neither _from nor operator'
    require 2 == stor7[arg3]
    if arg4 > uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)):
        revert with 0, 'Quantity greater than from balance'
    if not arg2:
        revert with 0, 'Invalid to address'
    require arg4 <= uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256))
    if uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) - arg4 >= 65536:
        revert with 0, 'Amount to write in bin is too large'
    stor3[address(arg1)][Mask(252, 0, arg3) * 16] = (uint16(stor3[address(arg1)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) * 2^(-(16 * (arg3 % 16) + 1) + 256)) - (arg4 * 2^(-(16 * (arg3 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, arg3) * 16]
    require arg4 + uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) >= uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256))
    if arg4 + uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) >= 65536:
        revert with 0, 'Amount to write in bin is too large'
    stor3[address(arg2)][Mask(252, 0, arg3) * 16] = (arg4 * 2^(-(16 * (arg3 % 16) + 1) + 256)) + (uint16(stor3[address(arg2)][Mask(252, 0, arg3) * 16] / 2^(-(16 * (arg3 % 16) + 1) + 256)) * 2^(-(16 * (arg3 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg3 % 16) + 1) + 256)) and stor3[address(arg2)][Mask(252, 0, arg3) * 16]
    emit TransferWithQuantity(arg4, arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x93ba7daa with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, arg4, 160, 0, None
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 'f3p':
            revert with 0, 'Sent to a contract which is not an ERC721X receiver'
}

function sub_d6afb1f5(?) {
    require msg.sender == owner
    if not stor7[arg1]:
        revert with 0, 'TokenID has not been minted'
    if stor7[arg1] != 1:
        if sub_17be1933[arg1] > 0:
            if arg3 > uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quantity greater than from balance'
            require arg3 <= uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256))
            if uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) - arg3 >= 65536:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to write in bin is too large'
            stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] = (uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) * 2^(-(16 * (arg1 % 16) + 1) + 256)) - (arg3 * 2^(-(16 * (arg1 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg1 % 16) + 1) + 256)) and stor3[address(msg.sender)][Mask(252, 0, arg1) * 16]
        require arg3 + uint16(stor3[address(arg2)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) >= uint16(stor3[address(arg2)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256))
        if arg3 + uint16(stor3[address(arg2)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) >= 65536:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to write in bin is too large'
        stor3[address(arg2)][Mask(252, 0, arg1) * 16] = (arg3 * 2^(-(16 * (arg1 % 16) + 1) + 256)) + (uint16(stor3[address(arg2)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) * 2^(-(16 * (arg1 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg1 % 16) + 1) + 256)) and stor3[address(arg2)][Mask(252, 0, arg1) * 16]
    else:
        require 1 == stor7[arg1]
        if not ownerOf[arg1]:
            revert with 0, 'Coin does not exist'
        if ownerOf[arg1] != msg.sender:
            if approved[arg1] != msg.sender:
                require stor5[stor4[arg1]][address(msg.sender)]
        if not arg2:
            revert with 0, 'Invalid to address'
        stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] = !(65535 * 2^(-(16 * (arg1 % 16) + 1) + 256)) and stor3[address(msg.sender)][Mask(252, 0, arg1) * 16]
        stor3[address(arg2)][Mask(252, 0, arg1) * 16] = 2^(-(16 * (arg1 % 16) + 1) + 256) or !(65535 * 2^(-(16 * (arg1 % 16) + 1) + 256)) and stor3[address(arg2)][Mask(252, 0, arg1) * 16]
        ownerOf[arg1] = arg2
        emit Transfer(msg.sender, arg2, arg1);
    emit 0xb4689112: address(arg2), arg3, arg1
}

function tokensOwned(address arg1) {
    if not tokenByIndex.length:
        mem[(32 * tokenByIndex.length) + 128] = tokenByIndex.length
    else:
        mem[128 len 32 * tokenByIndex.length] = code.data[14195 len 32 * tokenByIndex.length]
        mem[(32 * tokenByIndex.length) + 128] = tokenByIndex.length
        mem[(32 * tokenByIndex.length) + 160 len 32 * tokenByIndex.length] = code.data[14195 len 32 * tokenByIndex.length]
    s = 0
    idx = 0
    s = 0
    while idx < tokenByIndex.length:
        mem[0] = Mask(248, 0, tokenByIndex[idx].field_4)
        mem[32] = sha3(address(arg1), 3)
        if uint16(stor3[address(arg1)][Mask(248, 0, stor2[idx].field_0)] / 2^(-(16 * tokenByIndex[idx].field_0 % 16 + 1) + 256)) <= 0:
            s = tokenByIndex[idx].field_0
            idx = idx + 1
            s = s
            continue 
        mem[0] = Mask(248, 0, tokenByIndex[idx].field_4)
        mem[32] = sha3(address(arg1), 3)
        require s < mem[(32 * tokenByIndex.length) + 128]
        mem[(32 * tokenByIndex.length) + (32 * s) + 160] = uint16(stor3[address(arg1)][Mask(248, 0, stor2[idx].field_0)] / 2^(-(16 * tokenByIndex[idx].field_0 % 16 + 1) + 256))
        require s < tokenByIndex.length
        mem[(32 * s) + 128] = tokenByIndex[idx].field_0
        s = tokenByIndex[idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    if not s:
        mem[(64 * tokenByIndex.length) + (32 * s) + 192] = s
    else:
        mem[(64 * tokenByIndex.length) + 192 len 32 * s] = code.data[14195 len 32 * s]
        mem[(64 * tokenByIndex.length) + (32 * s) + 192] = s
        mem[(64 * tokenByIndex.length) + (32 * s) + 224 len 32 * s] = code.data[14195 len 32 * s]
    t = 0
    while t < s:
        require t < mem[(32 * tokenByIndex.length) + 128]
        require t < mem[(64 * tokenByIndex.length) + 160]
        mem[(64 * tokenByIndex.length) + (32 * t) + 192] = mem[(32 * t) + (32 * tokenByIndex.length) + 160]
        require t < tokenByIndex.length
        require t < mem[(64 * tokenByIndex.length) + (32 * s) + 192]
        mem[(64 * tokenByIndex.length) + (32 * s) + (32 * t) + 224] = mem[(32 * t) + 128]
        t = t + 1
        continue 
    mem[(64 * tokenByIndex.length) + (64 * s) + 224] = 64
    mem[(64 * tokenByIndex.length) + (64 * s) + 288] = mem[(64 * tokenByIndex.length) + (32 * s) + 192]
    mem[(64 * tokenByIndex.length) + (64 * s) + 320 len floor32(mem[(64 * tokenByIndex.length) + (32 * s) + 192])] = mem[(64 * tokenByIndex.length) + (32 * s) + 224 len floor32(mem[(64 * tokenByIndex.length) + (32 * s) + 192])]
    mem[(64 * tokenByIndex.length) + (64 * s) + 256] = (32 * mem[(64 * tokenByIndex.length) + (32 * s) + 192]) + 96
    mem[(32 * mem[(64 * tokenByIndex.length) + (32 * s) + 192]) + (64 * tokenByIndex.length) + (64 * s) + 320] = mem[(64 * tokenByIndex.length) + 160]
    mem[(32 * mem[(64 * tokenByIndex.length) + (32 * s) + 192]) + (64 * tokenByIndex.length) + (64 * s) + 352 len floor32(mem[(64 * tokenByIndex.length) + 160])] = mem[(64 * tokenByIndex.length) + 192 len floor32(mem[(64 * tokenByIndex.length) + 160])]
    return Array(len=mem[(64 * tokenByIndex.length) + (32 * s) + 192], data=mem[(64 * tokenByIndex.length) + (64 * s) + 320 len (32 * mem[(64 * tokenByIndex.length) + 160]) + (32 * mem[(64 * tokenByIndex.length) + (32 * s) + 192]) + 32]), 
           (32 * mem[(64 * tokenByIndex.length) + (32 * s) + 192]) + 96
}

function sub_2e6835e7(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require msg.sender == owner
        if not stor7[arg1]:
            revert with 0, 'TokenID has not been minted'
        if stor7[arg1] != 1:
            if sub_17be1933[arg1] > 0:
                if arg3 > uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)):
                    revert with 0, 'Quantity greater than from balance'
                require arg3 <= uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256))
                if uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) - arg3 >= 65536:
                    revert with 0, 'Amount to write in bin is too large'
                stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] = (uint16(stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) * 2^(-(16 * (arg1 % 16) + 1) + 256)) - (arg3 * 2^(-(16 * (arg1 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg1 % 16) + 1) + 256)) and stor3[address(msg.sender)][Mask(252, 0, arg1) * 16]
            require arg3 + uint16(stor3[address(mem[(32 * idx) + 128])][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) >= uint16(stor3[address(mem[(32 * idx) + 128])][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256))
            if arg3 + uint16(stor3[address(mem[(32 * idx) + 128])][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) >= 65536:
                revert with 0, 'Amount to write in bin is too large'
            mem[0] = Mask(248, 4, arg1) >> 4
            mem[32] = sha3(address(mem[(32 * idx) + 128]), 3)
            stor3[address(mem[(32 * idx) + 128])][Mask(252, 0, arg1) * 16] = (arg3 * 2^(-(16 * (arg1 % 16) + 1) + 256)) + (uint16(stor3[address(mem[(32 * idx) + 128])][Mask(252, 0, arg1) * 16] / 2^(-(16 * (arg1 % 16) + 1) + 256)) * 2^(-(16 * (arg1 % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (arg1 % 16) + 1) + 256)) and stor3[address(mem[(32 * idx) + 128])][Mask(252, 0, arg1) * 16]
        else:
            require 1 == stor7[arg1]
            if not ownerOf[arg1]:
                revert with 0, 'Coin does not exist'
            if ownerOf[arg1] != msg.sender:
                if approved[arg1] != msg.sender:
                    require stor5[stor4[arg1]][address(msg.sender)]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'Invalid to address'
            stor3[address(msg.sender)][Mask(252, 0, arg1) * 16] = !(65535 * 2^(-(16 * (arg1 % 16) + 1) + 256)) and stor3[address(msg.sender)][Mask(252, 0, arg1) * 16]
            stor3[address(mem[(32 * idx) + 128])][Mask(252, 0, arg1) * 16] = 2^(-(16 * (arg1 % 16) + 1) + 256) or !(65535 * 2^(-(16 * (arg1 % 16) + 1) + 256)) and stor3[address(mem[(32 * idx) + 128])][Mask(252, 0, arg1) * 16]
            mem[32] = 4
            ownerOf[arg1] = mem[(32 * idx) + 140 len 20]
            mem[0] = arg1
            emit Transfer(msg.sender, mem[(32 * idx) + 140 len 20], arg1);
        mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 160] = arg3
        emit 0xb4689112: mem[(32 * arg2.length) + 128], arg3, arg1
        idx = idx + 1
        continue 
}

function batchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require stor7[mem[(32 * idx) + 128]]
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        require stor9[mem[(32 * idx) + 128]]
        idx = idx + 1
        continue 
    if arg1 != msg.sender:
        if not stor5[address(arg1)][msg.sender]:
            revert with 0, 'msg.sender is neither _from nor operator'
    if arg3.length != arg4.length:
        revert with 0, 'Inconsistent array length between args'
    if not arg2:
        revert with 0, 'Invalid recipient'
    require 0 < arg3.length
    require 0 < arg3.length
    if stor7[mem[128]] == 1:
        ownerOf[mem[128]] = arg2
        require 0 < arg3.length
        emit Transfer(arg1, arg2, mem[128]);
    require 0 < arg4.length
    require mem[(32 * arg3.length) + 160] <= uint16(stor3[address(arg1)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256))
    if uint16(stor3[address(arg1)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256)) - mem[(32 * arg3.length) + 160] >= 65536:
        revert with 0, 'Amount to write in bin is too large'
    mem[0] = Mask(248, 4, mem[128]) >> 4
    mem[32] = sha3(address(arg2), 3)
    require 0 < arg4.length
    require mem[(32 * arg3.length) + 160] + uint16(stor3[address(arg2)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256)) >= uint16(stor3[address(arg2)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256))
    if mem[(32 * arg3.length) + 160] + uint16(stor3[address(arg2)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256)) >= 65536:
        revert with 0, 'Amount to write in bin is too large'
    idx = 1
    s = Mask(248, 4, mem[128]) >> 4
    t = (mem[(32 * arg3.length) + 160] * 2^(-(16 * (mem[128] % 16) + 1) + 256)) + (uint16(stor[sha3(mem[0 len 64])] / 2^(-(16 * (mem[128] % 16) + 1) + 256)) * 2^(-(16 * (mem[128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[128] % 16) + 1) + 256)) and stor[sha3(mem[0 len 64])]
    u = (uint16(stor3[address(arg1)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256)) * 2^(-(16 * (mem[128] % 16) + 1) + 256)) - (mem[(32 * arg3.length) + 160] * 2^(-(16 * (mem[128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[128] % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, mem[128]) * 16]
    v = mem[128] % 16
    v = Mask(248, 4, mem[128]) >> 4
    while idx < arg3.length:
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 7
        require idx < arg3.length
        if stor7[mem[(32 * idx) + 128]] == 1:
            mem[32] = 4
            ownerOf[mem[(32 * idx) + 128]] = arg2
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
        if Mask(248, 4, mem[(32 * idx) + 128]) >> 4 == s:
            require idx < arg4.length
            require mem[(32 * arg3.length) + (32 * idx) + 160] <= uint16(u / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256))
            if uint16(u / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) - mem[(32 * arg3.length) + (32 * idx) + 160] >= 65536:
                revert with 0, 'Amount to write in bin is too large'
            require idx < arg4.length
            require mem[(32 * arg3.length) + (32 * idx) + 160] + uint16(t / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) >= uint16(t / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256))
            if mem[(32 * arg3.length) + (32 * idx) + 160] + uint16(t / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) >= 65536:
                revert with 0, 'Amount to write in bin is too large'
            idx = idx + 1
            s = s
            t = (mem[(32 * arg3.length) + (32 * idx) + 160] * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) + (uint16(t / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) and t
            u = (uint16(u / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) - (mem[(32 * arg3.length) + (32 * idx) + 160] * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) and u
            v = mem[(32 * idx) + 128] % 16
            v = Mask(248, 4, mem[(32 * idx) + 128]) >> 4
            continue 
        stor3[address(arg1)][s] = u
        stor3[address(arg2)][s] = t
        mem[0] = Mask(248, 4, mem[(32 * idx) + 128]) >> 4
        mem[32] = sha3(address(arg2), 3)
        require idx < arg4.length
        require mem[(32 * arg3.length) + (32 * idx) + 160] <= uint16(stor3[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256))
        if uint16(stor3[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) - mem[(32 * arg3.length) + (32 * idx) + 160] >= 65536:
            revert with 0, 'Amount to write in bin is too large'
        require idx < arg4.length
        require mem[(32 * arg3.length) + (32 * idx) + 160] + uint16(stor3[address(arg2)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) >= uint16(stor3[address(arg2)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256))
        if mem[(32 * arg3.length) + (32 * idx) + 160] + uint16(stor3[address(arg2)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) >= 65536:
            revert with 0, 'Amount to write in bin is too large'
        idx = idx + 1
        s = Mask(248, 4, mem[(32 * idx) + 128]) >> 4
        t = (mem[(32 * arg3.length) + (32 * idx) + 160] * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) + (uint16(stor3[address(arg2)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) and stor3[address(arg2)][Mask(252, 0, mem[(32 * idx) + 128]) * 16]
        u = (uint16(stor3[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) - (mem[(32 * arg3.length) + (32 * idx) + 160] * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16]
        v = mem[(32 * idx) + 128] % 16
        v = Mask(248, 4, mem[(32 * idx) + 128]) >> 4
        continue 
    stor3[address(arg1)][v] = u
    stor3[address(arg2)][v] = t
    mem[(32 * arg4.length) + (32 * arg3.length) + 320 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (32 * arg4.length) + 320] = arg4.length
    mem[(64 * arg3.length) + (32 * arg4.length) + 352 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    emit BatchTransfer(address(arg1), address(arg2), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + floor32(arg3.length) + 320 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 160);
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len arg5.length] = arg5[all]
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require stor7[mem[(32 * idx) + 128]]
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        require stor9[mem[(32 * idx) + 128]]
        idx = idx + 1
        continue 
    if arg1 != msg.sender:
        if not stor5[address(arg1)][msg.sender]:
            revert with 0, 'msg.sender is neither _from nor operator'
    if arg3.length != arg4.length:
        revert with 0, 'Inconsistent array length between args'
    if not arg2:
        revert with 0, 'Invalid recipient'
    require 0 < arg3.length
    require 0 < arg3.length
    if stor7[mem[128]] == 1:
        ownerOf[mem[128]] = arg2
        require 0 < arg3.length
        emit Transfer(arg1, arg2, mem[128]);
    require 0 < arg4.length
    require mem[(32 * arg3.length) + 160] <= uint16(stor3[address(arg1)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256))
    if uint16(stor3[address(arg1)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256)) - mem[(32 * arg3.length) + 160] >= 65536:
        revert with 0, 'Amount to write in bin is too large'
    mem[0] = Mask(248, 4, mem[128]) >> 4
    mem[32] = sha3(address(arg2), 3)
    require 0 < arg4.length
    require mem[(32 * arg3.length) + 160] + uint16(stor3[address(arg2)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256)) >= uint16(stor3[address(arg2)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256))
    if mem[(32 * arg3.length) + 160] + uint16(stor3[address(arg2)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256)) >= 65536:
        revert with 0, 'Amount to write in bin is too large'
    idx = 1
    s = Mask(248, 4, mem[128]) >> 4
    t = (mem[(32 * arg3.length) + 160] * 2^(-(16 * (mem[128] % 16) + 1) + 256)) + (uint16(stor[sha3(mem[0 len 64])] / 2^(-(16 * (mem[128] % 16) + 1) + 256)) * 2^(-(16 * (mem[128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[128] % 16) + 1) + 256)) and stor[sha3(mem[0 len 64])]
    u = (uint16(stor3[address(arg1)][Mask(252, 0, mem[128]) * 16] / 2^(-(16 * (mem[128] % 16) + 1) + 256)) * 2^(-(16 * (mem[128] % 16) + 1) + 256)) - (mem[(32 * arg3.length) + 160] * 2^(-(16 * (mem[128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[128] % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, mem[128]) * 16]
    v = mem[128] % 16
    v = Mask(248, 4, mem[128]) >> 4
    while idx < arg3.length:
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 7
        require idx < arg3.length
        if stor7[mem[(32 * idx) + 128]] == 1:
            mem[32] = 4
            ownerOf[mem[(32 * idx) + 128]] = arg2
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            emit Transfer(arg1, arg2, mem[(32 * idx) + 128]);
        if Mask(248, 4, mem[(32 * idx) + 128]) >> 4 == s:
            require idx < arg4.length
            require mem[(32 * arg3.length) + (32 * idx) + 160] <= uint16(u / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256))
            if uint16(u / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) - mem[(32 * arg3.length) + (32 * idx) + 160] >= 65536:
                revert with 0, 'Amount to write in bin is too large'
            require idx < arg4.length
            require mem[(32 * arg3.length) + (32 * idx) + 160] + uint16(t / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) >= uint16(t / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256))
            if mem[(32 * arg3.length) + (32 * idx) + 160] + uint16(t / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) >= 65536:
                revert with 0, 'Amount to write in bin is too large'
            idx = idx + 1
            s = s
            t = (mem[(32 * arg3.length) + (32 * idx) + 160] * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) + (uint16(t / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) and t
            u = (uint16(u / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) - (mem[(32 * arg3.length) + (32 * idx) + 160] * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) and u
            v = mem[(32 * idx) + 128] % 16
            v = Mask(248, 4, mem[(32 * idx) + 128]) >> 4
            continue 
        stor3[address(arg1)][s] = u
        stor3[address(arg2)][s] = t
        mem[0] = Mask(248, 4, mem[(32 * idx) + 128]) >> 4
        mem[32] = sha3(address(arg2), 3)
        require idx < arg4.length
        require mem[(32 * arg3.length) + (32 * idx) + 160] <= uint16(stor3[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256))
        if uint16(stor3[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) - mem[(32 * arg3.length) + (32 * idx) + 160] >= 65536:
            revert with 0, 'Amount to write in bin is too large'
        require idx < arg4.length
        require mem[(32 * arg3.length) + (32 * idx) + 160] + uint16(stor3[address(arg2)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) >= uint16(stor3[address(arg2)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256))
        if mem[(32 * arg3.length) + (32 * idx) + 160] + uint16(stor3[address(arg2)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) >= 65536:
            revert with 0, 'Amount to write in bin is too large'
        idx = idx + 1
        s = Mask(248, 4, mem[(32 * idx) + 128]) >> 4
        t = (mem[(32 * arg3.length) + (32 * idx) + 160] * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) + (uint16(stor3[address(arg2)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) and stor3[address(arg2)][Mask(252, 0, mem[(32 * idx) + 128]) * 16]
        u = (uint16(stor3[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16] / 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) - (mem[(32 * arg3.length) + (32 * idx) + 160] * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) or !(65535 * 2^(-(16 * (mem[(32 * idx) + 128] % 16) + 1) + 256)) and stor3[address(arg1)][Mask(252, 0, mem[(32 * idx) + 128]) * 16]
        v = mem[(32 * idx) + 128] % 16
        v = Mask(248, 4, mem[(32 * idx) + 128]) >> 4
        continue 
    stor3[address(arg1)][v] = u
    stor3[address(arg2)][v] = t
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 352 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 352] = arg4.length
    mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 384 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    emit BatchTransfer(address(arg1), address(arg2), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 352 len (32 * arg4.length) + (32 * arg3.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 160);
    if ext_code.size(arg2) > 0:
        mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 192] = 0xb3b0f4c700000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 388 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388] = arg4.length
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 420 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 420] = arg5.length
        mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg4.length) + (32 * arg3.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            require ext_code.size(arg2)
            call arg2.0xb3b0f4c7 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg4.length) + (32 * arg3.length) + arg5.length + -floor32(arg3.length) + 64]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
        else:
            mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452] = mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 484 len arg5.length % 32]
            require ext_code.size(arg2)
            call arg2.0xb3b0f4c7 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg4.length) + (32 * arg3.length) + floor32(arg5.length) + -floor32(arg3.length) + 96]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0xe9e5be6a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}



}
