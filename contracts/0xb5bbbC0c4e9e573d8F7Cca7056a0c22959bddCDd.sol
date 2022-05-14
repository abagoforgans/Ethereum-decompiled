contract main {




// =====================  Runtime code  =====================


const rate = 1000


mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
mapping of bool tokenURI;
uint8 paused; offset 160
uint128 stor11; offset 160
address owner;
uint256 weiRaised;
uint256 iouTokens;
uint8 main_sale;
array of struct tokens;

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function main_sale() {
    return bool(main_sale)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function weiRaised() {
    return weiRaised
}

function tokens(uint256 arg1) {
    require arg1 < tokens.length
    return tokens[arg1].field_0, tokens[arg1].field_0, tokens[arg1].field_256, tokens[arg1].field_512
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function iouTokens() {
    return iouTokens
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
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

function mainICO() {
    require msg.sender == owner
    require not main_sale
    main_sale = 1
    emit MainICO()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
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

function buyTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not paused
    require arg1
    require arg2
    require arg2
    require 1000 * arg2 / arg2 == 1000
    require weiRaised + arg2 >= weiRaised
    weiRaised += arg2
    require iouTokens + (1000 * arg2) >= iouTokens
    iouTokens += 1000 * arg2
    tokens.length++
    tokens[tokens.length].field_0 = arg1
    tokens[tokens.length].field_160 = uint64(block.timestamp)
    tokens[tokens.length].field_256 = 1000 * arg2
    tokens[tokens.length].field_512 = arg2
    require arg1
    require not ownerOf[stor15.length]
    ownerOf[stor15.length] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = tokens.length
    stor7[stor15.length] = tokenOfOwnerByIndex[address(arg1)].field_0
    emit Transfer(tokens.length, 0, arg1);
    stor9[stor15.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokens.length
}

function tokensOf(address arg1) {
    if not tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
        return memory
          from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
           len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
    mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
    return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)], mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + floor32(tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)].field_0) - floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
    emit Transfer(arg3, arg1, arg2);
}

function burn(uint256 arg1) {
    require main_sale
    require ownerOf[arg1]
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    if approved[arg1]:
        approved[arg1] = 0
        emit Approval(arg1, ownerOf[arg1], 0);
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    require 1 <= balanceOf[stor0[arg1]]
    balanceOf[stor0[arg1]]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[stor0[arg1]].field_0
    require tokenOfOwnerByIndex[stor0[arg1]].field_0 - 1 < tokenOfOwnerByIndex[stor0[arg1]].field_0
    require stor7[arg1] < tokenOfOwnerByIndex[stor0[arg1]].field_0
    tokenOfOwnerByIndex[stor0[arg1]][stor7[arg1]].field_0 = tokenOfOwnerByIndex[stor0[arg1]][tokenOfOwnerByIndex[stor0[arg1]].field_0].field_0
    require tokenOfOwnerByIndex[stor0[arg1]].field_0 - 1 < tokenOfOwnerByIndex[stor0[arg1]].field_0
    tokenOfOwnerByIndex[stor0[arg1]][tokenOfOwnerByIndex[stor0[arg1]].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor0[arg1]].field_0--
    if tokenOfOwnerByIndex[stor0[arg1]].field_0 > tokenOfOwnerByIndex[stor0[arg1]].field_0 - 1:
        idx = tokenOfOwnerByIndex[stor0[arg1]].field_0 - 1
        while tokenOfOwnerByIndex[stor0[arg1]].field_0 > idx:
            tokenOfOwnerByIndex[stor0[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg1] = 0
    stor7[stor6[stor0[arg1]][stor6[stor0[arg1]].field_0].field_0] = stor7[arg1]
    emit Transfer(arg1, ownerOf[arg1], 0);
    if Mask(255, 1, (256 * not bool(tokenURI[arg1])) - 1 and uint256(tokenURI[arg1])):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor9[arg1] < tokenByIndex.length
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor9[arg1] = 0
    stor9[stor8[stor8.length]] = stor9[arg1]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
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
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
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
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}



}
