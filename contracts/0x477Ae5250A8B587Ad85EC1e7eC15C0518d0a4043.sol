contract main {


// =======================  Init code  ======================


array of uint256 stor4;
array of uint256 stor5;
uint128 stor11; offset 160
address stor11;
address stor12;

function _fallback() payable {
    Mask(96, 0, stor11.field_160) = 0
    require not msg.value
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'DebtToken' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'DDT' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    address(stor11.field_0) = msg.sender
    stor12 = address(code.data[14371 len 32])
    return code.data[560 len 13811]
}



// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const sub_1fe23d7f(?) = 'debt-token-creation'

const sub_b5c2f7ea(?) = 'debt-token-uri'


mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
array of uint256 tokenURI;
uint8 paused; offset 160
uint128 stor11; offset 160
address owner;
address registryAddress;
mapping of uint8 stor13;
mapping of uint256 stor14;
array of struct stor15;
mapping of uint8 stor16;
mapping of uint256 stor17;
array of struct stor18;

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function registry() {
    return registryAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function unpause() {
    require msg.sender == owner
    require paused
    stor11 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    stor11 = 1
    emit Pause()
}

function supportsInterface(bytes4 arg1) {
    return (Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTokenURI(uint256 arg1, string arg2) {
    require not paused
    require stor16[address(msg.sender)]
    require ownerOf[arg1]
    tokenURI[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function setApprovalForAll(address arg1, bool arg2) {
    require not paused
    require arg1 != msg.sender
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require not paused
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor3[stor0[arg2]][address(msg.sender)]
    if approved[arg2]:
        approved[arg2] = arg1
        emit Approval(arg2, ownerOf[arg2], arg1);
    else:
        if arg1:
            approved[arg2] = arg1
            emit Approval(arg2, ownerOf[arg2], arg1);
}

function sub_33d26177(?) {
    require msg.sender == owner
    require not stor16[address(arg1)]
    stor16[address(arg1)] = 1
    stor18.length++
    if not stor18.length <= stor18.length + 1:
        idx = stor18.length + 1
        while stor18.length > idx:
            stor18[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor18[stor18.length].field_0 = arg1
    stor17[address(arg1)] = stor18.length - 1
    emit Authorized('debt-token-uri', arg1);
}

function sub_9c0d9c43(?) {
    require msg.sender == owner
    require not stor13[address(arg1)]
    stor13[address(arg1)] = 1
    stor15.length++
    if not stor15.length <= stor15.length + 1:
        idx = stor15.length + 1
        while stor15.length > idx:
            stor15[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor15[stor15.length].field_0 = arg1
    stor14[address(arg1)] = stor15.length - 1
    emit Authorized('debt-token-creation', arg1);
}

function sub_00b0aeae(?) {
    require msg.sender == owner
    require stor16[address(arg1)]
    require stor18.length - 1 < stor18.length
    stor16[address(arg1)] = 0
    require stor17[address(arg1)] < stor18.length
    stor18[stor17[address(arg1)]].field_0 = stor18[stor18.length].field_0
    stor17[stor18[stor18.length].field_0] = stor17[address(arg1)]
    stor17[address(arg1)] = 0
    require stor18.length - 1 < stor18.length
    stor18[stor18.length].field_0 = 0
    stor18.length--
    if not stor18.length <= stor18.length - 1:
        idx = stor18.length - 1
        while stor18.length > idx:
            stor18[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit AuthorizationRevoked('debt-token-uri', arg1);
}

function sub_81ac3fbc(?) {
    require msg.sender == owner
    require stor13[address(arg1)]
    require stor15.length - 1 < stor15.length
    stor13[address(arg1)] = 0
    require stor14[address(arg1)] < stor15.length
    stor15[stor14[address(arg1)]].field_0 = stor15[stor15.length].field_0
    stor14[stor15[stor15.length].field_0] = stor14[address(arg1)]
    stor14[address(arg1)] = 0
    require stor15.length - 1 < stor15.length
    stor15[stor15.length].field_0 = 0
    stor15.length--
    if not stor15.length <= stor15.length - 1:
        idx = stor15.length - 1
        while stor15.length > idx:
            stor15[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit AuthorizationRevoked('debt-token-creation', arg1);
}

function sub_0343e122(?) {
    if not stor15.length:
        mem[(32 * stor15.length) + 192] = 32
        mem[(32 * stor15.length) + 224] = stor15.length
        mem[(32 * stor15.length) + 256 len floor32(stor15.length)] = mem[192 len floor32(stor15.length)]
        return memory
          from (32 * stor15.length) + 192
           len (96 * stor15.length) + 64
    mem[192] = address(stor15.field_0)
    idx = 192
    s = 0
    while (32 * stor15.length) + 160 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor15.length) + 256 len floor32(stor15.length)] = mem[192 len floor32(stor15.length)]
    return Array(len=stor15.length, data=mem[192 len floor32(stor15.length)], mem[(32 * stor15.length) + floor32(stor15.length) + 256 len (32 * stor15.length) - floor32(stor15.length)]), 
}

function sub_21d37127(?) {
    if not stor18.length:
        mem[(32 * stor18.length) + 192] = 32
        mem[(32 * stor18.length) + 224] = stor18.length
        mem[(32 * stor18.length) + 256 len floor32(stor18.length)] = mem[192 len floor32(stor18.length)]
        return memory
          from (32 * stor18.length) + 192
           len (96 * stor18.length) + 64
    mem[192] = address(stor18.field_0)
    idx = 192
    s = 0
    while (32 * stor18.length) + 160 > idx:
        mem[idx + 32] = stor18[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor18.length) + 256 len floor32(stor18.length)] = mem[192 len floor32(stor18.length)]
    return Array(len=stor18.length, data=mem[192 len floor32(stor18.length)], mem[(32 * stor18.length) + floor32(stor18.length) + 256 len (32 * stor18.length) - floor32(stor18.length)]), 
}

function sub_99f10501(?) {
    require not paused
    require stor13[address(msg.sender)]
    require ext_code.size(registryAddress)
    call registryAddress.0xcf9df5eb with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, address(arg2), address(arg3), arg4, address(arg5), arg6, arg7
    require ext_call.success
    require arg1
    require not ownerOf[ext_call.return_data[0]]
    ownerOf[ext_call.return_data[0]] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    if not tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] + 1:
        idx = tokenOfOwnerByIndex[address(arg1)] + 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = ext_call.return_data[0]
    stor7[ext_call.return_data[0]] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(ext_call.return_data[0], 0, arg1);
    stor9[ext_call.return_data[0]] = tokenByIndex.length
    tokenByIndex.length++
    if not tokenByIndex.length <= tokenByIndex.length + 1:
        idx = tokenByIndex.length + 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    tokenByIndex[tokenByIndex.length] = ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require ext_code.size(registryAddress)
    call registryAddress.0xba20dda4 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    if ext_call.return_data[12 len 20] != arg2:
        require ext_code.size(registryAddress)
        call registryAddress.0x5969549e with:
             gas gas_remaining - 710 wei
            args arg3, arg2
        require ext_call.success
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if not tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    if not tokenOfOwnerByIndex[address(arg2)] <= tokenOfOwnerByIndex[address(arg2)] + 1:
        idx = tokenOfOwnerByIndex[address(arg2)] + 1
        while tokenOfOwnerByIndex[address(arg2)] > idx:
            tokenOfOwnerByIndex[address(arg2)][idx] = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require not paused
    require ext_code.size(registryAddress)
    call registryAddress.0xba20dda4 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    if ext_call.return_data[12 len 20] != arg2:
        require ext_code.size(registryAddress)
        call registryAddress.0x5969549e with:
             gas gas_remaining - 710 wei
            args arg3, arg2
        require ext_call.success
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require not paused
    require ext_code.size(registryAddress)
    call registryAddress.0xba20dda4 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    if ext_call.return_data[12 len 20] != arg2:
        require ext_code.size(registryAddress)
        call registryAddress.0x5969549e with:
             gas gas_remaining - 710 wei
            args arg3, arg2
        require ext_call.success
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if not tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    if not tokenOfOwnerByIndex[address(arg2)] <= tokenOfOwnerByIndex[address(arg2)] + 1:
        idx = tokenOfOwnerByIndex[address(arg2)] + 1
        while tokenOfOwnerByIndex[address(arg2)] > idx:
            tokenOfOwnerByIndex[address(arg2)][idx] = 0
            idx = idx + 1
            continue 
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        require ext_call.success
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}



}
