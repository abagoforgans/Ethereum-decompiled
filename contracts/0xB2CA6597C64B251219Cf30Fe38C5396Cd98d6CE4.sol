contract main {




// =====================  Runtime code  =====================


#
#  - sub_e2ff1864(?)
#
address owner;
address sub_c154c484Address;
uint256 batchSize;
uint256 sub_3a34330e;
uint256 sub_310be4ff;
uint256 sub_d44cf707;
mapping of uint256 stakes;
array of address sub_c93a633a;
mapping of uint8 stor8;
array of address stor9;
mapping of uint8 stor10;
mapping of uint256 lockedTill;
uint256 sub_627e86d2;
uint256 sub_13257358;
uint8 stor14;
uint256 sub_cabcf4cd;
uint256 sub_cd5eda14;
uint256 sub_61cab144;
uint256 rewardsBalance;
uint256 rewardsToDistribute;
array of address stor20;
address marketContractAddress;
uint8 sub_9597702c; offset 160
uint128 stor22; offset 160
address stor22;

function sub_0297a6db(?) {
    return sub_c93a633a.length
}

function rewardsBalance() {
    return rewardsBalance
}

function sub_13257358(?) {
    return sub_13257358
}

function stakes(address arg1) {
    return stakes[arg1]
}

function sub_310be4ff(?) {
    return sub_310be4ff
}

function sub_3a34330e(?) {
    return sub_3a34330e
}

function sub_61cab144(?) {
    return sub_61cab144
}

function sub_627e86d2(?) {
    return sub_627e86d2
}

function lockedTill(address arg1) {
    return lockedTill[arg1]
}

function owner() {
    return owner
}

function sub_93ce2ab2(?) {
    return bool(stor14)
}

function sub_9597702c(?) {
    return bool(sub_9597702c)
}

function marketContract() {
    return marketContractAddress
}

function sub_a5423690(?) {
    return stor9.length
}

function sub_a97613a8(?) {
    return stor20.length
}

function sub_c154c484(?) {
    return sub_c154c484Address
}

function sub_c93a633a(?) {
    require arg1 < sub_c93a633a.length
    return sub_c93a633a[arg1]
}

function sub_cabcf4cd(?) {
    return sub_cabcf4cd
}

function sub_cd5eda14(?) {
    return sub_cd5eda14
}

function sub_d44cf707(?) {
    return sub_d44cf707
}

function rewardsToDistribute() {
    return rewardsToDistribute
}

function sub_dbef8689(?) {
    return bool(stor10[arg1])
}

function sub_e73356cd(?) {
    return bool(stor8[address(arg1)])
}

function batchSize() {
    return batchSize
}

function _fallback() {
  stop
}

function sub_6429577d(?) {
    require msg.sender == owner
    require not stor14
    sub_d44cf707 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setBatchSize(uint256 arg1) {
    require msg.sender == owner
    require not stor14
    batchSize = arg1
}

function sub_5f2cdadf(?) {
    require msg.sender == owner
    emit 0xfadb7c23: arg1, bool(stor10[arg1]), arg2
    stor10[arg1] = uint8(arg2)
}

function sub_6b8cb4bb(?) {
    require msg.sender == owner
    require not stor14
    emit 0xf19b9bca: sub_13257358, arg1
    sub_13257358 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8eef505b(?) {
    require msg.sender == owner
    require arg1
    emit 0xbef6604b: sub_c154c484Address, arg1
    sub_c154c484Address = arg1
}

function changeMarket(address arg1) {
    require msg.sender == owner
    require arg1
    emit 0x2f8f6859: marketContractAddress, arg1
    marketContractAddress = arg1
}

function sub_013cdb68(?) {
    require sub_3a34330e
    if stakes[address(arg1)] / sub_3a34330e > sub_310be4ff:
        return sub_310be4ff
    return (stakes[address(arg1)] / sub_3a34330e)
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_52f11e17(?) {
    require sub_3a34330e
    if not sub_3a34330e:
        return stakes[address(arg1)]
    if stakes[address(arg1)] / sub_3a34330e > sub_310be4ff:
        if sub_3a34330e:
            if sub_3a34330e * sub_310be4ff / sub_3a34330e == sub_310be4ff:
                return (stakes[address(arg1)] - (sub_3a34330e * sub_310be4ff))
    else:
        if sub_3a34330e:
            if sub_3a34330e * stakes[address(arg1)] / sub_3a34330e / sub_3a34330e == stakes[address(arg1)] / sub_3a34330e:
                return (stakes[address(arg1)] - (sub_3a34330e * stakes[address(arg1)] / sub_3a34330e))
    revert
}

function sub_fffb5127(?) {
    require not stor14
    require stakes[address(msg.sender)] > 0
    require lockedTill[address(msg.sender)] < block.timestamp
    if marketContractAddress:
        require ext_code.size(marketContractAddress)
        call marketContractAddress.isSeller(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
    stor20.length++
    stor20[stor20.length] = msg.sender
    emit 0xfbab0005: msg.sender
}

function sub_f286543f(?) {
    require msg.sender == owner
    require arg1 > 0
    require not stor14
    require ext_code.size(address(stor22.field_0))
    call address(stor22.field_0).0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require stor9.length > 0
    require ext_code.size(address(stor22.field_0))
    call address(stor22.field_0).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    rewardsBalance += arg1
    rewardsToDistribute = rewardsBalance
    emit RewardAdded(arg1, msg.sender);
    require batchSize
    sub_cabcf4cd = stor9.length + batchSize / batchSize
    stor14 = 1
    sub_cd5eda14 = 0
    emit 0x5628086a: rewardsBalance, sub_61cab144
}

function sub_949e68ae(?) {
    require not stor14
    require sub_3a34330e
    if stakes[address(msg.sender)] / sub_3a34330e > sub_310be4ff:
        require not sub_310be4ff
    else:
        require not stakes[address(msg.sender)] / sub_3a34330e
    require stor10[arg2]
    require sub_c93a633a.length < sub_627e86d2
    require ext_code.size(address(stor22.field_0))
    call address(stor22.field_0).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * sub_3a34330e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg2:
        lockedTill[address(msg.sender)] = block.timestamp
    else:
        require arg2
        require 30 * arg2 / arg2 == 30
        if not 30 * arg2:
            lockedTill[address(msg.sender)] = block.timestamp
        else:
            require 30 * arg2
            require 720 * 24 * 3600 * arg2 / 30 * arg2 == 24 * 3600
            lockedTill[address(msg.sender)] = block.timestamp + (720 * 24 * 3600 * arg2)
    sub_c93a633a.length++
    sub_c93a633a[sub_c93a633a.length] = msg.sender
    stakes[address(msg.sender)] = arg1 * sub_3a34330e
    emit 0x9317574c: (arg1 * sub_3a34330e), msg.sender
}

function sub_b28b15b9(?) {
    require msg.sender == sub_c154c484Address
    require not stor14
    if arg2:
        require stakes[address(arg1)] > 0
    require bool(stor8[address(arg1)]) != arg2
    emit 0x73094684: bool(stor8[address(arg1)]), arg2, arg1
    if arg2:
        sub_61cab144 += stakes[address(arg1)]
        stor9.length++
        address(stor9[stor9.length]) = arg1
    else:
        sub_61cab144 -= stakes[address(arg1)]
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            if address(stor9[idx]) != arg1:
                idx = idx + 1
                continue 
            require stor9.length - 1 < stor9.length
            require idx < stor9.length
            address(stor9[idx]) = address(stor9[stor9.length])
            require stor9.length - 1 < stor9.length
            address(stor9[stor9.length]) = 0
            stor9.length--
            if stor9.length > stor9.length - 1:
                idx = sha3(9) + stor9.length - 1
                while sha3(9) + stor9.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor8[address(arg1)] = uint8(arg2)
        require stor9.length - 1 < stor9.length
        require idx < stor9.length
        address(stor9[idx]) = address(stor9[stor9.length])
        require stor9.length - 1 < stor9.length
        address(stor9[stor9.length]) = 0
        stor9.length--
        if stor9.length > stor9.length - 1:
            idx = stor9.length - 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
    stor8[address(arg1)] = uint8(arg2)
}

function claimProfit() {
    require not stor14
    require stakes[address(msg.sender)] > sub_3a34330e
    require sub_3a34330e
    if stakes[address(msg.sender)] / sub_3a34330e > sub_310be4ff:
        if not sub_3a34330e:
            stakes[address(msg.sender)] = 0
            require ext_code.size(address(stor22.field_0))
            call address(stor22.field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stakes[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit RewardWithdrawn(stakes[address(msg.sender)], msg.sender);
        else:
            require sub_3a34330e
            require sub_3a34330e * sub_310be4ff / sub_3a34330e == sub_310be4ff
            stakes[address(msg.sender)] = sub_3a34330e * sub_310be4ff
            require ext_code.size(address(stor22.field_0))
            call address(stor22.field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stakes[address(msg.sender)] - (sub_3a34330e * sub_310be4ff)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit RewardWithdrawn((stakes[address(msg.sender)] - (sub_3a34330e * sub_310be4ff)), msg.sender);
    else:
        if not sub_3a34330e:
            stakes[address(msg.sender)] = 0
            require ext_code.size(address(stor22.field_0))
            call address(stor22.field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stakes[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit RewardWithdrawn(stakes[address(msg.sender)], msg.sender);
        else:
            require sub_3a34330e
            require sub_3a34330e * stakes[address(msg.sender)] / sub_3a34330e / sub_3a34330e == stakes[address(msg.sender)] / sub_3a34330e
            stakes[address(msg.sender)] = sub_3a34330e * stakes[address(msg.sender)] / sub_3a34330e
            require ext_code.size(address(stor22.field_0))
            call address(stor22.field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stakes[address(msg.sender)] - (sub_3a34330e * stakes[address(msg.sender)] / sub_3a34330e)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit RewardWithdrawn((stakes[address(msg.sender)] - (sub_3a34330e * stakes[address(msg.sender)] / sub_3a34330e)), msg.sender);
}

function sub_1d484c1e(?) {
    if arg1 != msg.sender:
        require msg.sender == marketContractAddress
    else:
        if marketContractAddress:
            require ext_code.size(marketContractAddress)
            call marketContractAddress.isSeller(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require msg.sender == marketContractAddress
    require arg2
    require not stor14
    if not stakes[address(arg2)]:
        sub_c93a633a.length++
        sub_c93a633a[sub_c93a633a.length] = arg2
    stakes[address(arg2)] += stakes[address(arg1)]
    if lockedTill[address(arg2)] < lockedTill[address(arg1)]:
        lockedTill[address(arg2)] = lockedTill[address(arg1)]
    stakes[address(arg1)] = 0
    idx = 0
    while idx < sub_c93a633a.length:
        mem[0] = 7
        if sub_c93a633a[idx] != arg1:
            idx = idx + 1
            continue 
        require sub_c93a633a.length - 1 < sub_c93a633a.length
        require idx < sub_c93a633a.length
        sub_c93a633a[idx] = sub_c93a633a[sub_c93a633a.length]
        require sub_c93a633a.length - 1 < sub_c93a633a.length
        sub_c93a633a[sub_c93a633a.length] = 0
        sub_c93a633a.length--
        if sub_c93a633a.length > sub_c93a633a.length - 1:
            idx = sha3(7) + sub_c93a633a.length - 1
            while sha3(7) + sub_c93a633a.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        lockedTill[address(msg.sender)] = 0
        if stor8[address(arg1)]:
            require stor8[address(arg1)]
            emit 0x73094684: bool(stor8[address(arg1)]), 0, arg1
            sub_61cab144 -= stakes[address(arg1)]
            idx = 0
            while idx < stor9.length:
                mem[0] = 9
                if address(stor9[idx]) != arg1:
                    idx = idx + 1
                    continue 
                require stor9.length - 1 < stor9.length
                require idx < stor9.length
                address(stor9[idx]) = address(stor9[stor9.length])
                require stor9.length - 1 < stor9.length
                address(stor9[stor9.length]) = 0
                stor9.length--
                if stor9.length > stor9.length - 1:
                    idx = sha3(9) + stor9.length - 1
                    while sha3(9) + stor9.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                stor8[address(arg1)] = 0
                emit 0xcf053d18: stakes[address(msg.sender)], arg1, arg2
                return 0
            require stor9.length - 1 < stor9.length
            require idx < stor9.length
            address(stor9[idx]) = address(stor9[stor9.length])
            require stor9.length - 1 < stor9.length
            address(stor9[stor9.length]) = 0
            stor9.length--
            if stor9.length > stor9.length - 1:
                idx = sha3(9) + stor9.length - 1
                while sha3(9) + stor9.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                return 0
            else:
                return 0
        emit 0xcf053d18: stakes[address(msg.sender)], arg1, arg2
        return 0
    require sub_c93a633a.length - 1 < sub_c93a633a.length
    require idx < sub_c93a633a.length
    sub_c93a633a[idx] = sub_c93a633a[sub_c93a633a.length]
    require sub_c93a633a.length - 1 < sub_c93a633a.length
    return 0
}

function sub_891c5ce0(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require not sub_9597702c
    require ext_code.size(arg1)
    call arg1.0x297a6db with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (25 * arg2) + 24 >= ext_call.return_data[0] - 1:
        if 25 * arg2 <= (25 * arg2) + 24:
            s = 0
            idx = 25 * arg2
            while idx <= (25 * arg2) + 24:
                require ext_code.size(arg1)
                call arg1.0xc93a633a with:
                     gas gas_remaining wei
                    args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0x16934fc4 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stakes[address(ext_call.return_data[0])] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.0x7fd807b6 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                lockedTill[address(ext_call.return_data[0])] = ext_call.return_data[0]
                sub_c93a633a.length++
                sub_c93a633a[sub_c93a633a.length] = address(ext_call.return_data[0])
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 11
                mem[mem[64]] = address(ext_call.return_data[0])
                mem[mem[64] + 32] = stakes[address(ext_call.return_data[0])]
                mem[mem[64] + 64] = lockedTill[address(ext_call.return_data[0])]
                emit 0x7c48de78: address(ext_call.return_data[0]), stakes[address(ext_call.return_data[0])], lockedTill[address(ext_call.return_data[0])]
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
        if sub_c93a633a.length == ext_call.return_data[0]:
            Mask(96, 0, stor22.field_160) = 1
    else:
        if 25 * arg2 <= ext_call.return_data[0] - 1:
            s = 0
            idx = 25 * arg2
            while idx <= ext_call.return_data[0] - 1:
                require ext_code.size(arg1)
                call arg1.0xc93a633a with:
                     gas gas_remaining wei
                    args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0x16934fc4 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stakes[address(ext_call.return_data[0])] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.0x7fd807b6 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                lockedTill[address(ext_call.return_data[0])] = ext_call.return_data[0]
                sub_c93a633a.length++
                sub_c93a633a[sub_c93a633a.length] = address(ext_call.return_data[0])
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 11
                mem[mem[64]] = address(ext_call.return_data[0])
                mem[mem[64] + 32] = stakes[address(ext_call.return_data[0])]
                mem[mem[64] + 64] = lockedTill[address(ext_call.return_data[0])]
                emit 0x7c48de78: address(ext_call.return_data[0]), stakes[address(ext_call.return_data[0])], lockedTill[address(ext_call.return_data[0])]
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
        if sub_c93a633a.length == ext_call.return_data[0]:
            Mask(96, 0, stor22.field_160) = 1
}

function sub_5919c209(?) {
    require msg.sender == owner
    require stor14
    if stor20.length < 100:
        idx = 0
        while idx < stor20.length:
            stakes[stor20[idx]] = 0
            s = 0
            while s < sub_c93a633a.length:
                mem[0] = 7
                if sub_c93a633a[s] != stor20[idx]:
                    s = s + 1
                    continue 
                require sub_c93a633a.length - 1 < sub_c93a633a.length
                require s < sub_c93a633a.length
                sub_c93a633a[s] = sub_c93a633a[sub_c93a633a.length]
                require sub_c93a633a.length - 1 < sub_c93a633a.length
                sub_c93a633a[sub_c93a633a.length] = 0
                sub_c93a633a.length--
                if sub_c93a633a.length > sub_c93a633a.length - 1:
                    s = sha3(7) + sub_c93a633a.length - 1
                    while sha3(7) + sub_c93a633a.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                lockedTill[address(msg.sender)] = 0
                mem[32] = 8
                if stor8[stor20[idx]]:
                    require stor8[stor20[idx]]
                    mem[96] = bool(stor8[stor20[idx]])
                    mem[128] = 0
                    emit 0x73094684: bool(stor8[stor20[idx]]), 0, stor20[idx]
                    sub_61cab144 -= stakes[stor20[idx]]
                    s = 0
                    while s < stor9.length:
                        mem[0] = 9
                        if address(stor9[s]) != stor20[idx]:
                            s = s + 1
                            continue 
                        require stor9.length - 1 < stor9.length
                        require s < stor9.length
                        address(stor9[s]) = address(stor9[stor9.length])
                        require stor9.length - 1 < stor9.length
                        address(stor9[stor9.length]) = 0
                        stor9.length--
                        if stor9.length > stor9.length - 1:
                            s = sha3(9) + stor9.length - 1
                            while sha3(9) + stor9.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        mem[32] = 8
                        stor8[stor20[idx]] = 0
                        require idx < stor20.length
                        emit 0xe331c1f2: stor20[idx]
                        require stor20.length - 1 < stor20.length
                        require idx < stor20.length
                        stor20[idx] = stor20[stor20.length]
                        require stor20.length - 1 < stor20.length
                        mem[0] = 20
                        stor20[stor20.length] = 0
                        stor20.length--
                        if stor20.length > stor20.length - 1:
                            mem[0] = 20
                            s = sha3(20) + stor20.length - 1
                            while sha3(20) + stor20.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    require stor9.length - 1 < stor9.length
                    require s < stor9.length
                    address(stor9[s]) = address(stor9[stor9.length])
                    require stor9.length - 1 < stor9.length
                    address(stor9[stor9.length]) = 0
                    stor9.length--
                    if stor9.length > stor9.length - 1:
                        s = sha3(9) + stor9.length - 1
                        while sha3(9) + stor9.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[32] = 8
                    stor8[stor20[idx]] = 0
                require idx < stor20.length
                emit 0xe331c1f2: stor20[idx]
                require stor20.length - 1 < stor20.length
                require idx < stor20.length
                stor20[idx] = stor20[stor20.length]
                require stor20.length - 1 < stor20.length
                mem[0] = 20
                stor20[stor20.length] = 0
                stor20.length--
                if stor20.length > stor20.length - 1:
                    mem[0] = 20
                    s = sha3(20) + stor20.length - 1
                    while sha3(20) + stor20.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            require sub_c93a633a.length - 1 < sub_c93a633a.length
            require s < sub_c93a633a.length
            sub_c93a633a[s] = sub_c93a633a[sub_c93a633a.length]
            require sub_c93a633a.length - 1 < sub_c93a633a.length
            sub_c93a633a[sub_c93a633a.length] = 0
            sub_c93a633a.length--
            if sub_c93a633a.length > sub_c93a633a.length - 1:
                s = sha3(7) + sub_c93a633a.length - 1
                while sha3(7) + sub_c93a633a.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            lockedTill[address(msg.sender)] = 0
            mem[32] = 8
            if stor8[stor20[idx]]:
                require stor8[stor20[idx]]
                mem[96] = bool(stor8[stor20[idx]])
                mem[128] = 0
                emit 0x73094684: bool(stor8[stor20[idx]]), 0, stor20[idx]
                sub_61cab144 -= stakes[stor20[idx]]
                s = 0
                while s < stor9.length:
                    mem[0] = 9
                    if address(stor9[s]) != stor20[idx]:
                        s = s + 1
                        continue 
                    require stor9.length - 1 < stor9.length
                    require s < stor9.length
                    address(stor9[s]) = address(stor9[stor9.length])
                    require stor9.length - 1 < stor9.length
                    address(stor9[stor9.length]) = 0
                    stor9.length--
                    if stor9.length > stor9.length - 1:
                        s = sha3(9) + stor9.length - 1
                        while sha3(9) + stor9.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[32] = 8
                    stor8[stor20[idx]] = 0
                    require idx < stor20.length
                    emit 0xe331c1f2: stor20[idx]
                    require stor20.length - 1 < stor20.length
                    require idx < stor20.length
                    stor20[idx] = stor20[stor20.length]
                    require stor20.length - 1 < stor20.length
                    mem[0] = 20
                    stor20[stor20.length] = 0
                    stor20.length--
                    if stor20.length > stor20.length - 1:
                        mem[0] = 20
                        s = sha3(20) + stor20.length - 1
                        while sha3(20) + stor20.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                require stor9.length - 1 < stor9.length
                require s < stor9.length
                address(stor9[s]) = address(stor9[stor9.length])
                require stor9.length - 1 < stor9.length
                address(stor9[stor9.length]) = 0
                stor9.length--
                if stor9.length > stor9.length - 1:
                    s = sha3(9) + stor9.length - 1
                    while sha3(9) + stor9.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                mem[32] = 8
                stor8[stor20[idx]] = 0
            require idx < stor20.length
            emit 0xe331c1f2: stor20[idx]
            require stor20.length - 1 < stor20.length
            require idx < stor20.length
            stor20[idx] = stor20[stor20.length]
            require stor20.length - 1 < stor20.length
            mem[0] = 20
            stor20[stor20.length] = 0
            stor20.length--
            if stor20.length > stor20.length - 1:
                mem[0] = 20
                s = sha3(20) + stor20.length - 1
                while sha3(20) + stor20.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 100:
            require idx < stor20.length
            stakes[stor20[idx]] = 0
            s = 0
            while s < sub_c93a633a.length:
                mem[0] = 7
                if sub_c93a633a[s] != stor20[idx]:
                    s = s + 1
                    continue 
                require sub_c93a633a.length - 1 < sub_c93a633a.length
                require s < sub_c93a633a.length
                sub_c93a633a[s] = sub_c93a633a[sub_c93a633a.length]
                require sub_c93a633a.length - 1 < sub_c93a633a.length
                sub_c93a633a[sub_c93a633a.length] = 0
                sub_c93a633a.length--
                if sub_c93a633a.length > sub_c93a633a.length - 1:
                    s = sha3(7) + sub_c93a633a.length - 1
                    while sha3(7) + sub_c93a633a.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                lockedTill[address(msg.sender)] = 0
                mem[32] = 8
                if stor8[stor20[idx]]:
                    require stor8[stor20[idx]]
                    mem[96] = bool(stor8[stor20[idx]])
                    mem[128] = 0
                    emit 0x73094684: bool(stor8[stor20[idx]]), 0, stor20[idx]
                    sub_61cab144 -= stakes[stor20[idx]]
                    s = 0
                    while s < stor9.length:
                        mem[0] = 9
                        if address(stor9[s]) != stor20[idx]:
                            s = s + 1
                            continue 
                        require stor9.length - 1 < stor9.length
                        require s < stor9.length
                        address(stor9[s]) = address(stor9[stor9.length])
                        require stor9.length - 1 < stor9.length
                        address(stor9[stor9.length]) = 0
                        stor9.length--
                        if stor9.length > stor9.length - 1:
                            s = sha3(9) + stor9.length - 1
                            while sha3(9) + stor9.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        mem[32] = 8
                        stor8[stor20[idx]] = 0
                        require idx < stor20.length
                        emit 0xe331c1f2: stor20[idx]
                        require stor20.length - 1 < stor20.length
                        require idx < stor20.length
                        stor20[idx] = stor20[stor20.length]
                        require stor20.length - 1 < stor20.length
                        mem[0] = 20
                        stor20[stor20.length] = 0
                        stor20.length--
                        if stor20.length > stor20.length - 1:
                            mem[0] = 20
                            s = sha3(20) + stor20.length - 1
                            while sha3(20) + stor20.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    require stor9.length - 1 < stor9.length
                    require s < stor9.length
                    address(stor9[s]) = address(stor9[stor9.length])
                    require stor9.length - 1 < stor9.length
                    address(stor9[stor9.length]) = 0
                    stor9.length--
                    if stor9.length > stor9.length - 1:
                        s = sha3(9) + stor9.length - 1
                        while sha3(9) + stor9.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[32] = 8
                    stor8[stor20[idx]] = 0
                require idx < stor20.length
                emit 0xe331c1f2: stor20[idx]
                require stor20.length - 1 < stor20.length
                require idx < stor20.length
                stor20[idx] = stor20[stor20.length]
                require stor20.length - 1 < stor20.length
                mem[0] = 20
                stor20[stor20.length] = 0
                stor20.length--
                if stor20.length > stor20.length - 1:
                    mem[0] = 20
                    s = sha3(20) + stor20.length - 1
                    while sha3(20) + stor20.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            require sub_c93a633a.length - 1 < sub_c93a633a.length
            require s < sub_c93a633a.length
            sub_c93a633a[s] = sub_c93a633a[sub_c93a633a.length]
            require sub_c93a633a.length - 1 < sub_c93a633a.length
            sub_c93a633a[sub_c93a633a.length] = 0
            sub_c93a633a.length--
            if sub_c93a633a.length > sub_c93a633a.length - 1:
                s = sha3(7) + sub_c93a633a.length - 1
                while sha3(7) + sub_c93a633a.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            lockedTill[address(msg.sender)] = 0
            mem[32] = 8
            if stor8[stor20[idx]]:
                require stor8[stor20[idx]]
                mem[96] = bool(stor8[stor20[idx]])
                mem[128] = 0
                emit 0x73094684: bool(stor8[stor20[idx]]), 0, stor20[idx]
                sub_61cab144 -= stakes[stor20[idx]]
                s = 0
                while s < stor9.length:
                    mem[0] = 9
                    if address(stor9[s]) != stor20[idx]:
                        s = s + 1
                        continue 
                    require stor9.length - 1 < stor9.length
                    require s < stor9.length
                    address(stor9[s]) = address(stor9[stor9.length])
                    require stor9.length - 1 < stor9.length
                    address(stor9[stor9.length]) = 0
                    stor9.length--
                    if stor9.length > stor9.length - 1:
                        s = sha3(9) + stor9.length - 1
                        while sha3(9) + stor9.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[32] = 8
                    stor8[stor20[idx]] = 0
                    require idx < stor20.length
                    emit 0xe331c1f2: stor20[idx]
                    require stor20.length - 1 < stor20.length
                    require idx < stor20.length
                    stor20[idx] = stor20[stor20.length]
                    require stor20.length - 1 < stor20.length
                    mem[0] = 20
                    stor20[stor20.length] = 0
                    stor20.length--
                    if stor20.length > stor20.length - 1:
                        mem[0] = 20
                        s = sha3(20) + stor20.length - 1
                        while sha3(20) + stor20.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                require stor9.length - 1 < stor9.length
                require s < stor9.length
                address(stor9[s]) = address(stor9[stor9.length])
                require stor9.length - 1 < stor9.length
                address(stor9[stor9.length]) = 0
                stor9.length--
                if stor9.length > stor9.length - 1:
                    s = sha3(9) + stor9.length - 1
                    while sha3(9) + stor9.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                mem[32] = 8
                stor8[stor20[idx]] = 0
            require idx < stor20.length
            emit 0xe331c1f2: stor20[idx]
            require stor20.length - 1 < stor20.length
            require idx < stor20.length
            stor20[idx] = stor20[stor20.length]
            require stor20.length - 1 < stor20.length
            mem[0] = 20
            stor20[stor20.length] = 0
            stor20.length--
            if stor20.length > stor20.length - 1:
                mem[0] = 20
                s = sha3(20) + stor20.length - 1
                while sha3(20) + stor20.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
}



}
