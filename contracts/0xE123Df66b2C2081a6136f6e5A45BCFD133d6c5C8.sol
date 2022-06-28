contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 stor11;
uint256 totalSupply;
address sub_90fecf15Address;
address sub_5e0b6356Address;
uint256 maxSupply;
uint256 sub_3a7f5c84;
array of uint256 ipfsHash;
uint256 defaultPrice;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    return uint256(tokenOfOwnerByIndex[address(arg1)][arg2].field_0)
}

function sub_3a7f5c84(?) {
    return sub_3a7f5c84
}

function exists(uint256 arg1) {
    return bool(ownerOf[arg1])
}

function sub_5e0b6356(?) {
    return sub_5e0b6356Address
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_90fecf15(?) {
    return sub_90fecf15Address
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ipfsHash() {
    return ipfsHash[0 len ipfsHash.length]
}

function maxSupply() {
    return maxSupply
}

function defaultPrice() {
    return defaultPrice
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor3[address(arg1)][address(arg2)])
}

function tokenPrice(uint256 arg1) {
    if arg1 >= totalSupply:
        return defaultPrice
    require arg1 < stor11.length
    return stor11[arg1]
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor3[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function tokenByIndex(uint256 arg1) {
    if arg1 >= totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'index should be less than totalSupply'
    return arg1
}

function setDefaultPrice(uint256 arg1) {
    if sub_90fecf15Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can change default price'
    defaultPrice = arg1
}

function setPrice(uint256 arg1, uint256 arg2) {
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can change token price'
    require arg1 < stor11.length
    stor11[arg1] = arg2
}

function _ownedTokensCount(address arg1) {
    if sub_90fecf15Address != arg1:
        return balanceOf[address(arg1)]
    if totalSupply >= maxSupply:
        return balanceOf[address(arg1)]
    require totalSupply <= maxSupply
    require maxSupply - totalSupply + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    return (maxSupply - totalSupply + balanceOf[address(arg1)])
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
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

function setPrices(uint256 arg1) {
    if uint256(tokenOfOwnerByIndex[msg.sender].field_0):
        mem[128] = uint256(tokenOfOwnerByIndex[msg.sender].field_0)
        idx = 128
        s = 0
        while (32 * uint256(tokenOfOwnerByIndex[msg.sender].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(tokenOfOwnerByIndex[msg.sender][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < uint256(tokenOfOwnerByIndex[msg.sender].field_0):
        require idx < uint256(tokenOfOwnerByIndex[msg.sender].field_0)
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        require ownerOf[mem[(32 * idx) + 128]]
        if ownerOf[mem[(32 * idx) + 128]] == msg.sender:
            require idx < uint256(tokenOfOwnerByIndex[msg.sender].field_0)
            require mem[(32 * idx) + 128] < stor11.length
            mem[0] = 11
            stor11[mem[(32 * idx) + 128]] = arg1
        idx = idx + 1
        continue 
}

function sub_b8bdfb43(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _25 = sha3(mem[(32 * idx) + 128], 0)
        require ownerOf[mem[(32 * idx) + 128]]
        require ownerOf[mem[(32 * idx) + 128]] != arg1
        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
            require stor3[stor0[mem[(32 * idx) + 128]]][address(msg.sender)]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if approved[mem[(32 * idx) + 128]]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 1
            approved[mem[(32 * idx) + 128]] = arg1
            mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 128]
            emit Approval(mem[(32 * arg2.length) + 128], address(stor[_25]), arg1);
        else:
            if arg1:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 1
                approved[mem[(32 * idx) + 128]] = arg1
                mem[(32 * arg2.length) + 128] = mem[(32 * idx) + 128]
                emit Approval(mem[(32 * arg2.length) + 128], address(stor[_25]), arg1);
        idx = idx + 1
        continue 
}

function getOwnerTokens(address arg1) {
    if not uint256(tokenOfOwnerByIndex[address(arg1)].field_0):
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 160] = uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 192 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))] = mem[128 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))]
        return memory
          from (32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 128
           len (96 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 64
    mem[128] = uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = uint256(tokenOfOwnerByIndex[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 192 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))] = mem[128 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))]
    return Array(len=uint256(tokenOfOwnerByIndex[address(arg1)].field_0), data=mem[128 len floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))], mem[(32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) + 192 len (32 * uint256(tokenOfOwnerByIndex[address(arg1)].field_0)) - floor32(uint256(tokenOfOwnerByIndex[address(arg1)].field_0))]), 
}

function mint(uint256 arg1) {
    if totalSupply >= maxSupply:
        revert with 0, 'Maximum amount reached'
    require totalSupply <= maxSupply
    if maxSupply - totalSupply >= arg1:
        idx = totalSupply
        while idx < totalSupply + arg1:
            ownerOf[idx] = sub_90fecf15Address
            mem[96] = idx
            emit Transfer(idx, 0, sub_90fecf15Address);
            stor7[idx] = uint256(tokenOfOwnerByIndex[stor13].field_0)
            stor11.length++
            stor175B[stor11.length] = defaultPrice
            mem[32] = 6
            uint256(tokenOfOwnerByIndex[stor13].field_0)++
            mem[0] = sha3(sub_90fecf15Address, 6)
            uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0) = idx
            idx = idx + 1
            continue 
        require arg1 + totalSupply >= totalSupply
        totalSupply += arg1
        require arg1 + balanceOf[stor13] >= balanceOf[stor13]
        balanceOf[stor13] += arg1
    else:
        require totalSupply <= maxSupply
        idx = totalSupply
        while idx < maxSupply:
            ownerOf[idx] = sub_90fecf15Address
            mem[96] = idx
            emit Transfer(idx, 0, sub_90fecf15Address);
            stor7[idx] = uint256(tokenOfOwnerByIndex[stor13].field_0)
            stor11.length++
            stor175B[stor11.length] = defaultPrice
            mem[32] = 6
            uint256(tokenOfOwnerByIndex[stor13].field_0)++
            mem[0] = sha3(sub_90fecf15Address, 6)
            uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0) = idx
            idx = idx + 1
            continue 
        require maxSupply >= totalSupply
        totalSupply = maxSupply
        require maxSupply - totalSupply + balanceOf[stor13] >= balanceOf[stor13]
        balanceOf[stor13] = maxSupply - totalSupply + balanceOf[stor13]
}

