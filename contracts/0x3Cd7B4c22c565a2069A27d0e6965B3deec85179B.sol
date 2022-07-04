contract main {




// =====================  Runtime code  =====================


const ZERO_ADDRESS = '018002'

const NOT_OWNER = '018001'


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of address ownerOf;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 tokenByIndex;
mapping of uint256 idToIndexWrapper;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 idToOwnerIndexWrapper;
array of uint256 name;
array of uint256 symbol;
mapping of bool tokenURI;
address owner;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_287e4d77(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return bool(stor1[arg1])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function idToIndexWrapper(uint256 arg1) {
    require calldata.size - 4 >= 32
    return idToIndexWrapper[arg1]
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function idToOwnerIndexWrapper(uint256 arg1) {
    require calldata.size - 4 >= 32
    return idToOwnerIndexWrapper[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_a8abb25f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '018001'
    require ownerOf[arg1]
    stor1[arg1] = 0
}

function sub_b43bdbeb(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '018001'
    require ownerOf[arg1]
    stor1[arg1] = 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_04966879(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        require stor5[stor2[arg1]][address(msg.sender)]
    stor1[arg1] = 0
}

function sub_dfc13836(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        require stor5[stor2[arg1]][address(msg.sender)]
    stor1[arg1] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '018001'
    if not arg1:
        revert with 0, '018002'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if ownerOf[arg2] != msg.sender:
        require stor5[stor2[arg2]][address(msg.sender)]
    require ownerOf[arg2]
    require not stor1[arg2]
    require arg1 != ownerOf[arg2]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function mint(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '018001'
    require arg1
    require not ownerOf[arg2]
    stor1[arg2] = 0
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    idToOwnerIndexWrapper[arg2] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, arg2);
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    idToIndexWrapper[arg2] = tokenByIndex.length
    require ownerOf[arg2]
    uint256(tokenURI[arg2][]) = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 192] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    require not stor1[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3] == ownerOf[arg3]
    ownerOf[arg3] = 0
    if tokenOfOwnerByIndex[stor2[arg3]] - 1 != idToOwnerIndexWrapper[arg3]:
        require tokenOfOwnerByIndex[stor2[arg3]] - 1 < tokenOfOwnerByIndex[stor2[arg3]]
        require idToOwnerIndexWrapper[arg3] < tokenOfOwnerByIndex[stor2[arg3]]
        tokenOfOwnerByIndex[stor2[arg3]][stor9[arg3]] = tokenOfOwnerByIndex[stor2[arg3]][tokenOfOwnerByIndex[stor2[arg3]]]
        idToOwnerIndexWrapper[stor8[stor2[arg3]][stor8[stor2[arg3]]]] = idToOwnerIndexWrapper[arg3]
    tokenOfOwnerByIndex[stor2[arg3]]--
    if tokenOfOwnerByIndex[stor2[arg3]] > tokenOfOwnerByIndex[stor2[arg3]] - 1:
        idx = tokenOfOwnerByIndex[stor2[arg3]] - 1
        while tokenOfOwnerByIndex[stor2[arg3]] > idx:
            tokenOfOwnerByIndex[stor2[arg3]][idx] = 0
            idx = idx + 1
            continue 
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    idToOwnerIndexWrapper[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    require not stor1[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3] == ownerOf[arg3]
    ownerOf[arg3] = 0
    if tokenOfOwnerByIndex[stor2[arg3]] - 1 != idToOwnerIndexWrapper[arg3]:
        require tokenOfOwnerByIndex[stor2[arg3]] - 1 < tokenOfOwnerByIndex[stor2[arg3]]
        require idToOwnerIndexWrapper[arg3] < tokenOfOwnerByIndex[stor2[arg3]]
        tokenOfOwnerByIndex[stor2[arg3]][stor9[arg3]] = tokenOfOwnerByIndex[stor2[arg3]][tokenOfOwnerByIndex[stor2[arg3]]]
        idToOwnerIndexWrapper[stor8[stor2[arg3]][stor8[stor2[arg3]]]] = idToOwnerIndexWrapper[arg3]
    tokenOfOwnerByIndex[stor2[arg3]]--
    if tokenOfOwnerByIndex[stor2[arg3]] > tokenOfOwnerByIndex[stor2[arg3]] - 1:
        idx = tokenOfOwnerByIndex[stor2[arg3]] - 1
        while tokenOfOwnerByIndex[stor2[arg3]] > idx:
            tokenOfOwnerByIndex[stor2[arg3]][idx] = 0
            idx = idx + 1
            continue 
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    idToOwnerIndexWrapper[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        require stor5[stor2[arg1]][address(msg.sender)]
    require ownerOf[arg1]
    if approved[arg1]:
        approved[arg1] = 0
    require ownerOf[arg1] == ownerOf[arg1]
    ownerOf[arg1] = 0
    if tokenOfOwnerByIndex[stor2[arg1]] - 1 != idToOwnerIndexWrapper[arg1]:
        require tokenOfOwnerByIndex[stor2[arg1]] - 1 < tokenOfOwnerByIndex[stor2[arg1]]
        require idToOwnerIndexWrapper[arg1] < tokenOfOwnerByIndex[stor2[arg1]]
        tokenOfOwnerByIndex[stor2[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][tokenOfOwnerByIndex[stor2[arg1]]]
        idToOwnerIndexWrapper[stor8[stor2[arg1]][stor8[stor2[arg1]]]] = idToOwnerIndexWrapper[arg1]
    tokenOfOwnerByIndex[stor2[arg1]]--
    if tokenOfOwnerByIndex[stor2[arg1]] > tokenOfOwnerByIndex[stor2[arg1]] - 1:
        idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
        while tokenOfOwnerByIndex[stor2[arg1]] > idx:
            tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
            idx = idx + 1
            continue 
    emit Transfer(ownerOf[arg1], 0, arg1);
    require tokenByIndex.length - 1 < tokenByIndex.length
    require idToIndexWrapper[arg1] < tokenByIndex.length
    tokenByIndex[stor7[arg1]] = tokenByIndex[tokenByIndex.length]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    idToIndexWrapper[stor6[stor6.length]] = idToIndexWrapper[arg1]
    idToIndexWrapper[arg1] = 0
    if Mask(255, 1, (256 * not bool(tokenURI[arg1])) - 1 and uint256(tokenURI[arg1])):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
    return 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor2[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    require not stor1[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3] == ownerOf[arg3]
    ownerOf[arg3] = 0
    if tokenOfOwnerByIndex[stor2[arg3]] - 1 != idToOwnerIndexWrapper[arg3]:
        require tokenOfOwnerByIndex[stor2[arg3]] - 1 < tokenOfOwnerByIndex[stor2[arg3]]
        require idToOwnerIndexWrapper[arg3] < tokenOfOwnerByIndex[stor2[arg3]]
        tokenOfOwnerByIndex[stor2[arg3]][stor9[arg3]] = tokenOfOwnerByIndex[stor2[arg3]][tokenOfOwnerByIndex[stor2[arg3]]]
        idToOwnerIndexWrapper[stor8[stor2[arg3]][stor8[stor2[arg3]]]] = idToOwnerIndexWrapper[arg3]
    tokenOfOwnerByIndex[stor2[arg3]]--
    if tokenOfOwnerByIndex[stor2[arg3]] > tokenOfOwnerByIndex[stor2[arg3]] - 1:
        idx = tokenOfOwnerByIndex[stor2[arg3]] - 1
        while tokenOfOwnerByIndex[stor2[arg3]] > idx:
            tokenOfOwnerByIndex[stor2[arg3]][idx] = 0
            idx = idx + 1
            continue 
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    idToOwnerIndexWrapper[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
