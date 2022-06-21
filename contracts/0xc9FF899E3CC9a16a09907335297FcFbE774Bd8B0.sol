contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 price;
uint256 maxTotalSupply;
uint256 totalSupply;
uint256 lastTokenId;
array of struct tokenData;
mapping of uint256 sub_9fed62c1;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'TOKEN_DOES_NOT_EXISTS'
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function maxTotalSupply() {
    return maxTotalSupply
}

function decimals() {
    return decimals
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9fed62c1(?) {
    require calldata.size - 4 >= 32
    return sub_9fed62c1[arg1]
}

function price() {
    return price
}

function tokenData(uint256 arg1) {
    return tokenData[arg1][0 len tokenData[arg1].length].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function lastTokenId() {
    return lastTokenId
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'SENDER_IS_NOT_OWNER'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0, 'INVALID_TO_ADDRESS'
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_04d242ab(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > lastTokenId:
        revert with 0, 'INVALID_TOKEN_ID'
    if msg.value + sub_9fed62c1[arg1] < sub_9fed62c1[arg1]:
        revert with 0, 'MATH_ERROR'
    sub_9fed62c1[arg1] += msg.value
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'SENDER_IS_NOT_OWNER'
    if not arg1:
        revert with 0, 'INVALID_NEW_OWNER'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'SENDER_IS_NOT_OWNER'
    if arg1 > eth.balance(this.address):
        revert with 0, 'NOT_ENOUG_MONEY'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < lastTokenId:
        revert with 0, 'TOKEN_DOES_NOT_EXISTS'
    mem[128] = tokenData[arg1].field_0
    idx = 128
    s = 0
    while tokenData[arg1].length + 96 > idx:
        mem[idx + 32] = tokenData[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=tokenData[arg1].length, data=mem[128 len tokenData[arg1].length]), sub_9fed62c1[arg1]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'TOKEN_DOES_NOT_EXISTS'
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'IS_NOT_APPOVED'
    if not arg2:
        revert with 0, 'INVALID_TO_ADDRESS'
    require ownerOf[arg3]
    if ownerOf[arg3] != arg1:
        revert with 0, 'OWNER_IS_NOT_TOKEN_OWNER'
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    if ownerOf[arg3] != arg1:
        revert with 0, 'FROM_IS_NOT_TOKEN_OWNER'
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'MATH_ERROR'
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] + 1 < balanceOf[address(arg2)]:
        revert with 0, 'MATH_ERROR'
    balanceOf[address(arg2)]++
    emit Transfer(arg1, arg2, arg3);
}

function mint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.value < price:
        revert with 0, 'NOT_ENOUG_MONEY'
    if lastTokenId + 1 < lastTokenId:
        revert with 0, 'MATH_ERROR'
    lastTokenId++
    tokenData[stor13 + 1].field_0 = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        tokenData[stor13 + 1][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while tokenData[stor13 + 1].length + 31 / 32 > idx:
        tokenData[stor13 + 1][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_9fed62c1[stor13] = msg.value
    if totalSupply + 1 < totalSupply:
        revert with 0, 'MATH_ERROR'
    totalSupply++
    if not arg1:
        revert with 0, 'INVALID_TO_ADDRESS'
    require not ownerOf[stor13]
    ownerOf[stor13] = arg1
    if balanceOf[address(arg1)] + 1 < balanceOf[address(arg1)]:
        revert with 0, 'MATH_ERROR'
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, lastTokenId);
    return lastTokenId
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'TOKEN_DOES_NOT_EXISTS'
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'IS_NOT_APPOVED'
    if not arg2:
        revert with 0, 'INVALID_TO_ADDRESS'
    require ownerOf[arg3]
    if ownerOf[arg3] != arg1:
        revert with 0, 'OWNER_IS_NOT_TOKEN_OWNER'
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    if ownerOf[arg3] != arg1:
        revert with 0, 'FROM_IS_NOT_TOKEN_OWNER'
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'MATH_ERROR'
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] + 1 < balanceOf[address(arg2)]:
        revert with 0, 'MATH_ERROR'
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
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'TOKEN_IS_NOT_RECIVED'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'TOKEN_DOES_NOT_EXISTS'
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 'IS_NOT_APPOVED'
    if not arg2:
        revert with 0, 'INVALID_TO_ADDRESS'
    require ownerOf[arg3]
    if ownerOf[arg3] != arg1:
        revert with 0, 'OWNER_IS_NOT_TOKEN_OWNER'
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    if ownerOf[arg3] != arg1:
        revert with 0, 'FROM_IS_NOT_TOKEN_OWNER'
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'MATH_ERROR'
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] + 1 < balanceOf[address(arg2)]:
        revert with 0, 'MATH_ERROR'
    balanceOf[address(arg2)]++
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'TOKEN_IS_NOT_RECIVED'
}



}