function mint(uint256 arg1, uint256 arg2) {
    if sub_90fecf15Address != msg.sender:
        revert with 0, 'Only artist can mint directly'
    if totalSupply >= maxSupply:
        revert with 0, 'Maximum amount reached'
    require totalSupply <= maxSupply
    if maxSupply - totalSupply >= arg2:
        idx = totalSupply
        while idx < totalSupply + arg2:
            ownerOf[idx] = msg.sender
            mem[96] = idx
            emit Transfer(idx, 0, msg.sender);
            stor7[idx] = uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)
            stor11.length++
            stor175B[stor11.length] = arg1
            mem[32] = 6
            uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)++
            mem[0] = sha3(address(msg.sender), 6)
            uint256(tokenOfOwnerByIndex[address(msg.sender)][uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)].field_0) = idx
            idx = idx + 1
            continue 
        require arg2 + totalSupply >= totalSupply
        totalSupply += arg2
        require arg2 + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += arg2
    else:
        require totalSupply <= maxSupply
        idx = totalSupply
        while idx < maxSupply:
            ownerOf[idx] = msg.sender
            mem[96] = idx
            emit Transfer(idx, 0, msg.sender);
            stor7[idx] = uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)
            stor11.length++
            stor175B[stor11.length] = arg1
            mem[32] = 6
            uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)++
            mem[0] = sha3(address(msg.sender), 6)
            uint256(tokenOfOwnerByIndex[address(msg.sender)][uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)].field_0) = idx
            idx = idx + 1
            continue 
        require maxSupply >= totalSupply
        totalSupply = maxSupply
        require maxSupply - totalSupply + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] = maxSupply - totalSupply + balanceOf[msg.sender]
}

