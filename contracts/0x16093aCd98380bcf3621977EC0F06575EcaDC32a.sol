contract main {




// =====================  Runtime code  =====================


const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000

const MAX_HALVING_ERA = 20

const HALVING_WEI = 21000000 * 10^18


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
array of uint256 tokenURI;
address owner;
address boostAddress;
uint256 rewardEra;
uint256 stor15;
mapping of address saleOf;
array of uint256 slugOf;
mapping of uint256 rewardedBoostsOf;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function rewardedBoostsOf(uint256 arg1) {
    return rewardedBoostsOf[arg1][msg.sender]
}

function totalSupply() {
    return tokenByIndex.length
}

function rewardEra() {
    return rewardEra
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function exists(uint256 arg1) {
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function saleOf(uint256 arg1) {
    return saleOf[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function boost() {
    return boostAddress
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function slugOf(uint256 arg1) {
    return slugOf[arg1][0 len slugOf[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function rewardedBoosts() {
    s = var19001
    idx = var19002
    s = var19003
    while idx < tokenByIndex.length:
        mem[0] = msg.sender
        mem[32] = sha3(tokenByIndex[idx], 18)
        require rewardedBoostsOf[stor9[idx]][msg.sender] + s >= s
        s = tokenByIndex[idx]
        idx = idx + 1
        s = rewardedBoostsOf[stor9[idx]][msg.sender] + s
        continue 
    return (var19003 + (tokenByIndex.length * stor[_15]) - (var19002 * stor[_15]))
}

function boostsUntilNextHalving() {
    if rewardEra <= 20:
        s = 0
        idx = stor15
        s = stor15
        t = rewardEra
        while idx > 0:
            require t <= 20
            if idx < stor15:
                if idx:
                    require 2^(-t + 20 / 1000) * idx / idx == 2^(-t + 20 / 1000)
                    require 2^(-t + 20 / 1000) * idx >= 0
                require idx <= idx
                require idx <= s
                if s - idx:
                    s = idx
                    idx = 0
                    s = s - idx
                    t = t
                    continue 
                s = idx
                idx = 0
                s = 21000000 * 10^18
                t = t + 1
                continue 
            if stor15:
                require 2^(-t + 20 / 1000) * stor15 / stor15 == 2^(-t + 20 / 1000)
                require 2^(-t + 20 / 1000) * stor15 >= 0
            require stor15 <= idx
            require stor15 <= s
            if s - stor15:
                s = stor15
                idx = idx - stor15
                s = s - stor15
                t = t
                continue 
            s = stor15
            idx = idx - stor15
            s = 21000000 * 10^18
            t = t + 1
            continue 
        return 0
    else:
        return 0
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function toTokenId(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length <= 0:
        revert with 0, 'String is empty.'
    if var19002 < 32:
        if var25003 >= var25001:
            mem[ceil32(arg1.length) + 128] = mem[128]
            return memory
              from ceil32(arg1.length) + 128
               len 32
    else:
        if var25003 >= 32:
            mem[ceil32(arg1.length) + 128] = mem[128]
            return memory
              from ceil32(arg1.length) + 128
               len 32
    require var27002 < arg1.length
    if 97 > mem[var29001 + 128 len 1]:
        if not var31001:
            if var31002 != 45:
                revert with 0, 'String must contain only lowercase alphabets or hyphens.'
        if arg1.length < 32:
            if var31003 + 1 >= arg1.length:
                mem[ceil32(arg1.length) + 128] = mem[128]
                return memory
                  from ceil32(arg1.length) + 128
                   len 32
        else:
            if var31003 + 1 >= 32:
                mem[ceil32(arg1.length) + 128] = mem[128]
                return memory
                  from ceil32(arg1.length) + 128
                   len 32
        require var31003 + 1 < arg1.length
        if 97 > mem[var31003 + 129 len 1]:
            var31001 = 97 <= mem[var31003 + 129 len 1]
            var31002 = mem[var31003 + 129 len 1]
            var31003 = var31003 + 1
            continue 
        var31001 = mem[var31003 + 129 len 1] <= 122
        var31002 = mem[var31003 + 129 len 1]
        var31003 = var31003 + 1
        continue 
    if not var32001:
        if var32002 != 45:
            revert with 0, 'String must contain only lowercase alphabets or hyphens.'
    if arg1.length < 32:
        if var32003 + 1 >= arg1.length:
            mem[ceil32(arg1.length) + 128] = mem[128]
            return memory
              from ceil32(arg1.length) + 128
               len 32
    else:
        if var32003 + 1 >= 32:
            mem[ceil32(arg1.length) + 128] = mem[128]
            return memory
              from ceil32(arg1.length) + 128
               len 32
    require var32003 + 1 < arg1.length
    if 97 > mem[var32003 + 129 len 1]:
        var32001 = 97 <= mem[var32003 + 129 len 1]
        var32002 = mem[var32003 + 129 len 1]
        var32003 = var32003 + 1
        continue 
    var31001 = 97 <= mem[var32003 + 129 len 1]
    var31002 = mem[var32003 + 129 len 1]
    var31003 = var32003 + 1
    continue 
}

function claimableBoostsOf(uint256 arg1) {
    if 0 < rewardedBoostsOf[arg1][msg.sender]:
        return 0, rewardEra, stor15
    require saleOf[arg1]
    require ext_code.size(saleOf[arg1])
    call saleOf[arg1].finished() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(saleOf[arg1])
    call saleOf[arg1].paymentOf(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(saleOf[arg1])
    call saleOf[arg1].0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        if rewardEra > 20:
            return 0, rewardEra, stor15
        s = 0
        idx = ext_call.return_data[0]
        s = stor15
        t = rewardEra
        while idx > 0:
            require t <= 20
            if idx < stor15:
                if idx:
                    require 2^(-t + 20 / 1000) * idx / idx == 2^(-t + 20 / 1000)
                    require 2^(-t + 20 / 1000) * idx >= 0
                require idx <= idx
                require idx <= s
                if s - idx:
                    s = idx
                    idx = 0
                    s = s - idx
                    t = t
                    continue 
                s = idx
                idx = 0
                s = 21000000 * 10^18
                t = t + 1
                continue 
            if stor15:
                require 2^(-t + 20 / 1000) * stor15 / stor15 == 2^(-t + 20 / 1000)
                require 2^(-t + 20 / 1000) * stor15 >= 0
            require stor15 <= idx
            require stor15 <= s
            if s - stor15:
                s = stor15
                idx = idx - stor15
                s = s - stor15
                t = t
                continue 
            s = stor15
            idx = idx - stor15
            s = 21000000 * 10^18
            t = t + 1
            continue 
    else:
        require ext_code.size(saleOf[arg1])
        call saleOf[arg1].0x4042b66f with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
        if rewardEra > 20:
            return 0, rewardEra, stor15
        s = 0
        idx = 2 * ext_call.return_data[0]
        s = stor15
        t = rewardEra
        while idx > 0:
            require t <= 20
            if idx < stor15:
                if idx:
                    require 2^(-t + 20 / 1000) * idx / idx == 2^(-t + 20 / 1000)
                    require 2^(-t + 20 / 1000) * idx >= 0
                require idx <= idx
                require idx <= s
                if s - idx:
                    s = idx
                    idx = 0
                    s = s - idx
                    t = t
                    continue 
                s = idx
                idx = 0
                s = 21000000 * 10^18
                t = t + 1
                continue 
            if stor15:
                require 2^(-t + 20 / 1000) * stor15 / stor15 == 2^(-t + 20 / 1000)
                require 2^(-t + 20 / 1000) * stor15 >= 0
            require stor15 <= idx
            require stor15 <= s
            if s - stor15:
                s = stor15
                idx = idx - stor15
                s = s - stor15
                t = t
                continue 
            s = stor15
            idx = idx - stor15
            s = 21000000 * 10^18
            t = t + 1
            continue 
    return 0, t, s
}

function claimBoostsOf(uint256 arg1) {
    if 0 >= rewardedBoostsOf[arg1][msg.sender]:
        require saleOf[arg1]
        require ext_code.size(saleOf[arg1])
        call saleOf[arg1].finished() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(saleOf[arg1])
        call saleOf[arg1].paymentOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(saleOf[arg1])
        call saleOf[arg1].0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            if rewardEra <= 20:
                s = 0
                idx = ext_call.return_data[0]
                s = stor15
                t = rewardEra
                while idx > 0:
                    require t <= 20
                    if idx < stor15:
                        if idx:
                            require 2^(-t + 20 / 1000) * idx / idx == 2^(-t + 20 / 1000)
                            require 2^(-t + 20 / 1000) * idx >= 0
                        require idx <= idx
                        require idx <= s
                        if s - idx:
                            s = idx
                            idx = 0
                            s = s - idx
                            t = t
                            continue 
                        s = idx
                        idx = 0
                        s = 21000000 * 10^18
                        t = t + 1
                        continue 
                    if stor15:
                        require 2^(-t + 20 / 1000) * stor15 / stor15 == 2^(-t + 20 / 1000)
                        require 2^(-t + 20 / 1000) * stor15 >= 0
                    require stor15 <= idx
                    require stor15 <= s
                    if s - stor15:
                        s = stor15
                        idx = idx - stor15
                        s = s - stor15
                        t = t
                        continue 
                    s = stor15
                    idx = idx - stor15
                    s = 21000000 * 10^18
                    t = t + 1
                    continue 
                rewardEra = t
                stor15 = s
        else:
            require ext_code.size(saleOf[arg1])
            call saleOf[arg1].0x4042b66f with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            if rewardEra <= 20:
                s = 0
                idx = 2 * ext_call.return_data[0]
                s = stor15
                t = rewardEra
                while idx > 0:
                    require t <= 20
                    if idx < stor15:
                        if idx:
                            require 2^(-t + 20 / 1000) * idx / idx == 2^(-t + 20 / 1000)
                            require 2^(-t + 20 / 1000) * idx >= 0
                        require idx <= idx
                        require idx <= s
                        if s - idx:
                            s = idx
                            idx = 0
                            s = s - idx
                            t = t
                            continue 
                        s = idx
                        idx = 0
                        s = 21000000 * 10^18
                        t = t + 1
                        continue 
                    if stor15:
                        require 2^(-t + 20 / 1000) * stor15 / stor15 == 2^(-t + 20 / 1000)
                        require 2^(-t + 20 / 1000) * stor15 >= 0
                    require stor15 <= idx
                    require stor15 <= s
                    if s - stor15:
                        s = stor15
                        idx = idx - stor15
                        s = s - stor15
                        t = t
                        continue 
                    s = stor15
                    idx = idx - stor15
                    s = 21000000 * 10^18
                    t = t + 1
                    continue 
                rewardEra = t
                stor15 = s
    rewardedBoostsOf[arg1][msg.sender] = 0
    return 1
}

function claimableBoosts() {
    s = var21001
    s = var21002
    s = var21004
    idx = var21005
    s = var21006
    t = var21007
    while idx < tokenByIndex.length:
        mem[0] = msg.sender
        mem[32] = sha3(tokenByIndex[idx], 18)
        if 0 < rewardedBoostsOf[stor9[idx]][msg.sender]:
            s = stor15
            s = rewardEra
            s = tokenByIndex[idx]
            idx = idx + 1
            s = stor15
            t = rewardEra
            continue 
        mem[0] = tokenByIndex[idx]
        mem[32] = 16
        require saleOf[stor9[idx]]
        require ext_code.size(saleOf[stor9[idx]])
        call saleOf[stor9[idx]].finished() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[100] = msg.sender
        require ext_code.size(saleOf[stor9[idx]])
        call saleOf[stor9[idx]].paymentOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(saleOf[stor9[idx]])
        call saleOf[stor9[idx]].0x8da5cb5b with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            if rewardEra > 20:
                s = stor15
                s = rewardEra
                s = tokenByIndex[idx]
                idx = idx + 1
                s = stor15
                t = rewardEra
                continue 
            t = 0
            s = ext_call.return_data[0]
            t = stor15
            u = rewardEra
            while s > 0:
                require u <= 20
                if s < stor15:
                    if s:
                        require 2^(-u + 20 / 1000) * s / s == 2^(-u + 20 / 1000)
                        require 2^(-u + 20 / 1000) * s >= 0
                    require s <= s
                    require s <= t
                    if t - s:
                        t = s
                        s = 0
                        t = t - s
                        u = u
                        continue 
                    t = s
                    s = 0
                    t = 21000000 * 10^18
                    u = u + 1
                    continue 
                if stor15:
                    require 2^(-u + 20 / 1000) * stor15 / stor15 == 2^(-u + 20 / 1000)
                    require 2^(-u + 20 / 1000) * stor15 >= 0
                require stor15 <= s
                require stor15 <= t
                if t - stor15:
                    t = stor15
                    s = s - stor15
                    t = t - stor15
                    u = u
                    continue 
                t = stor15
                s = s - stor15
                t = 21000000 * 10^18
                u = u + 1
                continue 
        else:
            require ext_code.size(saleOf[stor9[idx]])
            call saleOf[stor9[idx]].0x4042b66f with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
            if rewardEra > 20:
                s = stor15
                s = rewardEra
                s = tokenByIndex[idx]
                idx = idx + 1
                s = stor15
                t = rewardEra
                continue 
            t = 0
            s = 2 * ext_call.return_data[0]
            t = stor15
            u = rewardEra
            while s > 0:
                require u <= 20
                if s < stor15:
                    if s:
                        require 2^(-u + 20 / 1000) * s / s == 2^(-u + 20 / 1000)
                        require 2^(-u + 20 / 1000) * s >= 0
                    require s <= s
                    require s <= t
                    if t - s:
                        t = s
                        s = 0
                        t = t - s
                        u = u
                        continue 
                    t = s
                    s = 0
                    t = 21000000 * 10^18
                    u = u + 1
                    continue 
                if stor15:
                    require 2^(-u + 20 / 1000) * stor15 / stor15 == 2^(-u + 20 / 1000)
                    require 2^(-u + 20 / 1000) * stor15 >= 0
                require stor15 <= s
                require stor15 <= t
                if t - stor15:
                    t = stor15
                    s = s - stor15
                    t = t - stor15
                    u = u
                    continue 
                t = stor15
                s = s - stor15
                t = 21000000 * 10^18
                u = u + 1
                continue 
        s = t
        s = u
        s = tokenByIndex[idx]
        idx = idx + 1
        s = t
        t = u
        continue 
    return 0, t, s
}

function claimBoosts() {
    s = var21001
    idx = var21002
    while idx < tokenByIndex.length:
        if 0 >= rewardedBoostsOf[stor9[idx]][msg.sender]:
            require saleOf[stor9[idx]]
            require ext_code.size(saleOf[stor9[idx]])
            call saleOf[stor9[idx]].finished() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[100] = msg.sender
            require ext_code.size(saleOf[stor9[idx]])
            call saleOf[stor9[idx]].paymentOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(saleOf[stor9[idx]])
            call saleOf[stor9[idx]].0x8da5cb5b with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                if rewardEra <= 20:
                    t = 0
                    s = ext_call.return_data[0]
                    t = stor15
                    u = rewardEra
                    while s > 0:
                        require u <= 20
                        if s < stor15:
                            if s:
                                require 2^(-u + 20 / 1000) * s / s == 2^(-u + 20 / 1000)
                                require 2^(-u + 20 / 1000) * s >= 0
                            require s <= s
                            require s <= t
                            if t - s:
                                t = s
                                s = 0
                                t = t - s
                                u = u
                                continue 
                            t = s
                            s = 0
                            t = 21000000 * 10^18
                            u = u + 1
                            continue 
                        if stor15:
                            require 2^(-u + 20 / 1000) * stor15 / stor15 == 2^(-u + 20 / 1000)
                            require 2^(-u + 20 / 1000) * stor15 >= 0
                        require stor15 <= s
                        require stor15 <= t
                        if t - stor15:
                            t = stor15
                            s = s - stor15
                            t = t - stor15
                            u = u
                            continue 
                        t = stor15
                        s = s - stor15
                        t = 21000000 * 10^18
                        u = u + 1
                        continue 
                    rewardEra = u
                    stor15 = t
            else:
                require ext_code.size(saleOf[stor9[idx]])
                call saleOf[stor9[idx]].0x4042b66f with:
                     gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                if rewardEra <= 20:
                    t = 0
                    s = 2 * ext_call.return_data[0]
                    t = stor15
                    u = rewardEra
                    while s > 0:
                        require u <= 20
                        if s < stor15:
                            if s:
                                require 2^(-u + 20 / 1000) * s / s == 2^(-u + 20 / 1000)
                                require 2^(-u + 20 / 1000) * s >= 0
                            require s <= s
                            require s <= t
                            if t - s:
                                t = s
                                s = 0
                                t = t - s
                                u = u
                                continue 
                            t = s
                            s = 0
                            t = 21000000 * 10^18
                            u = u + 1
                            continue 
                        if stor15:
                            require 2^(-u + 20 / 1000) * stor15 / stor15 == 2^(-u + 20 / 1000)
                            require 2^(-u + 20 / 1000) * stor15 >= 0
                        require stor15 <= s
                        require stor15 <= t
                        if t - stor15:
                            t = stor15
                            s = s - stor15
                            t = t - stor15
                            u = u
                            continue 
                        t = stor15
                        s = s - stor15
                        t = 21000000 * 10^18
                        u = u + 1
                        continue 
                    rewardEra = u
                    stor15 = t
        mem[0] = msg.sender
        mem[32] = sha3(tokenByIndex[idx], 18)
        rewardedBoostsOf[stor9[idx]][msg.sender] = 0
        s = tokenByIndex[idx]
        idx = idx + 1
        continue 
    return 1
}

function mint(string arg1, address arg2, bytes arg3, bytes arg4) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    require ext_code.size(arg2)
    call arg2.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x1ffc9a700000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196] = 0xd48445ff00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg2)
    call arg2.supportsInterface(bytes4 arg1) with:
         gas gas_remaining wei
        args 0xd48445ff00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg1.length <= 0:
        revert with 0, 'String is empty.'
    if var27002 < 32:
        if var33003 < var33001:
            require var35002 < arg1.length
            if 97 > mem[var37001 + 128 len 1]:
                if not var39001:
                    if var39002 != 45:
                        revert with 0, 'String must contain only lowercase alphabets or hyphens.'
                if arg1.length < 32:
                    if var39003 + 1 < arg1.length:
                        require var39003 + 1 < arg1.length
                        if 97 > mem[var39003 + 129 len 1]:
                            var39001 = 97 <= mem[var39003 + 129 len 1]
                            var39002 = mem[var39003 + 129 len 1]
                            var39003 = var39003 + 1
                            continue 
                        var39001 = mem[var39003 + 129 len 1] <= 122
                        var39002 = mem[var39003 + 129 len 1]
                        var39003 = var39003 + 1
                        continue 
                else:
                    if var39003 + 1 < 32:
                        require var39003 + 1 < arg1.length
                        if 97 > mem[var39003 + 129 len 1]:
                            var39001 = 97 <= mem[var39003 + 129 len 1]
                            var39002 = mem[var39003 + 129 len 1]
                            var39003 = var39003 + 1
                            continue 
                        var39001 = mem[var39003 + 129 len 1] <= 122
                        var39002 = mem[var39003 + 129 len 1]
                        var39003 = var39003 + 1
                        continue 
            else:
                if not var40001:
                    if var40002 != 45:
                        revert with 0, 'String must contain only lowercase alphabets or hyphens.'
                if arg1.length < 32:
                    if var40003 + 1 < arg1.length:
                        require var40003 + 1 < arg1.length
                        if 97 > mem[var40003 + 129 len 1]:
                            var40001 = 97 <= mem[var40003 + 129 len 1]
                            var40002 = mem[var40003 + 129 len 1]
                            var40003 = var40003 + 1
                            continue 
                        var39001 = 97 <= mem[var40003 + 129 len 1]
                        var39002 = mem[var40003 + 129 len 1]
                        var39003 = var40003 + 1
                        continue 
                else:
                    if var40003 + 1 < 32:
                        require var40003 + 1 < arg1.length
                        if 97 > mem[var40003 + 129 len 1]:
                            var40001 = 97 <= mem[var40003 + 129 len 1]
                            var40002 = mem[var40003 + 129 len 1]
                            var40003 = var40003 + 1
                            continue 
                        var39001 = 97 <= mem[var40003 + 129 len 1]
                        var39002 = mem[var40003 + 129 len 1]
                        var39003 = var40003 + 1
                        continue 
    else:
        if var33003 < 32:
            require var35002 < arg1.length
            if 97 > mem[var37001 + 128 len 1]:
                if not var39001:
                    if var39002 != 45:
                        revert with 0, 'String must contain only lowercase alphabets or hyphens.'
                if arg1.length < 32:
                    if var39003 + 1 < arg1.length:
                        require var39003 + 1 < arg1.length
                        if 97 > mem[var39003 + 129 len 1]:
                            var39001 = 97 <= mem[var39003 + 129 len 1]
                            var39002 = mem[var39003 + 129 len 1]
                            var39003 = var39003 + 1
                            continue 
                        var39001 = mem[var39003 + 129 len 1] <= 122
                        var39002 = mem[var39003 + 129 len 1]
                        var39003 = var39003 + 1
                        continue 
                else:
                    if var39003 + 1 < 32:
                        require var39003 + 1 < arg1.length
                        if 97 > mem[var39003 + 129 len 1]:
                            var39001 = 97 <= mem[var39003 + 129 len 1]
                            var39002 = mem[var39003 + 129 len 1]
                            var39003 = var39003 + 1
                            continue 
                        var39001 = mem[var39003 + 129 len 1] <= 122
                        var39002 = mem[var39003 + 129 len 1]
                        var39003 = var39003 + 1
                        continue 
            else:
                if not var40001:
                    if var40002 != 45:
                        revert with 0, 'String must contain only lowercase alphabets or hyphens.'
                if arg1.length < 32:
                    if var40003 + 1 < arg1.length:
                        require var40003 + 1 < arg1.length
                        if 97 > mem[var40003 + 129 len 1]:
                            var40001 = 97 <= mem[var40003 + 129 len 1]
                            var40002 = mem[var40003 + 129 len 1]
                            var40003 = var40003 + 1
                            continue 
                        var39001 = 97 <= mem[var40003 + 129 len 1]
                        var39002 = mem[var40003 + 129 len 1]
                        var39003 = var40003 + 1
                        continue 
                else:
                    if var40003 + 1 < 32:
                        require var40003 + 1 < arg1.length
                        if 97 > mem[var40003 + 129 len 1]:
                            var40001 = 97 <= mem[var40003 + 129 len 1]
                            var40002 = mem[var40003 + 129 len 1]
                            var40003 = var40003 + 1
                            continue 
                        var39001 = 97 <= mem[var40003 + 129 len 1]
                        var39002 = mem[var40003 + 129 len 1]
                        var39003 = var40003 + 1
                        continue 
    require not saleOf[mem[128]]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = 0x6535b4a500000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 292] = arg4.length
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        require ext_code.size(arg2)
        call arg2.0x6535b4a5 with:
           value msg.value wei
             gas gas_remaining wei
            args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 292 len arg4.length + arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 96
    else:
        mem[floor32(arg4.length) + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + arg3.length + ceil32(arg1.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
        require ext_code.size(arg2)
        call arg2.0x6535b4a5 with:
           value msg.value wei
             gas gas_remaining wei
            args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 292 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    saleOf[mem[128]] = address(ext_call.return_data[0])
    slugOf[mem[128]][] = Array(len=arg1.length, data=arg1[all])
    require msg.sender
    require not ownerOf[mem[128]]
    ownerOf[mem[128]] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = mem[128]
    stor8[mem[128]] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, mem[128]);
    stor10[mem[128]] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = mem[128]
    emit Mint(mem[128], msg.sender);
}



}
