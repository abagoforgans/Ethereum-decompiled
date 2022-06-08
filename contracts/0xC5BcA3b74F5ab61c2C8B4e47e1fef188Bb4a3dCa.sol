contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
mapping of uint8 stor0;
address ceoAddress;
address cfoAddress;
address cooAddress;
mapping of address sub_8bf8471a;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor7;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
array of uint256 sub_f355eadf;
array of uint256 sub_15c73d79;
array of uint256 name;
array of uint256 symbol;
address sub_4cfae72fAddress;
address sub_cf03a6a4Address;
array of struct stor18;
mapping of uint256 sub_9da14f12;
mapping of uint8 stor20;
array of struct sub_11b0d5e3;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function cfoAddress() {
    return cfoAddress
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require sub_8bf8471a[arg1]
    return approved[arg1]
}

function ceoAddress() {
    return ceoAddress
}

function sub_11b0d5e3(?) {
    require arg1 < sub_11b0d5e3.length
    return sub_11b0d5e3[arg1].field_0, 
           sub_11b0d5e3[arg1].field_256,
           sub_11b0d5e3[arg1].field_512,
           sub_11b0d5e3[arg1].field_768,
           bool(sub_11b0d5e3[arg1].field_1024)
}

function sub_15c73d79(?) {
    return sub_15c73d79[0 len sub_15c73d79.length]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_22dd2304(?) {
    return bool(stor20[arg1])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function sub_4cfae72f(?) {
    return sub_4cfae72fAddress
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function sub_56240e9f(?) {
    return stor18.length
}

function ownerOf(uint256 arg1) {
    require sub_8bf8471a[arg1]
    return sub_8bf8471a[arg1]
}

function sub_66b633e8(?) {
    require arg1 < sub_11b0d5e3.length
    return bool(sub_11b0d5e3[arg1].field_1024)
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_8bf8471a(?) {
    require sub_8bf8471a[arg1]
    return sub_8bf8471a[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9da14f12(?) {
    return sub_9da14f12[arg1]
}

function cooAddress() {
    return cooAddress
}

function sub_cf03a6a4(?) {
    return sub_cf03a6a4Address
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor7[address(arg1)][address(arg2)])
}

function sub_f355eadf(?) {
    return sub_f355eadf[0 len sub_f355eadf.length]
}

function _fallback() payable {
    revert
}

function sub_b5093d91(?) {
    return (sub_11b0d5e3.length - 1)
}

function setCOO(address arg1) {
    require msg.sender == ceoAddress
    cooAddress = arg1
}

function setCFO(address arg1) {
    require msg.sender == ceoAddress
    cfoAddress = arg1
}

function setCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function sub_958f489b(?) {
    require msg.sender == ceoAddress
    sub_4cfae72fAddress = arg1
    emit 0xd27383c3: arg1
}

function sub_c287190f(?) {
    require msg.sender == ceoAddress
    sub_cf03a6a4Address = arg1
    emit 0x3aba9926: arg1
}

function sub_43ed5113(?) {
    if ceoAddress != msg.sender:
        if cfoAddress != msg.sender:
            require msg.sender == cooAddress
    stor20[arg1] = 1
    emit 0xbff3b98a: arg1, 1
}

function sub_da805293(?) {
    if ceoAddress != msg.sender:
        if cfoAddress != msg.sender:
            require msg.sender == cooAddress
    stor20[arg1] = 0
    emit 0xbff3b98a: arg1, 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_ed746213(?) {
    require msg.sender == sub_cf03a6a4Address
    require arg1 < sub_11b0d5e3.length
    sub_11b0d5e3[arg1].field_0 = arg2
    emit 0x48d1a3ad: arg1, arg2
    return arg1
}

function sub_1d129578(?) {
    require msg.sender == sub_4cfae72fAddress
    require arg1 < sub_11b0d5e3.length
    sub_11b0d5e3[arg1].field_1024 = uint8(arg2)
    emit 0x8c9002d3: arg1, arg2
    return arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == cfoAddress
    call cfoAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(arg1, cfoAddress);
}

function approve(address arg1, uint256 arg2) {
    require sub_8bf8471a[arg2]
    require arg1 != sub_8bf8471a[arg2]
    if sub_8bf8471a[arg2] != msg.sender:
        require stor7[stor4[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(sub_8bf8471a[arg2], arg1, arg2);
}

function sub_0ed0acf1(?) {
    require msg.sender == sub_4cfae72fAddress
    require arg1 < sub_11b0d5e3.length
    sub_11b0d5e3[arg1].field_256 = arg2
    sub_11b0d5e3[arg1].field_512 = arg3
    sub_11b0d5e3[arg1].field_768 = arg4
    emit 0x97b1aa03: arg1, arg2, arg3, arg4
    return arg1
}

function withdrawBalance() {
    require msg.sender == cfoAddress
    emit Withdrawn(eth.balance(this.address), cfoAddress);
    call cfoAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8478d36f(?) {
    require msg.sender == ceoAddress
    sub_f355eadf.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_f355eadf[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_f355eadf.length + 31 / 32 > idx:
        sub_f355eadf[idx] = 0
        idx = idx + 1
        continue 
    sub_15c73d79.length = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_15c73d79[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_15c73d79.length + 31 / 32 > idx:
        sub_15c73d79[idx] = 0
        idx = idx + 1
        continue 
}

function sub_35380843(?) {
    require arg1 < stor18.length
    if not stor18[arg1].field_0:
        mem[(32 * stor18[arg1].field_0) + 128] = 32
        mem[(32 * stor18[arg1].field_0) + 160] = stor18[arg1].field_0
        mem[(32 * stor18[arg1].field_0) + 192 len floor32(stor18[arg1].field_0)] = mem[128 len floor32(stor18[arg1].field_0)]
        return memory
          from (32 * stor18[arg1].field_0) + 128
           len (96 * stor18[arg1].field_0) + 64
    mem[128] = stor18[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor18[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor18[arg1 + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor18[arg1].field_0) + 192 len floor32(stor18[arg1].field_0)] = mem[128 len floor32(stor18[arg1].field_0)]
    return Array(len=stor18[arg1].field_0, data=mem[128 len floor32(stor18[arg1].field_0)], mem[(32 * stor18[arg1].field_0) + floor32(stor18[arg1].field_0) + 192 len (32 * stor18[arg1].field_0) - floor32(stor18[arg1].field_0)]), 
}

function sub_f4777b61(?) {
    if ceoAddress != msg.sender:
        if cfoAddress != msg.sender:
            require msg.sender == cooAddress
    mem[160 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    stor18.length++
    stor18[stor18.length].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while stor18[stor18.length].field_0 > idx:
            stor18[stor18.length + idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 160
        while (32 * arg1.length) + 160 > idx:
            stor18[stor18.length + s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor18[stor18.length].field_0 > idx:
            stor18[stor18.length + idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_9da14f12[stor18.length] = arg2
    stor20[stor18.length] = 1
    emit 0x7332889b: stor18.length
    return stor18.length
}

function getOwnerPieces(address arg1) {
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

function sub_a063f390(?) {
    require arg3 < sub_11b0d5e3.length
    require not sub_11b0d5e3[arg3].field_1024
    require sub_8bf8471a[arg3]
    if sub_8bf8471a[arg3] != msg.sender:
        require sub_8bf8471a[arg3]
        if approved[arg3] != msg.sender:
            require stor7[stor4[arg3]][address(msg.sender)]
    require arg2
    require sub_8bf8471a[arg3]
    require sub_8bf8471a[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require sub_8bf8471a[arg3]
    require sub_8bf8471a[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    sub_8bf8471a[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor9[arg3] = 0
    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
    require not sub_8bf8471a[arg3]
    sub_8bf8471a[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
    return arg3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 < sub_11b0d5e3.length
    require not sub_11b0d5e3[arg3].field_1024
    require sub_8bf8471a[arg3]
    if sub_8bf8471a[arg3] != msg.sender:
        require sub_8bf8471a[arg3]
        if approved[arg3] != msg.sender:
            require stor7[stor4[arg3]][address(msg.sender)]
    require arg2
    require sub_8bf8471a[arg3]
    require sub_8bf8471a[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require sub_8bf8471a[arg3]
    require sub_8bf8471a[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    sub_8bf8471a[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor9[arg3] = 0
    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
    require not sub_8bf8471a[arg3]
    sub_8bf8471a[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 < sub_11b0d5e3.length
    require not sub_11b0d5e3[arg3].field_1024
    require sub_8bf8471a[arg3]
    if sub_8bf8471a[arg3] != msg.sender:
        require sub_8bf8471a[arg3]
        if approved[arg3] != msg.sender:
            require stor7[stor4[arg3]][address(msg.sender)]
    require arg2
    require sub_8bf8471a[arg3]
    require sub_8bf8471a[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require sub_8bf8471a[arg3]
    require sub_8bf8471a[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    sub_8bf8471a[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor9[arg3] = 0
    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
    require not sub_8bf8471a[arg3]
    sub_8bf8471a[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg3 < sub_11b0d5e3.length
    require not sub_11b0d5e3[arg3].field_1024
    require sub_8bf8471a[arg3]
    if sub_8bf8471a[arg3] != msg.sender:
        require sub_8bf8471a[arg3]
        if approved[arg3] != msg.sender:
            require stor7[stor4[arg3]][address(msg.sender)]
    require arg2
    require sub_8bf8471a[arg3]
    require sub_8bf8471a[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require sub_8bf8471a[arg3]
    require sub_8bf8471a[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    sub_8bf8471a[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor9[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor9[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor9[arg3] = 0
    stor9[stor8[address(arg1)][stor8[address(arg1)].field_0].field_0] = stor9[arg3]
    require not sub_8bf8471a[arg3]
    sub_8bf8471a[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor9[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
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

function purchasePack(uint256 arg1) payable {
    require msg.value >= sub_9da14f12[arg1]
    require bool(stor20[arg1]) == 1
    require arg1 < stor18.length
    if var30003 < stor18[arg1].field_0:
        require arg1 < stor18.length
        require var32001 < stor18[arg1].field_0
        mem[64] = 416
        sub_11b0d5e3.length++
        sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[arg1 + var32001].field_0
        sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
        sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
        sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
        sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
        require msg.sender
        require not sub_8bf8471a[stor21.length]
        sub_8bf8471a[stor21.length] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)].field_0++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = sub_11b0d5e3.length
        stor9[stor21.length] = tokenOfOwnerByIndex[address(msg.sender)].field_0
        emit Transfer(0, msg.sender, sub_11b0d5e3.length);
        stor11[stor21.length] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
        emit 0xc0faff0a: sub_11b0d5e3.length, msg.sender
        require arg1 < stor18.length
        idx = var32001
        while idx + 1 < stor18[arg1].field_0:
            require arg1 < stor18.length
            require idx + 1 < stor18[arg1].field_0
            mem[64] = mem[64] + 160
            mem[96] = 0
            mem[128] = 0
            mem[160] = 0
            mem[192] = 0
            mem[224] = 0
            mem[64] = mem[64] + 160
            mem[256] = stor18[arg1 + idx].field_256
            mem[288] = 0
            mem[320] = 0
            mem[352] = 0
            mem[384] = 0
            sub_11b0d5e3.length++
            sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[arg1 + idx].field_256
            sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
            sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
            sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
            sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
            require msg.sender
            require not sub_8bf8471a[stor21.length]
            sub_8bf8471a[stor21.length] = msg.sender
            require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)].field_0++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = sub_11b0d5e3.length
            stor9[stor21.length] = tokenOfOwnerByIndex[address(msg.sender)].field_0
            emit Transfer(0, msg.sender, sub_11b0d5e3.length);
            mem[32] = 11
            stor11[stor21.length] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
            emit 0xc0faff0a: sub_11b0d5e3.length, msg.sender
            require arg1 < stor18.length
            mem[0] = 18
            idx = idx + 1
            continue 
    emit 0x3e24b7c4: arg1, msg.sender
}

function sub_bbb6958e(?) {
    require bool(stor20[arg1]) == 1
    if msg.sender == ceoAddress:
        require arg1 < stor18.length
        if var33003 < stor18[arg1].field_0:
            require arg1 < stor18.length
            require var35001 < stor18[arg1].field_0
            mem[64] = 416
            sub_11b0d5e3.length++
            sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[arg1 + var35001].field_0
            sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
            sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
            sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
            sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
            require arg2
            require not sub_8bf8471a[stor21.length]
            sub_8bf8471a[stor21.length] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)].field_0++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = sub_11b0d5e3.length
            stor9[stor21.length] = tokenOfOwnerByIndex[address(arg2)].field_0
            emit Transfer(0, arg2, sub_11b0d5e3.length);
            stor11[stor21.length] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
            emit 0xc0faff0a: sub_11b0d5e3.length, arg2
            require arg1 < stor18.length
            idx = var35001
            while idx + 1 < stor18[arg1].field_0:
                require arg1 < stor18.length
                require idx + 1 < stor18[arg1].field_0
                mem[64] = mem[64] + 160
                mem[96] = 0
                mem[128] = 0
                mem[160] = 0
                mem[192] = 0
                mem[224] = 0
                mem[64] = mem[64] + 160
                mem[256] = stor18[arg1 + idx].field_256
                mem[288] = 0
                mem[320] = 0
                mem[352] = 0
                mem[384] = 0
                sub_11b0d5e3.length++
                sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[arg1 + idx].field_256
                sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                require arg2
                require not sub_8bf8471a[stor21.length]
                sub_8bf8471a[stor21.length] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = sub_11b0d5e3.length
                stor9[stor21.length] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(0, arg2, sub_11b0d5e3.length);
                mem[32] = 11
                stor11[stor21.length] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                emit 0xc0faff0a: sub_11b0d5e3.length, arg2
                require arg1 < stor18.length
                mem[0] = 18
                idx = idx + 1
                continue 
    else:
        if msg.sender == cfoAddress:
            require arg1 < stor18.length
            if var34003 < stor18[arg1].field_0:
                require arg1 < stor18.length
                require var36001 < stor18[arg1].field_0
                mem[64] = 416
                sub_11b0d5e3.length++
                sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[arg1 + var36001].field_0
                sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                require arg2
                require not sub_8bf8471a[stor21.length]
                sub_8bf8471a[stor21.length] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = sub_11b0d5e3.length
                stor9[stor21.length] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(0, arg2, sub_11b0d5e3.length);
                stor11[stor21.length] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                emit 0xc0faff0a: sub_11b0d5e3.length, arg2
                require arg1 < stor18.length
                idx = var36001
                while idx + 1 < stor18[arg1].field_0:
                    require arg1 < stor18.length
                    require idx + 1 < stor18[arg1].field_0
                    mem[64] = mem[64] + 160
                    mem[96] = 0
                    mem[128] = 0
                    mem[160] = 0
                    mem[192] = 0
                    mem[224] = 0
                    mem[64] = mem[64] + 160
                    mem[256] = stor18[arg1 + idx].field_256
                    mem[288] = 0
                    mem[320] = 0
                    mem[352] = 0
                    mem[384] = 0
                    sub_11b0d5e3.length++
                    sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[arg1 + idx].field_256
                    sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                    require arg2
                    require not sub_8bf8471a[stor21.length]
                    sub_8bf8471a[stor21.length] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = sub_11b0d5e3.length
                    stor9[stor21.length] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(0, arg2, sub_11b0d5e3.length);
                    mem[32] = 11
                    stor11[stor21.length] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                    emit 0xc0faff0a: sub_11b0d5e3.length, arg2
                    require arg1 < stor18.length
                    mem[0] = 18
                    idx = idx + 1
                    continue 
        else:
            require msg.sender == cooAddress
            require arg1 < stor18.length
            if var35003 < stor18[arg1].field_0:
                require arg1 < stor18.length
                require var37001 < stor18[arg1].field_0
                mem[64] = 416
                sub_11b0d5e3.length++
                sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[arg1 + var37001].field_0
                sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                require arg2
                require not sub_8bf8471a[stor21.length]
                sub_8bf8471a[stor21.length] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = sub_11b0d5e3.length
                stor9[stor21.length] = tokenOfOwnerByIndex[address(arg2)].field_0
                emit Transfer(0, arg2, sub_11b0d5e3.length);
                stor11[stor21.length] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                emit 0xc0faff0a: sub_11b0d5e3.length, arg2
                require arg1 < stor18.length
                idx = var37001
                while idx + 1 < stor18[arg1].field_0:
                    require arg1 < stor18.length
                    require idx + 1 < stor18[arg1].field_0
                    mem[64] = mem[64] + 160
                    mem[96] = 0
                    mem[128] = 0
                    mem[160] = 0
                    mem[192] = 0
                    mem[224] = 0
                    mem[64] = mem[64] + 160
                    mem[256] = stor18[arg1 + idx].field_256
                    mem[288] = 0
                    mem[320] = 0
                    mem[352] = 0
                    mem[384] = 0
                    sub_11b0d5e3.length++
                    sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[arg1 + idx].field_256
                    sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                    require arg2
                    require not sub_8bf8471a[stor21.length]
                    sub_8bf8471a[stor21.length] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = sub_11b0d5e3.length
                    stor9[stor21.length] = tokenOfOwnerByIndex[address(arg2)].field_0
                    emit Transfer(0, arg2, sub_11b0d5e3.length);
                    mem[32] = 11
                    stor11[stor21.length] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                    emit 0xc0faff0a: sub_11b0d5e3.length, arg2
                    require arg1 < stor18.length
                    mem[0] = 18
                    idx = idx + 1
                    continue 
    emit 0x99daf73e: arg1, arg2
}

function sub_ac69ccc9(?) payable {
    mem[64] = 96
    require not msg.value
    require bool(stor20[cd[4]]) == 1
    if msg.sender == ceoAddress:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[4] < stor18.length
            mem[0] = 18
            if var37003 < stor18[cd[4]].field_0:
                require cd[4] < stor18.length
                require var39001 < stor18[cd[4]].field_0
                mem[0] = sha3(18) + cd[4]
                _422 = mem[64]
                mem[64] = mem[64] + 160
                mem[_422] = 0
                mem[_422 + 32] = 0
                mem[_422 + 64] = 0
                mem[_422 + 96] = 0
                mem[_422 + 128] = 0
                _425 = mem[64]
                mem[64] = mem[64] + 160
                mem[_425] = stor18[cd[4] + var39001].field_0
                mem[_425 + 32] = 0
                mem[_425 + 64] = 0
                mem[_425 + 96] = 0
                mem[_425 + 128] = 0
                sub_11b0d5e3.length++
                sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[cd[4] + var39001].field_0
                sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                require address(cd[((32 * idx) + cd[36] + 36)])
                require not sub_8bf8471a[stor21.length]
                sub_8bf8471a[stor21.length] = address(cd[((32 * idx) + cd[36] + 36)])
                require balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] + 1 >= balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
                balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]++
                tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0++
                tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])][tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0].field_0 = sub_11b0d5e3.length
                stor9[stor21.length] = tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0
                emit Transfer(0, address(cd[((32 * idx) + cd[36] + 36)]), sub_11b0d5e3.length);
                mem[32] = 11
                stor11[stor21.length] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                emit 0xc0faff0a: sub_11b0d5e3.length, address(cd[((32 * idx) + cd[36] + 36)])
                require cd[4] < stor18.length
                mem[0] = 18
                s = var39001
                while s + 1 < stor18[cd[4]].field_0:
                    require cd[4] < stor18.length
                    require s + 1 < stor18[cd[4]].field_0
                    mem[0] = sha3(18) + cd[4]
                    _422 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_422] = 0
                    mem[_422 + 32] = 0
                    mem[_422 + 64] = 0
                    mem[_422 + 96] = 0
                    mem[_422 + 128] = 0
                    _425 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_425] = stor18[cd[4] + s].field_256
                    mem[_425 + 32] = 0
                    mem[_425 + 64] = 0
                    mem[_425 + 96] = 0
                    mem[_425 + 128] = 0
                    sub_11b0d5e3.length++
                    sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[cd[4] + s].field_256
                    sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                    require address(cd[((32 * idx) + cd[36] + 36)])
                    require not sub_8bf8471a[stor21.length]
                    sub_8bf8471a[stor21.length] = address(cd[((32 * idx) + cd[36] + 36)])
                    require balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] + 1 >= balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
                    balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]++
                    tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0++
                    tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])][tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0].field_0 = sub_11b0d5e3.length
                    stor9[stor21.length] = tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0
                    emit Transfer(0, address(cd[((32 * idx) + cd[36] + 36)]), sub_11b0d5e3.length);
                    mem[32] = 11
                    stor11[stor21.length] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                    emit 0xc0faff0a: sub_11b0d5e3.length, address(cd[((32 * idx) + cd[36] + 36)])
                    require cd[4] < stor18.length
                    mem[0] = 18
                    s = s + 1
                    continue 
            require idx < ('cd', 36).length
            emit 0x99daf73e: cd[4], address(cd[((32 * idx) + cd[36] + 36)])
            idx = idx + 1
            continue 
    else:
        if msg.sender == cfoAddress:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[4] < stor18.length
                mem[0] = 18
                if var38003 < stor18[cd[4]].field_0:
                    require cd[4] < stor18.length
                    require var40001 < stor18[cd[4]].field_0
                    mem[0] = sha3(18) + cd[4]
                    _423 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_423] = 0
                    mem[_423 + 32] = 0
                    mem[_423 + 64] = 0
                    mem[_423 + 96] = 0
                    mem[_423 + 128] = 0
                    _432 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_432] = stor18[cd[4] + var40001].field_0
                    mem[_432 + 32] = 0
                    mem[_432 + 64] = 0
                    mem[_432 + 96] = 0
                    mem[_432 + 128] = 0
                    sub_11b0d5e3.length++
                    sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[cd[4] + var40001].field_0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                    require address(cd[((32 * idx) + cd[36] + 36)])
                    require not sub_8bf8471a[stor21.length]
                    sub_8bf8471a[stor21.length] = address(cd[((32 * idx) + cd[36] + 36)])
                    require balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] + 1 >= balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
                    balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]++
                    tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0++
                    tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])][tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0].field_0 = sub_11b0d5e3.length
                    stor9[stor21.length] = tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0
                    emit Transfer(0, address(cd[((32 * idx) + cd[36] + 36)]), sub_11b0d5e3.length);
                    mem[32] = 11
                    stor11[stor21.length] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                    emit 0xc0faff0a: sub_11b0d5e3.length, address(cd[((32 * idx) + cd[36] + 36)])
                    require cd[4] < stor18.length
                    mem[0] = 18
                    s = var40001
                    while s + 1 < stor18[cd[4]].field_0:
                        require cd[4] < stor18.length
                        require s + 1 < stor18[cd[4]].field_0
                        mem[0] = sha3(18) + cd[4]
                        _423 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_423] = 0
                        mem[_423 + 32] = 0
                        mem[_423 + 64] = 0
                        mem[_423 + 96] = 0
                        mem[_423 + 128] = 0
                        _432 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_432] = stor18[cd[4] + s].field_256
                        mem[_432 + 32] = 0
                        mem[_432 + 64] = 0
                        mem[_432 + 96] = 0
                        mem[_432 + 128] = 0
                        sub_11b0d5e3.length++
                        sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[cd[4] + s].field_256
                        sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                        sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                        sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                        sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                        require address(cd[((32 * idx) + cd[36] + 36)])
                        require not sub_8bf8471a[stor21.length]
                        sub_8bf8471a[stor21.length] = address(cd[((32 * idx) + cd[36] + 36)])
                        require balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] + 1 >= balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
                        balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]++
                        tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0++
                        tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])][tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0].field_0 = sub_11b0d5e3.length
                        stor9[stor21.length] = tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0
                        emit Transfer(0, address(cd[((32 * idx) + cd[36] + 36)]), sub_11b0d5e3.length);
                        mem[32] = 11
                        stor11[stor21.length] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                        emit 0xc0faff0a: sub_11b0d5e3.length, address(cd[((32 * idx) + cd[36] + 36)])
                        require cd[4] < stor18.length
                        mem[0] = 18
                        s = s + 1
                        continue 
                require idx < ('cd', 36).length
                emit 0x99daf73e: cd[4], address(cd[((32 * idx) + cd[36] + 36)])
                idx = idx + 1
                continue 
        else:
            require msg.sender == cooAddress
            idx = 0
            while idx < ('cd', 36).length:
                require cd[4] < stor18.length
                mem[0] = 18
                if var39003 < stor18[cd[4]].field_0:
                    require cd[4] < stor18.length
                    require var41001 < stor18[cd[4]].field_0
                    mem[0] = sha3(18) + cd[4]
                    _424 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_424] = 0
                    mem[_424 + 32] = 0
                    mem[_424 + 64] = 0
                    mem[_424 + 96] = 0
                    mem[_424 + 128] = 0
                    _439 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_439] = stor18[cd[4] + var41001].field_0
                    mem[_439 + 32] = 0
                    mem[_439 + 64] = 0
                    mem[_439 + 96] = 0
                    mem[_439 + 128] = 0
                    sub_11b0d5e3.length++
                    sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[cd[4] + var41001].field_0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                    sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                    require address(cd[((32 * idx) + cd[36] + 36)])
                    require not sub_8bf8471a[stor21.length]
                    sub_8bf8471a[stor21.length] = address(cd[((32 * idx) + cd[36] + 36)])
                    require balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] + 1 >= balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
                    balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]++
                    tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0++
                    tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])][tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0].field_0 = sub_11b0d5e3.length
                    stor9[stor21.length] = tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0
                    emit Transfer(0, address(cd[((32 * idx) + cd[36] + 36)]), sub_11b0d5e3.length);
                    mem[32] = 11
                    stor11[stor21.length] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                    emit 0xc0faff0a: sub_11b0d5e3.length, address(cd[((32 * idx) + cd[36] + 36)])
                    require cd[4] < stor18.length
                    mem[0] = 18
                    s = var41001
                    while s + 1 < stor18[cd[4]].field_0:
                        require cd[4] < stor18.length
                        require s + 1 < stor18[cd[4]].field_0
                        mem[0] = sha3(18) + cd[4]
                        _424 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_424] = 0
                        mem[_424 + 32] = 0
                        mem[_424 + 64] = 0
                        mem[_424 + 96] = 0
                        mem[_424 + 128] = 0
                        _439 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_439] = stor18[cd[4] + s].field_256
                        mem[_439 + 32] = 0
                        mem[_439 + 64] = 0
                        mem[_439 + 96] = 0
                        mem[_439 + 128] = 0
                        sub_11b0d5e3.length++
                        sub_11b0d5e3[sub_11b0d5e3.length].field_0 = stor18[cd[4] + s].field_256
                        sub_11b0d5e3[sub_11b0d5e3.length].field_256 = 0
                        sub_11b0d5e3[sub_11b0d5e3.length].field_512 = 0
                        sub_11b0d5e3[sub_11b0d5e3.length].field_768 = 0
                        sub_11b0d5e3[sub_11b0d5e3.length].field_1024 = 0
                        require address(cd[((32 * idx) + cd[36] + 36)])
                        require not sub_8bf8471a[stor21.length]
                        sub_8bf8471a[stor21.length] = address(cd[((32 * idx) + cd[36] + 36)])
                        require balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] + 1 >= balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
                        balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]++
                        tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0++
                        tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])][tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0].field_0 = sub_11b0d5e3.length
                        stor9[stor21.length] = tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[36] + 36)])].field_0
                        emit Transfer(0, address(cd[((32 * idx) + cd[36] + 36)]), sub_11b0d5e3.length);
                        mem[32] = 11
                        stor11[stor21.length] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = sub_11b0d5e3.length
                        emit 0xc0faff0a: sub_11b0d5e3.length, address(cd[((32 * idx) + cd[36] + 36)])
                        require cd[4] < stor18.length
                        mem[0] = 18
                        s = s + 1
                        continue 
                require idx < ('cd', 36).length
                emit 0x99daf73e: cd[4], address(cd[((32 * idx) + cd[36] + 36)])
                idx = idx + 1
                continue 
}



}