function gift(uint256 arg1, address arg2) {
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Only owner can send a gift'
    require ownerOf[arg1]
    require ownerOf[arg1] == msg.sender
    require 1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]--
    ownerOf[arg1] = 0
    require 1 <= uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)
    require uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)
    require stor7[arg1] < uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)
    uint256(tokenOfOwnerByIndex[address(msg.sender)][stor7[arg1]].field_0) = uint256(tokenOfOwnerByIndex[address(msg.sender)][uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)].field_0)
    require uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)
    uint256(tokenOfOwnerByIndex[address(msg.sender)][uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)].field_0) = 0
    uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)--
    if uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0) > uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0) - 1:
        idx = uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0) - 1
        while uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0) > idx:
            uint256(tokenOfOwnerByIndex[address(msg.sender)][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor7[arg1] = 0
    stor7[uint256(stor6[address(msg.sender)][uint256(stor6[address(msg.sender)].field_0)].field_0)] = stor7[arg1]
    require arg1 < stor11.length
    stor11[arg1] = 0
    require not ownerOf[arg1]
    ownerOf[arg1] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = arg1
    stor7[arg1] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
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
    require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    require stor7[arg3] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    uint256(tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
    uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
    if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
        idx = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1
        while uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > idx:
            uint256(tokenOfOwnerByIndex[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = arg3
    stor7[arg3] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
    emit Transfer(arg3, arg1, arg2);
}

function redeem(uint256 arg1) payable {
    if block.number < sub_3a7f5c84:
        revert with 0, 'Not on sale yet'
    if arg1 >= totalSupply:
        if defaultPrice <= 0:
            revert with 0, 'Card is not for sale'
    else:
        require arg1 < stor11.length
        if stor11[arg1] <= 0:
            revert with 0, 'Card is not for sale'
    if arg1 >= totalSupply:
        if msg.value < defaultPrice:
            revert with 0, 'Not enough ether paid'
    else:
        require arg1 < stor11.length
        if msg.value < stor11[arg1]:
            revert with 0, 'Not enough ether paid'
    require ownerOf[arg1]
    call ownerOf[arg1] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    require 1 <= balanceOf[stor0[arg1]]
    balanceOf[stor0[arg1]]--
    ownerOf[arg1] = 0
    require 1 <= uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0)
    require uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0)
    require stor7[arg1] < uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0)
    uint256(tokenOfOwnerByIndex[stor0[arg1]][stor7[arg1]].field_0) = uint256(tokenOfOwnerByIndex[stor0[arg1]][uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0)].field_0)
    require uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0)
    uint256(tokenOfOwnerByIndex[stor0[arg1]][uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0)].field_0) = 0
    uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0)--
    if uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0) > uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0) - 1:
        idx = uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0) - 1
        while uint256(tokenOfOwnerByIndex[stor0[arg1]].field_0) > idx:
            uint256(tokenOfOwnerByIndex[stor0[arg1]][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor7[arg1] = 0
    stor7[uint256(stor6[stor0[arg1]][uint256(stor6[stor0[arg1]].field_0)].field_0)] = stor7[arg1]
    require not ownerOf[arg1]
    ownerOf[arg1] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)++
    uint256(tokenOfOwnerByIndex[address(msg.sender)][uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)].field_0) = arg1
    stor7[arg1] = uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)
    require arg1 < stor11.length
    stor11[arg1] = 0
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
    require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    require stor7[arg3] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    uint256(tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
    uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
    if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
        idx = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1
        while uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > idx:
            uint256(tokenOfOwnerByIndex[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = arg3
    stor7[arg3] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
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
    require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    require stor7[arg3] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    uint256(tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
    uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
    uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
    if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
        idx = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1
        while uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > idx:
            uint256(tokenOfOwnerByIndex[address(arg1)][idx].field_0) = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = arg3
    stor7[arg3] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function sub_bbdd51ae(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if block.number < sub_3a7f5c84:
        revert with 0, 'Not on sale yet'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        require ownerOf[mem[(32 * idx) + 128]]
        if ownerOf[mem[(32 * idx) + 128]] != sub_90fecf15Address:
            revert with 0, 'Card ownership check failed'
        require idx < arg1.length
        if mem[(32 * idx) + 128] >= totalSupply:
            require defaultPrice + s >= s
            if defaultPrice + s > msg.value:
                revert with 0, 'Not enough ether paid'
            idx = idx + 1
            s = defaultPrice + s
            continue 
        require mem[(32 * idx) + 128] < stor11.length
        mem[0] = 11
        require stor11[mem[(32 * idx) + 128]] + s >= s
        if stor11[mem[(32 * idx) + 128]] + s > msg.value:
            revert with 0, 'Not enough ether paid'
        idx = idx + 1
        s = stor11[mem[(32 * idx) + 128]] + s
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require ownerOf[mem[(32 * idx) + 128]]
        require ownerOf[mem[(32 * idx) + 128]] == sub_90fecf15Address
        require 1 <= balanceOf[stor13]
        balanceOf[stor13]--
        ownerOf[mem[(32 * idx) + 128]] = 0
        require 1 <= uint256(tokenOfOwnerByIndex[stor13].field_0)
        require uint256(tokenOfOwnerByIndex[stor13].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor13].field_0)
        require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[stor13].field_0)
        uint256(tokenOfOwnerByIndex[stor13][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)
        require uint256(tokenOfOwnerByIndex[stor13].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor13].field_0)
        uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0) = 0
        uint256(tokenOfOwnerByIndex[stor13].field_0)--
        if uint256(tokenOfOwnerByIndex[stor13].field_0) > uint256(tokenOfOwnerByIndex[stor13].field_0) - 1:
            s = uint256(tokenOfOwnerByIndex[stor13].field_0) + sha3(sha3(sub_90fecf15Address, 6)) - 1
            while sha3(sha3(sub_90fecf15Address, 6)) + uint256(tokenOfOwnerByIndex[stor13].field_0) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        stor7[mem[(32 * idx) + 128]] = 0
        stor7[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
        require idx < arg1.length
        require not ownerOf[mem[(32 * idx) + 128]]
        ownerOf[mem[(32 * idx) + 128]] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)++
        uint256(tokenOfOwnerByIndex[address(msg.sender)][uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)].field_0) = mem[(32 * idx) + 128]
        mem[32] = 7
        stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)
        require idx < arg1.length
        require mem[(32 * idx) + 128] < stor11.length
        mem[0] = 11
        stor11[mem[(32 * idx) + 128]] = 0
        idx = idx + 1
        continue 
    call sub_90fecf15Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _242 = mem[(32 * idx) + 128]
        require ownerOf[mem[(32 * idx) + 128]]
        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
            if approved[mem[(32 * idx) + 128]] != msg.sender:
                require stor3[stor0[mem[(32 * idx) + 128]]][address(msg.sender)]
        require arg1
        require arg2
        require ownerOf[mem[(32 * idx) + 128]]
        require ownerOf[mem[(32 * idx) + 128]] == arg1
        if not approved[mem[(32 * idx) + 128]]:
            require ownerOf[mem[(32 * idx) + 128]]
            require ownerOf[mem[(32 * idx) + 128]] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[mem[(32 * idx) + 128]] = 0
            require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
            if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor7[mem[(32 * idx) + 128]] = 0
            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
            require not ownerOf[mem[(32 * idx) + 128]]
            ownerOf[mem[(32 * idx) + 128]] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 7
            stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
            mem[(32 * arg3.length) + 128] = mem[(32 * idx) + 128]
            emit Transfer(mem[(32 * arg3.length) + 128], arg1, arg2);
        else:
            approved[mem[(32 * idx) + 128]] = 0
            mem[(32 * arg3.length) + 128] = mem[(32 * idx) + 128]
            emit Approval(mem[(32 * arg3.length) + 128], arg1, 0);
            require ownerOf[_242]
            require ownerOf[_242] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[_242] = 0
            require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require stor7[_242] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_242]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
            if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor7[_242] = 0
            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_242]
            require not ownerOf[_242]
            ownerOf[_242] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _242
            mem[0] = _242
            mem[32] = 7
            stor7[_242] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
            mem[(32 * arg3.length) + 128] = _242
            emit Transfer(_242, arg1, arg2);
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if totalSupply >= maxSupply:
        if 1 > balanceOf[stor13]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Artist does not have any cards to sell'
        require 0 < uint256(tokenOfOwnerByIndex[stor13].field_0)
        require uint256(tokenOfOwnerByIndex[stor13].field_0) < uint256(tokenOfOwnerByIndex[stor13].field_0)
        if block.number < sub_3a7f5c84:
            revert with 0, 'Not on sale yet'
        if uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0) >= totalSupply:
            if defaultPrice <= 0:
                revert with 0, 'Card is not for sale'
        else:
            require uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0) < stor11.length
            if stor11[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)] <= 0:
                revert with 0, 'Card is not for sale'
        if uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0) >= totalSupply:
            if msg.value < defaultPrice:
                revert with 0, 'Not enough ether paid'
        else:
            require uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0) < stor11.length
            if msg.value < stor11[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)]:
                revert with 0, 'Not enough ether paid'
        require ownerOf[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)]
        call ownerOf[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ownerOf[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)]
        require ownerOf[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)] == ownerOf[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)]
        require 1 <= balanceOf[stor0[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)]]
        balanceOf[stor0[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)]]--
        ownerOf[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)] = 0
        require 1 <= uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0)
        require uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0)
        require stor7[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)] < uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0)
        uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]][stor7[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0) = uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]][uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0)].field_0)
        require uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0)
        uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]][uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0)].field_0) = 0
        uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0)--
        if uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0) > uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0) - 1:
            idx = uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0) - 1
            while uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]].field_0) > idx:
                uint256(tokenOfOwnerByIndex[stor0[uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)]][idx].field_0) = 0
                idx = idx + 1
                continue 
        stor7[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)] = 0
        stor7[uint256(stor6[stor0[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)]][uint256(stor6[stor0[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)]].field_0)].field_0)] = stor7[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)]
        require not ownerOf[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)]
        ownerOf[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)++
        uint256(tokenOfOwnerByIndex[address(msg.sender)][uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)].field_0) = uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0)
        stor7[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)] = uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)
        require uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0) < stor11.length
        stor11[uint256(stor6[stor13][uint256(stor6[stor13].field_0)].field_0)] = 0
    else:
        ownerOf[stor12] = sub_90fecf15Address
        emit Transfer(totalSupply, 0, sub_90fecf15Address);
        stor7[stor12] = uint256(tokenOfOwnerByIndex[stor13].field_0)
        stor11.length++
        stor175B[stor11.length] = defaultPrice
        uint256(tokenOfOwnerByIndex[stor13].field_0)++
        uint256(tokenOfOwnerByIndex[stor13][uint256(tokenOfOwnerByIndex[stor13].field_0)].field_0) = totalSupply
        require totalSupply + 1 >= totalSupply
        totalSupply++
        require balanceOf[stor13] + 1 >= balanceOf[stor13]
        balanceOf[stor13]++
        if block.number < sub_3a7f5c84:
            revert with 0, 'Not on sale yet'
        if totalSupply >= totalSupply:
            if defaultPrice <= 0:
                revert with 0, 'Card is not for sale'
        else:
            require totalSupply < stor11.length
            if stor11[stor12] <= 0:
                revert with 0, 'Card is not for sale'
        if totalSupply >= totalSupply:
            if msg.value < defaultPrice:
                revert with 0, 'Not enough ether paid'
        else:
            require totalSupply < stor11.length
            if msg.value < stor11[stor12]:
                revert with 0, 'Not enough ether paid'
        require ownerOf[stor12]
        call ownerOf[stor12] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ownerOf[stor12]
        require ownerOf[stor12] == ownerOf[stor12]
        require 1 <= balanceOf[stor0[stor12]]
        balanceOf[stor0[stor12]]--
        ownerOf[stor12] = 0
        require 1 <= uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0)
        require uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0)
        require stor7[stor12] < uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0)
        uint256(tokenOfOwnerByIndex[stor0[stor12]][stor7[stor12]].field_0) = uint256(tokenOfOwnerByIndex[stor0[stor12]][uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0)].field_0)
        require uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0) - 1 < uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0)
        uint256(tokenOfOwnerByIndex[stor0[stor12]][uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0)].field_0) = 0
        uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0)--
        if uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0) > uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0) - 1:
            idx = uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0) - 1
            while uint256(tokenOfOwnerByIndex[stor0[stor12]].field_0) > idx:
                uint256(tokenOfOwnerByIndex[stor0[stor12]][idx].field_0) = 0
                idx = idx + 1
                continue 
        stor7[stor12] = 0
        stor7[uint256(stor6[stor0[stor12]][uint256(stor6[stor0[stor12]].field_0)].field_0)] = stor7[stor12]
        require not ownerOf[stor12]
        ownerOf[stor12] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)++
        uint256(tokenOfOwnerByIndex[address(msg.sender)][uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)].field_0) = totalSupply
        stor7[stor12] = uint256(tokenOfOwnerByIndex[address(msg.sender)].field_0)
        require totalSupply < stor11.length
        stor11[stor12] = 0
}

