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

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
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
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function mintBatch(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require msg.sender
        require not ownerOf[cd[((32 * idx) + arg1 + 36)]]
        ownerOf[cd[((32 * idx) + arg1 + 36)]] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        emit Transfer(0, msg.sender, cd[((32 * idx) + arg1 + 36)]);
        stor6[cd[((32 * idx) + arg1 + 36)]] = tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 8
        stor8[cd[((32 * idx) + arg1 + 36)]] = tokenByIndex.length
        tokenByIndex.length++
        mem[0] = 7
        tokenByIndex[tokenByIndex.length] = cd[((32 * idx) + arg1 + 36)]
        idx = idx + 1
        continue 
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
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
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
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
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
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function sub_f9f22dbc(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require msg.sender == owner
    if not address(cd[4]):
        revert with 0, 'Cannot transfer to 0x0'
    mem[128] = cd[36]
    mem[96] = 32
    mem[64] = 160
    idx = 0
    while idx < ('cd', 68).length:
        require ownerOf[cd[((32 * idx) + cd[68] + 36)]]
        require ownerOf[cd[((32 * idx) + cd[68] + 36)]]
        if msg.sender == ownerOf[cd[((32 * idx) + cd[68] + 36)]]:
            require ownerOf[cd[((32 * idx) + cd[68] + 36)]] == msg.sender
            require address(cd[4])
            if not approved[cd[((32 * idx) + cd[68] + 36)]]:
                require 1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)]--
                require balanceOf[address(cd[4])] + 1 >= balanceOf[address(cd[4])]
                balanceOf[address(cd[4])]++
                ownerOf[cd[((32 * idx) + cd[68] + 36)]] = address(cd[4])
                emit Transfer(msg.sender, address(cd[4]), cd[((32 * idx) + cd[68] + 36)]);
                require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
                if tokenOfOwnerByIndex[address(msg.sender)] - 1 == stor6[cd[((32 * idx) + cd[68] + 36)]]:
                    tokenOfOwnerByIndex[address(msg.sender)]--
                    if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _595 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _595 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _595 + 164] = mem[floor32(mem[96]) + _595 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _595 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                        while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _1041 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _1041 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _1041 + 164] = mem[floor32(mem[96]) + _1041 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _1041 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
                    require stor6[cd[((32 * idx) + cd[68] + 36)]] < tokenOfOwnerByIndex[address(msg.sender)]
                    tokenOfOwnerByIndex[address(msg.sender)][stor6[cd[((32 * idx) + cd[68] + 36)]]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
                    stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[cd[((32 * idx) + cd[68] + 36)]]
                    tokenOfOwnerByIndex[address(msg.sender)]--
                    if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _625 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _625 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _625 + 164] = mem[floor32(mem[96]) + _625 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _625 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                        while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _1044 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _1044 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _1044 + 164] = mem[floor32(mem[96]) + _1044 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _1044 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                approved[cd[((32 * idx) + cd[68] + 36)]] = 0
                require 1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)]--
                require balanceOf[address(cd[4])] + 1 >= balanceOf[address(cd[4])]
                balanceOf[address(cd[4])]++
                ownerOf[cd[((32 * idx) + cd[68] + 36)]] = address(cd[4])
                emit Transfer(msg.sender, address(cd[4]), cd[((32 * idx) + cd[68] + 36)]);
                require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
                if tokenOfOwnerByIndex[address(msg.sender)] - 1 == stor6[cd[((32 * idx) + cd[68] + 36)]]:
                    tokenOfOwnerByIndex[address(msg.sender)]--
                    if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _601 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _601 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _601 + 164] = mem[floor32(mem[96]) + _601 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _601 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                        while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _1047 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _1047 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _1047 + 164] = mem[floor32(mem[96]) + _1047 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _1047 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
                    require stor6[cd[((32 * idx) + cd[68] + 36)]] < tokenOfOwnerByIndex[address(msg.sender)]
                    tokenOfOwnerByIndex[address(msg.sender)][stor6[cd[((32 * idx) + cd[68] + 36)]]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
                    stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[cd[((32 * idx) + cd[68] + 36)]]
                    tokenOfOwnerByIndex[address(msg.sender)]--
                    if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _630 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _630 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _630 + 164] = mem[floor32(mem[96]) + _630 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _630 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                        while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _1050 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _1050 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _1050 + 164] = mem[floor32(mem[96]) + _1050 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _1050 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        if approved[cd[((32 * idx) + cd[68] + 36)]] == msg.sender:
            require ownerOf[cd[((32 * idx) + cd[68] + 36)]]
            require ownerOf[cd[((32 * idx) + cd[68] + 36)]] == msg.sender
            require address(cd[4])
            if not approved[cd[((32 * idx) + cd[68] + 36)]]:
                require 1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)]--
                require balanceOf[address(cd[4])] + 1 >= balanceOf[address(cd[4])]
                balanceOf[address(cd[4])]++
                ownerOf[cd[((32 * idx) + cd[68] + 36)]] = address(cd[4])
                emit Transfer(msg.sender, address(cd[4]), cd[((32 * idx) + cd[68] + 36)]);
                require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
                if tokenOfOwnerByIndex[address(msg.sender)] - 1 == stor6[cd[((32 * idx) + cd[68] + 36)]]:
                    tokenOfOwnerByIndex[address(msg.sender)]--
                    if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _673 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _673 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _673 + 164] = mem[floor32(mem[96]) + _673 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _673 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                        while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _1053 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _1053 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _1053 + 164] = mem[floor32(mem[96]) + _1053 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _1053 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
                    require stor6[cd[((32 * idx) + cd[68] + 36)]] < tokenOfOwnerByIndex[address(msg.sender)]
                    tokenOfOwnerByIndex[address(msg.sender)][stor6[cd[((32 * idx) + cd[68] + 36)]]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
                    stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[cd[((32 * idx) + cd[68] + 36)]]
                    tokenOfOwnerByIndex[address(msg.sender)]--
                    if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _727 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _727 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _727 + 164] = mem[floor32(mem[96]) + _727 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _727 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                        while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _1056 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _1056 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _1056 + 164] = mem[floor32(mem[96]) + _1056 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _1056 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                approved[cd[((32 * idx) + cd[68] + 36)]] = 0
                require 1 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)]--
                require balanceOf[address(cd[4])] + 1 >= balanceOf[address(cd[4])]
                balanceOf[address(cd[4])]++
                ownerOf[cd[((32 * idx) + cd[68] + 36)]] = address(cd[4])
                emit Transfer(msg.sender, address(cd[4]), cd[((32 * idx) + cd[68] + 36)]);
                require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
                if tokenOfOwnerByIndex[address(msg.sender)] - 1 == stor6[cd[((32 * idx) + cd[68] + 36)]]:
                    tokenOfOwnerByIndex[address(msg.sender)]--
                    if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _679 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _679 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _679 + 164] = mem[floor32(mem[96]) + _679 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _679 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                        while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _1059 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _1059 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _1059 + 164] = mem[floor32(mem[96]) + _1059 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _1059 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
                    require stor6[cd[((32 * idx) + cd[68] + 36)]] < tokenOfOwnerByIndex[address(msg.sender)]
                    tokenOfOwnerByIndex[address(msg.sender)][stor6[cd[((32 * idx) + cd[68] + 36)]]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
                    stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[cd[((32 * idx) + cd[68] + 36)]]
                    tokenOfOwnerByIndex[address(msg.sender)]--
                    if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _732 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _732 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _732 + 164] = mem[floor32(mem[96]) + _732 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _732 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                    else:
                        s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                        while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                        mem[32] = 5
                        tokenOfOwnerByIndex[address(cd[4])]++
                        mem[0] = sha3(address(cd[4]), 5)
                        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                        if ext_code.size(address(cd[4])) > 0:
                            _1062 = mem[64]
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            while s < mem[96]:
                                mem[s + mem[64] + 164] = mem[s + 128]
                                s = s + 32
                                continue 
                            if not mem[96] % 32:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len mem[96] + _1062 + -mem[64] + 160]
                            else:
                                mem[floor32(mem[96]) + _1062 + 164] = mem[floor32(mem[96]) + _1062 + -(mem[96] % 32) + 196 len mem[96] % 32]
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len floor32(mem[96]) + _1062 + -mem[64] + 192]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        require stor4[stor1[cd[((32 * idx) + cd[68] + 36)]]][address(msg.sender)]
        require ownerOf[cd[((32 * idx) + cd[68] + 36)]]
        require ownerOf[cd[((32 * idx) + cd[68] + 36)]] == msg.sender
        require address(cd[4])
        if not approved[cd[((32 * idx) + cd[68] + 36)]]:
            require 1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)]--
            require balanceOf[address(cd[4])] + 1 >= balanceOf[address(cd[4])]
            balanceOf[address(cd[4])]++
            ownerOf[cd[((32 * idx) + cd[68] + 36)]] = address(cd[4])
            emit Transfer(msg.sender, address(cd[4]), cd[((32 * idx) + cd[68] + 36)]);
            require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
            if tokenOfOwnerByIndex[address(msg.sender)] - 1 == stor6[cd[((32 * idx) + cd[68] + 36)]]:
                tokenOfOwnerByIndex[address(msg.sender)]--
                if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                    stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                    mem[32] = 5
                    tokenOfOwnerByIndex[address(cd[4])]++
                    mem[0] = sha3(address(cd[4]), 5)
                    tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                    if ext_code.size(address(cd[4])) > 0:
                        _705 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        while s < mem[96]:
                            mem[s + mem[64] + 164] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not mem[96] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[96] + _705 + -mem[64] + 160]
                        else:
                            mem[floor32(mem[96]) + _705 + 164] = mem[floor32(mem[96]) + _705 + -(mem[96] % 32) + 196 len mem[96] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[96]) + _705 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                else:
                    s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                    while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                    mem[32] = 5
                    tokenOfOwnerByIndex[address(cd[4])]++
                    mem[0] = sha3(address(cd[4]), 5)
                    tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                    if ext_code.size(address(cd[4])) > 0:
                        _1065 = mem[64]
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = mem[96]
                        s = 0
                        while s < mem[96]:
                            mem[s + mem[64] + 164] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not mem[96] % 32:
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[96] + _1065 + -mem[64] + 160]
                        else:
                            mem[floor32(mem[96]) + _1065 + 164] = mem[floor32(mem[96]) + _1065 + -(mem[96] % 32) + 196 len mem[96] % 32]
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[96]) + _1065 + -mem[64] + 192]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
            require stor6[cd[((32 * idx) + cd[68] + 36)]] < tokenOfOwnerByIndex[address(msg.sender)]
            tokenOfOwnerByIndex[address(msg.sender)][stor6[cd[((32 * idx) + cd[68] + 36)]]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
            stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[cd[((32 * idx) + cd[68] + 36)]]
            tokenOfOwnerByIndex[address(msg.sender)]--
            if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                mem[32] = 5
                tokenOfOwnerByIndex[address(cd[4])]++
                mem[0] = sha3(address(cd[4]), 5)
                tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                if ext_code.size(address(cd[4])) > 0:
                    _765 = mem[64]
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[96]
                    s = 0
                    while s < mem[96]:
                        mem[s + mem[64] + 164] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not mem[96] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[96] + _765 + -mem[64] + 160]
                    else:
                        mem[floor32(mem[96]) + _765 + 164] = mem[floor32(mem[96]) + _765 + -(mem[96] % 32) + 196 len mem[96] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[96]) + _765 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
            while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
            mem[32] = 5
            tokenOfOwnerByIndex[address(cd[4])]++
            mem[0] = sha3(address(cd[4]), 5)
            tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
            if ext_code.size(address(cd[4])) <= 0:
                idx = idx + 1
                continue 
            _1068 = mem[64]
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = mem[96]
            _1070 = mem[96]
            s = 0
            while s < mem[96]:
                mem[s + mem[64] + 164] = mem[s + 128]
                s = s + 32
                continue 
            if not mem[96] % 32:
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[96] + _1068 + -mem[64] + 160]
            else:
                mem[floor32(mem[96]) + _1068 + 164] = mem[floor32(mem[96]) + _1068 + -(mem[96] % 32) + 196 len mem[96] % 32]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len floor32(mem[96]) + _1068 + -mem[64] + 192]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            s = ceil32(_1070) + 1
            continue 
        approved[cd[((32 * idx) + cd[68] + 36)]] = 0
        require 1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]--
        require balanceOf[address(cd[4])] + 1 >= balanceOf[address(cd[4])]
        balanceOf[address(cd[4])]++
        ownerOf[cd[((32 * idx) + cd[68] + 36)]] = address(cd[4])
        emit Transfer(msg.sender, address(cd[4]), cd[((32 * idx) + cd[68] + 36)]);
        require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
        if tokenOfOwnerByIndex[address(msg.sender)] - 1 == stor6[cd[((32 * idx) + cd[68] + 36)]]:
            tokenOfOwnerByIndex[address(msg.sender)]--
            if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
                stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                mem[32] = 5
                tokenOfOwnerByIndex[address(cd[4])]++
                mem[0] = sha3(address(cd[4]), 5)
                tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                if ext_code.size(address(cd[4])) > 0:
                    _711 = mem[64]
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[96]
                    s = 0
                    while s < mem[96]:
                        mem[s + mem[64] + 164] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not mem[96] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[96] + _711 + -mem[64] + 160]
                    else:
                        mem[floor32(mem[96]) + _711 + 164] = mem[floor32(mem[96]) + _711 + -(mem[96] % 32) + 196 len mem[96] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[96]) + _711 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            else:
                s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
                while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
                mem[32] = 5
                tokenOfOwnerByIndex[address(cd[4])]++
                mem[0] = sha3(address(cd[4]), 5)
                tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
                if ext_code.size(address(cd[4])) > 0:
                    _1071 = mem[64]
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = mem[96]
                    s = 0
                    while s < mem[96]:
                        mem[s + mem[64] + 164] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not mem[96] % 32:
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[96] + _1071 + -mem[64] + 160]
                    else:
                        mem[floor32(mem[96]) + _1071 + 164] = mem[floor32(mem[96]) + _1071 + -(mem[96] % 32) + 196 len mem[96] % 32]
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[96]) + _1071 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        require stor6[cd[((32 * idx) + cd[68] + 36)]] < tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][stor6[cd[((32 * idx) + cd[68] + 36)]]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
        stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[cd[((32 * idx) + cd[68] + 36)]]
        tokenOfOwnerByIndex[address(msg.sender)]--
        if tokenOfOwnerByIndex[address(msg.sender)] <= tokenOfOwnerByIndex[address(msg.sender)] - 1:
            stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
            mem[32] = 5
            tokenOfOwnerByIndex[address(cd[4])]++
            mem[0] = sha3(address(cd[4]), 5)
            tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
            if ext_code.size(address(cd[4])) > 0:
                _770 = mem[64]
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = mem[96]
                s = 0
                while s < mem[96]:
                    mem[s + mem[64] + 164] = mem[s + 128]
                    s = s + 32
                    continue 
                if not mem[96] % 32:
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[96] + _770 + -mem[64] + 160]
                else:
                    mem[floor32(mem[96]) + _770 + 164] = mem[floor32(mem[96]) + _770 + -(mem[96] % 32) + 196 len mem[96] % 32]
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(mem[96]) + _770 + -mem[64] + 192]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        s = tokenOfOwnerByIndex[address(msg.sender)] + sha3(sha3(address(msg.sender), 5)) - 1
        while sha3(sha3(address(msg.sender), 5)) + tokenOfOwnerByIndex[address(msg.sender)] > s:
            stor[s] = 0
            s = s + 1
            continue 
        stor6[cd[((32 * idx) + cd[68] + 36)]] = tokenOfOwnerByIndex[address(cd[4])]
        mem[32] = 5
        tokenOfOwnerByIndex[address(cd[4])]++
        mem[0] = sha3(address(cd[4]), 5)
        tokenOfOwnerByIndex[address(cd[4])][tokenOfOwnerByIndex[address(cd[4])]] = cd[((32 * idx) + cd[68] + 36)]
        if ext_code.size(address(cd[4])) <= 0:
            idx = idx + 1
            continue 
        _1074 = mem[64]
        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = mem[96]
        _1076 = mem[96]
        s = 0
        while s < mem[96]:
            mem[s + mem[64] + 164] = mem[s + 128]
            s = s + 32
            continue 
        if not mem[96] % 32:
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[96] + _1074 + -mem[64] + 160]
        else:
            mem[floor32(mem[96]) + _1074 + 164] = mem[floor32(mem[96]) + _1074 + -(mem[96] % 32) + 196 len mem[96] % 32]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(mem[96]) + _1074 + -mem[64] + 192]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
        s = ceil32(_1076) + 1
        continue 
}



}
