contract main {




// =====================  Runtime code  =====================


mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
array of uint256 stor6;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
address owner;

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
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

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    require ownerOf[arg2] == msg.sender
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function buyToken() payable {
    require msg.sender
    require not ownerOf[stor8.length + 1]
    ownerOf[stor8.length + 1] = msg.sender
    balanceOf[address(msg.sender)]++
    stor6[address(msg.sender)]++
    stor6[address(msg.sender)][stor6[address(msg.sender)]] = tokenByIndex.length + 1
    stor7[stor8.length + 1] = stor6[address(msg.sender)]
    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
    stor9[stor8.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
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
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require stor6[address(arg1)] - 1 < stor6[address(arg1)]
    require stor7[arg3] < stor6[address(arg1)]
    stor6[address(arg1)][stor7[arg3]] = stor6[address(arg1)][stor6[address(arg1)]]
    require stor6[address(arg1)] - 1 < stor6[address(arg1)]
    stor6[address(arg1)][stor6[address(arg1)]] = 0
    stor6[address(arg1)]--
    if stor6[address(arg1)] > stor6[address(arg1)] - 1:
        idx = stor6[address(arg1)] - 1
        while stor6[address(arg1)] > idx:
            stor6[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    balanceOf[address(arg2)]++
    stor6[address(arg2)]++
    stor6[address(arg2)][stor6[address(arg2)]] = arg3
    stor7[arg3] = stor6[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}



}
