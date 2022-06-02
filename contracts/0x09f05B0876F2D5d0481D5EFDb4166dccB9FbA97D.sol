contract main {




// =====================  Runtime code  =====================


#
#  - sub_d5e871fc(?)
#
address owner;
array of uint256 totalVoter;
array of uint256 sub_b6d3fd02;
mapping of struct balanceOf;
array of uint256 stor4;
mapping of address stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of address stor8;
mapping of struct stor9;
array of struct winners;
array of struct addresstotal;
uint256 stor13;
uint256 sub_6edf7283;
uint256 sub_7eccfa93;
uint256 totalplayers;
uint256 ids;
uint256 fee;
uint256 createTime;
uint256 sub_685b9740;
uint256 decimals;
uint8 started;
uint256 sub_e3f9f3e4;
uint256 sub_868f2956;
address sub_30aad5d0Address;
array of struct sub_048e6282;
address stor27;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386056;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386057;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386058;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386059;

function sub_048e6282(?) {
    require arg1 < sub_048e6282.length
    return address(sub_048e6282[arg1].field_0)
}

function getaddresstotal(uint256 arg1) {
    require arg1 < addresstotal.length
    return uint256(addresstotal[arg1].field_1024)
}

function totalplayers() {
    return totalplayers
}

function started() {
    return bool(started)
}

function sub_30aad5d0(?) {
    return sub_30aad5d0Address
}

function decimals() {
    return decimals
}

function createTime() {
    return createTime
}

function sub_685b9740(?) {
    return sub_685b9740
}

function sub_6edf7283(?) {
    return sub_6edf7283
}

function balanceOf(address arg1) {
    return uint256(balanceOf[address(arg1)].field_0)
}

function sub_7eccfa93(?) {
    return sub_7eccfa93
}

function sub_868f2956(?) {
    return sub_868f2956
}

function getTotalVoter(address arg1) {
    return totalVoter[address(arg1)]
}

function owner() {
    return owner
}

function winners(uint256 arg1) {
    require arg1 < winners.length
    return uint256(winners[arg1].field_0), uint256(winners[arg1].field_256)
}

function sub_b6d3fd02(?) {
    return sub_b6d3fd02[address(arg1)][arg2]
}

function voters(uint256 arg1) {
    require arg1 < addresstotal.length
    return uint256(addresstotal[arg1].field_0), 
           uint256(addresstotal[arg1].field_256),
           uint256(addresstotal[arg1].field_512),
           uint256(addresstotal[arg1].field_1024)
}

function fee() {
    return fee
}

function sub_e3f9f3e4(?) {
    return sub_e3f9f3e4
}

function ids() {
    return ids
}

function _fallback() payable {
    revert
}

function setTime(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    require started
    sub_685b9740 = arg1
}

function sub_ecfc4dd3(?) {
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    require arg1
    decimals = arg2
    stor27 = arg1
}

function setFee(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    fee = arg1
    emit 0x5c7b4923: block.timestamp, arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xeba83e7c: eth.balance(this.address)
}

function sub_250a8da1(?) {
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    require not started
    require arg2
    stor27 = arg2
    decimals = arg3
    createTime = block.timestamp
    sub_685b9740 = arg1
    require sub_6edf7283 + 1 >= sub_6edf7283
    sub_6edf7283++
    started = 1
    sub_7eccfa93 = 0
    emit 0xca0659ce: 1, sub_6edf7283 + 1
}

function sub_ae0ef3f5(?) {
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    require started
    require arg2 < addresstotal.length
    require arg1 + uint256(addresstotal[arg2].field_512) >= uint256(addresstotal[arg2].field_512)
    require arg2 < addresstotal.length
    uint256(addresstotal[arg2].field_512) += arg1
    require arg1 + uint256(balanceOf[stor0].field_0) >= uint256(balanceOf[stor0].field_0)
    uint256(balanceOf[stor0].field_0) += arg1
    emit 0xda7e54d1: arg2, arg1
}

function sub_1cdd34e6(?) {
    require arg1 <= uint256(balanceOf[msg.sender].field_0)
    require arg1 <= uint256(balanceOf[msg.sender].field_0)
    uint256(balanceOf[msg.sender].field_0) -= arg1
    if not arg1 / 10:
        require ext_code.size(stor27)
        call stor27.0x23b872dd with:
             gas gas_remaining wei
            args owner, msg.sender, 0
    else:
        require 10^decimals * arg1 / 10 / arg1 / 10 == 10^decimals
        require ext_code.size(stor27)
        call stor27.0x23b872dd with:
             gas gas_remaining wei
            args owner, msg.sender, 10^decimals * arg1 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xa0b676c1: arg1, 1, msg.sender
}

function sub_19ac547b(?) {
    if not sub_048e6282.length:
        mem[(32 * sub_048e6282.length) + 128] = 32
        mem[(32 * sub_048e6282.length) + 160] = sub_048e6282.length
        mem[(32 * sub_048e6282.length) + 192 len floor32(sub_048e6282.length)] = mem[128 len floor32(sub_048e6282.length)]
        return memory
          from (32 * sub_048e6282.length) + 128
           len (96 * sub_048e6282.length) + 64
    mem[128] = address(sub_048e6282.field_0)
    idx = 128
    s = 0
    while (32 * sub_048e6282.length) + 96 > idx:
        mem[idx + 32] = address(sub_048e6282[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_048e6282.length) + 192 len floor32(sub_048e6282.length)] = mem[128 len floor32(sub_048e6282.length)]
    return Array(len=sub_048e6282.length, data=mem[128 len floor32(sub_048e6282.length)], mem[(32 * sub_048e6282.length) + floor32(sub_048e6282.length) + 192 len (32 * sub_048e6282.length) - floor32(sub_048e6282.length)]), 
}

function sub_7aa5ea31(?) {
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    mem[128] = arg1
    mem[160] = 0
    mem[192] = 96
    mem[224] = 0
    addresstotal.length++
    uint256(addresstotal[addresstotal.length].field_0) = ids
    storDF69[stor12.length] = arg1
    storDF69[stor12.length] = 0
    storDF69[stor12.length] = ids
    if not ids:
        idx = 0
        while storDF69[stor12.length] > idx:
            address(stor[idx + sha3((5 * stor12.length) - 0x209699368efae3c2ab13a6e9d9f9aceb6c5aebfb5ffd7bd0a9ff6281a30b5736)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ids) + 128 > idx:
            address(stor[s + sha3((5 * stor12.length) - 0x209699368efae3c2ab13a6e9d9f9aceb6c5aebfb5ffd7bd0a9ff6281a30b5736)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ids) + 31) >> 5
        while storDF69[stor12.length] > idx:
            address(stor[idx + sha3((5 * stor12.length) - 0x209699368efae3c2ab13a6e9d9f9aceb6c5aebfb5ffd7bd0a9ff6281a30b5736)]) = 0
            idx = idx + 1
            continue 
    storDF69[stor12.length] = 0
    require ids + 1 >= ids
    ids++
    emit 0x19daed4f: ids - 1, arg1, 0, 0
}

function sub_a3e6b589(?) {
    if not uint256(stor9[address(arg1)].field_0):
        mem[(32 * uint256(stor9[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(stor9[address(arg1)].field_0)) + 160] = uint256(stor9[address(arg1)].field_0)
        mem[(32 * uint256(stor9[address(arg1)].field_0)) + 192 len floor32(uint256(stor9[address(arg1)].field_0))] = mem[128 len floor32(uint256(stor9[address(arg1)].field_0))]
        return memory
          from (32 * uint256(stor9[address(arg1)].field_0)) + 128
           len (96 * uint256(stor9[address(arg1)].field_0)) + 64
    mem[128] = address(stor9[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor9[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = address(stor9[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor9[address(arg1)].field_0)) + 192 len floor32(uint256(stor9[address(arg1)].field_0))] = mem[128 len floor32(uint256(stor9[address(arg1)].field_0))]
    return Array(len=uint256(stor9[address(arg1)].field_0), data=mem[128 len floor32(uint256(stor9[address(arg1)].field_0))], mem[(32 * uint256(stor9[address(arg1)].field_0)) + floor32(uint256(stor9[address(arg1)].field_0)) + 192 len (32 * uint256(stor9[address(arg1)].field_0)) - floor32(uint256(stor9[address(arg1)].field_0))]), 
}

function sub_fad4da9f(?) {
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    require arg2 <= uint256(balanceOf[stor0].field_0)
    if not arg2:
        require sub_7eccfa93 >= sub_7eccfa93
    else:
        require 2 * arg2 / arg2 == 2
        require (2 * arg2) + sub_7eccfa93 >= sub_7eccfa93
        sub_7eccfa93 += 2 * arg2
    require arg2 + uint256(balanceOf[address(arg1)].field_0) >= uint256(balanceOf[address(arg1)].field_0)
    uint256(balanceOf[address(arg1)].field_0) += arg2
    if totalplayers:
        idx = 0
        while idx < totalplayers:
            mem[0] = stor5[idx]
            mem[32] = 1
            if not totalVoter[stor5[idx]]:
                if idx + 1 >= idx:
                    idx = idx + 1
                    continue 
            else:
                if not arg2:
                    if uint256(balanceOf[stor0].field_0):
                        if (0 / uint256(balanceOf[stor0].field_0)) + uint256(balanceOf[stor5[idx]].field_0) >= uint256(balanceOf[stor5[idx]].field_0):
                            mem[0] = stor5[idx]
                            mem[32] = 3
                            uint256(balanceOf[stor5[idx]].field_0) += 0 / uint256(balanceOf[stor0].field_0)
                            if idx + 1 >= idx:
                                idx = idx + 1
                                continue 
                else:
                    if totalVoter[stor5[idx]] * arg2 / arg2 == totalVoter[stor5[idx]]:
                        if uint256(balanceOf[stor0].field_0):
                            if (totalVoter[stor5[idx]] * arg2 / uint256(balanceOf[stor0].field_0)) + uint256(balanceOf[stor5[idx]].field_0) >= uint256(balanceOf[stor5[idx]].field_0):
                                mem[0] = stor5[idx]
                                mem[32] = 3
                                uint256(balanceOf[stor5[idx]].field_0) += totalVoter[stor5[idx]] * arg2 / uint256(balanceOf[stor0].field_0)
                                if idx + 1 >= idx:
                                    idx = idx + 1
                                    continue 
            revert
    emit 0xf7350dda: block.timestamp, arg2, totalplayers, arg1
}

function sub_3470c8a4(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        if owner != msg.sender:
            revert with 0, 'Have no legal powerd'
        _34 = mem[64]
        mem[64] = mem[64] + 160
        mem[_34] = ids
        mem[_34 + 32] = _29
        mem[_34 + 64] = 0
        mem[_34 + 96] = 96
        mem[_34 + 128] = 0
        addresstotal.length++
        uint256(addresstotal[addresstotal.length].field_0) = ids
        storDF69[stor12.length] = _29
        storDF69[stor12.length] = 0
        storDF69[stor12.length] = mem[96]
        mem[0] = (5 * addresstotal.length) - 0x209699368efae3c2ab13a6e9d9f9aceb6c5aebfb5ffd7bd0a9ff6281a30b5736
        if not mem[96]:
            s = sha3((5 * addresstotal.length) - 0x209699368efae3c2ab13a6e9d9f9aceb6c5aebfb5ffd7bd0a9ff6281a30b5736)
            while sha3((5 * addresstotal.length) - 0x209699368efae3c2ab13a6e9d9f9aceb6c5aebfb5ffd7bd0a9ff6281a30b5736) + storDF69[stor12.length] > s:
                address(stor[s]) = 0
                s = s + 1
                continue 
        else:
            t = sha3((5 * addresstotal.length) - 0x209699368efae3c2ab13a6e9d9f9aceb6c5aebfb5ffd7bd0a9ff6281a30b5736)
            s = 128
            while (32 * mem[96]) + 128 > s:
                address(stor[t]) = mem[s + 12 len 20]
                t = t + 1
                s = s + 32
                continue 
            s = sha3((5 * addresstotal.length) - 0x209699368efae3c2ab13a6e9d9f9aceb6c5aebfb5ffd7bd0a9ff6281a30b5736) + (Mask(251, 0, (32 * mem[96]) + 31) >> 5)
            while sha3((5 * addresstotal.length) - 0x209699368efae3c2ab13a6e9d9f9aceb6c5aebfb5ffd7bd0a9ff6281a30b5736) + storDF69[stor12.length] > s:
                address(stor[s]) = 0
                s = s + 1
                continue 
        storDF69[stor12.length] = 0
        require ids + 1 >= ids
        ids++
        mem[mem[64]] = ids - 1
        mem[mem[64] + 32] = _29
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 0
        emit 0x19daed4f: ids - 1, _29, 0, 0
        require idx + 1 >= idx
        idx = idx + 1
        continue 
}

function giveToVoter(uint256 arg1, uint256 arg2) {
    require started
    require owner != msg.sender
    require sub_685b9740 + createTime >= createTime
    require sub_685b9740 + createTime > block.timestamp
    require arg2 <= ids
    if msg.sender == owner:
        revert with 0, 'owner Can't vote'
    if arg1 > uint256(balanceOf[msg.sender].field_0):
        revert with 0, 'balances too low'
    require arg1 <= uint256(balanceOf[msg.sender].field_0)
    uint256(balanceOf[msg.sender].field_0) -= arg1
    require arg1 + sub_b6d3fd02[msg.sender][arg2] >= sub_b6d3fd02[msg.sender][arg2]
    sub_b6d3fd02[msg.sender][arg2] += arg1
    if not stor6[msg.sender][arg2]:
        require arg2 < addresstotal.length
        uint256(addresstotal[arg2].field_768)++
        uint256(stor[sha3((5 * arg2) + ('name', 'addresstotal', 12) + 3) + uint256(addresstotal[arg2].field_768)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((5 * arg2) + ('name', 'addresstotal', 12) + 3) + uint256(addresstotal[arg2].field_768)].field_0))
        require uint256(addresstotal[arg2].field_1024) + 1 >= uint256(addresstotal[arg2].field_1024)
        require arg2 < addresstotal.length
        uint256(addresstotal[arg2].field_1024)++
    if stor8[msg.sender]:
        if not arg1:
            require uint256(balanceOf[stor8[msg.sender]].field_0) >= uint256(balanceOf[stor8[msg.sender]].field_0)
        else:
            require arg1 / arg1 == 1
            require (arg1 / 10) + uint256(balanceOf[stor8[msg.sender]].field_0) >= uint256(balanceOf[stor8[msg.sender]].field_0)
            uint256(balanceOf[stor8[msg.sender]].field_0) += arg1 / 10
        if not arg1:
            require sub_7eccfa93 >= sub_7eccfa93
        else:
            require arg1 / arg1 == 1
            require (arg1 / 10) + sub_7eccfa93 >= sub_7eccfa93
            sub_7eccfa93 += arg1 / 10
    require arg1 + totalVoter[msg.sender] >= totalVoter[msg.sender]
    totalVoter[msg.sender] += arg1
    require arg1 + uint256(balanceOf[stor0].field_0) >= uint256(balanceOf[stor0].field_0)
    uint256(balanceOf[stor0].field_0) += arg1
    require arg2 < addresstotal.length
    require arg1 + uint256(addresstotal[arg2].field_512) >= uint256(addresstotal[arg2].field_512)
    require arg2 < addresstotal.length
    uint256(addresstotal[arg2].field_512) += arg1
    require arg1 + stor6[msg.sender][arg2] >= stor6[msg.sender][arg2]
    stor6[msg.sender][arg2] += arg1
    emit GiveVoter(arg2, arg1, msg.sender);
}

function gameOver() {
    if owner != msg.sender:
        revert with 0, 'Have no legal powerd'
    if block.timestamp < createTime + sub_685b9740:
        revert with 0, 'Not over yet'
    if uint256(balanceOf[stor0].field_0):
        if not ids:
            if totalplayers:
                idx = 0
                while idx < totalplayers:
                    totalVoter[stor5[idx]] = 0
                    stor4[stor5[idx]] = 0
                    s = 0
                    while s < ids:
                        mem[0] = s
                        mem[32] = sha3(stor5[idx], 6)
                        stor6[stor5[idx]][s] = 0
                        require s + 1 >= s
                        s = s + 1
                        continue 
                    stor7[stor5[idx]] = 0
                    mem[0] = idx
                    mem[32] = 5
                    stor5[idx] = 0
                    if idx + 1 >= idx:
                        idx = idx + 1
                        continue 
                    revert
            require uint256(balanceOf[stor25].field_0) >= uint256(balanceOf[stor25].field_0)
        else:
            idx = 0
            while idx < ids:
                require 0 < addresstotal.length
                require idx < addresstotal.length
                mem[0] = 12
                require idx + 1 >= idx
                idx = idx + 1
                continue 
            mem[64] = 160
            require 0 < addresstotal.length
            mem[96] = uint256(addresstotal.field_256)
            mem[128] = uint256(addresstotal.field_512)
            winners.length++
            uint256(winners[winners.length].field_0) = uint256(addresstotal.field_256)
            uint256(winners[winners.length].field_256) = uint256(addresstotal.field_512)
            require 0 < addresstotal.length
            if var62008 < uint256(addresstotal.field_1024):
                require 0 < addresstotal.length
                require var66008 < uint256(addresstotal.field_768)
                require uint256(addresstotal.field_512)
                require (uint256(balanceOf[stor0].field_0) / 5) + uint255(balanceOf[stor0].field_1) >= uint255(balanceOf[stor0].field_1)
                require (uint256(balanceOf[stor0].field_0) / 5) + uint255(balanceOf[stor0].field_1) <= uint256(balanceOf[stor0].field_0)
                if not stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512):
                    require uint256(balanceOf[address(stor12[var66008 + 3].field_0)].field_0) >= uint256(balanceOf[address(stor12[var66008 + 3].field_0)].field_0)
                    mem[32] = 3
                else:
                    require (uint256(balanceOf[stor0].field_0) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint256(balanceOf[stor0].field_0) / 5 * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint255(balanceOf[stor0].field_1) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) / stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512) == uint256(balanceOf[stor0].field_0) - (uint256(balanceOf[stor0].field_0) / 5) - uint255(balanceOf[stor0].field_1)
                    require (uint256(balanceOf[stor0].field_0) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint256(balanceOf[stor0].field_0) / 5 * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint255(balanceOf[stor0].field_1) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) + uint256(balanceOf[address(stor12[var66008 + 3].field_0)].field_0) >= uint256(balanceOf[address(stor12[var66008 + 3].field_0)].field_0)
                    mem[32] = 3
                    uint256(balanceOf[address(stor12[var66008 + 3].field_0)].field_0) = (uint256(balanceOf[stor0].field_0) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint256(balanceOf[stor0].field_0) / 5 * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint255(balanceOf[stor0].field_1) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) + uint256(balanceOf[address(stor12[var66008 + 3].field_0)].field_0)
                require (uint256(balanceOf[stor0].field_0) / 5) + uint255(balanceOf[stor0].field_1) <= uint256(balanceOf[stor0].field_0)
                if not stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512):
                    require sub_7eccfa93 >= sub_7eccfa93
                else:
                    require (uint256(balanceOf[stor0].field_0) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint256(balanceOf[stor0].field_0) / 5 * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint255(balanceOf[stor0].field_1) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) / stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512) == uint256(balanceOf[stor0].field_0) - (uint256(balanceOf[stor0].field_0) / 5) - uint255(balanceOf[stor0].field_1)
                    require (uint256(balanceOf[stor0].field_0) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint256(balanceOf[stor0].field_0) / 5 * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint255(balanceOf[stor0].field_1) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) + sub_7eccfa93 >= sub_7eccfa93
                    sub_7eccfa93 = (uint256(balanceOf[stor0].field_0) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint256(balanceOf[stor0].field_0) / 5 * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) - (uint255(balanceOf[stor0].field_1) * stor6[address(stor12[var66008 + 3].field_0)][0] / uint256(addresstotal.field_512)) + sub_7eccfa93
                require var66008 + 1 >= var66008
                require 0 < addresstotal.length
                mem[0] = 12
                if var66008 + 1 < uint256(addresstotal.field_1024):
                    require 0 < addresstotal.length
                    var66006 = stor6[address(stor12[var66008 + 3].field_0)][0]
                    var66007 = address(addresstotal[var66008 + 3].field_0)
                    var66008 = var66008 + 1
                    continue 
            idx = 0
            while idx < ids:
                require idx < addresstotal.length
                mem[0] = 12
                uint256(addresstotal[idx].field_512) = 0
                require idx + 1 >= idx
                idx = idx + 1
                continue 
            if totalplayers:
                idx = 0
                while idx < totalplayers:
                    totalVoter[stor5[idx]] = 0
                    stor4[stor5[idx]] = 0
                    s = 0
                    while s < ids:
                        mem[0] = s
                        mem[32] = sha3(stor5[idx], 6)
                        stor6[stor5[idx]][s] = 0
                        require s + 1 >= s
                        s = s + 1
                        continue 
                    stor7[stor5[idx]] = 0
                    mem[0] = idx
                    mem[32] = 5
                    stor5[idx] = 0
                    if idx + 1 >= idx:
                        idx = idx + 1
                        continue 
                    revert
            require (uint256(balanceOf[stor0].field_0) / 50) + uint256(balanceOf[stor25].field_0) >= uint256(balanceOf[stor25].field_0)
            uint256(balanceOf[stor25].field_0) += uint256(balanceOf[stor0].field_0) / 50
    totalplayers = 0
    ids = 0
    sub_868f2956 = 10000
    sub_e3f9f3e4 = 100 * 10^18
    sub_30aad5d0Address = owner
    addresstotal.length = stor13
    mem[0] = 12
    if not stor13:
        idx = 0
        while sha3(12) + (5 * addresstotal.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            mem[0] = idx + sha3(mem[0]) + 3
            s = sha3(idx + sha3(mem[0]) + 3)
            while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            idx = idx + 5
            continue 
    else:
        mem[0] = 13
        s = 0
        idx = 0
        while sha3(13) + (5 * stor13) > idx + sha3(mem[0]):
            uint256(addresstotal[s].field_0) = uint256(stor[idx + sha3(mem[0])])
            uint256(addresstotal[s].field_256) = uint256(stor[idx + sha3(mem[0]) + 1])
            uint256(addresstotal[s].field_512) = uint256(stor[idx + sha3(mem[0]) + 2])
            uint256(addresstotal[s].field_768) = uint256(stor[idx + sha3(mem[0]) + 3])
            mem[0] = s + sha3(12) + 3
            if not uint256(stor[idx + sha3(s + ('name', 'addresstotal', 12) + 3)].field_768):
                t = sha3(s + sha3(12) + 3)
                while sha3(s + sha3(12) + 3) + uint256(addresstotal[s].field_768) > t:
                    address(stor[t]) = 0
                    t = t + 1
                    continue 
                uint256(addresstotal[s].field_1024) = uint256(stor[idx + sha3(s + ('name', 'addresstotal', 12) + 3)].field_1024)
            else:
                mem[0] = idx + sha3(s + sha3(12) + 3) + 3
                t = sha3(s + sha3(12) + 3)
                u = sha3(idx + sha3(idx + sha3(s + sha3(12) + 3) + 3) + 3)
                while sha3(idx + sha3(idx + sha3(s + sha3(12) + 3) + 3) + 3) + uint256(stor[idx + sha3(idx + sha3(s + ('name', 'addresstotal', 12) + 3) + 3)].field_768) > u:
                    uint256(stor[t]) = uint256(stor[u])
                    t = t + 1
                    u = u + 1
                    continue 
                u = t
                while sha3(s + sha3(12) + 3) + uint256(addresstotal[s].field_768) > u:
                    address(stor[u]) = 0
                    u = u + 1
                    continue 
                uint256(addresstotal[s].field_1024) = uint256(stor[idx + sha3(idx + sha3(s + ('name', 'addresstotal', 12) + 3) + 3)].field_1024)
            s = s + 5
            idx = idx + 5
            continue 
        idx = s
        while sha3(12) + (5 * addresstotal.length) > idx:
            uint256(stor[idx]) = 0
            totalVoter[idx] = 0
            sub_b6d3fd02[idx] = 0
            uint256(balanceOf[idx].field_0) = 0
            mem[0] = idx + 3
            s = sha3(idx + 3)
            while sha3(idx + 3) + uint256(balanceOf[idx].field_0) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            stor4[idx] = 0
            idx = idx + 5
            continue 
    uint256(balanceOf[stor0].field_0) = 0
    started = 0
    emit gameover(1);
}



}