function sub_24cf6f0f(?) {
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _1113 = mem[(32 * idx) + 128]
        _1114 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1114] = 0
        require ownerOf[_1113]
        if msg.sender == ownerOf[_1113]:
            require ownerOf[_1113]
            if ownerOf[_1113] != msg.sender:
                if approved[_1113] != msg.sender:
                    require stor3[stor0[_1113]][address(msg.sender)]
            require arg1
            require arg2
            require ownerOf[_1113]
            require ownerOf[_1113] == arg1
            if approved[_1113]:
                approved[_1113] = 0
                emit Approval(_1113, arg1, 0);
            require ownerOf[_1113]
            require ownerOf[_1113] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[_1113] = 0
            require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
            if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor7[_1113] = 0
            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
            require not ownerOf[_1113]
            ownerOf[_1113] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
            mem[0] = _1113
            mem[32] = 7
            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
            mem[mem[64]] = _1113
            emit Transfer(_1113, arg1, arg2);
            if ext_code.size(arg2) > 0:
                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _1113
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 132] = mem[s + _1114 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg2)
                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(arg1), _1113, 96, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if approved[_1113] == msg.sender:
            require ownerOf[_1113]
            if ownerOf[_1113] != msg.sender:
                if approved[_1113] != msg.sender:
                    require stor3[stor0[_1113]][address(msg.sender)]
            require arg1
            require arg2
            require ownerOf[_1113]
            require ownerOf[_1113] == arg1
            if approved[_1113]:
                approved[_1113] = 0
                emit Approval(_1113, arg1, 0);
            require ownerOf[_1113]
            require ownerOf[_1113] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[_1113] = 0
            require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
            if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor7[_1113] = 0
            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
            require not ownerOf[_1113]
            ownerOf[_1113] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
            mem[0] = _1113
            mem[32] = 7
            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
            mem[mem[64]] = _1113
            emit Transfer(_1113, arg1, arg2);
            if ext_code.size(arg2) > 0:
                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _1113
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 132] = mem[s + _1114 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg2)
                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(arg1), _1113, 96, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        require stor3[stor0[_1113]][address(msg.sender)]
        require ownerOf[_1113]
        if msg.sender == ownerOf[_1113]:
            require arg1
            require arg2
            require ownerOf[_1113]
            require ownerOf[_1113] == arg1
            if approved[_1113]:
                approved[_1113] = 0
                emit Approval(_1113, arg1, 0);
            require ownerOf[_1113]
            require ownerOf[_1113] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[_1113] = 0
            require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
            if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor7[_1113] = 0
            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
            require not ownerOf[_1113]
            ownerOf[_1113] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
            mem[0] = _1113
            mem[32] = 7
            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
            mem[mem[64]] = _1113
            emit Transfer(_1113, arg1, arg2);
            if ext_code.size(arg2) > 0:
                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _1113
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 132] = mem[s + _1114 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg2)
                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(arg1), _1113, 96, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if approved[_1113] == msg.sender:
            require arg1
            require arg2
            require ownerOf[_1113]
            require ownerOf[_1113] == arg1
            if approved[_1113]:
                approved[_1113] = 0
                emit Approval(_1113, arg1, 0);
            require ownerOf[_1113]
            require ownerOf[_1113] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[_1113] = 0
            require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
            if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor7[_1113] = 0
            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
            require not ownerOf[_1113]
            ownerOf[_1113] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
            mem[0] = _1113
            mem[32] = 7
            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
            mem[mem[64]] = _1113
            emit Transfer(_1113, arg1, arg2);
            if ext_code.size(arg2) > 0:
                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _1113
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 132] = mem[s + _1114 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg2)
                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(arg1), _1113, 96, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        require stor3[stor0[_1113]][address(msg.sender)]
        require arg1
        require arg2
        require ownerOf[_1113]
        require ownerOf[_1113] == arg1
        if approved[_1113]:
            approved[_1113] = 0
            emit Approval(_1113, arg1, 0);
        require ownerOf[_1113]
        require ownerOf[_1113] == arg1
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        ownerOf[_1113] = 0
        require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
        uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
        if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
            stor7[_1113] = 0
            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
            require not ownerOf[_1113]
            ownerOf[_1113] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
            mem[0] = _1113
            mem[32] = 7
            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
            mem[mem[64]] = _1113
            emit Transfer(_1113, arg1, arg2);
            if ext_code.size(arg2) > 0:
                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _1113
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 132] = mem[s + _1114 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg2)
                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(arg1), _1113, 96, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
        while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        stor7[_1113] = 0
        stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
        require not ownerOf[_1113]
        ownerOf[_1113] = arg2
        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)]++
        uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
        uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
        mem[0] = _1113
        mem[32] = 7
        stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
        mem[mem[64]] = _1113
        emit Transfer(_1113, arg1, arg2);
        if ext_code.size(arg2) <= 0:
            idx = idx + 1
            continue 
        mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = _1113
        mem[mem[64] + 68] = 96
        mem[mem[64] + 100] = 0
        s = 0
        while s < 0:
            mem[s + mem[64] + 132] = mem[s + _1114 + 32]
            s = s + 32
            continue 
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), _1113, 96, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
        s = 1
        continue 
}

