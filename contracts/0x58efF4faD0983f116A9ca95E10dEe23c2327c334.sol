contract main {




// =====================  Runtime code  =====================


mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
address owner;
uint256 currentPrice;
mapping of uint256 stor13;
array of struct stor14;
array of struct stor15;

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function getCurrentPrice() {
    return currentPrice
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function setCurrentPrice(uint256 arg1) {
    require msg.sender == owner
    currentPrice = arg1
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

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    require ownerOf[arg2] == msg.sender
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function myTokens() {
    if not tokenOfOwnerByIndex[msg.sender].field_0:
        mem[(32 * tokenOfOwnerByIndex[msg.sender].field_0) + 128] = 32
        mem[(32 * tokenOfOwnerByIndex[msg.sender].field_0) + 160] = tokenOfOwnerByIndex[msg.sender].field_0
        mem[(32 * tokenOfOwnerByIndex[msg.sender].field_0) + 192 len floor32(tokenOfOwnerByIndex[msg.sender].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[msg.sender].field_0)]
        return memory
          from (32 * tokenOfOwnerByIndex[msg.sender].field_0) + 128
           len (96 * tokenOfOwnerByIndex[msg.sender].field_0) + 64
    mem[128] = tokenOfOwnerByIndex[msg.sender].field_0
    idx = 128
    s = 0
    while (32 * tokenOfOwnerByIndex[msg.sender].field_0) + 96 > idx:
        mem[idx + 32] = tokenOfOwnerByIndex[msg.sender][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[msg.sender].field_0) + 192 len floor32(tokenOfOwnerByIndex[msg.sender].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[msg.sender].field_0)]
    return Array(len=tokenOfOwnerByIndex[msg.sender].field_0, data=mem[128 len floor32(tokenOfOwnerByIndex[msg.sender].field_0)], mem[(32 * tokenOfOwnerByIndex[msg.sender].field_0) + floor32(tokenOfOwnerByIndex[msg.sender].field_0) + 192 len (32 * tokenOfOwnerByIndex[msg.sender].field_0) - floor32(tokenOfOwnerByIndex[msg.sender].field_0)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require approved[arg3] == msg.sender
    require arg1
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)].field_0].field_0] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
}

function buyToken(uint256 arg1, string arg2, string arg3) payable {
    if arg2.length < 1:
        revert with 0, 'Title is too short'
    if 64 < arg2.length:
        revert with 0, 'Title is too long'
    if arg3.length < 1:
        revert with 0, 'Description is too short'
    if 10000 < arg3.length:
        revert with 0, 'Description is too long'
    if msg.value < currentPrice:
        revert with 0, 'Amount of Ether sent too small'
    require msg.sender
    require not ownerOf[stor8.length + 1]
    ownerOf[stor8.length + 1] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)].field_0++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenByIndex.length + 1
    stor7[stor8.length + 1] = tokenOfOwnerByIndex[address(msg.sender)].field_0
    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
    stor9[stor8.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
    stor13[stor8.length + 1] = arg1
    stor14[stor8.length + 1].field_0 = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        stor14[stor8.length + 1][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while stor14[stor8.length + 1].length + 31 / 32 > idx:
        stor14[stor8.length + 1][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor15[stor8.length + 1].field_0 = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        stor15[stor8.length + 1][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while stor15[stor8.length + 1].length + 31 / 32 > idx:
        stor15[stor8.length + 1][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit BoughtToken((tokenByIndex.length + 1), msg.sender);
}

function viewToken(uint256 arg1) {
    mem[96] = stor14[arg1].length
    mem[128] = stor14[arg1].field_0
    idx = 128
    s = 0
    while stor14[arg1].length + 96 > idx:
        mem[idx + 32] = stor14[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 15
    mem[64] = ceil32(stor14[arg1].length) + ceil32(stor15[arg1].length) + 160
    mem[ceil32(stor14[arg1].length) + 128] = stor15[arg1].length
    mem[0] = sha3(arg1, 15)
    mem[ceil32(stor14[arg1].length) + 160] = stor15[arg1].field_0
    idx = ceil32(stor14[arg1].length) + 160
    s = 0
    while ceil32(stor14[arg1].length) + stor15[arg1].length + 128 > idx:
        mem[idx + 32] = stor15[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor14[arg1].length) + ceil32(stor15[arg1].length) + 160] = stor13[arg1]
    mem[ceil32(stor14[arg1].length) + ceil32(stor15[arg1].length) + 192] = 96
    mem[ceil32(stor14[arg1].length) + ceil32(stor15[arg1].length) + 256] = stor14[arg1].length
    mem[ceil32(stor14[arg1].length) + ceil32(stor15[arg1].length) + 288 len ceil32(stor14[arg1].length)] = mem[128 len ceil32(stor14[arg1].length)]
    mem[ceil32(stor14[arg1].length) + ceil32(stor15[arg1].length) + 224] = stor14[arg1].length + 128
    mem[stor14[arg1].length + ceil32(stor14[arg1].length) + ceil32(stor15[arg1].length) + 288] = stor15[arg1].length
    mem[stor14[arg1].length + ceil32(stor14[arg1].length) + ceil32(stor15[arg1].length) + 320 len ceil32(stor15[arg1].length)] = mem[ceil32(stor14[arg1].length) + 160 len ceil32(stor15[arg1].length)]
    if not stor15[arg1].length % 32:
        return stor13[arg1], 
               Array(len=stor14[arg1].length, data=mem[128 len ceil32(stor14[arg1].length)], mem[(2 * ceil32(stor14[arg1].length)) + ceil32(stor15[arg1].length) + 288 len stor15[arg1].length + stor14[arg1].length + -ceil32(stor14[arg1].length) + 32]),
               stor14[arg1].length + 128
    mem[floor32(stor15[arg1].length) + stor14[arg1].length + ceil32(stor14[arg1].length) + ceil32(stor15[arg1].length) + 320] = mem[floor32(stor15[arg1].length) + stor14[arg1].length + ceil32(stor14[arg1].length) + ceil32(stor15[arg1].length) + -stor15[arg1].length % 32 + 352 len stor15[arg1].length % 32]
    return stor13[arg1], 
           Array(len=stor14[arg1].length, data=mem[128 len ceil32(stor14[arg1].length)], mem[(2 * ceil32(stor14[arg1].length)) + ceil32(stor15[arg1].length) + 288 len floor32(stor15[arg1].length) + stor14[arg1].length + -ceil32(stor14[arg1].length) + 64]),
           stor14[arg1].length + 128
}



}
