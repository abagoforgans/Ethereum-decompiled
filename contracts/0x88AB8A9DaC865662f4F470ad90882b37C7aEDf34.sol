contract main {




// =====================  Runtime code  =====================


#
#  - viewToken(uint256 arg1)
#
const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
array of struct tokenOfOwnerByIndex;
mapping of uint256 ownedTokensIndex;
array of uint256 allTokens;
mapping of uint256 allTokensIndex;
array of uint256 tokenURI;
address owner;
mapping of uint256 tokenTypes;
mapping of uint256 sub_50dc1722;
mapping of uint256 sub_8da0b3ee;
array of uint256 sub_cfbb7d9a;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22; offset 1
uint256 stor22;
array of uint256 sub_cb19273b;
mapping of address sub_2eb8c1d3;
array of struct sub_6a22a976;
mapping of uint256 sub_ef8998ae;
mapping of uint256 sub_dd29dc68;
mapping of uint256 sub_7c11d624;
address walletAddress;
array of uint256 sub_d4db722e;
address stor33;
mapping of uint256 sub_d2f0a1c9;
mapping of uint256 sub_e9fb3589;
mapping of uint256 sub_c42e532b;
mapping of uint256 sub_01d4b66a;
mapping of uint8 stor38;
array of struct sub_e88583b9;
mapping of uint256 sub_1a3eec52;
uint256 fee;
uint256 sub_74c7c578;
array of uint256 name;
mapping of uint8 stor44;
mapping of uint8 stor45;

function name(uint256 arg1) {
    return name[arg1][0 len name[arg1].length]
}

function sub_01d4b66a(?) {
    return sub_01d4b66a[arg1][arg2]
}

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return allTokens.length
}

function sub_1a3eec52(?) {
    return sub_1a3eec52[arg1]
}

