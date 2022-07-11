contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
mapping of bool tokenURI;
address owner;
uint256 totalSupply;
uint256 nextTokenId;
mapping of uint256 sub_205f2367;
mapping of uint256 sub_7f267355;
mapping of uint256 sub_f1c744db;
mapping of uint256 sub_fd68df8f;
mapping of uint8 stor15;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_205f2367(?) {
    return sub_205f2367[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function nextTokenId() {
    return nextTokenId
}

function sub_7f267355(?) {
    return sub_7f267355[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function sub_f1c744db(?) {
    return sub_f1c744db[arg1]
}

function sub_fd68df8f(?) {
    return sub_fd68df8f[arg1]
}

function isBlacklisted(address arg1) {
    return bool(stor15[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setIsBlacklisted(address arg1, bool arg2) {
    require msg.sender == owner
    stor15[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTokenURI(uint256 arg1, string arg2) {
    require msg.sender == owner
    require ownerOf[arg1]
    uint256(tokenURI[arg1][]) = Array(len=arg2.length, data=arg2[all])
}

function sub_8e0f8e76(?) {
    require msg.sender == owner
    require arg1 < nextTokenId
    require not sub_205f2367[arg1]
    sub_205f2367[arg1] = block.timestamp
    emit 0x5b4581c5: arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require not stor15[address(arg1)]
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require not stor15[address(arg1)]
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function mint(address arg1, string arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require not ownerOf[stor10]
    ownerOf[stor10] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, nextTokenId);
    sub_7f267355[stor10] = arg3
    require ownerOf[stor10]
    uint256(tokenURI[stor10][]) = Array(len=arg2.length, data=arg2[all])
    require nextTokenId + 1 >= nextTokenId
    nextTokenId++
    require totalSupply + 1 >= totalSupply
    totalSupply++
}

function sub_f047d340(?) {
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    if approved[arg1]:
        approved[arg1] = 0
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg1] = 0
    emit Transfer(msg.sender, 0, arg1);
    if Mask(255, 1, uint256(tokenURI[arg1]) and (256 * not bool(tokenURI[arg1])) - 1):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
    sub_f1c744db[arg1] = block.timestamp
    sub_fd68df8f[arg1] = arg2
    require 1 <= totalSupply
    totalSupply--
    emit 0x6456afd4: arg2, arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor15[address(arg2)]
    if sub_205f2367[arg3] > 0:
        require sub_7f267355[arg3] + sub_205f2367[arg3] >= sub_205f2367[arg3]
        require block.timestamp <= sub_7f267355[arg3] + sub_205f2367[arg3]
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
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor15[address(arg2)]
    if sub_205f2367[arg3] > 0:
        require sub_7f267355[arg3] + sub_205f2367[arg3] >= sub_205f2367[arg3]
        require block.timestamp <= sub_7f267355[arg3] + sub_205f2367[arg3]
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
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require not stor15[address(arg2)]
    if sub_205f2367[arg3] > 0:
        require sub_7f267355[arg3] + sub_205f2367[arg3] >= sub_205f2367[arg3]
        require block.timestamp <= sub_7f267355[arg3] + sub_205f2367[arg3]
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
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}



}
