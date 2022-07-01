contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1, string arg2, string arg3, string arg4, address arg5)
#
const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000


mapping of uint8 stor0;
uint8 stor1;
address pauserAddress; offset 8
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
mapping of bool tokenURI;
address owner;
array of struct stor14;
uint8 stor15;
mapping of uint8 sub_df075605;
array of struct gameData;
array of struct sub_efa7b945;
array of struct sub_95c671d8;
mapping of uint256 userNonce;
uint8 sub_db738ee6;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function paused() {
    return bool(stor1)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function getUserNonce(address arg1) {
    require calldata.size - 4 >= 32
    return userNonce[address(arg1)]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_95c671d8(?) {
    return sub_95c671d8[arg1][0 len sub_95c671d8[arg1].length].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function pauser() {
    return pauserAddress
}

function getGameData(uint256 arg1) {
    return gameData[arg1][0 len gameData[arg1].length].field_0
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function sub_db738ee6(?) {
    return bool(sub_db738ee6)
}

function sub_df075605(?) {
    require calldata.size - 4 >= 32
    return sub_df075605[address(arg1)]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_efa7b945(?) {
    return sub_efa7b945[arg1][0 len sub_efa7b945[arg1].length].field_0
}

function kill(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 == 123456789987654321
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == pauserAddress
    require stor1
    stor1 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender == pauserAddress
    require not stor1
    stor1 = 1
    emit Paused(msg.sender);
}

function sub_841321d9(?) {
    require calldata.size - 4 >= 96
    return sha3(0, this.address, userNonce[address(arg1)], arg2, arg3)
}

function sub_380c8e87(?) {
    require calldata.size - 4 >= 96
    return sha3(0, this.address, userNonce[address(arg1)], arg2, uint8(arg3))
}

function sub_587d0f66(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor1
    sub_db738ee6 = uint8(arg1)
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor1
    owner = arg1
    emit OwnershipUpdated(msg.sender, arg1);
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require not stor1
    require arg1 != msg.sender
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_6a400fe7(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if stor14[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return (idx + 1)
    return 0
}

function sub_2b37768f(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require not stor1
    require arg2 > 0
    require arg2 <= stor15
    require sub_df075605[address(arg1)]
    sub_df075605[address(arg1)] = arg2
    emit 0x9621e796: address(arg1), arg2
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor1
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor5[stor2[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getSigner(bytes32 arg1, bytes32 arg2, bytes32 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg4 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_aa326df1(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require not stor1
    require arg2 > 0
    require arg2 <= stor15
    require not sub_df075605[address(arg1)]
    sub_df075605[address(arg1)] = arg2
    stor14.length++
    stor14[stor14.length].field_0 = arg1
    emit 0xd5c38cfd: address(arg1), arg2
    return 1
}

function withdrawAnyERC721Token(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args this.address, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferAnyERC20Token(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0a76802a(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor1
    require arg1 - 1 < stor14.length
    sub_df075605[stor14[arg1].field_0] = 0
    require stor14.length - 1 < stor14.length
    require arg1 - 1 < stor14.length
    stor14[arg1].field_0 = stor14[stor14.length].field_0
    stor14.length--
    if stor14.length > stor14.length - 1:
        idx = stor14.length - 1
        while stor14.length > idx:
            stor14[idx].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_5bdc12c6(?) {
    require calldata.size - 4 >= 192
    require not stor1
    if not sub_db738ee6:
        require sub_df075605[address(msg.sender)]
        require sub_df075605[address(msg.sender)] < 3
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg4 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require sha3(0, this.address, userNonce[address(signer)], arg5, uint8(arg6)) == arg1
    stor5[address(signer)][address(arg5)] = uint8(arg6)
    emit ApprovalForAll(arg6, address(signer), arg5);
    require userNonce[address(signer)] + 1 >= userNonce[address(signer)]
    userNonce[address(signer)]++
}

function removeOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor1
    require 0 < stor14.length
    idx = 0
    while stor14[idx].field_0 != arg1:
        require idx + 1 < stor14.length
        mem[0] = 14
        idx = idx + 1
        continue 
    require None + 3 > 0
    require msg.sender == owner
    require not stor1
    require None + 2 < stor14.length
    sub_df075605[stor14[None].field_512] = 0
    require stor14.length - 1 < stor14.length
    require None + 2 < stor14.length
    stor14[None].field_512 = stor14[stor14.length].field_0
    stor14.length--
    if stor14.length > stor14.length - 1:
        idx = stor14.length - 1
        while stor14.length > idx:
            stor14[idx].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_2a2149a1(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require sub_df075605[address(msg.sender)] <= 2
    require sub_df075605[address(msg.sender)]
    require not stor1
    gameData[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_efa7b945[arg1][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_95c671d8[arg1][].field_0 = Array(len=arg4.length, data=arg4[all])
}

function getOperators() {
    if not stor14.length:
        mem[(32 * stor14.length) + 128] = 32
        mem[(32 * stor14.length) + 160] = stor14.length
        mem[(32 * stor14.length) + 192 len floor32(stor14.length)] = mem[128 len floor32(stor14.length)]
        return memory
          from (32 * stor14.length) + 128
           len (96 * stor14.length) + 64
    mem[128] = address(stor14.field_0)
    idx = 128
    s = 0
    while (32 * stor14.length) + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor14.length) + 192 len floor32(stor14.length)] = mem[128 len floor32(stor14.length)]
    return Array(len=stor14.length, data=mem[128 len floor32(stor14.length)], mem[(32 * stor14.length) + floor32(stor14.length) + 192 len (32 * stor14.length) - floor32(stor14.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require not stor1
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor9[arg3] = 0
    stor9[stor8[address(arg1)][stor8[address(arg1)]]] = stor9[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit 0x17ddf252: arg1, arg2, arg3
}

function updateURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require sub_df075605[address(msg.sender)] <= 2
    require sub_df075605[address(msg.sender)]
    require not stor1
    require ownerOf[arg1]
    uint256(tokenURI[arg1][]) = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = 128
    mem[ceil32(arg2.length) + 160] = 192
    mem[ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xfe905692: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], 256, 320, 0, mem[ceil32(arg2.length) + 288], 0, mem[ceil32(arg2.length) + 352], 0, mem[ceil32(arg2.length) + 416], arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, arg1
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
        emit 0xfe905692: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], 256, 320, 0, mem[ceil32(arg2.length) + 288], 0, mem[ceil32(arg2.length) + 352], 0, mem[ceil32(arg2.length) + 416], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 480 len floor32(arg2.length) + -ceil32(arg2.length) + 32], arg1
    mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_240d2f2a(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require sub_df075605[address(msg.sender)] <= 2
    require sub_df075605[address(msg.sender)]
    require not stor1
    sub_95c671d8[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = 128
    mem[ceil32(arg2.length) + 160] = 192
    mem[ceil32(arg2.length) + 416 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + 416] = 0
        emit 0xfe905692: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], 256, arg2.length + 288, 0, mem[ceil32(arg2.length) + 288], 0, mem[ceil32(arg2.length) + 352], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 416 len arg2.length + -ceil32(arg2.length) + 64], arg1
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + 448] = 0
        emit 0xfe905692: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], 256, floor32(arg2.length) + 320, 0, mem[ceil32(arg2.length) + 288], 0, mem[ceil32(arg2.length) + 352], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 416 len floor32(arg2.length) + -ceil32(arg2.length) + 96], arg1
    mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_ad391531(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require sub_df075605[address(msg.sender)] <= 2
    require sub_df075605[address(msg.sender)]
    require not stor1
    sub_efa7b945[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = 128
    mem[ceil32(arg2.length) + 160] = 192
    mem[ceil32(arg2.length) + 352 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + 352] = 0
        mem[arg2.length + ceil32(arg2.length) + 416] = 0
        emit 0xfe905692: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length + 224, arg2.length + 288, 0, mem[ceil32(arg2.length) + 288], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 352 len arg2.length + -ceil32(arg2.length) + 128], arg1
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 352] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + 384] = 0
        mem[floor32(arg2.length) + ceil32(arg2.length) + 448] = 0
        emit 0xfe905692: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], floor32(arg2.length) + 256, floor32(arg2.length) + 320, 0, mem[ceil32(arg2.length) + 288], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 352 len floor32(arg2.length) + -ceil32(arg2.length) + 160], arg1
    mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_243cd059(?) {
    require calldata.size - 4 >= 192
    require not stor1
    if not sub_db738ee6:
        require sub_df075605[address(msg.sender)]
        require sub_df075605[address(msg.sender)] < 3
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg4 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require sha3(0, this.address, userNonce[address(signer)], arg5, arg6) == arg1
    require arg5
    require ownerOf[arg6]
    require ownerOf[arg6] == address(signer)
    if approved[arg6]:
        approved[arg6] = 0
        emit Approval(address(signer), 0, arg6);
    require ownerOf[arg6]
    require ownerOf[arg6] == address(signer)
    require 1 <= balanceOf[address(signer)]
    balanceOf[address(signer)]--
    ownerOf[arg6] = 0
    require 1 <= tokenOfOwnerByIndex[address(signer)]
    require tokenOfOwnerByIndex[address(signer)] - 1 < tokenOfOwnerByIndex[address(signer)]
    require stor9[arg6] < tokenOfOwnerByIndex[address(signer)]
    tokenOfOwnerByIndex[address(signer)][stor9[arg6]] = tokenOfOwnerByIndex[address(signer)][tokenOfOwnerByIndex[address(signer)]]
    require tokenOfOwnerByIndex[address(signer)] - 1 < tokenOfOwnerByIndex[address(signer)]
    tokenOfOwnerByIndex[address(signer)][tokenOfOwnerByIndex[address(signer)]] = 0
    tokenOfOwnerByIndex[address(signer)]--
    if tokenOfOwnerByIndex[address(signer)] > tokenOfOwnerByIndex[address(signer)] - 1:
        idx = tokenOfOwnerByIndex[address(signer)] - 1
        while tokenOfOwnerByIndex[address(signer)] > idx:
            tokenOfOwnerByIndex[address(signer)][idx] = 0
            idx = idx + 1
            continue 
    stor9[arg6] = 0
    stor9[stor8[address(signer)][stor8[address(signer)]]] = stor9[arg6]
    require not ownerOf[arg6]
    ownerOf[arg6] = arg5
    require balanceOf[address(arg5)] + 1 >= balanceOf[address(arg5)]
    balanceOf[address(arg5)]++
    tokenOfOwnerByIndex[address(arg5)]++
    tokenOfOwnerByIndex[address(arg5)][tokenOfOwnerByIndex[address(arg5)]] = arg6
    stor9[arg6] = tokenOfOwnerByIndex[address(arg5)]
    emit 0x17ddf252: address(signer), arg5, arg6
    require userNonce[address(signer)] + 1 >= userNonce[address(signer)]
    userNonce[address(signer)]++
}

function sub_c8ab0edf(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require sub_df075605[address(msg.sender)] <= 1
    require sub_df075605[address(msg.sender)]
    require not stor1
    require arg2
    require not ownerOf[arg1]
    ownerOf[arg1] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg1
    stor9[arg1] = tokenOfOwnerByIndex[address(arg2)]
    emit 0x17ddf252: 0, arg2, arg1
    stor11[arg1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg1
    require ownerOf[arg1]
    uint256(tokenURI[arg1][]) = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = 128
    mem[ceil32(arg3.length) + 160] = 192
    mem[ceil32(arg3.length) + 480 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0xefad449d: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], 256, 320, 0, mem[ceil32(arg3.length) + 288], 0, mem[ceil32(arg3.length) + 352], 0, mem[ceil32(arg3.length) + 416], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, arg1
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 480] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 512 len arg3.length % 32]
        emit 0xefad449d: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], 256, 320, 0, mem[ceil32(arg3.length) + 288], 0, mem[ceil32(arg3.length) + 352], 0, mem[ceil32(arg3.length) + 416], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 480 len floor32(arg3.length) + -ceil32(arg3.length) + 32], arg1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor1
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    if approved[arg1]:
        approved[arg1] = 0
        emit Approval(msg.sender, 0, arg1);
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
    require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
    require stor9[arg1] < tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)][stor9[arg1]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
    require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = 0
    tokenOfOwnerByIndex[address(msg.sender)]--
    if tokenOfOwnerByIndex[address(msg.sender)] > tokenOfOwnerByIndex[address(msg.sender)] - 1:
        idx = tokenOfOwnerByIndex[address(msg.sender)] - 1
        while tokenOfOwnerByIndex[address(msg.sender)] > idx:
            tokenOfOwnerByIndex[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    stor9[arg1] = 0
    stor9[stor8[address(msg.sender)][stor8[address(msg.sender)]]] = stor9[arg1]
    emit 0x17ddf252: msg.sender, 0, arg1
    if Mask(255, 1, uint256(tokenURI[arg1]) and (256 * not bool(tokenURI[arg1])) - 1):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor11[arg1] < tokenByIndex.length
    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor11[arg1] = 0
    stor11[stor10[stor10.length]] = stor11[arg1]
}

function sub_fbd37ff5(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require sub_df075605[address(msg.sender)] <= 2
    require sub_df075605[address(msg.sender)]
    require not stor1
    gameData[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = 128
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg2.length) + 160] = arg2.length + 160
        mem[arg2.length + ceil32(arg2.length) + 288] = 0
        mem[arg2.length + ceil32(arg2.length) + 352] = 0
        mem[arg2.length + ceil32(arg2.length) + 416] = 0
        emit 0xfe905692: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length + 224, arg2.length + 288, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 288 len arg2.length + -ceil32(arg2.length) + 192], arg1
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        mem[ceil32(arg2.length) + 160] = floor32(arg2.length) + 192
        mem[floor32(arg2.length) + ceil32(arg2.length) + 320] = 0
        mem[floor32(arg2.length) + ceil32(arg2.length) + 384] = 0
        mem[floor32(arg2.length) + ceil32(arg2.length) + 448] = 0
        emit 0xfe905692: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], floor32(arg2.length) + 256, floor32(arg2.length) + 320, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 288 len floor32(arg2.length) + -ceil32(arg2.length) + 224], arg1
    mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require not stor1
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor9[arg3] = 0
    stor9[stor8[address(arg1)][stor8[address(arg1)]]] = stor9[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit 0x17ddf252: arg1, arg2, arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require not stor1
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require not stor1
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor9[arg3] = 0
    stor9[stor8[address(arg1)][stor8[address(arg1)]]] = stor9[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit 0x17ddf252: arg1, arg2, arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor1
    require ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        if approved[arg2] != msg.sender:
            require stor5[stor2[arg2]][address(msg.sender)]
    require not stor1
    require ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        if approved[arg2] != msg.sender:
            require stor5[stor2[arg2]][address(msg.sender)]
    require ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        if approved[arg2] != msg.sender:
            require stor5[stor2[arg2]][address(msg.sender)]
    require not stor1
    require msg.sender
    require arg1
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    if approved[arg2]:
        approved[arg2] = 0
        emit Approval(msg.sender, 0, arg2);
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg2] = 0
    require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
    require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
    require stor9[arg2] < tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)][stor9[arg2]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
    require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = 0
    tokenOfOwnerByIndex[address(msg.sender)]--
    if tokenOfOwnerByIndex[address(msg.sender)] > tokenOfOwnerByIndex[address(msg.sender)] - 1:
        idx = tokenOfOwnerByIndex[address(msg.sender)] - 1
        while tokenOfOwnerByIndex[address(msg.sender)] > idx:
            tokenOfOwnerByIndex[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    stor9[arg2] = 0
    stor9[stor8[address(msg.sender)][stor8[address(msg.sender)]]] = stor9[arg2]
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor9[arg2] = tokenOfOwnerByIndex[address(arg1)]
    emit 0x17ddf252: msg.sender, arg1, arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function getMetaData(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 19
    mem[96] = gameData[arg1].length
    mem[128] = gameData[arg1].field_0
    idx = 128
    s = 0
    while gameData[arg1].length + 96 > idx:
        mem[idx + 32] = gameData[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(gameData[arg1].length) + 128] = sub_efa7b945[arg1].length
    mem[ceil32(gameData[arg1].length) + 160] = sub_efa7b945[arg1].field_0
    idx = ceil32(gameData[arg1].length) + 160
    s = 0
    while ceil32(gameData[arg1].length) + sub_efa7b945[arg1].length + 128 > idx:
        mem[idx + 32] = sub_efa7b945[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 192
    mem[ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + 160] = sub_95c671d8[arg1].length
    mem[0] = sha3(arg1, 19)
    mem[ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + 192] = sub_95c671d8[arg1].field_0
    idx = ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + 192
    s = 0
    while ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + sub_95c671d8[arg1].length + 160 > idx:
        mem[idx + 32] = sub_95c671d8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 192] = 96
    mem[ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 288] = gameData[arg1].length
    mem[ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 320 len ceil32(gameData[arg1].length)] = mem[128 len ceil32(gameData[arg1].length)]
    mem[ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 224] = gameData[arg1].length + 128
    mem[gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 320] = sub_efa7b945[arg1].length
    mem[gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 352 len ceil32(sub_efa7b945[arg1].length)] = mem[ceil32(gameData[arg1].length) + 160 len ceil32(sub_efa7b945[arg1].length)]
    if not sub_efa7b945[arg1].length % 32:
        mem[ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 256] = sub_efa7b945[arg1].length + gameData[arg1].length + 160
        mem[sub_efa7b945[arg1].length + gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 352] = sub_95c671d8[arg1].length
        mem[sub_efa7b945[arg1].length + gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 384 len ceil32(sub_95c671d8[arg1].length)] = mem[ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + 192 len ceil32(sub_95c671d8[arg1].length)]
        if not sub_95c671d8[arg1].length % 32:
            return Array(len=gameData[arg1].length, data=mem[128 len ceil32(gameData[arg1].length)], mem[(2 * ceil32(gameData[arg1].length)) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 320 len sub_95c671d8[arg1].length + sub_efa7b945[arg1].length + gameData[arg1].length + -ceil32(gameData[arg1].length) + 64]), 
                   gameData[arg1].length + 128,
                   sub_efa7b945[arg1].length + gameData[arg1].length + 160
        mem[floor32(sub_95c671d8[arg1].length) + sub_efa7b945[arg1].length + gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 384] = mem[floor32(sub_95c671d8[arg1].length) + sub_efa7b945[arg1].length + gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + -sub_95c671d8[arg1].length % 32 + 416 len sub_95c671d8[arg1].length % 32]
        return Array(len=gameData[arg1].length, data=mem[128 len ceil32(gameData[arg1].length)], mem[(2 * ceil32(gameData[arg1].length)) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 320 len floor32(sub_95c671d8[arg1].length) + sub_efa7b945[arg1].length + gameData[arg1].length + -ceil32(gameData[arg1].length) + 96]), 
               gameData[arg1].length + 128,
               sub_efa7b945[arg1].length + gameData[arg1].length + 160
    mem[floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 352] = mem[floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + -sub_efa7b945[arg1].length % 32 + 384 len sub_efa7b945[arg1].length % 32]
    mem[ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 256] = floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + 192
    mem[floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 384] = sub_95c671d8[arg1].length
    mem[floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 416 len ceil32(sub_95c671d8[arg1].length)] = mem[ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + 192 len ceil32(sub_95c671d8[arg1].length)]
    if not sub_95c671d8[arg1].length % 32:
        return Array(len=gameData[arg1].length, data=mem[128 len ceil32(gameData[arg1].length)], mem[(2 * ceil32(gameData[arg1].length)) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 320 len sub_95c671d8[arg1].length + floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + -ceil32(gameData[arg1].length) + 96]), 
               gameData[arg1].length + 128,
               floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + 192
    mem[floor32(sub_95c671d8[arg1].length) + floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 416] = mem[floor32(sub_95c671d8[arg1].length) + floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + ceil32(gameData[arg1].length) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + -sub_95c671d8[arg1].length % 32 + 448 len sub_95c671d8[arg1].length % 32]
    return Array(len=gameData[arg1].length, data=mem[128 len ceil32(gameData[arg1].length)], mem[(2 * ceil32(gameData[arg1].length)) + ceil32(sub_efa7b945[arg1].length) + ceil32(sub_95c671d8[arg1].length) + 320 len floor32(sub_95c671d8[arg1].length) + floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + -ceil32(gameData[arg1].length) + 128]), 
           gameData[arg1].length + 128,
           floor32(sub_efa7b945[arg1].length) + gameData[arg1].length + 192
}



}