function sub_2eb8c1d3(?) {
    return sub_2eb8c1d3[arg1]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function tokenTypes(uint256 arg1) {
    return tokenTypes[arg1]
}

function allTokensIndex(uint256 arg1) {
    return allTokensIndex[arg1]
}

function tokenByIndex(uint256 arg1) {
    require arg1 < allTokens.length
    return allTokens[arg1]
}

function sub_50dc1722(?) {
    return sub_50dc1722[arg1]
}

function wallet() {
    return walletAddress
}

function sub_5be4ef4b(?) {
    return bool(stor38[arg1])
}

function allTokens(uint256 arg1) {
    require arg1 < allTokens.length
    return allTokens[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function sub_6a22a976(?) {
    require arg2 < sub_6a22a976[arg1].field_0
    return sub_6a22a976[arg1][arg2].field_0
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_74c7c578(?) {
    return sub_74c7c578
}

function ownedTokensIndex(uint256 arg1) {
    return ownedTokensIndex[arg1]
}

function sub_7561d020(?) {
    return sub_d4db722e.length
}

function sub_7c11d624(?) {
    return sub_7c11d624[arg1][arg2][arg3]
}

function sub_8da0b3ee(?) {
    return sub_8da0b3ee[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_af6c011f(?) {
    return bool(stor45[arg1])
}

function sub_baa79caf(?) {
    return sub_e88583b9[arg1][arg2][arg3][0 len sub_e88583b9[arg1][arg2][arg3].length].field_0
}

function sub_c42e532b(?) {
    return sub_c42e532b[arg1]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function sub_cb19273b(?) {
    require arg1 < sub_cb19273b.length
    return sub_cb19273b[arg1]
}

function sub_cfbb7d9a(?) {
    return sub_cfbb7d9a[arg1]
}

function sub_d2f0a1c9(?) {
    return sub_d2f0a1c9[arg1][arg2]
}

function sub_d4db722e(?) {
    return sub_d4db722e[arg1][0 len sub_d4db722e[arg1].length]
}

function sub_dd29dc68(?) {
    return sub_dd29dc68[arg1]
}

function fee() {
    return fee
}

function ownedTokens(address arg1, uint256 arg2) {
    require arg2 < tokenOfOwnerByIndex[arg1].field_0
    return tokenOfOwnerByIndex[arg1][arg2].field_0
}

function sub_e88583b9(?) {
    return sub_e88583b9[arg1][arg2][arg3][0 len sub_e88583b9[arg1][arg2][arg3].length].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function sub_e9fb3589(?) {
    return sub_e9fb3589[arg1][arg2]
}

function sub_ef8998ae(?) {
    return sub_ef8998ae[arg1]
}

function sub_f317d7dd(?) {
    return sub_cfbb7d9a[arg1][arg2][0 len sub_cfbb7d9a[arg1][arg2].length]
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function sub_48eba03d(?) {
    require msg.sender == owner
    stor33 = arg1
}

function sub_7f05ebf2(?) {
    require msg.sender == stor33
    sub_ef8998ae[arg1] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_44ebea01(?) {
    require stor23[arg1].field_512 + stor19 >= stor23[arg1].field_512
    return (stor23[arg1].field_512 + stor19)
}

function sub_6bef835c(?) {
    require msg.sender == owner
    sub_e88583b9[arg1][arg2][arg3][].field_0 = Array(len=arg4.length, data=arg4[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ba563365(?) {
    require msg.sender == owner
    sub_d4db722e.length++
    sub_d4db722e[sub_d4db722e.length][] = Array(len=arg1.length, data=arg1[all])
}

function sub_08282431(?) {
    require msg.sender == owner
    if arg4:
        sub_d2f0a1c9[arg3][arg5] = arg4
    else:
        fee = arg1
        sub_74c7c578 = arg2
}

function sub_c92bb4ff(?) {
    require msg.sender == owner
    sub_cfbb7d9a[arg1]++
    sub_cfbb7d9a[arg1][sub_cfbb7d9a[arg1]][] = Array(len=arg2.length, data=arg2[all])
}

function sub_4eaef239(?) {
    require msg.sender == owner
    sub_7c11d624[arg1][arg2][arg3] = arg4
    stor45[arg1] = uint8(arg5)
    stor38[arg1] = uint8(arg6)
    stor44[arg1] = uint8(arg7)
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_bb19f507(?) {
    if stor38[stor13[arg1]]:
        return 0
    if stor23[arg1].field_1024 >= 1:
        return stor23[arg1].field_1024 >= 1
    require stor23[arg1].field_512 + stor19 >= stor23[arg1].field_512
    return (stor23[arg1].field_512 + stor19 < block.timestamp)
}

function sub_1450d12b(?) payable {
    require msg.value == sub_74c7c578
    require msg.sender == ownerOf[arg1]
    call walletAddress with:
       value sub_74c7c578 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    name[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function addCareTaker(uint256 arg1, address arg2) {
    require msg.sender == ownerOf[arg1]
    sub_2eb8c1d3[arg1] = arg2
    sub_6a22a976[address(arg2)].field_0++
    sub_6a22a976[address(arg2)][sub_6a22a976[address(arg2)].field_0].field_0 = arg1
    require 1 <= sub_6a22a976[address(arg2)].field_0
    sub_dd29dc68[arg1] = sub_6a22a976[address(arg2)].field_0 - 1
}

function sub_59ec682a(?) payable {
    if sub_2eb8c1d3[arg1] != msg.sender:
        require ownerOf[arg1] == msg.sender
    require msg.value == fee
    require stor23[arg1].field_1024 < 3
    require stor23[arg1].field_512 + stor19 >= stor23[arg1].field_512
    require stor20 >= 0
    require stor23[arg1].field_512 + stor19 + stor20 > block.timestamp
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require block.timestamp + uint256(stor22.field_0) >= block.timestamp
    stor23[arg1].field_512 = block.timestamp + uint256(stor22.field_0)
}

function sub_14a15afa(?) payable {
    if sub_2eb8c1d3[arg1] != msg.sender:
        require ownerOf[arg1] == msg.sender
    require stor23[arg1].field_1024 < 3
    require stor23[arg1].field_512 + stor19 >= stor23[arg1].field_512
    require stor20 >= 0
    require block.timestamp < stor23[arg1].field_512 + stor19 + stor20
    require msg.value == sub_74c7c578
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor23[arg1].field_1024 = 0
    require block.timestamp + stor18 >= block.timestamp
    stor23[arg1].field_512 = block.timestamp + stor18
}

function sub_c70d5f3b(?) {
    sub_ef8998ae[arg1] = arg2
    if not stor38[stor13[arg1]]:
        require stor23[arg1].field_1024 < 1
        require stor23[arg1].field_512 + stor19 >= stor23[arg1].field_512
        require stor23[arg1].field_512 + stor19 >= block.timestamp
    require ownerOf[arg1] == msg.sender
    if arg2 > 0:
        require ext_code.size(stor33)
        call stor33.0x119a80f1 with:
             gas gas_remaining wei
            args arg1, tokenTypes[arg1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ownerOf[arg1]
        require stor33 != ownerOf[arg1]
        if ownerOf[arg1] != msg.sender:
            require stor4[stor1[arg1]][address(msg.sender)]
        approved[arg1] = stor33
        emit Approval(ownerOf[arg1], stor33, arg1);
}

function sub_ed9b079a(?) {
    if ownerOf[arg1] != msg.sender:
        if sub_2eb8c1d3[arg1] != msg.sender:
            require msg.sender == stor33
    if sub_2eb8c1d3[arg1]:
        sub_2eb8c1d3[arg1] = 0
        require 1 <= sub_6a22a976[stor26[arg1]].field_0
        require sub_6a22a976[stor26[arg1]].field_0 - 1 < sub_6a22a976[stor26[arg1]].field_0
        sub_dd29dc68[stor27[stor26[arg1]][stor27[stor26[arg1]].field_0].field_0] = sub_dd29dc68[arg1]
        require sub_dd29dc68[arg1] < sub_6a22a976[stor26[arg1]].field_0
        sub_6a22a976[stor26[arg1]][stor29[arg1]].field_0 = sub_6a22a976[stor26[arg1]][sub_6a22a976[stor26[arg1]].field_0].field_0
        sub_6a22a976[stor26[arg1]].field_0--
        if sub_6a22a976[stor26[arg1]].field_0 > sub_6a22a976[stor26[arg1]].field_0 - 1:
            idx = sub_6a22a976[stor26[arg1]].field_0 - 1
            while sub_6a22a976[stor26[arg1]].field_0 > idx:
                sub_6a22a976[stor26[arg1]][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_3e96a517(?) {
    if not sub_6a22a976[address(arg1)].field_0:
        mem[(32 * sub_6a22a976[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_6a22a976[address(arg1)].field_0) + 160] = sub_6a22a976[address(arg1)].field_0
        mem[(32 * sub_6a22a976[address(arg1)].field_0) + 192 len floor32(sub_6a22a976[address(arg1)].field_0)] = mem[128 len floor32(sub_6a22a976[address(arg1)].field_0)]
        return memory
          from (32 * sub_6a22a976[address(arg1)].field_0) + 128
           len (96 * sub_6a22a976[address(arg1)].field_0) + 64
    mem[128] = sub_6a22a976[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_6a22a976[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_6a22a976[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_6a22a976[address(arg1)].field_0) + 192 len floor32(sub_6a22a976[address(arg1)].field_0)] = mem[128 len floor32(sub_6a22a976[address(arg1)].field_0)]
    return Array(len=sub_6a22a976[address(arg1)].field_0, data=mem[128 len floor32(sub_6a22a976[address(arg1)].field_0)], mem[(32 * sub_6a22a976[address(arg1)].field_0) + floor32(sub_6a22a976[address(arg1)].field_0) + 192 len (32 * sub_6a22a976[address(arg1)].field_0) - floor32(sub_6a22a976[address(arg1)].field_0)]), 
}

function sub_246f04ab(?) {
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
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require ownedTokensIndex[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    ownedTokensIndex[arg3] = 0
    ownedTokensIndex[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = ownedTokensIndex[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    ownedTokensIndex[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
}

function sub_4deb2fd5(?) {
    if sub_2eb8c1d3[arg1] != msg.sender:
        require ownerOf[arg1] == msg.sender
    require not stor38[stor13[arg1]]
    require stor23[arg1].field_512 > block.timestamp
    require stor23[arg1].field_256 >= 2
    require stor23[arg1].field_1024 < 3
    require 1 <= stor23[arg1].field_256
    if stor23[arg1].field_1280 < stor23[arg1].field_256 - 1:
        require msg.sender
        require not ownerOf[stor9.length + 1]
        ownerOf[stor9.length + 1] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)].field_0++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = allTokens.length + 1
        ownedTokensIndex[stor9.length + 1] = tokenOfOwnerByIndex[address(msg.sender)].field_0
        emit Transfer(0, msg.sender, allTokens.length + 1);
        allTokensIndex[stor9.length + 1] = allTokens.length
        allTokens.length++
        allTokens[allTokens.length] = allTokens.length + 1
        require sub_01d4b66a[stor13[arg1]][stor14[arg1]] + 1 >= sub_01d4b66a[stor13[arg1]][stor14[arg1]]
        sub_01d4b66a[stor13[arg1]][stor14[arg1]]++
        tokenTypes[stor9.length + 1] = tokenTypes[arg1]
        sub_50dc1722[stor9.length + 1] = sub_50dc1722[arg1]
        sub_8da0b3ee[stor9.length + 1] = 1
        tokenTypes[stor9.length + 1] = tokenTypes[arg1]
        stor23[stor9.length + 1].field_0 = block.timestamp
        stor23[stor9.length + 1].field_256 = 1
        require block.timestamp + stor18 >= block.timestamp
        stor23[stor9.length + 1].field_512 = block.timestamp + stor18
        stor23[stor9.length + 1].field_768 = stor23[arg1].field_768
        stor23[stor9.length + 1].field_1536 = arg1
        sub_cb19273b.length++
        sub_cb19273b[sub_cb19273b.length] = allTokens.length + 1
        stor23[arg1].field_1280++
        stor[('array', 5, ('map', ('param', 'arg1'), ('name', 'stor23', 23))) + stor23[arg1].field_1280].field_0 = allTokens.length + 1
        emit 0x10d6b661: (allTokens.length + 1), msg.sender
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require ownedTokensIndex[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    ownedTokensIndex[arg3] = 0
    ownedTokensIndex[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = ownedTokensIndex[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    ownedTokensIndex[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require ownedTokensIndex[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    ownedTokensIndex[arg3] = 0
    ownedTokensIndex[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = ownedTokensIndex[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    ownedTokensIndex[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
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

function sub_b47770a8(?) payable {
    idx = 128
    s = 0
    while sub_e88583b9[arg1][arg2][arg3].length + 96 > idx:
        mem[idx + 32] = sub_e88583b9[arg1][arg2][arg3][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require sub_e88583b9[arg1][arg2][arg3].length > 0
    if stor44[arg1]:
        require msg.sender == owner
    else:
        if not stor45[arg1]:
            require sub_7c11d624[arg1][arg2][arg3] == msg.value
        else:
            require msg.value > sub_7c11d624[arg1][arg2][arg3]
            require sub_7c11d624[arg1][arg2][arg3] + (2562890625 * 3600 * 24 * 3600 * 24 * 3600 * 24 * 3600) >= sub_7c11d624[arg1][arg2][arg3]
            require msg.value < sub_7c11d624[arg1][arg2][arg3] + (2562890625 * 3600 * 24 * 3600 * 24 * 3600 * 24 * 3600)
            sub_7c11d624[arg1][arg2][arg3] = msg.value
        require sub_1a3eec52[address(msg.sender)] < block.timestamp
    if sub_01d4b66a[arg1][arg3] >= 25:
        if sub_d2f0a1c9[arg1][arg3]:
            require sub_01d4b66a[arg1][arg3] <= sub_d2f0a1c9[arg1][arg3]
        else:
            require sub_01d4b66a[arg1][arg3]
            sub_d2f0a1c9[arg1][arg3] = sub_c42e532b[arg1] / sub_01d4b66a[arg1][arg3]
    else:
        require arg4 > 25
        require arg4 < 100
        require sub_c42e532b[arg1] + arg4 >= sub_c42e532b[arg1]
        sub_c42e532b[arg1] += arg4
    require block.timestamp + 600 >= block.timestamp
    sub_1a3eec52[address(arg5)] = block.timestamp + 600
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg5
    require not ownerOf[stor9.length + 1]
    ownerOf[stor9.length + 1] = arg5
    require balanceOf[address(arg5)] + 1 >= balanceOf[address(arg5)]
    balanceOf[address(arg5)]++
    tokenOfOwnerByIndex[address(arg5)].field_0++
    tokenOfOwnerByIndex[address(arg5)][tokenOfOwnerByIndex[address(arg5)].field_0].field_0 = allTokens.length + 1
    ownedTokensIndex[stor9.length + 1] = tokenOfOwnerByIndex[address(arg5)].field_0
    emit Transfer(0, arg5, allTokens.length + 1);
    allTokensIndex[stor9.length + 1] = allTokens.length
    allTokens.length++
    allTokens[allTokens.length] = allTokens.length + 1
    require sub_01d4b66a[arg1][arg3] + 1 >= sub_01d4b66a[arg1][arg3]
    sub_01d4b66a[arg1][arg3]++
    tokenTypes[stor9.length + 1] = arg1
    sub_50dc1722[stor9.length + 1] = arg3
    sub_8da0b3ee[stor9.length + 1] = arg2
    mem[ceil32(sub_e88583b9[arg1][arg2][arg3].length) + 160] = sub_e88583b9[arg1][arg2][arg3].field_0
    idx = ceil32(sub_e88583b9[arg1][arg2][arg3].length) + 160
    s = 0
    while ceil32(sub_e88583b9[arg1][arg2][arg3].length) + sub_e88583b9[arg1][arg2][arg3].length + 128 > idx:
        mem[idx + 32] = sub_e88583b9[arg1][arg2][arg3][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ownerOf[stor9.length + 1]
    tokenURI[stor9.length + 1][] = Array(len=sub_e88583b9[arg1][arg2][arg3].length, data=mem[ceil32(sub_e88583b9[arg1][arg2][arg3].length) + 160 len sub_e88583b9[arg1][arg2][arg3].length])
    stor23[stor9.length + 1].field_0 = block.timestamp
    stor23[stor9.length + 1].field_256 = arg2
    require block.timestamp + stor18 >= block.timestamp
    stor23[stor9.length + 1].field_512 = block.timestamp + stor18
    stor23[stor9.length + 1].field_768 = arg3
    stor23[stor9.length + 1].field_1536 = 0
    sub_cb19273b.length++
    sub_cb19273b[sub_cb19273b.length] = allTokens.length + 1
    require ext_code.size(stor33)
    call stor33.0x6e76ca40 with:
         gas gas_remaining wei
        args allTokens.length + 1, arg1, arg2, arg3, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BoughtToken((allTokens.length + 1), arg5);
}

function sub_9886bcfa(?) {
    if sub_2eb8c1d3[arg1] != msg.sender:
        require ownerOf[arg1] == msg.sender
    require stor23[arg1].field_512 < block.timestamp
    require stor23[arg1].field_512 + stor19 >= stor23[arg1].field_512
    if stor23[arg1].field_512 + stor19 > block.timestamp:
        require block.timestamp + stor18 >= block.timestamp
        stor23[arg1].field_512 = block.timestamp + stor18
    require stor21 >= 0
    if stor23[arg1].field_512 + stor19 + stor21 > block.timestamp:
        if stor23[arg1].field_512 + stor19 < block.timestamp:
            require stor23[arg1].field_1024 + 1 >= stor23[arg1].field_1024
            stor23[arg1].field_1024++
            require block.timestamp + stor18 >= block.timestamp
            stor23[arg1].field_512 = block.timestamp + stor18
    require stor20 >= 0
    if stor23[arg1].field_512 + stor19 + stor20 < block.timestamp:
        if sub_2eb8c1d3[arg1]:
            sub_2eb8c1d3[arg1] = 0
            require 1 <= sub_6a22a976[stor26[arg1]].field_0
            require sub_6a22a976[stor26[arg1]].field_0 - 1 < sub_6a22a976[stor26[arg1]].field_0
            sub_dd29dc68[stor27[stor26[arg1]][stor27[stor26[arg1]].field_0].field_0] = sub_dd29dc68[arg1]
            require sub_dd29dc68[arg1] < sub_6a22a976[stor26[arg1]].field_0
            sub_6a22a976[stor26[arg1]][stor29[arg1]].field_0 = sub_6a22a976[stor26[arg1]][sub_6a22a976[stor26[arg1]].field_0].field_0
            sub_6a22a976[stor26[arg1]].field_0--
            if sub_6a22a976[stor26[arg1]].field_0 > sub_6a22a976[stor26[arg1]].field_0 - 1:
                idx = sub_6a22a976[stor26[arg1]].field_0 - 1
                while sub_6a22a976[stor26[arg1]].field_0 > idx:
                    sub_6a22a976[stor26[arg1]][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        require sub_e9fb3589[stor13[arg1]][stor14[arg1]] + 1 >= sub_e9fb3589[stor13[arg1]][stor14[arg1]]
        sub_e9fb3589[stor13[arg1]][stor14[arg1]]++
        require ext_code.size(stor33)
        call stor33.0x3cd4f49 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ownerOf[arg1]
        if ownerOf[arg1] != msg.sender:
            if approved[arg1] != msg.sender:
                require stor4[stor1[arg1]][address(msg.sender)]
        require msg.sender
        require stor33
        require ownerOf[arg1]
        require ownerOf[arg1] == msg.sender
        if approved[arg1]:
            approved[arg1] = 0
        require ownerOf[arg1]
        require ownerOf[arg1] == msg.sender
        require 1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]--
        ownerOf[arg1] = 0
        require 1 <= tokenOfOwnerByIndex[address(msg.sender)].field_0
        require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
        require ownedTokensIndex[arg1] < tokenOfOwnerByIndex[address(msg.sender)].field_0
        tokenOfOwnerByIndex[address(msg.sender)][stor8[arg1]].field_0 = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0
        require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = 0
        tokenOfOwnerByIndex[address(msg.sender)].field_0--
        if tokenOfOwnerByIndex[address(msg.sender)].field_0 > tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1:
            idx = tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1
            while tokenOfOwnerByIndex[address(msg.sender)].field_0 > idx:
                tokenOfOwnerByIndex[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
        ownedTokensIndex[arg1] = 0
        ownedTokensIndex[stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0] = ownedTokensIndex[arg1]
        require not ownerOf[arg1]
        ownerOf[arg1] = stor33
        require balanceOf[stor33] + 1 >= balanceOf[stor33]
        balanceOf[stor33]++
        tokenOfOwnerByIndex[stor33].field_0++
        tokenOfOwnerByIndex[stor33][tokenOfOwnerByIndex[stor33].field_0].field_0 = arg1
        ownedTokensIndex[arg1] = tokenOfOwnerByIndex[stor33].field_0
        emit Transfer(msg.sender, stor33, arg1);
    else:
        if stor23[arg1].field_1024 != 3:
            require not stor38[stor13[arg1]]
            if not stor23[arg1].field_256:
                require uint255(stor22.field_1) <= block.timestamp
                if stor23[arg1].field_1024 < 3:
                    if stor23[arg1].field_0 < block.timestamp - uint255(stor22.field_1):
                        require stor23[arg1].field_256 + 1 >= stor23[arg1].field_256
                        stor23[arg1].field_256++
                        idx = 128
                        s = 0
                        while sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length + 96 > idx:
                            mem[idx + 32] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length:
                            mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].field_0
                            idx = ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160
                            s = 0
                            while ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length + 128 > idx:
                                mem[idx + 32] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ownerOf[arg1]
                            tokenURI[arg1][] = Array(len=sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length, data=mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160 len sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length])
                        else:
                            require 1 <= stor23[arg1].field_256
                            mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].field_0
                            idx = ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160
                            s = 0
                            while ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].length + 128 > idx:
                                mem[idx + 32] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ownerOf[arg1]
                            tokenURI[arg1][] = Array(len=sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].length, data=mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160 len sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].length])
            else:
                if not uint256(stor22.field_0):
                    require 0 <= block.timestamp
                    if stor23[arg1].field_1024 < 3:
                        if stor23[arg1].field_0 < block.timestamp:
                            require stor23[arg1].field_256 + 1 >= stor23[arg1].field_256
                            stor23[arg1].field_256++
                            idx = 128
                            s = 0
                            while sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length + 96 > idx:
                                mem[idx + 32] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length:
                                mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].field_0
                                idx = ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160
                                s = 0
                                while ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length + 128 > idx:
                                    mem[idx + 32] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ownerOf[arg1]
                                tokenURI[arg1][] = Array(len=sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length, data=mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160 len sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length])
                            else:
                                require 1 <= stor23[arg1].field_256
                                mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].field_0
                                idx = ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160
                                s = 0
                                while ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].length + 128 > idx:
                                    mem[idx + 32] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ownerOf[arg1]
                                tokenURI[arg1][] = Array(len=sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].length, data=mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160 len sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].length])
                else:
                    require uint256(stor22.field_0)
                    require uint256(stor22.field_0) * stor23[arg1].field_256 / uint256(stor22.field_0) == stor23[arg1].field_256
                    require uint256(stor22.field_0) * stor23[arg1].field_256 <= block.timestamp
                    if stor23[arg1].field_1024 < 3:
                        if stor23[arg1].field_0 < block.timestamp - (uint256(stor22.field_0) * stor23[arg1].field_256):
                            require stor23[arg1].field_256 + 1 >= stor23[arg1].field_256
                            stor23[arg1].field_256++
                            idx = 128
                            s = 0
                            while sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length + 96 > idx:
                                mem[idx + 32] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length:
                                mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].field_0
                                idx = ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160
                                s = 0
                                while ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length + 128 > idx:
                                    mem[idx + 32] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ownerOf[arg1]
                                tokenURI[arg1][] = Array(len=sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length, data=mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160 len sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length])
                            else:
                                require 1 <= stor23[arg1].field_256
                                mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].field_0
                                idx = ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160
                                s = 0
                                while ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].length + 128 > idx:
                                    mem[idx + 32] = sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ownerOf[arg1]
                                tokenURI[arg1][] = Array(len=sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].length, data=mem[ceil32(sub_e88583b9[stor13[arg1]][stor23[arg1].field_256][stor23[arg1].field_768].length) + 160 len sub_e88583b9[stor13[arg1]][stor23[arg1].field_256 - 1][stor23[arg1].field_768].length])
        else:
            if sub_2eb8c1d3[arg1]:
                sub_2eb8c1d3[arg1] = 0
                require 1 <= sub_6a22a976[stor26[arg1]].field_0
                require sub_6a22a976[stor26[arg1]].field_0 - 1 < sub_6a22a976[stor26[arg1]].field_0
                sub_dd29dc68[stor27[stor26[arg1]][stor27[stor26[arg1]].field_0].field_0] = sub_dd29dc68[arg1]
                require sub_dd29dc68[arg1] < sub_6a22a976[stor26[arg1]].field_0
                sub_6a22a976[stor26[arg1]][stor29[arg1]].field_0 = sub_6a22a976[stor26[arg1]][sub_6a22a976[stor26[arg1]].field_0].field_0
                sub_6a22a976[stor26[arg1]].field_0--
                if sub_6a22a976[stor26[arg1]].field_0 > sub_6a22a976[stor26[arg1]].field_0 - 1:
                    idx = sub_6a22a976[stor26[arg1]].field_0 - 1
                    while sub_6a22a976[stor26[arg1]].field_0 > idx:
                        sub_6a22a976[stor26[arg1]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            require sub_e9fb3589[stor13[arg1]][stor14[arg1]] + 1 >= sub_e9fb3589[stor13[arg1]][stor14[arg1]]
            sub_e9fb3589[stor13[arg1]][stor14[arg1]]++
            require ext_code.size(stor33)
            call stor33.0x3cd4f49 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ownerOf[arg1]
            if ownerOf[arg1] != msg.sender:
                if approved[arg1] != msg.sender:
                    require stor4[stor1[arg1]][address(msg.sender)]
            require msg.sender
            require stor33
            require ownerOf[arg1]
            require ownerOf[arg1] == msg.sender
            if approved[arg1]:
                approved[arg1] = 0
            require ownerOf[arg1]
            require ownerOf[arg1] == msg.sender
            require 1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)]--
            ownerOf[arg1] = 0
            require 1 <= tokenOfOwnerByIndex[address(msg.sender)].field_0
            require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
            require ownedTokensIndex[arg1] < tokenOfOwnerByIndex[address(msg.sender)].field_0
            tokenOfOwnerByIndex[address(msg.sender)][stor8[arg1]].field_0 = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0
            require tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1 < tokenOfOwnerByIndex[address(msg.sender)].field_0
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = 0
            tokenOfOwnerByIndex[address(msg.sender)].field_0--
            if tokenOfOwnerByIndex[address(msg.sender)].field_0 > tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1:
                idx = tokenOfOwnerByIndex[address(msg.sender)].field_0 - 1
                while tokenOfOwnerByIndex[address(msg.sender)].field_0 > idx:
                    tokenOfOwnerByIndex[address(msg.sender)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            ownedTokensIndex[arg1] = 0
            ownedTokensIndex[stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0] = ownedTokensIndex[arg1]
            require not ownerOf[arg1]
            ownerOf[arg1] = stor33
            require balanceOf[stor33] + 1 >= balanceOf[stor33]
            balanceOf[stor33]++
            tokenOfOwnerByIndex[stor33].field_0++
            tokenOfOwnerByIndex[stor33][tokenOfOwnerByIndex[stor33].field_0].field_0 = arg1
            ownedTokensIndex[arg1] = tokenOfOwnerByIndex[stor33].field_0
            emit Transfer(msg.sender, stor33, arg1);
}



}
