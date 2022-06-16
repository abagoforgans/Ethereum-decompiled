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
mapping of struct sub_27066432;
mapping of uint256 sub_6194bd7b;
mapping of uint256 sub_8bdd761d;
array of struct stor16;
array of uint256 stor17;
array of uint256 stor27;
uint256 stor37;
uint256 stor38;
uint256 stor39;
address stor40;

function sub_01349ce3(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_0:
        revert with 0, 'Not a base token'
    require ownerOf[arg1]
    return bool(sub_27066432[arg1][stor1[arg1]].field_8)
}

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

function sub_27066432(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_0:
        revert with 0, 'Not a base token'
    require ownerOf[arg1]
    return sub_27066432[arg1][stor1[arg1]].field_256
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_30f63224(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_0:
        revert with 0, 'Not a base token'
    require ownerOf[arg1]
    return sub_27066432[arg1][stor1[arg1]].field_512
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function sub_6194bd7b(?) {
    require calldata.size - 4 >= 32
    return sub_6194bd7b[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function sub_7077cb75(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_0:
        revert with 0, 'Not a base token'
    require ownerOf[arg1]
    return sub_27066432[arg1][stor1[arg1]].field_768
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function sub_8bdd761d(?) {
    require calldata.size - 4 >= 32
    return sub_8bdd761d[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_98176365(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return bool(sub_27066432[arg1][stor1[arg1]].field_0)
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function sub_d65d023c(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_0:
        revert with 0, 'Not a base token'
    require ownerOf[arg1]
    return sub_27066432[arg1][stor1[arg1]].field_1024
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_0f666426(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor38 = arg1
}

function sub_3541ae4b(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor39 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e4a767ca(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    require sub_27066432[arg1][stor1[arg1]].field_768 < 10
    return (stor27[stor13[arg1][stor1[arg1]].field_768] - sub_6194bd7b[arg1])
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_f8f81185(?) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_0:
        revert with 0, 'Not a base token'
    require sub_27066432[arg1][address(msg.sender)].field_768 < 10
    return (sub_8bdd761d[arg1] > stor17[stor13[arg1][address(msg.sender)].field_768])
}

function tokensByOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not stor16[address(arg1)].field_0:
        mem[(32 * stor16[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor16[address(arg1)].field_0) + 160] = stor16[address(arg1)].field_0
        mem[(32 * stor16[address(arg1)].field_0) + 192 len floor32(stor16[address(arg1)].field_0)] = mem[128 len floor32(stor16[address(arg1)].field_0)]
        return memory
          from (32 * stor16[address(arg1)].field_0) + 128
           len (96 * stor16[address(arg1)].field_0) + 64
    mem[128] = stor16[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor16[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor16[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor16[address(arg1)].field_0) + 192 len floor32(stor16[address(arg1)].field_0)] = mem[128 len floor32(stor16[address(arg1)].field_0)]
    return Array(len=stor16[address(arg1)].field_0, data=mem[128 len floor32(stor16[address(arg1)].field_0)], mem[(32 * stor16[address(arg1)].field_0) + floor32(stor16[address(arg1)].field_0) + 192 len (32 * stor16[address(arg1)].field_0) - floor32(stor16[address(arg1)].field_0)]), 
}

function sub_bb6c94d1(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.value == arg4
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_0:
        revert with 0, 'Not a base token'
    require ownerOf[arg1]
    if arg4 != sub_27066432[arg1][stor1[arg1]].field_256:
        revert with 0, 'Incorect value'
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_8:
        revert with 0, 'Disabled Base Token'
    sub_8bdd761d[arg1]++
    require arg5
    require not ownerOf[arg2]
    ownerOf[arg2] = arg5
    balanceOf[address(arg5)]++
    emit Transfer(0, arg5, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg5)]
    tokenOfOwnerByIndex[address(arg5)]++
    tokenOfOwnerByIndex[address(arg5)][tokenOfOwnerByIndex[address(arg5)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    require ownerOf[arg2]
    tokenURI[arg2][] = Array(len=arg3.length, data=arg3[all])
    stor16[address(arg5)].field_0++
    stor16[address(arg5)][stor16[address(arg5)].field_0].field_0 = arg2
    require ownerOf[arg1]
    sub_27066432[arg1][stor1[arg1]].field_512 += arg4
}

function sub_10eb7c03(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if arg3 < stor38:
        revert with 0, 'Price must be above minimumPrice'
    if arg3 > stor39:
        revert with 0, 'Price must be below maximumPrice'
    sub_27066432[arg2][address(msg.sender)].field_0 = 1
    sub_27066432[arg2][address(msg.sender)].field_8 = 1
    sub_27066432[arg2][address(msg.sender)].field_256 = arg3
    sub_27066432[arg2][address(msg.sender)].field_768 = 0
    sub_27066432[arg2][address(msg.sender)].field_1280 = arg4
    require msg.sender
    require not ownerOf[arg2]
    ownerOf[arg2] = msg.sender
    balanceOf[address(msg.sender)]++
    emit Transfer(0, msg.sender, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    require ownerOf[arg2]
    tokenURI[arg2][] = Array(len=arg1.length, data=arg1[all])
    stor16[address(msg.sender)].field_0++
    stor16[address(msg.sender)][stor16[address(msg.sender)].field_0].field_0 = arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function sub_2819411a(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_0:
        revert with 0, 'Not a base token'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not the base token holder'
    require sub_27066432[arg1][address(msg.sender)].field_768 < 10
    if sub_6194bd7b[arg1] >= stor17[stor13[arg1][address(msg.sender)].field_768]:
        revert with 0, 
                    32,
                    36,
                    0xfe4d6178696d756d207261726520746f6b656e732068617665206265656e206d696e7465,
                    mem[ceil32(arg3.length) + 232 len 28]
    if not sub_27066432[arg1][address(msg.sender)].field_8:
        revert with 0, 'Disabled Base Token'
    sub_6194bd7b[arg1]++
    require arg4
    require not ownerOf[arg2]
    ownerOf[arg2] = arg4
    balanceOf[address(arg4)]++
    emit Transfer(0, arg4, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg4)]
    tokenOfOwnerByIndex[address(arg4)]++
    tokenOfOwnerByIndex[address(arg4)][tokenOfOwnerByIndex[address(arg4)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    require ownerOf[arg2]
    tokenURI[arg2][] = Array(len=arg3.length, data=arg3[all])
    stor16[address(arg4)].field_0++
    stor16[address(arg4)][stor16[address(arg4)].field_0].field_0 = arg2
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
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

function sub_862d27b1(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if arg4 < stor38:
        revert with 0, 'Price must be above minimumPrice'
    if arg4 > stor39:
        revert with 0, 'Price must be below maximumPrice'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not the base token holder'
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_0:
        revert with 0, 'Not a base token'
    require sub_27066432[arg1][address(msg.sender)].field_768 < 10
    if sub_8bdd761d[arg1] <= stor17[stor13[arg1][address(msg.sender)].field_768]:
        revert with 0, 
                    32,
                    34,
                    0x644e6f7420656e6f75676820737570706f727465727320746f206d6574616d6f7270,
                    mem[ceil32(arg2.length) + 230 len 30]
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_8:
        revert with 0, 'Disabled Base Token'
    sub_27066432[arg1][address(msg.sender)].field_8 = 0
    sub_27066432[arg3][address(msg.sender)].field_0 = 1
    sub_27066432[arg3][address(msg.sender)].field_8 = 1
    sub_27066432[arg3][address(msg.sender)].field_256 = arg4
    sub_27066432[arg3][address(msg.sender)].field_1280 = arg5
    sub_27066432[arg3][address(msg.sender)].field_1024 = arg1
    sub_27066432[arg3][address(msg.sender)].field_768 = sub_27066432[arg1][address(msg.sender)].field_768 + 1
    sub_6194bd7b[arg3] = sub_6194bd7b[arg1]
    sub_8bdd761d[arg3] = sub_8bdd761d[arg1]
    require msg.sender
    require not ownerOf[arg3]
    ownerOf[arg3] = msg.sender
    balanceOf[address(msg.sender)]++
    emit Transfer(0, msg.sender, arg3);
    stor6[arg3] = tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg3
    stor8[arg3] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg3
    require ownerOf[arg3]
    tokenURI[arg3][] = Array(len=arg2.length, data=arg2[all])
    stor16[address(msg.sender)].field_0++
    stor16[address(msg.sender)][stor16[address(msg.sender)].field_0].field_0 = arg3
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    require ownerOf[arg1]
    require ownerOf[arg1]
    if not sub_27066432[arg1][stor1[arg1]].field_0:
        revert with 0, 'Not a base token'
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not the base token holder'
    if eth.balance(this.address) < sub_27066432[arg1][stor1[arg1]].field_512:
        revert with 0, 'insolvent'
    require ownerOf[arg1]
    sub_27066432[arg1][stor1[arg1]].field_512 = 0
    if not sub_27066432[arg1][stor1[arg1]].field_512:
        require 0 <= sub_27066432[arg1][stor1[arg1]].field_512
        call stor40 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call sub_27066432[arg1][stor1[arg1]].field_1280 with:
           value sub_27066432[arg1][stor1[arg1]].field_512 wei
             gas 2300 * is_zero(value) wei
    else:
        require sub_27066432[arg1][stor1[arg1]].field_512
        require 100 * sub_27066432[arg1][stor1[arg1]].field_512 / sub_27066432[arg1][stor1[arg1]].field_512 == 100
        if not 100 * sub_27066432[arg1][stor1[arg1]].field_512:
            require 0 <= sub_27066432[arg1][stor1[arg1]].field_512
            call stor40 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call sub_27066432[arg1][stor1[arg1]].field_1280 with:
               value sub_27066432[arg1][stor1[arg1]].field_512 wei
                 gas 2300 * is_zero(value) wei
        else:
            require 100 * sub_27066432[arg1][stor1[arg1]].field_512
            require 100 * sub_27066432[arg1][stor1[arg1]].field_512 * stor37 / 100 * sub_27066432[arg1][stor1[arg1]].field_512 == stor37
            require 100 * sub_27066432[arg1][stor1[arg1]].field_512 * stor37 / 10000 <= sub_27066432[arg1][stor1[arg1]].field_512
            call stor40 with:
               value 100 * sub_27066432[arg1][stor1[arg1]].field_512 * stor37 / 10000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call sub_27066432[arg1][stor1[arg1]].field_1280 with:
               value sub_27066432[arg1][stor1[arg1]].field_512 - (100 * sub_27066432[arg1][stor1[arg1]].field_512 * stor37 / 10000) wei
                 gas 2300 * is_zero(value) wei
}



}
