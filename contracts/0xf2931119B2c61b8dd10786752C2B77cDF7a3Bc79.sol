contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
array of uint256 tokenByIndex;
mapping of uint256 stor3;
array of uint256 tokenOfOwnerByIndex;
mapping of address ownerOf;
mapping of uint256 stor6;
mapping of address approved;
mapping of uint8 stor8;
array of uint256 tokenURI;
uint8 stor10; offset 160
uint128 stor10; offset 160
address adminAddress;
array of uint256 stor11;
mapping of uint256 stor12;
uint256 stor13;
uint256 sub_91f009cf;
mapping of uint8 stor15;
array of address sub_cbd7a6b8;
address sub_6caf419aAddress;
uint256 stor17;
address stor5B8C;

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1e00658a(?) {
    return bool(stor15[arg1])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require stor5B8C
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function sub_6caf419a(?) {
    return address(sub_6caf419aAddress)
}

function balanceOf(address arg1) {
    require arg1
    return tokenOfOwnerByIndex[address(arg1)]
}

function sub_91f009cf(?) {
    return sub_91f009cf
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function sub_cbd7a6b8(?) {
    require arg2 < uint256(sub_cbd7a6b8[arg1])
    return address(sub_cbd7a6b8[arg1][arg2])
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor8[address(arg1)][address(arg2)])
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    emit 0x60c6b990: msg.value
}

function getToken(uint256 arg1) {
    return stor3[arg1], ownerOf[arg1], stor12[arg1]
}

function sub_d4cab60d(?) {
    require msg.sender == adminAddress
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor8[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdrawEther() {
    require msg.sender == adminAddress
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) payable {
    require ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor8[stor5[arg2]][msg.sender]
    require ownerOf[arg2] != arg1
    if not approved[arg2]:
        require arg1
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) != 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) != 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
            if Mask(32, 224, arg1) != 0x780e9d6300000000000000000000000000000000000000000000000000000000:
                return 0
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require block.timestamp <= stor13
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length
    stor3[stor2.length] = tokenByIndex.length - 1
    ownerOf[stor2.length] = arg1
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenByIndex.length
    stor6[stor2.length] = tokenOfOwnerByIndex[address(arg1)] - 1
    stor12[stor2.length] = arg2
    emit Transfer(0, arg1, tokenByIndex.length);
}

function sub_97de8db0(?) {
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = code.data[8274 len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        require idx < tokenOfOwnerByIndex[address(arg1)]
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[(32 * idx) + 128] = stor12[stor4[address(arg1)][idx]]
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)])] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])]
    return Array(len=tokenOfOwnerByIndex[address(arg1)], data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])], mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + floor32(tokenOfOwnerByIndex[address(arg1)]) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)]) - floor32(tokenOfOwnerByIndex[address(arg1)])]), 
}