function sub_2d1a54bb(?) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + ceil32(arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len arg4.length] = arg4[all]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _1113 = mem[(32 * idx) + 128]
        require ownerOf[mem[(32 * idx) + 128]]
        if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
            require ownerOf[mem[(32 * idx) + 128]]
            if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
                require arg1
                require arg2
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                if not approved[mem[(32 * idx) + 128]]:
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[mem[(32 * idx) + 128]] = 0
                    require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    uint256(tokenOfOwnerByIndex[address(arg1)][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                    uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                    if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                        stor7[mem[(32 * idx) + 128]] = 0
                        stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                        uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 7
                        stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                        mem[mem[64]] = mem[(32 * idx) + 128]
                        emit Transfer(mem[mem[64]], arg1, arg2);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1113
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                            _1603 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1603:
                                mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1603 % 32:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), _1113, 96, mem[mem[64] + 100 len _1603 + 32]
                            else:
                                mem[floor32(_1603) + mem[64] + 132] = mem[floor32(_1603) + mem[64] + -(_1603 % 32) + 164 len _1603 % 32]
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_1603) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                        while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor7[mem[(32 * idx) + 128]] = 0
                        stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                        uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 7
                        stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                        mem[mem[64]] = mem[(32 * idx) + 128]
                        emit Transfer(mem[mem[64]], arg1, arg2);
                        if ext_code.size(arg2) > 0:
                            _2561 = mem[64]
                            mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1113
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                            _2563 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2563:
                                mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2563 % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2563 + _2561 + -mem[64] + 128]
                            else:
                                mem[floor32(_2563) + _2561 + 132] = mem[floor32(_2563) + _2561 + -(_2563 % 32) + 164 len _2563 % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_2563) + _2561 + -mem[64] + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    approved[mem[(32 * idx) + 128]] = 0
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    emit Approval(mem[mem[64]], arg1, 0);
                    require ownerOf[_1113]
                    require ownerOf[_1113] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[_1113] = 0
                    require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                    uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                    if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                        stor7[_1113] = 0
                        stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                        require not ownerOf[_1113]
                        ownerOf[_1113] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                        uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                        mem[0] = _1113
                        mem[32] = 7
                        stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                        mem[mem[64]] = _1113
                        emit Transfer(_1113, arg1, arg2);
                        if ext_code.size(arg2) > 0:
                            _1604 = mem[64]
                            mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1113
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                            _1606 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1606:
                                mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1606 % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1606 + _1604 + -mem[64] + 128]
                            else:
                                mem[floor32(_1606) + _1604 + 132] = mem[floor32(_1606) + _1604 + -(_1606 % 32) + 164 len _1606 % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_1606) + _1604 + -mem[64] + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                        while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor7[_1113] = 0
                        stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                        require not ownerOf[_1113]
                        ownerOf[_1113] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                        uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                        mem[0] = _1113
                        mem[32] = 7
                        stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                        mem[mem[64]] = _1113
                        emit Transfer(_1113, arg1, arg2);
                        if ext_code.size(arg2) > 0:
                            _2564 = mem[64]
                            mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1113
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                            _2566 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2566:
                                mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2566 % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2566 + _2564 + -mem[64] + 128]
                            else:
                                mem[floor32(_2566) + _2564 + 132] = mem[floor32(_2566) + _2564 + -(_2566 % 32) + 164 len _2566 % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_2566) + _2564 + -mem[64] + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                if approved[mem[(32 * idx) + 128]] == msg.sender:
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                        uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                        if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                            stor7[mem[(32 * idx) + 128]] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 7
                            stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = mem[(32 * idx) + 128]
                            emit Transfer(mem[mem[64]], arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                _1729 = mem[64]
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _1731 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1731:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1731 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1731 + _1729 + -mem[64] + 128]
                                else:
                                    mem[floor32(_1731) + _1729 + 132] = mem[floor32(_1731) + _1729 + -(_1731 % 32) + 164 len _1731 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1731) + _1729 + -mem[64] + 160]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                            while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor7[mem[(32 * idx) + 128]] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 7
                            stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = mem[(32 * idx) + 128]
                            emit Transfer(mem[mem[64]], arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _2569 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2569:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2569 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len _2569 + 32]
                                else:
                                    mem[floor32(_2569) + mem[64] + 132] = mem[floor32(_2569) + mem[64] + -(_2569 % 32) + 164 len _2569 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_2569) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        mem[mem[64]] = mem[(32 * idx) + 128]
                        emit Approval(mem[mem[64]], arg1, 0);
                        require ownerOf[_1113]
                        require ownerOf[_1113] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[_1113] = 0
                        require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                        uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                        if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                            stor7[_1113] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                            require not ownerOf[_1113]
                            ownerOf[_1113] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                            mem[0] = _1113
                            mem[32] = 7
                            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = _1113
                            emit Transfer(_1113, arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _1734 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1734:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1734 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len _1734 + 32]
                                else:
                                    mem[floor32(_1734) + mem[64] + 132] = mem[floor32(_1734) + mem[64] + -(_1734 % 32) + 164 len _1734 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_1734) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                            while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor7[_1113] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                            require not ownerOf[_1113]
                            ownerOf[_1113] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                            mem[0] = _1113
                            mem[32] = 7
                            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = _1113
                            emit Transfer(_1113, arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _2572 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2572:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2572 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len _2572 + 32]
                                else:
                                    mem[floor32(_2572) + mem[64] + 132] = mem[floor32(_2572) + mem[64] + -(_2572 % 32) + 164 len _2572 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_2572) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    require stor3[stor0[mem[(32 * idx) + 128]]][address(msg.sender)]
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                        uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                        if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                            stor7[mem[(32 * idx) + 128]] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 7
                            stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = mem[(32 * idx) + 128]
                            emit Transfer(mem[mem[64]], arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _1807 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1807:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1807 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len _1807 + 32]
                                else:
                                    mem[floor32(_1807) + mem[64] + 132] = mem[floor32(_1807) + mem[64] + -(_1807 % 32) + 164 len _1807 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_1807) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                            while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor7[mem[(32 * idx) + 128]] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 7
                            stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = mem[(32 * idx) + 128]
                            emit Transfer(mem[mem[64]], arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _2575 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2575:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2575 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len _2575 + 32]
                                else:
                                    mem[floor32(_2575) + mem[64] + 132] = mem[floor32(_2575) + mem[64] + -(_2575 % 32) + 164 len _2575 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_2575) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        mem[mem[64]] = mem[(32 * idx) + 128]
                        emit Approval(mem[mem[64]], arg1, 0);
                        require ownerOf[_1113]
                        require ownerOf[_1113] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[_1113] = 0
                        require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                        uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                        if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                            stor7[_1113] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                            require not ownerOf[_1113]
                            ownerOf[_1113] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                            mem[0] = _1113
                            mem[32] = 7
                            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = _1113
                            emit Transfer(_1113, arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _1810 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1810:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1810 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len _1810 + 32]
                                else:
                                    mem[floor32(_1810) + mem[64] + 132] = mem[floor32(_1810) + mem[64] + -(_1810 % 32) + 164 len _1810 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_1810) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                            while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor7[_1113] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                            require not ownerOf[_1113]
                            ownerOf[_1113] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                            mem[0] = _1113
                            mem[32] = 7
                            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = _1113
                            emit Transfer(_1113, arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                _2576 = mem[64]
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _2578 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2578:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2578 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2578 + _2576 + -mem[64] + 128]
                                else:
                                    mem[floor32(_2578) + _2576 + 132] = mem[floor32(_2578) + _2576 + -(_2578 % 32) + 164 len _2578 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_2578) + _2576 + -mem[64] + 160]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if approved[mem[(32 * idx) + 128]] == msg.sender:
            require ownerOf[mem[(32 * idx) + 128]]
            if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
                require arg1
                require arg2
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                if not approved[mem[(32 * idx) + 128]]:
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[mem[(32 * idx) + 128]] = 0
                    require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    uint256(tokenOfOwnerByIndex[address(arg1)][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                    uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                    if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                        stor7[mem[(32 * idx) + 128]] = 0
                        stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                        uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 7
                        stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                        mem[mem[64]] = mem[(32 * idx) + 128]
                        emit Transfer(mem[mem[64]], arg1, arg2);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1113
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                            _1743 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1743:
                                mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1743 % 32:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), _1113, 96, mem[mem[64] + 100 len _1743 + 32]
                            else:
                                mem[floor32(_1743) + mem[64] + 132] = mem[floor32(_1743) + mem[64] + -(_1743 % 32) + 164 len _1743 % 32]
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_1743) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                        while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor7[mem[(32 * idx) + 128]] = 0
                        stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                        require not ownerOf[mem[(32 * idx) + 128]]
                        ownerOf[mem[(32 * idx) + 128]] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                        uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 7
                        stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                        mem[mem[64]] = mem[(32 * idx) + 128]
                        emit Transfer(mem[mem[64]], arg1, arg2);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1113
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                            _2581 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2581:
                                mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2581 % 32:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), _1113, 96, mem[mem[64] + 100 len _2581 + 32]
                            else:
                                mem[floor32(_2581) + mem[64] + 132] = mem[floor32(_2581) + mem[64] + -(_2581 % 32) + 164 len _2581 % 32]
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_2581) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    approved[mem[(32 * idx) + 128]] = 0
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    emit Approval(mem[mem[64]], arg1, 0);
                    require ownerOf[_1113]
                    require ownerOf[_1113] == arg1
                    require 1 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)]--
                    ownerOf[_1113] = 0
                    require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                    require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                    uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                    uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                    if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                        stor7[_1113] = 0
                        stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                        require not ownerOf[_1113]
                        ownerOf[_1113] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                        uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                        mem[0] = _1113
                        mem[32] = 7
                        stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                        mem[mem[64]] = _1113
                        emit Transfer(_1113, arg1, arg2);
                        if ext_code.size(arg2) > 0:
                            mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1113
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                            _1746 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _1746:
                                mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _1746 % 32:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), _1113, 96, mem[mem[64] + 100 len _1746 + 32]
                            else:
                                mem[floor32(_1746) + mem[64] + 132] = mem[floor32(_1746) + mem[64] + -(_1746 % 32) + 164 len _1746 % 32]
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_1746) + 64]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                        while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        stor7[_1113] = 0
                        stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                        require not ownerOf[_1113]
                        ownerOf[_1113] = arg2
                        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)]++
                        uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                        uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                        mem[0] = _1113
                        mem[32] = 7
                        stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                        mem[mem[64]] = _1113
                        emit Transfer(_1113, arg1, arg2);
                        if ext_code.size(arg2) > 0:
                            _2582 = mem[64]
                            mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1113
                            mem[mem[64] + 68] = 96
                            mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                            _2584 = mem[(32 * arg3.length) + 128]
                            s = 0
                            while s < _2584:
                                mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                s = s + 32
                                continue 
                            if not _2584 % 32:
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2584 + _2582 + -mem[64] + 128]
                            else:
                                mem[floor32(_2584) + _2582 + 132] = mem[floor32(_2584) + _2582 + -(_2584 % 32) + 164 len _2584 % 32]
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(_2584) + _2582 + -mem[64] + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                if approved[mem[(32 * idx) + 128]] == msg.sender:
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                        uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                        if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                            stor7[mem[(32 * idx) + 128]] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 7
                            stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = mem[(32 * idx) + 128]
                            emit Transfer(mem[mem[64]], arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _1883 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1883:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1883 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len _1883 + 32]
                                else:
                                    mem[floor32(_1883) + mem[64] + 132] = mem[floor32(_1883) + mem[64] + -(_1883 % 32) + 164 len _1883 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_1883) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                            while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor7[mem[(32 * idx) + 128]] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 7
                            stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = mem[(32 * idx) + 128]
                            emit Transfer(mem[mem[64]], arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _2587 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2587:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2587 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len _2587 + 32]
                                else:
                                    mem[floor32(_2587) + mem[64] + 132] = mem[floor32(_2587) + mem[64] + -(_2587 % 32) + 164 len _2587 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_2587) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        mem[mem[64]] = mem[(32 * idx) + 128]
                        emit Approval(mem[mem[64]], arg1, 0);
                        require ownerOf[_1113]
                        require ownerOf[_1113] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[_1113] = 0
                        require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                        uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                        if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                            stor7[_1113] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                            require not ownerOf[_1113]
                            ownerOf[_1113] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                            mem[0] = _1113
                            mem[32] = 7
                            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = _1113
                            emit Transfer(_1113, arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                _1884 = mem[64]
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _1886 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1886:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1886 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1886 + _1884 + -mem[64] + 128]
                                else:
                                    mem[floor32(_1886) + _1884 + 132] = mem[floor32(_1886) + _1884 + -(_1886 % 32) + 164 len _1886 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1886) + _1884 + -mem[64] + 160]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                            while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor7[_1113] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                            require not ownerOf[_1113]
                            ownerOf[_1113] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                            mem[0] = _1113
                            mem[32] = 7
                            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = _1113
                            emit Transfer(_1113, arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                _2588 = mem[64]
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _2590 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2590:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2590 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2590 + _2588 + -mem[64] + 128]
                                else:
                                    mem[floor32(_2590) + _2588 + 132] = mem[floor32(_2590) + _2588 + -(_2590 % 32) + 164 len _2590 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_2590) + _2588 + -mem[64] + 160]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    require stor3[stor0[mem[(32 * idx) + 128]]][address(msg.sender)]
                    require arg1
                    require arg2
                    require ownerOf[mem[(32 * idx) + 128]]
                    require ownerOf[mem[(32 * idx) + 128]] == arg1
                    if not approved[mem[(32 * idx) + 128]]:
                        require ownerOf[mem[(32 * idx) + 128]]
                        require ownerOf[mem[(32 * idx) + 128]] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[mem[(32 * idx) + 128]] = 0
                        require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                        uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                        if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                            stor7[mem[(32 * idx) + 128]] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 7
                            stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = mem[(32 * idx) + 128]
                            emit Transfer(mem[mem[64]], arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                _1951 = mem[64]
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _1953 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1953:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1953 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1953 + _1951 + -mem[64] + 128]
                                else:
                                    mem[floor32(_1953) + _1951 + 132] = mem[floor32(_1953) + _1951 + -(_1953 % 32) + 164 len _1953 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_1953) + _1951 + -mem[64] + 160]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                            while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor7[mem[(32 * idx) + 128]] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                            require not ownerOf[mem[(32 * idx) + 128]]
                            ownerOf[mem[(32 * idx) + 128]] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 7
                            stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = mem[(32 * idx) + 128]
                            emit Transfer(mem[mem[64]], arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                _2591 = mem[64]
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _2593 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2593:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2593 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2593 + _2591 + -mem[64] + 128]
                                else:
                                    mem[floor32(_2593) + _2591 + 132] = mem[floor32(_2593) + _2591 + -(_2593 % 32) + 164 len _2593 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_2593) + _2591 + -mem[64] + 160]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        approved[mem[(32 * idx) + 128]] = 0
                        mem[mem[64]] = mem[(32 * idx) + 128]
                        emit Approval(mem[mem[64]], arg1, 0);
                        require ownerOf[_1113]
                        require ownerOf[_1113] == arg1
                        require 1 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)]--
                        ownerOf[_1113] = 0
                        require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                        uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                        uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                        if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                            stor7[_1113] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                            require not ownerOf[_1113]
                            ownerOf[_1113] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                            mem[0] = _1113
                            mem[32] = 7
                            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = _1113
                            emit Transfer(_1113, arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _1956 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _1956:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _1956 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len _1956 + 32]
                                else:
                                    mem[floor32(_1956) + mem[64] + 132] = mem[floor32(_1956) + mem[64] + -(_1956 % 32) + 164 len _1956 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                         gas gas_remaining wei
                                        args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_1956) + 64]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                        else:
                            s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                            while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            stor7[_1113] = 0
                            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                            require not ownerOf[_1113]
                            ownerOf[_1113] = arg2
                            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                            balanceOf[address(arg2)]++
                            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                            mem[0] = _1113
                            mem[32] = 7
                            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                            mem[mem[64]] = _1113
                            emit Transfer(_1113, arg1, arg2);
                            if ext_code.size(arg2) > 0:
                                _2594 = mem[64]
                                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = _1113
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                                _2596 = mem[(32 * arg3.length) + 128]
                                s = 0
                                while s < _2596:
                                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                                    s = s + 32
                                    continue 
                                if not _2596 % 32:
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2596 + _2594 + -mem[64] + 128]
                                else:
                                    mem[floor32(_2596) + _2594 + 132] = mem[floor32(_2596) + _2594 + -(_2596 % 32) + 164 len _2596 % 32]
                                    require ext_code.size(arg2)
                                    call arg2.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(_2596) + _2594 + -mem[64] + 160]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        require stor3[stor0[mem[(32 * idx) + 128]]][address(msg.sender)]
        require ownerOf[mem[(32 * idx) + 128]]
        if msg.sender == ownerOf[mem[(32 * idx) + 128]]:
            require arg1
            require arg2
            require ownerOf[mem[(32 * idx) + 128]]
            require ownerOf[mem[(32 * idx) + 128]] == arg1
            if not approved[mem[(32 * idx) + 128]]:
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[mem[(32 * idx) + 128]] = 0
                require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                uint256(tokenOfOwnerByIndex[address(arg1)][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 7
                    stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    emit Transfer(mem[mem[64]], arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        _1819 = mem[64]
                        mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1113
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                        _1821 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1821:
                            mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1821 % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1821 + _1819 + -mem[64] + 128]
                        else:
                            mem[floor32(_1821) + _1819 + 132] = mem[floor32(_1821) + _1819 + -(_1821 % 32) + 164 len _1821 % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1821) + _1819 + -mem[64] + 160]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                    while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 7
                    stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    emit Transfer(mem[mem[64]], arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        _2597 = mem[64]
                        mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1113
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                        _2599 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2599:
                            mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2599 % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2599 + _2597 + -mem[64] + 128]
                        else:
                            mem[floor32(_2599) + _2597 + 132] = mem[floor32(_2599) + _2597 + -(_2599 % 32) + 164 len _2599 % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2599) + _2597 + -mem[64] + 160]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                approved[mem[(32 * idx) + 128]] = 0
                mem[mem[64]] = mem[(32 * idx) + 128]
                emit Approval(mem[mem[64]], arg1, 0);
                require ownerOf[_1113]
                require ownerOf[_1113] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[_1113] = 0
                require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                    stor7[_1113] = 0
                    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                    require not ownerOf[_1113]
                    ownerOf[_1113] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                    mem[0] = _1113
                    mem[32] = 7
                    stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                    mem[mem[64]] = _1113
                    emit Transfer(_1113, arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        _1822 = mem[64]
                        mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1113
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                        _1824 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1824:
                            mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1824 % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1824 + _1822 + -mem[64] + 128]
                        else:
                            mem[floor32(_1824) + _1822 + 132] = mem[floor32(_1824) + _1822 + -(_1824 % 32) + 164 len _1824 % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1824) + _1822 + -mem[64] + 160]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                    while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor7[_1113] = 0
                    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                    require not ownerOf[_1113]
                    ownerOf[_1113] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                    mem[0] = _1113
                    mem[32] = 7
                    stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                    mem[mem[64]] = _1113
                    emit Transfer(_1113, arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1113
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                        _2602 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2602:
                            mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2602 % 32:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), _1113, 96, mem[mem[64] + 100 len _2602 + 32]
                        else:
                            mem[floor32(_2602) + mem[64] + 132] = mem[floor32(_2602) + mem[64] + -(_2602 % 32) + 164 len _2602 % 32]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_2602) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if approved[mem[(32 * idx) + 128]] == msg.sender:
            require arg1
            require arg2
            require ownerOf[mem[(32 * idx) + 128]]
            require ownerOf[mem[(32 * idx) + 128]] == arg1
            if not approved[mem[(32 * idx) + 128]]:
                require ownerOf[mem[(32 * idx) + 128]]
                require ownerOf[mem[(32 * idx) + 128]] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[mem[(32 * idx) + 128]] = 0
                require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                uint256(tokenOfOwnerByIndex[address(arg1)][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 7
                    stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    emit Transfer(mem[mem[64]], arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        _1965 = mem[64]
                        mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1113
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                        _1967 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1967:
                            mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1967 % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1967 + _1965 + -mem[64] + 128]
                        else:
                            mem[floor32(_1967) + _1965 + 132] = mem[floor32(_1967) + _1965 + -(_1967 % 32) + 164 len _1967 % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_1967) + _1965 + -mem[64] + 160]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                    while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor7[mem[(32 * idx) + 128]] = 0
                    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                    require not ownerOf[mem[(32 * idx) + 128]]
                    ownerOf[mem[(32 * idx) + 128]] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 7
                    stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    emit Transfer(mem[mem[64]], arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1113
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                        _2605 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2605:
                            mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2605 % 32:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), _1113, 96, mem[mem[64] + 100 len _2605 + 32]
                        else:
                            mem[floor32(_2605) + mem[64] + 132] = mem[floor32(_2605) + mem[64] + -(_2605 % 32) + 164 len _2605 % 32]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_2605) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                approved[mem[(32 * idx) + 128]] = 0
                mem[mem[64]] = mem[(32 * idx) + 128]
                emit Approval(mem[mem[64]], arg1, 0);
                require ownerOf[_1113]
                require ownerOf[_1113] == arg1
                require 1 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)]--
                ownerOf[_1113] = 0
                require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
                require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
                uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
                uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
                if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                    stor7[_1113] = 0
                    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                    require not ownerOf[_1113]
                    ownerOf[_1113] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                    mem[0] = _1113
                    mem[32] = 7
                    stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                    mem[mem[64]] = _1113
                    emit Transfer(_1113, arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1113
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                        _1970 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _1970:
                            mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _1970 % 32:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), _1113, 96, mem[mem[64] + 100 len _1970 + 32]
                        else:
                            mem[floor32(_1970) + mem[64] + 132] = mem[floor32(_1970) + mem[64] + -(_1970 % 32) + 164 len _1970 % 32]
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), _1113, 96, mem[mem[64] + 100 len floor32(_1970) + 64]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
                    while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    stor7[_1113] = 0
                    stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
                    require not ownerOf[_1113]
                    ownerOf[_1113] = arg2
                    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)]++
                    uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                    uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
                    mem[0] = _1113
                    mem[32] = 7
                    stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                    mem[mem[64]] = _1113
                    emit Transfer(_1113, arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        _2606 = mem[64]
                        mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1113
                        mem[mem[64] + 68] = 96
                        mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                        _2608 = mem[(32 * arg3.length) + 128]
                        s = 0
                        while s < _2608:
                            mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                            s = s + 32
                            continue 
                        if not _2608 % 32:
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2608 + _2606 + -mem[64] + 128]
                        else:
                            mem[floor32(_2608) + _2606 + 132] = mem[floor32(_2608) + _2606 + -(_2608 % 32) + 164 len _2608 % 32]
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(_2608) + _2606 + -mem[64] + 160]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        require stor3[stor0[mem[(32 * idx) + 128]]][address(msg.sender)]
        require arg1
        require arg2
        require ownerOf[mem[(32 * idx) + 128]]
        require ownerOf[mem[(32 * idx) + 128]] == arg1
        if not approved[mem[(32 * idx) + 128]]:
            require ownerOf[mem[(32 * idx) + 128]]
            require ownerOf[mem[(32 * idx) + 128]] == arg1
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            ownerOf[mem[(32 * idx) + 128]] = 0
            require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            require stor7[mem[(32 * idx) + 128]] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][stor7[mem[(32 * idx) + 128]]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
            require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
            uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
            uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
            if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
                stor7[mem[(32 * idx) + 128]] = 0
                stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
                require not ownerOf[mem[(32 * idx) + 128]]
                ownerOf[mem[(32 * idx) + 128]] = arg2
                require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
                balanceOf[address(arg2)]++
                uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
                uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 7
                stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
                mem[mem[64]] = mem[(32 * idx) + 128]
                emit Transfer(mem[mem[64]], arg1, arg2);
                if ext_code.size(arg2) > 0:
                    _2031 = mem[64]
                    mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = _1113
                    mem[mem[64] + 68] = 96
                    mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                    _2033 = mem[(32 * arg3.length) + 128]
                    s = 0
                    while s < _2033:
                        mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                        s = s + 32
                        continue 
                    if not _2033 % 32:
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2033 + _2031 + -mem[64] + 128]
                    else:
                        mem[floor32(_2033) + _2031 + 132] = mem[floor32(_2033) + _2031 + -(_2033 % 32) + 164 len _2033 % 32]
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(_2033) + _2031 + -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
            while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            stor7[mem[(32 * idx) + 128]] = 0
            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[mem[(32 * idx) + 128]]
            require not ownerOf[mem[(32 * idx) + 128]]
            ownerOf[mem[(32 * idx) + 128]] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 7
            stor7[mem[(32 * idx) + 128]] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
            mem[mem[64]] = mem[(32 * idx) + 128]
            emit Transfer(mem[mem[64]], arg1, arg2);
            if ext_code.size(arg2) <= 0:
                idx = idx + 1
                continue 
            _2609 = mem[64]
            mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _1113
            mem[mem[64] + 68] = 96
            mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
            _2611 = mem[(32 * arg3.length) + 128]
            s = 0
            while s < _2611:
                mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                s = s + 32
                continue 
            if not _2611 % 32:
                require ext_code.size(arg2)
                call arg2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2611 + _2609 + -mem[64] + 128]
            else:
                mem[floor32(_2611) + _2609 + 132] = mem[floor32(_2611) + _2609 + -(_2611 % 32) + 164 len _2611 % 32]
                require ext_code.size(arg2)
                call arg2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(_2611) + _2609 + -mem[64] + 160]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            s = ceil32(_2611) + 1
            continue 
        approved[mem[(32 * idx) + 128]] = 0
        mem[mem[64]] = mem[(32 * idx) + 128]
        emit Approval(mem[mem[64]], arg1, 0);
        require ownerOf[_1113]
        require ownerOf[_1113] == arg1
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        ownerOf[_1113] = 0
        require 1 <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        require stor7[_1113] < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        uint256(tokenOfOwnerByIndex[address(arg1)][stor7[_1113]].field_0) = uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0)
        require uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1 < uint256(tokenOfOwnerByIndex[address(arg1)].field_0)
        uint256(tokenOfOwnerByIndex[address(arg1)][uint256(tokenOfOwnerByIndex[address(arg1)].field_0)].field_0) = 0
        uint256(tokenOfOwnerByIndex[address(arg1)].field_0)--
        if uint256(tokenOfOwnerByIndex[address(arg1)].field_0) <= uint256(tokenOfOwnerByIndex[address(arg1)].field_0) - 1:
            stor7[_1113] = 0
            stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
            require not ownerOf[_1113]
            ownerOf[_1113] = arg2
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
            uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
            mem[0] = _1113
            mem[32] = 7
            stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
            mem[mem[64]] = _1113
            emit Transfer(_1113, arg1, arg2);
            if ext_code.size(arg2) > 0:
                _2034 = mem[64]
                mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _1113
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
                _2036 = mem[(32 * arg3.length) + 128]
                s = 0
                while s < _2036:
                    mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
                    s = s + 32
                    continue 
                if not _2036 % 32:
                    require ext_code.size(arg2)
                    call arg2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2036 + _2034 + -mem[64] + 128]
                else:
                    mem[floor32(_2036) + _2034 + 132] = mem[floor32(_2036) + _2034 + -(_2036 % 32) + 164 len _2036 % 32]
                    require ext_code.size(arg2)
                    call arg2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_2036) + _2034 + -mem[64] + 160]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        s = uint256(tokenOfOwnerByIndex[address(arg1)].field_0) + sha3(sha3(address(arg1), 6)) - 1
        while sha3(sha3(address(arg1), 6)) + uint256(tokenOfOwnerByIndex[address(arg1)].field_0) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        stor7[_1113] = 0
        stor7[uint256(stor6[address(arg1)][uint256(stor6[address(arg1)].field_0)].field_0)] = stor7[_1113]
        require not ownerOf[_1113]
        ownerOf[_1113] = arg2
        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)]++
        uint256(tokenOfOwnerByIndex[address(arg2)].field_0)++
        uint256(tokenOfOwnerByIndex[address(arg2)][uint256(tokenOfOwnerByIndex[address(arg2)].field_0)].field_0) = _1113
        mem[0] = _1113
        mem[32] = 7
        stor7[_1113] = uint256(tokenOfOwnerByIndex[address(arg2)].field_0)
        mem[mem[64]] = _1113
        emit Transfer(_1113, arg1, arg2);
        if ext_code.size(arg2) <= 0:
            idx = idx + 1
            continue 
        _2612 = mem[64]
        mem[mem[64]] = 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = _1113
        mem[mem[64] + 68] = 96
        mem[mem[64] + 100] = mem[(32 * arg3.length) + 128]
        _2614 = mem[(32 * arg3.length) + 128]
        s = 0
        while s < _2614:
            mem[s + mem[64] + 132] = mem[s + (32 * arg3.length) + 160]
            s = s + 32
            continue 
        if not _2614 % 32:
            require ext_code.size(arg2)
            call arg2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2614 + _2612 + -mem[64] + 128]
        else:
            mem[floor32(_2614) + _2612 + 132] = mem[floor32(_2614) + _2612 + -(_2614 % 32) + 164 len _2614 % 32]
            require ext_code.size(arg2)
            call arg2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(_2614) + _2612 + -mem[64] + 160]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
        s = ceil32(_2614) + 1
        continue 
}



}
