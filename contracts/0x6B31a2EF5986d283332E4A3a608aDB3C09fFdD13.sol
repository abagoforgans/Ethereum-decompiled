contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
address owner;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint8 stor15;
mapping of struct sub_10cb4765;
mapping of struct ticketInfo;
uint256 sub_b789ec3d;
uint256 sub_9b7d2851;
uint256 sub_2168a82e;
uint256 sub_c4efaf78;
uint8 sub_5f452307; offset 192
uint32 sub_cc9f2e0c;
uint32 sub_e9b201ad; offset 32
uint32 sub_080c7f72; offset 64
uint32 sub_e8d1be61; offset 96
uint32 sub_82cdb10e; offset 128
uint32 sub_a20e8fdf; offset 160

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function sub_080c7f72(?) {
    return sub_080c7f72
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function sub_10cb4765(?) {
    require sub_10cb4765[arg1].field_160 <= 3
    return sub_10cb4765[arg1].field_0, sub_10cb4765[arg1].field_0, bool(sub_10cb4765[arg1].field_168)
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_2168a82e(?) {
    return sub_2168a82e
}

function isAdmin(address arg1) {
    require arg1
    return bool(stor13[address(arg1)])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function isPauser(address arg1) {
    require arg1
    return bool(stor14[address(arg1)])
}

function sub_49dc4d2c(?) {
    return bool(sub_10cb4765[arg1].field_168)
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function paused() {
    return bool(stor15)
}

function sub_5f452307(?) {
    return sub_5f452307
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_82cdb10e(?) {
    return sub_82cdb10e
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9b7d2851(?) {
    return sub_9b7d2851
}

function sub_a20e8fdf(?) {
    return sub_a20e8fdf
}

function sub_ac6dfbc1(?) {
    require ticketInfo[arg1].field_0 <= 3
    return ticketInfo[arg1].field_0, ticketInfo[arg1].field_8
}

function sub_b789ec3d(?) {
    return sub_b789ec3d
}

function sub_c4efaf78(?) {
    return sub_c4efaf78
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function sub_cc9f2e0c(?) {
    return sub_cc9f2e0c
}

function sub_e8d1be61(?) {
    return sub_e8d1be61
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function sub_e9b201ad(?) {
    return sub_e9b201ad
}

function getTicketInfo(uint256 arg1) {
    require ticketInfo[arg1].field_0 <= 3
    return ticketInfo[arg1].field_0, ticketInfo[arg1].field_8
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_0f6d5e12(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    sub_080c7f72 = arg1
}

function sub_3aa209ac(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    sub_82cdb10e = arg1
}

function sub_5022653d(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    sub_a20e8fdf = arg1
}

function sub_641c2889(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    sub_9b7d2851 = arg1
}

function sub_66bb8f01(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    sub_e9b201ad = arg1
}

function sub_68de03b9(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    sub_e8d1be61 = arg1
}

function sub_930c06b8(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    sub_5f452307 = arg1
}

function sub_b90bece9(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    sub_2168a82e = arg1
}

function sub_c5fec094(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    sub_c4efaf78 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor14[address(msg.sender)]
    require stor15
    stor15 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor14[address(msg.sender)]
    require not stor15
    stor15 = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceAdmin() {
    require msg.sender
    require stor13[address(msg.sender)]
    stor13[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor14[address(msg.sender)]
    stor14[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor13[address(arg1)]
    stor13[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    require stor13[address(arg1)]
    stor13[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function addPauser(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor14[address(arg1)]
    stor14[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function removePauser(address arg1) {
    require msg.sender == owner
    require arg1
    require stor14[address(arg1)]
    stor14[address(arg1)] = 0
    emit PauserRemoved(arg1);
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function withdrawETH(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_eb1a03a5(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    require arg3 <= 3
    require arg3 >= 1
    require arg3 <= 3
    require sub_10cb4765[arg1].field_160 <= 3
    require not sub_10cb4765[arg1].field_160
    sub_10cb4765[arg1].field_0 = arg2
    require arg3 <= 3
    sub_10cb4765[arg1].field_0 = arg2
    sub_10cb4765[arg1].field_160 = arg3
    sub_10cb4765[arg1].field_168 = 0
    emit 0x2b18c298: arg1
}

function sub_37584061(?) {
    require sub_10cb4765[arg1].field_160 <= 3
    require sub_10cb4765[arg1].field_160 >= 1
    require sub_10cb4765[arg1].field_160 <= 3
    require not sub_10cb4765[arg1].field_168
    signer = erecover(sha3(address(msg.sender, 0)), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == sub_10cb4765[arg1].field_0
    require ticketInfo[stor18].field_0 <= 3
    require not ticketInfo[stor18].field_0
    return 1
}

function sub_7e320921(?) {
    require sub_10cb4765[arg2].field_160 <= 3
    require sub_10cb4765[arg2].field_160 >= 1
    require sub_10cb4765[arg2].field_160 <= 3
    require not sub_10cb4765[arg2].field_168
    signer = erecover(sha3(address(msg.sender, 0)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == sub_10cb4765[arg2].field_0
    require ticketInfo[stor18].field_0 <= 3
    require not ticketInfo[stor18].field_0
    require msg.sender
    require not ownerOf[stor18]
    ownerOf[stor18] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = sub_b789ec3d
    stor6[stor18] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, sub_b789ec3d);
    stor8[stor18] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_b789ec3d
    sub_10cb4765[arg2].field_168 = 1
    require 0 or sub_10cb4765[arg2].field_160 <= 3
    ticketInfo[stor18].field_0 = 0 or sub_10cb4765[arg2].field_160 or Mask(248, 8, ticketInfo[stor18].field_0)
    require sub_10cb4765[arg2].field_160 <= 3
    emit 0x4f545f6b: msg.sender, arg2, sub_b789ec3d, sub_10cb4765[arg2].field_160, arg1
    sub_b789ec3d++
}

function sub_934f8f43(?) {
    require msg.sender
    require stor13[address(msg.sender)]
    require ('cd', 36).length == ('cd', 4).length
    require ('cd', 68).length == ('cd', 4).length
    idx = 0
    while ('cd', 4).length > uint32(idx):
        require uint32(idx) < ('cd', 4).length
        require uint32(idx) < ('cd', 36).length
        require uint32(idx) < ('cd', 68).length
        require cd[((32 * uint32(idx)) + cd[68] + 36)] <= 3
        require cd[((32 * uint32(idx)) + cd[68] + 36)] >= 1
        require cd[((32 * uint32(idx)) + cd[68] + 36)] <= 3
        mem[0] = cd[((32 * uint32(idx)) + cd[4] + 36)]
        mem[32] = 16
        require sub_10cb4765[cd[((32 * uint32(idx)) + cd[4] + 36)]].field_160 <= 3
        require not sub_10cb4765[cd[((32 * uint32(idx)) + cd[4] + 36)]].field_160
        sub_10cb4765[cd[((32 * uint32(idx)) + cd[4] + 36)]].field_0 = address(cd[((32 * uint32(idx)) + cd[36] + 36)])
        require cd[((32 * uint32(idx)) + cd[68] + 36)] <= 3
        sub_10cb4765[cd[((32 * uint32(idx)) + cd[4] + 36)]].field_0 = address(cd[((32 * uint32(idx)) + cd[36] + 36)])
        sub_10cb4765[cd[((32 * uint32(idx)) + cd[4] + 36)]].field_160 = Mask(96, 0, cd[((32 * uint32(idx)) + cd[68] + 36)])
        sub_10cb4765[cd[((32 * uint32(idx)) + cd[4] + 36)]].field_168 = 0
        mem[96] = cd[((32 * uint32(idx)) + cd[4] + 36)]
        emit 0x2b18c298: cd[((32 * uint32(idx)) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function sub_700662cd(?) payable {
    require not stor15
    require arg2 <= 3
    require arg2 >= 1
    require arg2 <= 3
    if arg2 != 1:
        require arg2 <= 3
        if arg2 == 2:
            require sub_e9b201ad > 0
            require msg.value == sub_2168a82e
            sub_e9b201ad = uint32(sub_e9b201ad - 1)
        else:
            require arg2 <= 3
            if arg2 == 3:
                require sub_080c7f72 > 0
                require msg.value == sub_c4efaf78
                sub_080c7f72 = uint32(sub_080c7f72 - 1)
    else:
        require msg.value == sub_9b7d2851
        sub_cc9f2e0c = uint32(sub_cc9f2e0c + 1)
        require sub_e8d1be61 > 0
        require sub_e8d1be61
        if uint32(sub_cc9f2e0c + 1) / sub_e8d1be61 > 0:
            require sub_e8d1be61
            if 0 == uint32(sub_cc9f2e0c % sub_e8d1be61):
                require sub_82cdb10e + sub_e9b201ad >= sub_e9b201ad
                sub_e9b201ad = uint32(sub_82cdb10e + sub_e9b201ad)
                require sub_a20e8fdf + sub_080c7f72 >= sub_080c7f72
                sub_080c7f72 = uint32(sub_a20e8fdf + sub_080c7f72)
    require msg.sender
    require not ownerOf[stor18]
    ownerOf[stor18] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = sub_b789ec3d
    stor6[stor18] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, sub_b789ec3d);
    stor8[stor18] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_b789ec3d
    require arg2 <= 3
    ticketInfo[stor18].field_0 = arg2
    ticketInfo[stor18].field_8 = sub_5f452307
    sub_b789ec3d++
    emit 0xe645d62f: msg.sender, arg2, arg1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}



}
