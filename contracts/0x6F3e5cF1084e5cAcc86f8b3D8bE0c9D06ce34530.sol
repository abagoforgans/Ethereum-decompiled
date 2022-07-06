contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const name = 'RedToken'

const symbol = 'REDT'


address ceoAddress;
address cfoAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address cooAddress;
mapping of uint8 stor3;
mapping of uint256 stor4;
array of address stor5;
array of struct sub_48263272;
uint256 totalSupply;
mapping of address ownerOf;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor10;
mapping of address approved;
mapping of uint8 stor12;
array of uint256 stor13;

function cfoAddress() {
    return cfoAddress
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    return approved[arg1]
}

function ceoAddress() {
    return ceoAddress
}

function totalSupply() {
    return totalSupply
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function sub_44c22b58(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor3[address(arg1)])
}

function sub_48263272(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_48263272.length
    return sub_48263272[arg1].field_1280
}

function paused() {
    return bool(uint8(stor2.field_160))
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return tokenOfOwnerByIndex[address(arg1)].field_0
}

function sub_939a518b(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_48263272.length
    return bool(sub_48263272[arg1].field_1536)
}

function sub_a34b0414(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_48263272.length
    return sub_48263272[arg1].field_512
}

function sub_a6036443(?) {
    return stor[(7 * arg1) + ('name', 'sub_48263272', 6) + 1][0 len stor[(7 * arg1) + ('name', 'sub_48263272', 6) + 1].length].field_0
}

function cooAddress() {
    return cooAddress
}

function sub_b341e6be(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_48263272.length
    return sub_48263272[arg1].field_768
}

function sub_c0885af8(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_48263272.length
    return sub_48263272[arg1].field_1024
}

function sub_e532b01b(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_48263272.length
    require sub_48263272[arg1].field_1536
    require arg1 < sub_48263272.length
    mem[576] = stor[sha3((7 * arg1) + ('name', 'sub_48263272', 6) + 1)].field_0
    idx = 576
    s = 0
    while stor[(7 * arg1) + ('name', 'sub_48263272', 6) + 1].length + 544 > idx:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'sub_48263272', 6) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_48263272[arg1].field_0, 
           Array(len=stor[(7 * arg1) + ('name', 'sub_48263272', 6) + 1].length, data=mem[576 len stor[(7 * arg1) + ('name', 'sub_48263272', 6) + 1].length]),
           sub_48263272[arg1].field_512,
           sub_48263272[arg1].field_768,
           sub_48263272[arg1].field_1024,
           sub_48263272[arg1].field_1280
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor12[address(arg1)][address(arg2)])
}

function _fallback() {
    revert
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < totalSupply
    return arg1
}

function setCEO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    cooAddress = arg1
}

function setCFO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == ceoAddress
    require arg1
    cfoAddress = arg1
}

function unpause() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 0
    emit Unpaused()
}

function pause() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require not uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 1
    emit Paused()
}

function pauseUser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == cooAddress
    require arg1
    require not stor3[address(arg1)]
    require arg1
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    emit 0x7f8a124e: arg1
}

function isSenderApprovedFor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if ownerOf[arg1] == msg.sender:
        return True
    if approved[arg1] == msg.sender:
        return True
    require ownerOf[arg1]
    return bool(stor12[stor8[arg1]][address(msg.sender)])
}

function unpauseUser(address arg1) {
    require calldata.size - 4 >= 32
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require arg1
    require stor3[address(arg1)]
    require arg1
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    emit 0xa0d94fc0: arg1
}

function sub_d86ac8d7(?) {
    require calldata.size - 4 >= 64
    require msg.sender == cooAddress
    require arg1 < sub_48263272.length
    require sub_48263272[arg1].field_1536
    require arg2 > 0
    require arg1 < sub_48263272.length
    require sub_48263272[arg1].field_1024 + arg2 >= sub_48263272[arg1].field_1024
    require arg1 < sub_48263272.length
    sub_48263272[arg1].field_1024 += arg2
    require ownerOf[arg1]
    emit 0x5337d88b: arg1, ownerOf[arg1], arg2
    return 1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor2.field_160)
    require msg.sender
    require not stor3[address(msg.sender)]
    require not uint8(stor2.field_160)
    require msg.sender
    require not stor3[address(msg.sender)]
    require arg1 != msg.sender
    if not arg2:
        stor12[address(msg.sender)][address(arg1)] = 0
        emit ApprovalForAll(0, msg.sender, arg1);
    else:
        require arg1
        stor12[address(msg.sender)][address(arg1)] = 1
        emit ApprovalForAll(1, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor2.field_160)
    require msg.sender
    require not stor3[address(msg.sender)]
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if approved[arg2]:
        approved[arg2] = arg1
        require ownerOf[arg2]
        emit Approval(ownerOf[arg2], arg1, arg2);
    else:
        if arg1:
            approved[arg2] = arg1
            require ownerOf[arg2]
            emit Approval(ownerOf[arg2], arg1, arg2);
}

function setTokenMetadataBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == cooAddress
    stor13.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        stor13[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while stor13.length + 31 / 32 > idx:
        stor13[idx] = 0
        idx = idx + 1
        continue 
}

function sub_c4defb09(?) {
    require calldata.size - 4 >= 96
    require msg.sender == cooAddress
    require arg2
    require arg3 > 0
    require stor4[arg1][address(arg2)] >= arg3
    require arg1 < sub_48263272.length
    require sub_48263272[arg1].field_1536
    require arg3 <= stor4[arg1][address(arg2)]
    stor4[arg1][address(arg2)] -= arg3
    require stor4[arg1][0] + arg3 >= stor4[arg1][0]
    stor4[arg1][0] += arg3
    idx = 0
    while idx < uint256(stor5[arg1]):
        require idx < uint256(stor5[arg1])
        if address(stor5[arg1][idx]):
            mem[0] = arg1
            mem[32] = 5
            idx = idx + 1
            continue 
        require ownerOf[arg1]
        emit 0xa75257f4: arg1, ownerOf[arg1], address(arg2), 0, arg3
        return 1
    uint256(stor5[arg1])++
    address(stor5[arg1][uint256(stor5[arg1])]) = 0
    require ownerOf[arg1]
    emit 0xa75257f4: arg1, ownerOf[arg1], address(arg2), 0, arg3
    return 1
}

function sub_32f67cc8(?) {
    require calldata.size - 4 >= 128
    require msg.sender == cooAddress
    require arg3
    require arg2
    require arg2 != arg3
    require arg4 > 0
    require stor4[arg1][address(arg2)] >= arg4
    require arg1 < sub_48263272.length
    require sub_48263272[arg1].field_1536
    require arg4 <= stor4[arg1][address(arg2)]
    stor4[arg1][address(arg2)] -= arg4
    require stor4[arg1][address(arg3)] + arg4 >= stor4[arg1][address(arg3)]
    stor4[arg1][address(arg3)] += arg4
    idx = 0
    while idx < uint256(stor5[arg1]):
        require idx < uint256(stor5[arg1])
        if address(stor5[arg1][idx]) != arg3:
            mem[0] = arg1
            mem[32] = 5
            idx = idx + 1
            continue 
        require ownerOf[arg1]
        emit 0xa75257f4: arg1, ownerOf[arg1], address(arg2), address(arg3), arg4
        return 1
    uint256(stor5[arg1])++
    address(stor5[arg1][uint256(stor5[arg1])]) = arg3
    require ownerOf[arg1]
    emit 0xa75257f4: arg1, ownerOf[arg1], address(arg2), address(arg3), arg4
    return 1
}

function sub_4cc028aa(?) {
    require calldata.size - 4 >= 96
    require msg.sender == cooAddress
    require arg2
    require ownerOf[arg1]
    require ownerOf[arg1] != arg2
    require arg3 > 0
    require stor4[arg1][stor8[arg1]] >= arg3
    require arg1 < sub_48263272.length
    require sub_48263272[arg1].field_1536
    require arg3 <= stor4[arg1][stor8[arg1]]
    stor4[arg1][stor8[arg1]] -= arg3
    require stor4[arg1][address(arg2)] + arg3 >= stor4[arg1][address(arg2)]
    stor4[arg1][address(arg2)] += arg3
    idx = 0
    while idx < uint256(stor5[arg1]):
        require idx < uint256(stor5[arg1])
        if address(stor5[arg1][idx]) != arg2:
            mem[0] = arg1
            mem[32] = 5
            idx = idx + 1
            continue 
        require ownerOf[arg1]
        emit 0xa75257f4: arg1, ownerOf[arg1], ownerOf[arg1], address(arg2), arg3
        return 1
    uint256(stor5[arg1])++
    address(stor5[arg1][uint256(stor5[arg1])]) = arg2
    require ownerOf[arg1]
    emit 0xa75257f4: arg1, ownerOf[arg1], ownerOf[arg1], address(arg2), arg3
    return 1
}

function tokensOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
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

function sub_6b08e000(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == cooAddress
    require arg1
    require arg2.length > 0
    require arg3 > 0
    require arg4 > 0
    sub_48263272.length++
    sub_48263272[sub_48263272.length].field_0 = sub_48263272.length
    stor[sha3((7 * sub_48263272.length) + ('name', 'sub_48263272', 6) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_48263272[sub_48263272.length].field_512 = arg3
    sub_48263272[sub_48263272.length].field_768 = arg4
    sub_48263272[sub_48263272.length].field_1024 = 0
    sub_48263272[sub_48263272.length].field_1280 = block.timestamp
    sub_48263272[sub_48263272.length].field_1536 = 1
    require stor4[stor6.length][address(arg1)] + arg4 >= stor4[stor6.length][address(arg1)]
    stor4[stor6.length][address(arg1)] += arg4
    uint256(stor5[stor6.length])++
    address(stor5[stor6.length][uint256(stor5[stor6.length])]) = arg1
    require not ownerOf[stor6.length]
    ownerOf[stor6.length] = arg1
    require arg1
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = sub_48263272.length
    stor10[stor6.length] = tokenOfOwnerByIndex[address(arg1)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(0, arg1, sub_48263272.length);
    return sub_48263272.length
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == cooAddress
    require arg1
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    approved[arg2] = 0
    emit Approval(arg1, 0, arg2);
    require ownerOf[arg2]
    require ownerOf[arg2] == arg1
    require arg1
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    ownerOf[arg2] = 0
    require stor10[arg2] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor10[arg2]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor10[arg2] = 0
    stor10[stor9[address(arg1)][stor9[address(arg1)].field_0].field_0] = stor10[arg2]
    require 1 <= totalSupply
    totalSupply--
    require arg2 < sub_48263272.length
    sub_48263272[arg2].field_1536 = 0
    emit Transfer(arg1, 0, arg2);
    return 1
}

function sub_ce696ca5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_48263272.length
    require sub_48263272[arg1].field_1536
    if not uint256(stor5[arg1]):
        mem[(32 * uint256(stor5[arg1])) + 128] = uint256(stor5[arg1])
    else:
        mem[128 len 32 * uint256(stor5[arg1])] = code.data[21897 len 32 * uint256(stor5[arg1])]
        mem[(32 * uint256(stor5[arg1])) + 128] = uint256(stor5[arg1])
        mem[(32 * uint256(stor5[arg1])) + 160 len 32 * uint256(stor5[arg1])] = code.data[21897 len 32 * uint256(stor5[arg1])]
    idx = 0
    while idx < uint256(stor5[arg1]):
        require idx < uint256(stor5[arg1])
        require idx < uint256(stor5[arg1])
        mem[(32 * idx) + 128] = address(stor5[arg1][idx])
        require idx < uint256(stor5[arg1])
        mem[0] = address(stor5[arg1][idx])
        mem[32] = sha3(arg1, 4)
        require idx < mem[(32 * uint256(stor5[arg1])) + 128]
        mem[(32 * idx) + (32 * uint256(stor5[arg1])) + 160] = stor4[arg1][address(stor5[arg1][idx])]
        idx = idx + 1
        continue 
    mem[(64 * uint256(stor5[arg1])) + 160] = 64
    mem[(64 * uint256(stor5[arg1])) + 224] = uint256(stor5[arg1])
    s = 0
    while uint256(stor5[arg1]) < 32 * uint256(stor5[arg1]):
        mem[(66 * uint256(stor5[arg1])) + 256] = mem[uint256(stor5[arg1]) + 128]
        s = uint256(stor5[arg1]) + 32
        continue 
    mem[(64 * uint256(stor5[arg1])) + 192] = (32 * uint256(stor5[arg1])) + 96
    mem[(98 * uint256(stor5[arg1])) + 256] = mem[(32 * uint256(stor5[arg1])) + 128]
    mem[(98 * uint256(stor5[arg1])) + 288 len floor32(mem[(32 * uint256(stor5[arg1])) + 128])] = mem[(32 * uint256(stor5[arg1])) + 160 len floor32(mem[(32 * uint256(stor5[arg1])) + 128])]
    return memory
      from (64 * uint256(stor5[arg1])) + 160
       len (32 * mem[(32 * uint256(stor5[arg1])) + 128]) + (161 * uint256(stor5[arg1])) + 128
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor2.field_160)
    require msg.sender
    require not stor3[address(msg.sender)]
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require arg1
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require arg2 < sub_48263272.length
    require sub_48263272[arg2].field_1536
    require ownerOf[arg2]
    require ownerOf[arg2]
    require ownerOf[arg2] == ownerOf[arg2]
    approved[arg2] = 0
    emit Approval(ownerOf[arg2], 0, arg2);
    require ownerOf[arg2]
    require ownerOf[arg2] == ownerOf[arg2]
    require ownerOf[arg2]
    require 1 <= tokenOfOwnerByIndex[stor8[arg2]].field_0
    require tokenOfOwnerByIndex[stor8[arg2]].field_0 - 1 < tokenOfOwnerByIndex[stor8[arg2]].field_0
    ownerOf[arg2] = 0
    require stor10[arg2] < tokenOfOwnerByIndex[stor8[arg2]].field_0
    tokenOfOwnerByIndex[stor8[arg2]][stor10[arg2]].field_0 = tokenOfOwnerByIndex[stor8[arg2]][tokenOfOwnerByIndex[stor8[arg2]].field_0].field_0
    require tokenOfOwnerByIndex[stor8[arg2]].field_0 - 1 < tokenOfOwnerByIndex[stor8[arg2]].field_0
    tokenOfOwnerByIndex[stor8[arg2]][tokenOfOwnerByIndex[stor8[arg2]].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor8[arg2]].field_0--
    if tokenOfOwnerByIndex[stor8[arg2]].field_0 > tokenOfOwnerByIndex[stor8[arg2]].field_0 - 1:
        idx = tokenOfOwnerByIndex[stor8[arg2]].field_0 - 1
        while tokenOfOwnerByIndex[stor8[arg2]].field_0 > idx:
            tokenOfOwnerByIndex[stor8[arg2]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor10[arg2] = 0
    stor10[stor9[stor8[arg2]][stor9[stor8[arg2]].field_0].field_0] = stor10[arg2]
    require 1 <= totalSupply
    totalSupply--
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require arg1
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = arg2
    stor10[arg2] = tokenOfOwnerByIndex[address(arg1)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    stor4[arg2][stor8[arg2]] = 0
    require stor4[arg2][address(arg1)] + stor4[arg2][stor8[arg2]] >= stor4[arg2][address(arg1)]
    stor4[arg2][address(arg1)] += stor4[arg2][stor8[arg2]]
    idx = 0
    while idx < uint256(stor5[arg2]):
        require idx < uint256(stor5[arg2])
        if address(stor5[arg2][idx]) == arg1:
            emit Transfer(ownerOf[arg2], arg1, arg2);
        mem[0] = arg2
        mem[32] = 5
        idx = idx + 1
        continue 
    uint256(stor5[arg2])++
    address(stor5[arg2][uint256(stor5[arg2])]) = arg1
    emit Transfer(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor2.field_160)
    require msg.sender
    require not stor3[address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require ownerOf[arg3]
            require stor12[stor8[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require arg2 != ownerOf[arg3]
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require arg3 < sub_48263272.length
    require sub_48263272[arg3].field_1536
    require ownerOf[arg3]
    require ownerOf[arg3]
    require ownerOf[arg3] == ownerOf[arg3]
    approved[arg3] = 0
    emit Approval(ownerOf[arg3], 0, arg3);
    require ownerOf[arg3]
    require ownerOf[arg3] == ownerOf[arg3]
    require ownerOf[arg3]
    require 1 <= tokenOfOwnerByIndex[stor8[arg3]].field_0
    require tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1 < tokenOfOwnerByIndex[stor8[arg3]].field_0
    ownerOf[arg3] = 0
    require stor10[arg3] < tokenOfOwnerByIndex[stor8[arg3]].field_0
    tokenOfOwnerByIndex[stor8[arg3]][stor10[arg3]].field_0 = tokenOfOwnerByIndex[stor8[arg3]][tokenOfOwnerByIndex[stor8[arg3]].field_0].field_0
    require tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1 < tokenOfOwnerByIndex[stor8[arg3]].field_0
    tokenOfOwnerByIndex[stor8[arg3]][tokenOfOwnerByIndex[stor8[arg3]].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor8[arg3]].field_0--
    if tokenOfOwnerByIndex[stor8[arg3]].field_0 > tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1:
        idx = tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1
        while tokenOfOwnerByIndex[stor8[arg3]].field_0 > idx:
            tokenOfOwnerByIndex[stor8[arg3]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor10[arg3] = 0
    stor10[stor9[stor8[arg3]][stor9[stor8[arg3]].field_0].field_0] = stor10[arg3]
    require 1 <= totalSupply
    totalSupply--
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor10[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    stor4[arg3][stor8[arg3]] = 0
    require stor4[arg3][address(arg2)] + stor4[arg3][stor8[arg3]] >= stor4[arg3][address(arg2)]
    stor4[arg3][address(arg2)] += stor4[arg3][stor8[arg3]]
    idx = 0
    while idx < uint256(stor5[arg3]):
        require idx < uint256(stor5[arg3])
        if address(stor5[arg3][idx]) == arg2:
            emit Transfer(ownerOf[arg3], arg2, arg3);
        mem[0] = arg3
        mem[32] = 5
        idx = idx + 1
        continue 
    uint256(stor5[arg3])++
    address(stor5[arg3][uint256(stor5[arg3])]) = arg2
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor2.field_160)
    require msg.sender
    require not stor3[address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require ownerOf[arg3]
            require stor12[stor8[arg3]][address(msg.sender)]
    mem[64] = 128
    mem[96] = 0
    require arg2
    require ownerOf[arg3]
    require arg2 != ownerOf[arg3]
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require arg3 < sub_48263272.length
    require sub_48263272[arg3].field_1536
    require ownerOf[arg3]
    require ownerOf[arg3]
    require ownerOf[arg3] == ownerOf[arg3]
    approved[arg3] = 0
    emit Approval(ownerOf[arg3], 0, arg3);
    require ownerOf[arg3]
    require ownerOf[arg3] == ownerOf[arg3]
    require ownerOf[arg3]
    require 1 <= tokenOfOwnerByIndex[stor8[arg3]].field_0
    require tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1 < tokenOfOwnerByIndex[stor8[arg3]].field_0
    ownerOf[arg3] = 0
    require stor10[arg3] < tokenOfOwnerByIndex[stor8[arg3]].field_0
    tokenOfOwnerByIndex[stor8[arg3]][stor10[arg3]].field_0 = tokenOfOwnerByIndex[stor8[arg3]][tokenOfOwnerByIndex[stor8[arg3]].field_0].field_0
    require tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1 < tokenOfOwnerByIndex[stor8[arg3]].field_0
    tokenOfOwnerByIndex[stor8[arg3]][tokenOfOwnerByIndex[stor8[arg3]].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor8[arg3]].field_0--
    if tokenOfOwnerByIndex[stor8[arg3]].field_0 > tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1:
        idx = tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1
        while tokenOfOwnerByIndex[stor8[arg3]].field_0 > idx:
            tokenOfOwnerByIndex[stor8[arg3]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor10[arg3] = 0
    stor10[stor9[stor8[arg3]][stor9[stor8[arg3]].field_0].field_0] = stor10[arg3]
    require 1 <= totalSupply
    totalSupply--
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor10[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    stor4[arg3][stor8[arg3]] = 0
    require stor4[arg3][address(arg2)] + stor4[arg3][stor8[arg3]] >= stor4[arg3][address(arg2)]
    stor4[arg3][address(arg2)] += stor4[arg3][stor8[arg3]]
    mem[0] = arg3
    mem[32] = 5
    idx = 0
    while idx < uint256(stor5[arg3]):
        require idx < uint256(stor5[arg3])
        if address(stor5[arg3][idx]) != arg2:
            mem[0] = arg3
            mem[32] = 5
            idx = idx + 1
            continue 
        emit Transfer(ownerOf[arg3], arg2, arg3);
        if ext_code.size(arg2) > 0:
            mem[128] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
            mem[132] = arg1
            idx = 0
            while idx < 0:
                mem[idx + 260] = mem[idx + 128]
                mem[0] = arg3
                mem[32] = 5
                idx = idx + 32
                continue 
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                 gas 50000 wei
                args address(arg1), arg3, 96, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == Mask(32, 224, sha3(0xfe6f6e455243373231526563656976656428616464726573732c75696e743235362c6279746573))
    uint256(stor5[arg3])++
    address(stor5[arg3][uint256(stor5[arg3])]) = arg2
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas 50000 wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == Mask(32, 224, sha3(0xfe6f6e455243373231526563656976656428616464726573732c75696e743235362c6279746573))
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require not uint8(stor2.field_160)
    require msg.sender
    require not stor3[address(msg.sender)]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require ownerOf[arg3]
            require stor12[stor8[arg3]][address(msg.sender)]
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg2
    require ownerOf[arg3]
    require arg2 != ownerOf[arg3]
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require arg3 < sub_48263272.length
    require sub_48263272[arg3].field_1536
    require ownerOf[arg3]
    require ownerOf[arg3]
    require ownerOf[arg3] == ownerOf[arg3]
    approved[arg3] = 0
    emit Approval(ownerOf[arg3], 0, arg3);
    require ownerOf[arg3]
    require ownerOf[arg3] == ownerOf[arg3]
    require ownerOf[arg3]
    require 1 <= tokenOfOwnerByIndex[stor8[arg3]].field_0
    require tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1 < tokenOfOwnerByIndex[stor8[arg3]].field_0
    ownerOf[arg3] = 0
    require stor10[arg3] < tokenOfOwnerByIndex[stor8[arg3]].field_0
    tokenOfOwnerByIndex[stor8[arg3]][stor10[arg3]].field_0 = tokenOfOwnerByIndex[stor8[arg3]][tokenOfOwnerByIndex[stor8[arg3]].field_0].field_0
    require tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1 < tokenOfOwnerByIndex[stor8[arg3]].field_0
    tokenOfOwnerByIndex[stor8[arg3]][tokenOfOwnerByIndex[stor8[arg3]].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor8[arg3]].field_0--
    if tokenOfOwnerByIndex[stor8[arg3]].field_0 > tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1:
        idx = tokenOfOwnerByIndex[stor8[arg3]].field_0 - 1
        while tokenOfOwnerByIndex[stor8[arg3]].field_0 > idx:
            tokenOfOwnerByIndex[stor8[arg3]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor10[arg3] = 0
    stor10[stor9[stor8[arg3]][stor9[stor8[arg3]].field_0].field_0] = stor10[arg3]
    require 1 <= totalSupply
    totalSupply--
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor10[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    stor4[arg3][stor8[arg3]] = 0
    require stor4[arg3][address(arg2)] + stor4[arg3][stor8[arg3]] >= stor4[arg3][address(arg2)]
    stor4[arg3][address(arg2)] += stor4[arg3][stor8[arg3]]
    mem[0] = arg3
    mem[32] = 5
    idx = 0
    while idx < uint256(stor5[arg3]):
        require idx < uint256(stor5[arg3])
        if address(stor5[arg3][idx]) != arg2:
            mem[0] = arg3
            mem[32] = 5
            idx = idx + 1
            continue 
        emit Transfer(ownerOf[arg3], arg2, arg3);
        if ext_code.size(arg2) > 0:
            mem[ceil32(arg4.length) + 128] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 132] = arg1
            idx = 0
            while idx < arg4.length:
                mem[ceil32(arg4.length) + idx + 260] = mem[idx + 128]
                mem[0] = arg3
                mem[32] = 5
                idx = idx + 32
                continue 
            require ext_code.size(arg2)
            call arg2 with:
                 gas 50000 wei
                args address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 260 len arg4.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(32, 224, ext_call.return_data[0]) == Mask(32, 224, sha3(0, 0x5243373231526563656976656428616464726573732c75696e743235362c6279746573))
    uint256(stor5[arg3])++
    address(stor5[arg3][uint256(stor5[arg3])]) = arg2
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas 50000 wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == Mask(32, 224, sha3(0, 0x5243373231526563656976656428616464726573732c75696e743235362c6279746573))
}



}
