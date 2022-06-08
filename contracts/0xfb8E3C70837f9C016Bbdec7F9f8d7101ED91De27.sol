contract main {




// =====================  Runtime code  =====================


#
#  - sub_e2ff1864(?)
#
address owner;
address sub_c154c484Address;
address stor2;
uint256 batchSize;
uint256 sub_3a34330e;
uint256 sub_310be4ff;
uint256 sub_d44cf707;
mapping of uint256 stor7;
array of address stor8;
mapping of uint8 stor9;
array of address stor10;
mapping of uint8 stor11;
mapping of uint256 lockedTill;
uint256 sub_627e86d2;
uint256 sub_13257358;
uint8 stor15;
uint256 sub_cabcf4cd;
uint256 sub_cd5eda14;
uint256 sub_61cab144;
uint256 rewardsBalance;
uint256 rewardsToDistribute;
array of address stor21;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042549;

function sub_0297a6db(?) {
    return stor8.length
}

function rewardsBalance() {
    return rewardsBalance
}

function sub_13257358(?) {
    return sub_13257358
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
    return bool(stor15)
}

function sub_a5423690(?) {
    return stor10.length
}

function sub_a97613a8(?) {
    return stor21.length
}

function sub_c154c484(?) {
    return sub_c154c484Address
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
    return bool(stor11[arg1])
}

function sub_e73356cd(?) {
    return bool(stor9[address(arg1)])
}

function batchSize() {
    return batchSize
}

function _fallback() {
  stop
}

function sub_6429577d(?) {
    require msg.sender == owner
    require not stor15
    sub_d44cf707 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setBatchSize(uint256 arg1) {
    require msg.sender == owner
    require not stor15
    batchSize = arg1
}

function sub_5f2cdadf(?) {
    require msg.sender == owner
    emit 0xfadb7c23: arg1, bool(stor11[arg1]), arg2
    stor11[arg1] = uint8(arg2)
}

function sub_6b8cb4bb(?) {
    require msg.sender == owner
    require not stor15
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

function sub_013cdb68(?) {
    require sub_3a34330e
    if stor7[address(arg1)] / sub_3a34330e > sub_310be4ff:
        return sub_310be4ff
    return (stor7[address(arg1)] / sub_3a34330e)
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fffb5127(?) {
    require not stor15
    require stor7[msg.sender] > 0
    require block.timestamp > lockedTill[msg.sender]
    stor21.length++
    stor55F4[stor21.length] = msg.sender or Mask(96, 160, stor55F4[stor21.length])
    emit 0xfbab0005: msg.sender
}

function sub_52f11e17(?) {
    require sub_3a34330e
    if not sub_3a34330e:
        return stor7[address(arg1)]
    if stor7[address(arg1)] / sub_3a34330e > sub_310be4ff:
        if sub_310be4ff * sub_3a34330e / sub_3a34330e == sub_310be4ff:
            return (stor7[address(arg1)] - (sub_310be4ff * sub_3a34330e))
    else:
        if stor7[address(arg1)] / sub_3a34330e * sub_3a34330e / sub_3a34330e == stor7[address(arg1)] / sub_3a34330e:
            return (stor7[address(arg1)] - (stor7[address(arg1)] / sub_3a34330e * sub_3a34330e))
    revert
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
    require ext_call.return_data[0]
}

function sub_f286543f(?) {
    require msg.sender == owner
    require arg1 > 0
    require not stor15
    require ext_code.size(stor2)
    call stor2.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require 0 < stor10.length
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    rewardsBalance += arg1
    rewardsToDistribute = arg1 + rewardsBalance
    emit RewardAdded(arg1, msg.sender);
    require batchSize
    sub_cabcf4cd = batchSize + stor10.length / batchSize
    stor15 = 1
    sub_cd5eda14 = 0
    emit 0x5628086a: rewardsBalance, sub_61cab144
}

function sub_949e68ae(?) {
    require not stor15
    require sub_3a34330e
    if stor7[address(msg.sender)] / sub_3a34330e > sub_310be4ff:
        require not sub_310be4ff
    else:
        require not stor7[address(msg.sender)] / sub_3a34330e
    require stor11[arg2]
    require stor8.length < sub_627e86d2
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1 * sub_3a34330e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg2:
        lockedTill[msg.sender] = block.timestamp
    else:
        require 30 * arg2 / arg2 == 30
        if not 30 * arg2:
            lockedTill[msg.sender] = block.timestamp
        else:
            require 720 * 24 * 3600 * arg2 / 30 * arg2 == 24 * 3600
            lockedTill[msg.sender] = block.timestamp + (720 * 24 * 3600 * arg2)
    stor8.length++
    uint256(stor8[stor8.length]) = msg.sender or Mask(96, 160, uint256(stor8[stor8.length]))
    stor7[msg.sender] = arg1 * sub_3a34330e
    emit 0x9317574c: (arg1 * sub_3a34330e), msg.sender
}

function sub_b28b15b9(?) {
    require msg.sender == sub_c154c484Address
    require not stor15
    if arg2:
        require stor7[address(arg1)] > 0
    require arg2 != bool(stor9[address(arg1)])
    emit 0x73094684: bool(stor9[address(arg1)]), arg2, arg1
    if arg2:
        sub_61cab144 += stor7[address(arg1)]
        stor10.length++
        address(stor10[stor10.length]) = arg1
    else:
        sub_61cab144 -= stor7[address(arg1)]
        idx = 0
        while idx < stor10.length:
            mem[0] = 10
            if address(stor10[idx]) != arg1:
                idx = idx + 1
                continue 
            require stor10.length - 1 < stor10.length
            require idx < stor10.length
            address(stor10[idx]) = address(stor10[stor10.length])
            require stor10.length - 1 < stor10.length
            address(stor10[stor10.length]) = 0
            stor10.length--
            if stor10.length > stor10.length - 1:
                idx = stor10.length + sha3(10) - 1
                while sha3(10) + stor10.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor9[address(arg1)] = uint8(arg2)
        require stor10.length - 1 < stor10.length
        require idx < stor10.length
        address(stor10[idx]) = address(stor10[stor10.length])
        require stor10.length - 1 < stor10.length
        address(stor10[stor10.length]) = 0
        stor10.length--
        if stor10.length > stor10.length - 1:
            idx = stor10.length - 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
    stor9[address(arg1)] = uint8(arg2)
}

function claimProfit() {
    require not stor15
    require stor7[msg.sender] > sub_3a34330e
    require sub_3a34330e
    if stor7[address(msg.sender)] / sub_3a34330e > sub_310be4ff:
        if not sub_3a34330e:
            stor7[msg.sender] -= stor7[address(msg.sender)]
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor7[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit RewardWithdrawn(stor7[address(msg.sender)], msg.sender);
        else:
            require sub_310be4ff * sub_3a34330e / sub_3a34330e == sub_310be4ff
            stor7[msg.sender] = stor7[msg.sender] - stor7[address(msg.sender)] + (sub_310be4ff * sub_3a34330e)
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor7[address(msg.sender)] - (sub_310be4ff * sub_3a34330e)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit RewardWithdrawn((stor7[address(msg.sender)] - (sub_310be4ff * sub_3a34330e)), msg.sender);
    else:
        if not sub_3a34330e:
            stor7[msg.sender] -= stor7[address(msg.sender)]
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor7[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit RewardWithdrawn(stor7[address(msg.sender)], msg.sender);
        else:
            require stor7[address(msg.sender)] / sub_3a34330e * sub_3a34330e / sub_3a34330e == stor7[address(msg.sender)] / sub_3a34330e
            stor7[msg.sender] = stor7[msg.sender] - stor7[address(msg.sender)] + (stor7[address(msg.sender)] / sub_3a34330e * sub_3a34330e)
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor7[address(msg.sender)] - (stor7[address(msg.sender)] / sub_3a34330e * sub_3a34330e)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit RewardWithdrawn((stor7[address(msg.sender)] - (stor7[address(msg.sender)] / sub_3a34330e * sub_3a34330e)), msg.sender);
}

function sub_22f735cf(?) {
    require arg1
    require not stor15
    require stor7[msg.sender] > 0
    if not stor7[address(arg1)]:
        stor8.length++
        address(stor8[stor8.length]) = arg1
    stor7[arg1] += stor7[msg.sender]
    if lockedTill[arg1] < lockedTill[msg.sender]:
        lockedTill[arg1] = lockedTill[msg.sender]
    stor7[address(msg.sender)] = 0
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if address(stor8[idx]) != msg.sender:
            idx = idx + 1
            continue 
        require stor8.length - 1 < stor8.length
        require idx < stor8.length
        address(stor8[idx]) = address(stor8[stor8.length])
        require stor8.length - 1 < stor8.length
        address(stor8[stor8.length]) = 0
        stor8.length--
        if stor8.length > stor8.length - 1:
            idx = stor8.length + sha3(8) - 1
            while sha3(8) + stor8.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        lockedTill[msg.sender] = 0
        if stor9[address(msg.sender)]:
            require bool(stor9[address(msg.sender)]) != 0
            emit 0x73094684: bool(stor9[address(msg.sender)]), 0, msg.sender
            sub_61cab144 -= stor7[address(msg.sender)]
            idx = 0
            while idx < stor10.length:
                mem[0] = 10
                if address(stor10[idx]) != msg.sender:
                    idx = idx + 1
                    continue 
                require stor10.length - 1 < stor10.length
                require idx < stor10.length
                address(stor10[idx]) = address(stor10[stor10.length])
                require stor10.length - 1 < stor10.length
                address(stor10[stor10.length]) = 0
                stor10.length--
                if stor10.length > stor10.length - 1:
                    idx = stor10.length + sha3(10) - 1
                    while sha3(10) + stor10.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                stor9[address(msg.sender)] = 0
                emit 0xcf053d18: stor7[msg.sender], msg.sender, arg1
                return 0
            require stor10.length - 1 < stor10.length
            require idx < stor10.length
            address(stor10[idx]) = address(stor10[stor10.length])
            require stor10.length - 1 < stor10.length
            address(stor10[stor10.length]) = 0
            stor10.length--
            if stor10.length > stor10.length - 1:
                idx = stor10.length + sha3(10) - 1
                while sha3(10) + stor10.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                return 0
            else:
                return 0
        emit 0xcf053d18: stor7[msg.sender], msg.sender, arg1
        return 0
    require stor8.length - 1 < stor8.length
    require idx < stor8.length
    address(stor8[idx]) = address(stor8[stor8.length])
    require stor8.length - 1 < stor8.length
    return 0
}

function sub_5919c209(?) {
    require msg.sender == owner
    require stor15
    if 100 > stor21.length:
        idx = 0
        while idx < stor21.length:
            stor7[stor21[idx]] = 0
            s = 0
            while s < stor8.length:
                mem[0] = 8
                if address(stor8[s]) != stor21[idx]:
                    s = s + 1
                    continue 
                require stor8.length - 1 < stor8.length
                require s < stor8.length
                address(stor8[s]) = address(stor8[stor8.length])
                require stor8.length - 1 < stor8.length
                address(stor8[stor8.length]) = 0
                stor8.length--
                if stor8.length > stor8.length - 1:
                    s = stor8.length + sha3(8) - 1
                    while sha3(8) + stor8.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                lockedTill[msg.sender] = 0
                mem[32] = 9
                if stor9[stor21[idx]]:
                    require bool(stor9[stor21[idx]]) != 0
                    mem[96] = bool(stor9[stor21[idx]])
                    mem[128] = 0
                    emit 0x73094684: bool(stor9[stor21[idx]]), 0, stor21[idx]
                    sub_61cab144 -= stor7[stor21[idx]]
                    s = 0
                    while s < stor10.length:
                        mem[0] = 10
                        if address(stor10[s]) != stor21[idx]:
                            s = s + 1
                            continue 
                        require stor10.length - 1 < stor10.length
                        require s < stor10.length
                        address(stor10[s]) = address(stor10[stor10.length])
                        require stor10.length - 1 < stor10.length
                        address(stor10[stor10.length]) = 0
                        stor10.length--
                        if stor10.length > stor10.length - 1:
                            s = stor10.length + sha3(10) - 1
                            while sha3(10) + stor10.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        mem[32] = 9
                        stor9[stor21[idx]] = 0
                        require idx < stor21.length
                        emit 0xe331c1f2: stor21[idx]
                        require stor21.length - 1 < stor21.length
                        require idx < stor21.length
                        stor21[idx] = stor21[stor21.length]
                        require stor21.length - 1 < stor21.length
                        mem[0] = 21
                        stor21[stor21.length] = 0
                        stor21.length--
                        if stor21.length > stor21.length - 1:
                            mem[0] = 21
                            s = stor21.length + sha3(21) - 1
                            while sha3(21) + stor21.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    require stor10.length - 1 < stor10.length
                    require s < stor10.length
                    address(stor10[s]) = address(stor10[stor10.length])
                    require stor10.length - 1 < stor10.length
                    address(stor10[stor10.length]) = 0
                    stor10.length--
                    if stor10.length > stor10.length - 1:
                        s = stor10.length + sha3(10) - 1
                        while sha3(10) + stor10.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[32] = 9
                    stor9[stor21[idx]] = 0
                require idx < stor21.length
                emit 0xe331c1f2: stor21[idx]
                require stor21.length - 1 < stor21.length
                require idx < stor21.length
                stor21[idx] = stor21[stor21.length]
                require stor21.length - 1 < stor21.length
                mem[0] = 21
                stor21[stor21.length] = 0
                stor21.length--
                if stor21.length > stor21.length - 1:
                    mem[0] = 21
                    s = stor21.length + sha3(21) - 1
                    while sha3(21) + stor21.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            require stor8.length - 1 < stor8.length
            require s < stor8.length
            address(stor8[s]) = address(stor8[stor8.length])
            require stor8.length - 1 < stor8.length
            address(stor8[stor8.length]) = 0
            stor8.length--
            if stor8.length > stor8.length - 1:
                s = stor8.length + sha3(8) - 1
                while sha3(8) + stor8.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            lockedTill[msg.sender] = 0
            mem[32] = 9
            if stor9[stor21[idx]]:
                require bool(stor9[stor21[idx]]) != 0
                mem[96] = bool(stor9[stor21[idx]])
                mem[128] = 0
                emit 0x73094684: bool(stor9[stor21[idx]]), 0, stor21[idx]
                sub_61cab144 -= stor7[stor21[idx]]
                s = 0
                while s < stor10.length:
                    mem[0] = 10
                    if address(stor10[s]) != stor21[idx]:
                        s = s + 1
                        continue 
                    require stor10.length - 1 < stor10.length
                    require s < stor10.length
                    address(stor10[s]) = address(stor10[stor10.length])
                    require stor10.length - 1 < stor10.length
                    address(stor10[stor10.length]) = 0
                    stor10.length--
                    if stor10.length > stor10.length - 1:
                        s = stor10.length + sha3(10) - 1
                        while sha3(10) + stor10.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[32] = 9
                    stor9[stor21[idx]] = 0
                    require idx < stor21.length
                    emit 0xe331c1f2: stor21[idx]
                    require stor21.length - 1 < stor21.length
                    require idx < stor21.length
                    stor21[idx] = stor21[stor21.length]
                    require stor21.length - 1 < stor21.length
                    mem[0] = 21
                    stor21[stor21.length] = 0
                    stor21.length--
                    if stor21.length > stor21.length - 1:
                        mem[0] = 21
                        s = stor21.length + sha3(21) - 1
                        while sha3(21) + stor21.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                require stor10.length - 1 < stor10.length
                require s < stor10.length
                address(stor10[s]) = address(stor10[stor10.length])
                require stor10.length - 1 < stor10.length
                address(stor10[stor10.length]) = 0
                stor10.length--
                if stor10.length > stor10.length - 1:
                    s = stor10.length + sha3(10) - 1
                    while sha3(10) + stor10.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                mem[32] = 9
                stor9[stor21[idx]] = 0
            require idx < stor21.length
            emit 0xe331c1f2: stor21[idx]
            require stor21.length - 1 < stor21.length
            require idx < stor21.length
            stor21[idx] = stor21[stor21.length]
            require stor21.length - 1 < stor21.length
            mem[0] = 21
            stor21[stor21.length] = 0
            stor21.length--
            if stor21.length > stor21.length - 1:
                mem[0] = 21
                s = stor21.length + sha3(21) - 1
                while sha3(21) + stor21.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 100:
            require idx < stor21.length
            stor7[stor21[idx]] = 0
            s = 0
            while s < stor8.length:
                mem[0] = 8
                if address(stor8[s]) != stor21[idx]:
                    s = s + 1
                    continue 
                require stor8.length - 1 < stor8.length
                require s < stor8.length
                address(stor8[s]) = address(stor8[stor8.length])
                require stor8.length - 1 < stor8.length
                address(stor8[stor8.length]) = 0
                stor8.length--
                if stor8.length > stor8.length - 1:
                    s = stor8.length + sha3(8) - 1
                    while sha3(8) + stor8.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                lockedTill[msg.sender] = 0
                mem[32] = 9
                if stor9[stor21[idx]]:
                    require bool(stor9[stor21[idx]]) != 0
                    mem[96] = bool(stor9[stor21[idx]])
                    mem[128] = 0
                    emit 0x73094684: bool(stor9[stor21[idx]]), 0, stor21[idx]
                    sub_61cab144 -= stor7[stor21[idx]]
                    s = 0
                    while s < stor10.length:
                        mem[0] = 10
                        if address(stor10[s]) != stor21[idx]:
                            s = s + 1
                            continue 
                        require stor10.length - 1 < stor10.length
                        require s < stor10.length
                        address(stor10[s]) = address(stor10[stor10.length])
                        require stor10.length - 1 < stor10.length
                        address(stor10[stor10.length]) = 0
                        stor10.length--
                        if stor10.length > stor10.length - 1:
                            s = stor10.length + sha3(10) - 1
                            while sha3(10) + stor10.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        mem[32] = 9
                        stor9[stor21[idx]] = 0
                        require idx < stor21.length
                        emit 0xe331c1f2: stor21[idx]
                        require stor21.length - 1 < stor21.length
                        require idx < stor21.length
                        stor21[idx] = stor21[stor21.length]
                        require stor21.length - 1 < stor21.length
                        mem[0] = 21
                        stor21[stor21.length] = 0
                        stor21.length--
                        if stor21.length > stor21.length - 1:
                            mem[0] = 21
                            s = stor21.length + sha3(21) - 1
                            while sha3(21) + stor21.length > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    require stor10.length - 1 < stor10.length
                    require s < stor10.length
                    address(stor10[s]) = address(stor10[stor10.length])
                    require stor10.length - 1 < stor10.length
                    address(stor10[stor10.length]) = 0
                    stor10.length--
                    if stor10.length > stor10.length - 1:
                        s = stor10.length + sha3(10) - 1
                        while sha3(10) + stor10.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[32] = 9
                    stor9[stor21[idx]] = 0
                require idx < stor21.length
                emit 0xe331c1f2: stor21[idx]
                require stor21.length - 1 < stor21.length
                require idx < stor21.length
                stor21[idx] = stor21[stor21.length]
                require stor21.length - 1 < stor21.length
                mem[0] = 21
                stor21[stor21.length] = 0
                stor21.length--
                if stor21.length > stor21.length - 1:
                    mem[0] = 21
                    s = stor21.length + sha3(21) - 1
                    while sha3(21) + stor21.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
            require stor8.length - 1 < stor8.length
            require s < stor8.length
            address(stor8[s]) = address(stor8[stor8.length])
            require stor8.length - 1 < stor8.length
            address(stor8[stor8.length]) = 0
            stor8.length--
            if stor8.length > stor8.length - 1:
                s = stor8.length + sha3(8) - 1
                while sha3(8) + stor8.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            lockedTill[msg.sender] = 0
            mem[32] = 9
            if stor9[stor21[idx]]:
                require bool(stor9[stor21[idx]]) != 0
                mem[96] = bool(stor9[stor21[idx]])
                mem[128] = 0
                emit 0x73094684: bool(stor9[stor21[idx]]), 0, stor21[idx]
                sub_61cab144 -= stor7[stor21[idx]]
                s = 0
                while s < stor10.length:
                    mem[0] = 10
                    if address(stor10[s]) != stor21[idx]:
                        s = s + 1
                        continue 
                    require stor10.length - 1 < stor10.length
                    require s < stor10.length
                    address(stor10[s]) = address(stor10[stor10.length])
                    require stor10.length - 1 < stor10.length
                    address(stor10[stor10.length]) = 0
                    stor10.length--
                    if stor10.length > stor10.length - 1:
                        s = stor10.length + sha3(10) - 1
                        while sha3(10) + stor10.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[32] = 9
                    stor9[stor21[idx]] = 0
                    require idx < stor21.length
                    emit 0xe331c1f2: stor21[idx]
                    require stor21.length - 1 < stor21.length
                    require idx < stor21.length
                    stor21[idx] = stor21[stor21.length]
                    require stor21.length - 1 < stor21.length
                    mem[0] = 21
                    stor21[stor21.length] = 0
                    stor21.length--
                    if stor21.length > stor21.length - 1:
                        mem[0] = 21
                        s = stor21.length + sha3(21) - 1
                        while sha3(21) + stor21.length > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                require stor10.length - 1 < stor10.length
                require s < stor10.length
                address(stor10[s]) = address(stor10[stor10.length])
                require stor10.length - 1 < stor10.length
                address(stor10[stor10.length]) = 0
                stor10.length--
                if stor10.length > stor10.length - 1:
                    s = stor10.length + sha3(10) - 1
                    while sha3(10) + stor10.length > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                mem[32] = 9
                stor9[stor21[idx]] = 0
            require idx < stor21.length
            emit 0xe331c1f2: stor21[idx]
            require stor21.length - 1 < stor21.length
            require idx < stor21.length
            stor21[idx] = stor21[stor21.length]
            require stor21.length - 1 < stor21.length
            mem[0] = 21
            stor21[stor21.length] = 0
            stor21.length--
            if stor21.length > stor21.length - 1:
                mem[0] = 21
                s = stor21.length + sha3(21) - 1
                while sha3(21) + stor21.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
}



}
