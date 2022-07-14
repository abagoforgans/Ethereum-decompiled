contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address meAddress;
mapping of uint8 stor2;
mapping of address stor3;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor6;
array of uint256 name;
array of uint256 symbol;
mapping of bool tokenURI;
array of struct stor10;
mapping of uint256 stor11;
array of uint256 tokenByIndex;
mapping of uint256 stor13;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor3[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0, 'no property'
    return tokenByIndex[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function me() {
    return meAddress
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor6[address(arg1)][address(arg2)])
}

function close() payable {
    if meAddress != msg.sender:
        revert with 0, 'sender is not owner'
    selfdestruct(meAddress)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        return 0
    require stor3[arg1]
    return stor3[arg1]
}

function renounceAdmin() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function _fallback() payable {
    call meAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    if arg2 >= balanceOf[address(arg1)]:
        return 0
    require arg2 < stor10[address(arg1)].field_0
    return stor10[address(arg1)][arg2].field_0
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor3[arg2]:
        require arg1
        if msg.sender:
            require stor6[0][address(msg.sender)]
        approved[arg2] = arg1
        emit Approval(0, arg1, arg2);
    else:
        require stor3[arg2]
        require arg1 != stor3[arg2]
        if stor3[arg2] != msg.sender:
            require stor6[stor3[arg2]][address(msg.sender)]
        approved[arg2] = arg1
        emit Approval(stor3[arg2], arg1, arg2);
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not stor10[address(arg1)].field_0:
        mem[(32 * stor10[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor10[address(arg1)].field_0) + 160] = stor10[address(arg1)].field_0
        mem[(32 * stor10[address(arg1)].field_0) + 192 len floor32(stor10[address(arg1)].field_0)] = mem[128 len floor32(stor10[address(arg1)].field_0)]
        return memory
          from (32 * stor10[address(arg1)].field_0) + 128
           len (96 * stor10[address(arg1)].field_0) + 64
    mem[128] = stor10[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor10[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor10[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor10[address(arg1)].field_0) + 192 len floor32(stor10[address(arg1)].field_0)] = mem[128 len floor32(stor10[address(arg1)].field_0)]
    return Array(len=stor10[address(arg1)].field_0, data=mem[128 len floor32(stor10[address(arg1)].field_0)], mem[(32 * stor10[address(arg1)].field_0) + floor32(stor10[address(arg1)].field_0) + 192 len (32 * stor10[address(arg1)].field_0) - floor32(stor10[address(arg1)].field_0)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        if msg.sender:
            require stor3[arg3]
            if approved[arg3] != msg.sender:
                require stor6[0][address(msg.sender)]
    else:
        require stor3[arg3]
        if stor3[arg3] != msg.sender:
            require stor3[arg3]
            if approved[arg3] != msg.sender:
                require stor6[stor3[arg3]][address(msg.sender)]
    if not stor3[arg3]:
        require 0 == arg1
    else:
        require stor3[arg3]
        require stor3[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    stor3[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= stor10[address(arg1)].field_0
    if stor11[arg3] != stor10[address(arg1)].field_0 - 1:
        require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
        require stor11[arg3] < stor10[address(arg1)].field_0
        stor10[address(arg1)][stor11[arg3]].field_0 = stor10[address(arg1)][stor10[address(arg1)].field_0].field_0
        stor11[stor10[address(arg1)][stor10[address(arg1)].field_0].field_0] = stor11[arg3]
    stor10[address(arg1)].field_0--
    if stor10[address(arg1)].field_0 > stor10[address(arg1)].field_0 - 1:
        idx = stor10[address(arg1)].field_0 - 1
        while stor10[address(arg1)].field_0 > idx:
            stor10[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor11[arg3] = stor10[address(arg2)].field_0
    stor10[address(arg2)].field_0++
    stor10[address(arg2)][stor10[address(arg2)].field_0].field_0 = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        if msg.sender:
            require stor3[arg3]
            if approved[arg3] != msg.sender:
                require stor6[0][address(msg.sender)]
    else:
        require stor3[arg3]
        if stor3[arg3] != msg.sender:
            require stor3[arg3]
            if approved[arg3] != msg.sender:
                require stor6[stor3[arg3]][address(msg.sender)]
    if not stor3[arg3]:
        require 0 == arg1
    else:
        require stor3[arg3]
        require stor3[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    stor3[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= stor10[address(arg1)].field_0
    if stor11[arg3] != stor10[address(arg1)].field_0 - 1:
        require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
        require stor11[arg3] < stor10[address(arg1)].field_0
        stor10[address(arg1)][stor11[arg3]].field_0 = stor10[address(arg1)][stor10[address(arg1)].field_0].field_0
        stor11[stor10[address(arg1)][stor10[address(arg1)].field_0].field_0] = stor11[arg3]
    stor10[address(arg1)].field_0--
    if stor10[address(arg1)].field_0 > stor10[address(arg1)].field_0 - 1:
        idx = stor10[address(arg1)].field_0 - 1
        while stor10[address(arg1)].field_0 > idx:
            stor10[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor11[arg3] = stor10[address(arg2)].field_0
    stor10[address(arg2)].field_0++
    stor10[address(arg2)][stor10[address(arg2)].field_0].field_0 = arg3
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
    if not stor3[arg3]:
        if msg.sender:
            require stor3[arg3]
            if approved[arg3] != msg.sender:
                require stor6[0][address(msg.sender)]
    else:
        require stor3[arg3]
        if stor3[arg3] != msg.sender:
            require stor3[arg3]
            if approved[arg3] != msg.sender:
                require stor6[stor3[arg3]][address(msg.sender)]
    if not stor3[arg3]:
        require 0 == arg1
    else:
        require stor3[arg3]
        require stor3[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    stor3[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= stor10[address(arg1)].field_0
    if stor11[arg3] != stor10[address(arg1)].field_0 - 1:
        require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
        require stor11[arg3] < stor10[address(arg1)].field_0
        stor10[address(arg1)][stor11[arg3]].field_0 = stor10[address(arg1)][stor10[address(arg1)].field_0].field_0
        stor11[stor10[address(arg1)][stor10[address(arg1)].field_0].field_0] = stor11[arg3]
    stor10[address(arg1)].field_0--
    if stor10[address(arg1)].field_0 > stor10[address(arg1)].field_0 - 1:
        idx = stor10[address(arg1)].field_0 - 1
        while stor10[address(arg1)].field_0 > idx:
            stor10[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor11[arg3] = stor10[address(arg2)].field_0
    stor10[address(arg2)].field_0++
    stor10[address(arg2)][stor10[address(arg2)].field_0].field_0 = arg3
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

function transfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    if not arg1:
        require arg2
        require not stor3[arg3]
        stor3[arg3] = arg2
        require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)]++
        emit Transfer(0, arg2, arg3);
        stor11[arg3] = stor10[address(arg2)].field_0
        stor10[address(arg2)].field_0++
        stor10[address(arg2)][stor10[address(arg2)].field_0].field_0 = arg3
        stor13[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if not stor3[arg3]:
            require 0 == arg1
        else:
            require stor3[arg3]
            require stor3[arg3] == arg1
        if arg2:
            require arg2
            if approved[arg3]:
                approved[arg3] = 0
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)]++
            stor3[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            require 1 <= stor10[address(arg1)].field_0
            if stor11[arg3] != stor10[address(arg1)].field_0 - 1:
                require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
                require stor11[arg3] < stor10[address(arg1)].field_0
                stor10[address(arg1)][stor11[arg3]].field_0 = stor10[address(arg1)][stor10[address(arg1)].field_0].field_0
                stor11[stor10[address(arg1)][stor10[address(arg1)].field_0].field_0] = stor11[arg3]
            stor10[address(arg1)].field_0--
            if stor10[address(arg1)].field_0 > stor10[address(arg1)].field_0 - 1:
                idx = stor10[address(arg1)].field_0 - 1
                while stor10[address(arg1)].field_0 > idx:
                    stor10[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor11[arg3] = stor10[address(arg2)].field_0
            stor10[address(arg2)].field_0++
            stor10[address(arg2)][stor10[address(arg2)].field_0].field_0 = arg3
        else:
            if approved[arg3]:
                approved[arg3] = 0
            require 1 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)]--
            stor3[arg3] = 0
            emit Transfer(arg1, 0, arg3);
            if Mask(255, 1, (256 * not bool(tokenURI[arg3])) - 1 and uint256(tokenURI[arg3])):
                uint256(tokenURI[arg3]) = 0
                if 31 < tokenURI[arg3].length:
                    idx = 0
                    while tokenURI[arg3].length + 31 / 32 > idx:
                        uint256(tokenURI[arg3][idx]) = 0
                        idx = idx + 1
                        continue 
            require 1 <= stor10[address(arg1)].field_0
            if stor11[arg3] != stor10[address(arg1)].field_0 - 1:
                require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
                require stor11[arg3] < stor10[address(arg1)].field_0
                stor10[address(arg1)][stor11[arg3]].field_0 = stor10[address(arg1)][stor10[address(arg1)].field_0].field_0
                stor11[stor10[address(arg1)][stor10[address(arg1)].field_0].field_0] = stor11[arg3]
            stor10[address(arg1)].field_0--
            if stor10[address(arg1)].field_0 > stor10[address(arg1)].field_0 - 1:
                idx = stor10[address(arg1)].field_0 - 1
                while stor10[address(arg1)].field_0 > idx:
                    stor10[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor11[arg3] = 0
            require 1 <= tokenByIndex.length
            require tokenByIndex.length - 1 < tokenByIndex.length
            require stor13[arg3] < tokenByIndex.length
            tokenByIndex[stor13[arg3]] = tokenByIndex[tokenByIndex.length]
            stor13[stor12[stor12.length]] = stor13[arg3]
            tokenByIndex.length--
            if tokenByIndex.length > tokenByIndex.length - 1:
                idx = tokenByIndex.length - 1
                while tokenByIndex.length > idx:
                    tokenByIndex[idx] = 0
                    idx = idx + 1
                    continue 
            stor13[arg3] = 0
}



}