function claimToken(bytes32 arg1) payable {
    mem[64] = 96
    require not msg.value
    require block.timestamp <= stor13
    idx = 0
    while idx < 5:
        require idx < stor11.length
        mem[0] = 11
        _28 = mem[64]
        mem[mem[64] + 32] = stor11[idx]
        mem[mem[64] + 64] = address(msg.sender)
        _29 = mem[64]
        mem[mem[64]] = 52
        mem[64] = mem[64] + 84
        _30 = mem[_29]
        t = _29 + 32
        u = _28 + 84
        s = mem[_29]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_28 + floor32(mem[_29]) + 84] = mem[_28 + floor32(mem[_29]) + 84] and 256^(-(mem[_29] % 32) + 32) - 1 or mem[_29 + floor32(mem[_29]) + 32] and !(256^(-(mem[_29] % 32) + 32) - 1)
        if arg1 != sha3(mem[mem[64] len _28 + _30 + -mem[64] + 84]):
            u = u + 1
            continue 
        idx = 0
        while idx < tokenOfOwnerByIndex[address(msg.sender)]:
            require idx < tokenOfOwnerByIndex[address(msg.sender)]
            if stor12[stor4[address(msg.sender)][idx]] == u:
                revert with 0, 'User must not have this token yet'
            mem[0] = msg.sender
            mem[32] = 4
            idx = idx + 1
            continue 
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length
        stor3[stor2.length] = tokenByIndex.length - 1
        ownerOf[stor2.length] = msg.sender
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
        stor6[stor2.length] = tokenOfOwnerByIndex[address(msg.sender)] - 1
        stor12[stor2.length] = u
        emit Transfer(0, msg.sender, tokenByIndex.length);
    revert with 0, 'Payload does not match available token'
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require uint8(stor10.field_160)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if not stor8[stor5[arg3]][msg.sender]:
            require msg.sender == approved[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        require arg1
        require approved[arg3]
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor3[arg3] < tokenByIndex.length
    tokenByIndex[stor3[arg3]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    stor3[stor2[stor2.length]] = stor3[arg3]
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    stor6[stor4[address(arg1)][stor4[address(arg1)]]] = stor6[arg3]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    ownerOf[arg3] = 0
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg3
    stor3[arg3] = tokenByIndex.length - 1
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(arg1, arg2, arg3);
}

function claimPrize(uint256 arg1) {
    idx = 0
    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
        require idx < tokenOfOwnerByIndex[address(msg.sender)]
        if stor12[stor4[address(msg.sender)][idx]] != arg1:
            mem[0] = msg.sender
            mem[32] = 4
            idx = idx + 1
            continue 
        if sub_91f009cf < 6:
            if not stor15[address(msg.sender)]:
                sub_91f009cf++
                stor15[address(msg.sender)] = 1
        idx = 0
        while uint8(idx) < uint256(sub_cbd7a6b8[arg1]):
            require uint8(idx) < uint256(sub_cbd7a6b8[arg1])
            if address(sub_cbd7a6b8[arg1][uint8(idx)]) == msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Winner must not already have claimed this chest'
            mem[0] = msg.sender
            mem[32] = 4
            idx = idx + 1
            continue 
        if uint256(sub_cbd7a6b8[arg1]):
            if uint256(sub_cbd7a6b8[arg1]) > 0:
                if uint256(sub_cbd7a6b8[arg1]) <= 2:
                    if 15 * 10^16 <= eth.balance(this.address):
                        call msg.sender with:
                           value 15 * 10^16 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if uint256(sub_cbd7a6b8[arg1]) <= 0:
                if 3 * 10^17 <= eth.balance(this.address):
                    call msg.sender with:
                       value 3 * 10^17 wei
                         gas 0 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint256(sub_cbd7a6b8[arg1]) <= 2:
                    if 15 * 10^16 <= eth.balance(this.address):
                        call msg.sender with:
                           value 15 * 10^16 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        uint256(sub_cbd7a6b8[arg1])++
        uint256(sub_cbd7a6b8[arg1][uint256(sub_cbd7a6b8[arg1])]) = msg.sender or Mask(96, 160, uint256(sub_cbd7a6b8[arg1][uint256(sub_cbd7a6b8[arg1])]))
    revert with 0, 'User must have this token'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require uint8(stor10.field_160)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if not stor8[stor5[arg3]][msg.sender]:
            require msg.sender == approved[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        require arg1
        require approved[arg3]
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor3[arg3] < tokenByIndex.length
    tokenByIndex[stor3[arg3]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    stor3[stor2[stor2.length]] = stor3[arg3]
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    stor6[stor4[address(arg1)][stor4[address(arg1)]]] = stor6[arg3]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    ownerOf[arg3] = 0
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg3
    stor3[arg3] = tokenByIndex.length - 1
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0, mem[260]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require uint8(stor10.field_160)
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if not stor8[stor5[arg3]][msg.sender]:
            require msg.sender == approved[arg3]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        require arg1
        require approved[arg3]
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor3[arg3] < tokenByIndex.length
    tokenByIndex[stor3[arg3]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    stor3[stor2[stor2.length]] = stor3[arg3]
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    stor6[stor4[address(arg1)][stor4[address(arg1)]]] = stor6[arg3]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    ownerOf[arg3] = 0
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg3
    stor3[arg3] = tokenByIndex.length - 1
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
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

function sub_52b5c7ee(?) {
    if address(sub_6caf419aAddress):
        revert with 0, 'Prize must not have been claimed'
    idx = 0
    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
        require idx < tokenOfOwnerByIndex[address(msg.sender)]
        if not stor12[stor4[address(msg.sender)][idx]]:
            idx = 0
            while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                require idx < tokenOfOwnerByIndex[address(msg.sender)]
                if stor12[stor4[address(msg.sender)][idx]] == 1:
                    idx = 0
                    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                        require idx < tokenOfOwnerByIndex[address(msg.sender)]
                        if stor12[stor4[address(msg.sender)][idx]] == 2:
                            idx = 0
                            while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                                require idx < tokenOfOwnerByIndex[address(msg.sender)]
                                if stor12[stor4[address(msg.sender)][idx]] == 3:
                                    idx = 0
                                    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                                        require idx < tokenOfOwnerByIndex[address(msg.sender)]
                                        if stor12[stor4[address(msg.sender)][idx]] == 4:
                                            idx = 0
                                            while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                                                require idx < tokenOfOwnerByIndex[address(msg.sender)]
                                                if stor12[stor4[address(msg.sender)][idx]] == 4:
                                                    idx = 0
                                                    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
                                                        require idx < tokenOfOwnerByIndex[address(msg.sender)]
                                                        if stor12[stor4[address(msg.sender)][idx]] != 4:
                                                            mem[0] = msg.sender
                                                            mem[32] = 4
                                                            idx = idx + 1
                                                            continue 
                                                        uint256(stor17) = msg.sender or Mask(96, 160, uint256(stor17))
                                                        if not stor15[address(msg.sender)]:
                                                            sub_91f009cf++
                                                            stor15[address(msg.sender)] = 1
                                                        if eth.balance(this.address) < 10^18:
                                                            call msg.sender with:
                                                               value eth.balance(this.address) wei
                                                                 gas 2300 * is_zero(value) wei
                                                        else:
                                                            call msg.sender with:
                                                               value 10^18 wei
                                                                 gas 0 wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'User must have token 6'
                                                mem[0] = msg.sender
                                                mem[32] = 4
                                                idx = idx + 1
                                                continue 
                                            revert with 0, 'User must have token 5'
                                        mem[0] = msg.sender
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                    revert with 0, 'User must have token 4'
                                mem[0] = msg.sender
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                            revert with 0, 'User must have token 3'
                        mem[0] = msg.sender
                        mem[32] = 4
                        idx = idx + 1
                        continue 
                    revert with 0, 'User must have token 2'
                mem[0] = msg.sender
                mem[32] = 4
                idx = idx + 1
                continue 
            revert with 0, 'User must have token 1'
        mem[0] = msg.sender
        mem[32] = 4
        idx = idx + 1
        continue 
    revert with 0, 'User must have token 0'
}



}
