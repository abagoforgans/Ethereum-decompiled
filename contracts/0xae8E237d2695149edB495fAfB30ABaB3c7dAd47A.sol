contract main {




// =====================  Runtime code  =====================


#
#  - sub_e65bc800(?)
#
const name = 'healthbank Token'

const decimals = 0

const symbol = 'HBE'


mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address owner;
array of struct totalSupplyHistory;
array of struct balances;
address sub_e25e1e17Address;
uint8 stor7; offset 160
uint128 stor7; offset 160
address sub_21cc9487Address;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function sub_21cc9487(?) {
    return sub_21cc9487Address
}

function paused() {
    return bool(uint8(stor3.field_168))
}

function totalSupplyHistory(uint256 arg1) {
    require arg1 < totalSupplyHistory.length
    return totalSupplyHistory[arg1].field_0, totalSupplyHistory[arg1].field_128
}

function owner() {
    return owner
}

function balances(address arg1, uint256 arg2) {
    require arg2 < balances[arg1].field_0
    return balances[arg1][arg2].field_0, balances[arg1][arg2].field_128
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e25e1e17(?) {
    return sub_e25e1e17Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_168)
    uint8(stor3.field_168) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    uint8(stor3.field_168) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    if arg2:
        if allowance[msg.sender][address(arg1)]:
            revert with 0, 'reset allowance required'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_1a8a32a2(?) {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if not arg1:
        revert with 0, 'invalid membership address'
    if not arg2:
        revert with 0, 'invalid vault address'
    sub_e25e1e17Address = arg1
    sub_21cc9487Address = arg2
    Mask(96, 0, stor7.field_160) = 0
    uint8(stor7.field_160) = 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
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

function totalSupplyAt(uint256 arg1) {
    mem[64] = (32 * totalSupplyHistory.length) + 128
    mem[96] = totalSupplyHistory.length
    s = 128
    idx = 0
    while idx < totalSupplyHistory.length:
        mem[0] = 4
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = totalSupplyHistory[idx].field_0
        mem[_32 + 32] = totalSupplyHistory[idx].field_128
        mem[s] = _32
        s = s + 32
        idx = idx + 1
        continue 
    if not mem[96]:
        return 0
    require 0 < mem[96]
    if mem[mem[128] + 16 len 16] > arg1:
        return 0
    require 1 <= mem[96]
    require mem[96] - 1 < mem[96]
    require 1 <= mem[96]
    if arg1 >= mem[mem[(32 * mem[96] - 1) + 128] + 16 len 16]:
        require mem[96] - 1 < mem[96]
        mem[mem[64]] = mem[mem[(32 * mem[96] - 1) + 128] + 48 len 16]
    else:
        s = 0
        idx = 0
        while mem[96] - 1 > idx:
            require idx >= 0
            require idx + mem[96] / 2 < mem[96]
            if mem[mem[(16 * Mask(251, 1, idx + mem[96])) + 128] + 16 len 16] <= arg1:
                s = idx + mem[96] / 2
                idx = idx + mem[96] / 2
                continue 
            require 1 <= idx + mem[96] / 2
            s = idx + mem[96] / 2
            idx = idx
            continue 
        require idx < mem[96]
        mem[mem[64]] = mem[mem[(32 * idx) + 128] + 48 len 16]
    return memory
      from mem[64]
       len 32
}

function totalSupply() {
    mem[64] = (32 * totalSupplyHistory.length) + 128
    mem[96] = totalSupplyHistory.length
    s = 128
    idx = 0
    while idx < totalSupplyHistory.length:
        mem[0] = 4
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = totalSupplyHistory[idx].field_0
        mem[_32 + 32] = totalSupplyHistory[idx].field_128
        mem[s] = _32
        s = s + 32
        idx = idx + 1
        continue 
    if not mem[96]:
        return 0
    require 0 < mem[96]
    if mem[mem[128] + 16 len 16] > block.number:
        return 0
    require 1 <= mem[96]
    require mem[96] - 1 < mem[96]
    require 1 <= mem[96]
    if block.number >= mem[mem[(32 * mem[96] - 1) + 128] + 16 len 16]:
        require mem[96] - 1 < mem[96]
        mem[mem[64]] = mem[mem[(32 * mem[96] - 1) + 128] + 48 len 16]
    else:
        s = 0
        idx = 0
        while mem[96] - 1 > idx:
            require idx >= 0
            require idx + mem[96] / 2 < mem[96]
            if mem[mem[(16 * Mask(251, 1, idx + mem[96])) + 128] + 16 len 16] <= block.number:
                s = idx + mem[96] / 2
                idx = idx + mem[96] / 2
                continue 
            require 1 <= idx + mem[96] / 2
            s = idx + mem[96] / 2
            idx = idx
            continue 
        require idx < mem[96]
        mem[mem[64]] = mem[mem[(32 * idx) + 128] + 48 len 16]
    return memory
      from mem[64]
       len 32
}

function balanceOfAt(address arg1, uint256 arg2) {
    mem[0] = arg1
    mem[32] = 5
    mem[64] = (32 * balances[address(arg1)].field_0) + 128
    mem[96] = balances[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < balances[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = balances[address(arg1)][idx].field_0
        mem[_33 + 32] = balances[address(arg1)][idx].field_128
        mem[s] = _33
        s = s + 32
        idx = idx + 1
        continue 
    if not mem[96]:
        return 0
    require 0 < mem[96]
    if mem[mem[128] + 16 len 16] > arg2:
        return 0
    require 1 <= mem[96]
    require mem[96] - 1 < mem[96]
    require 1 <= mem[96]
    if arg2 >= mem[mem[(32 * mem[96] - 1) + 128] + 16 len 16]:
        require mem[96] - 1 < mem[96]
        mem[mem[64]] = mem[mem[(32 * mem[96] - 1) + 128] + 48 len 16]
    else:
        s = 0
        idx = 0
        while mem[96] - 1 > idx:
            require idx >= 0
            require idx + mem[96] / 2 < mem[96]
            if mem[mem[(16 * Mask(251, 1, idx + mem[96])) + 128] + 16 len 16] <= arg2:
                s = idx + mem[96] / 2
                idx = idx + mem[96] / 2
                continue 
            require 1 <= idx + mem[96] / 2
            s = idx + mem[96] / 2
            idx = idx
            continue 
        require idx < mem[96]
        mem[mem[64]] = mem[mem[(32 * idx) + 128] + 48 len 16]
    return memory
      from mem[64]
       len 32
}

function balanceOf(address arg1) {
    mem[0] = arg1
    mem[32] = 5
    mem[64] = (32 * balances[address(arg1)].field_0) + 128
    mem[96] = balances[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < balances[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = balances[address(arg1)][idx].field_0
        mem[_33 + 32] = balances[address(arg1)][idx].field_128
        mem[s] = _33
        s = s + 32
        idx = idx + 1
        continue 
    if not mem[96]:
        return 0
    require 0 < mem[96]
    if mem[mem[128] + 16 len 16] > block.number:
        return 0
    require 1 <= mem[96]
    require mem[96] - 1 < mem[96]
    require 1 <= mem[96]
    if block.number >= mem[mem[(32 * mem[96] - 1) + 128] + 16 len 16]:
        require mem[96] - 1 < mem[96]
        mem[mem[64]] = mem[mem[(32 * mem[96] - 1) + 128] + 48 len 16]
    else:
        s = 0
        idx = 0
        while mem[96] - 1 > idx:
            require idx >= 0
            require idx + mem[96] / 2 < mem[96]
            if mem[mem[(16 * Mask(251, 1, idx + mem[96])) + 128] + 16 len 16] <= block.number:
                s = idx + mem[96] / 2
                idx = idx + mem[96] / 2
                continue 
            require 1 <= idx + mem[96] / 2
            s = idx + mem[96] / 2
            idx = idx
            continue 
        require idx < mem[96]
        mem[mem[64]] = mem[mem[(32 * idx) + 128] + 48 len 16]
    return memory
      from mem[64]
       len 32
}

function burn(uint256 arg1) {
    mem[64] = (32 * totalSupplyHistory.length) + 128
    mem[96] = totalSupplyHistory.length
    s = 128
    idx = 0
    while idx < totalSupplyHistory.length:
        mem[0] = 4
        _1668 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1668] = totalSupplyHistory[idx].field_0
        mem[_1668 + 32] = totalSupplyHistory[idx].field_128
        mem[s] = _1668
        s = s + 32
        idx = idx + 1
        continue 
    if not mem[96]:
        mem[0] = msg.sender
        mem[32] = 5
        _1678 = mem[64]
        mem[64] = mem[64] + (32 * balances[address(msg.sender)].field_0) + 32
        mem[_1678] = balances[address(msg.sender)].field_0
        s = _1678 + 32
        idx = 0
        while idx < balances[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 5)
            _3333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3333] = balances[address(msg.sender)][idx].field_0
            mem[_3333 + 32] = balances[address(msg.sender)][idx].field_128
            mem[s] = _3333
            s = s + 32
            idx = idx + 1
            continue 
        if not mem[_1678]:
            require arg1 <= 0
            if not totalSupplyHistory.length:
                totalSupplyHistory.length++
                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
            else:
                require 1 <= totalSupplyHistory.length
                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                    require 1 <= totalSupplyHistory.length
                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(-arg1)
                else:
                    totalSupplyHistory.length++
                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
            require arg1 <= 0
            if not balances[msg.sender].field_0:
                balances[msg.sender].field_0++
                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
            else:
                require 1 <= balances[msg.sender].field_0
                require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                    require 1 <= balances[msg.sender].field_0
                    require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(-arg1)
                else:
                    balances[msg.sender].field_0++
                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                    balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
        else:
            require 0 < mem[_1678]
            if mem[mem[_1678 + 32] + 16 len 16] > block.number:
                require arg1 <= 0
                if not totalSupplyHistory.length:
                    totalSupplyHistory.length++
                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                else:
                    require 1 <= totalSupplyHistory.length
                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                    if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(-arg1)
                    else:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                require arg1 <= 0
                if not balances[msg.sender].field_0:
                    balances[msg.sender].field_0++
                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                    balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                else:
                    require 1 <= balances[msg.sender].field_0
                    require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                    if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                        require 1 <= balances[msg.sender].field_0
                        require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                        balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(-arg1)
                    else:
                        balances[msg.sender].field_0++
                        balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                        balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
            else:
                require 1 <= mem[_1678]
                require mem[_1678] - 1 < mem[_1678]
                require 1 <= mem[_1678]
                if block.number >= mem[mem[_1678 + (32 * mem[_1678] - 1) + 32] + 16 len 16]:
                    require mem[_1678] - 1 < mem[_1678]
                    require arg1 <= 0
                    if not totalSupplyHistory.length:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                    else:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(-arg1)
                        else:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                    require arg1 <= mem[mem[(32 * mem[_1678] - 1) + _1678 + 32] + 48 len 16]
                    if not balances[msg.sender].field_0:
                        balances[msg.sender].field_0++
                        balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                        balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * mem[_1678] - 1) + _1678 + 32] + 48 len 16] - arg1)
                    else:
                        require 1 <= balances[msg.sender].field_0
                        require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                        if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                            require 1 <= balances[msg.sender].field_0
                            require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(mem[mem[(32 * mem[_1678] - 1) + _1678 + 32] + 48 len 16] - arg1)
                        else:
                            balances[msg.sender].field_0++
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                            balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * mem[_1678] - 1) + _1678 + 32] + 48 len 16] - arg1)
                else:
                    s = 0
                    idx = 0
                    while mem[_1678] - 1 > idx:
                        require idx >= 0
                        require idx + mem[_1678] / 2 < mem[_1678]
                        if mem[mem[_1678 + (16 * Mask(251, 1, idx + mem[_1678])) + 32] + 16 len 16] <= block.number:
                            s = idx + mem[_1678] / 2
                            idx = idx + mem[_1678] / 2
                            continue 
                        require 1 <= idx + mem[_1678] / 2
                        s = idx + mem[_1678] / 2
                        idx = idx
                        continue 
                    require idx < mem[_1678]
                    require arg1 <= 0
                    if not totalSupplyHistory.length:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                    else:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(-arg1)
                        else:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                    require arg1 <= mem[mem[(32 * idx) + _1678 + 32] + 48 len 16]
                    if not balances[msg.sender].field_0:
                        balances[msg.sender].field_0++
                        balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                        balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * idx) + _1678 + 32] + 48 len 16] - arg1)
                    else:
                        require 1 <= balances[msg.sender].field_0
                        require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                        if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                            require 1 <= balances[msg.sender].field_0
                            require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(mem[mem[(32 * idx) + _1678 + 32] + 48 len 16] - arg1)
                        else:
                            balances[msg.sender].field_0++
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                            balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * idx) + _1678 + 32] + 48 len 16] - arg1)
    else:
        require 0 < mem[96]
        if mem[mem[128] + 16 len 16] > block.number:
            mem[0] = msg.sender
            mem[32] = 5
            _1684 = mem[64]
            mem[64] = mem[64] + (32 * balances[address(msg.sender)].field_0) + 32
            mem[_1684] = balances[address(msg.sender)].field_0
            s = _1684 + 32
            idx = 0
            while idx < balances[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 5)
                _3338 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3338] = balances[address(msg.sender)][idx].field_0
                mem[_3338 + 32] = balances[address(msg.sender)][idx].field_128
                mem[s] = _3338
                s = s + 32
                idx = idx + 1
                continue 
            if not mem[_1684]:
                require arg1 <= 0
                if not totalSupplyHistory.length:
                    totalSupplyHistory.length++
                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                else:
                    require 1 <= totalSupplyHistory.length
                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                    if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(-arg1)
                    else:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                require arg1 <= 0
                if not balances[msg.sender].field_0:
                    balances[msg.sender].field_0++
                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                    balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                else:
                    require 1 <= balances[msg.sender].field_0
                    require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                    if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                        require 1 <= balances[msg.sender].field_0
                        require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                        balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(-arg1)
                    else:
                        balances[msg.sender].field_0++
                        balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                        balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
            else:
                require 0 < mem[_1684]
                if mem[mem[_1684 + 32] + 16 len 16] > block.number:
                    require arg1 <= 0
                    if not totalSupplyHistory.length:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                    else:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(-arg1)
                        else:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                    require arg1 <= 0
                    if not balances[msg.sender].field_0:
                        balances[msg.sender].field_0++
                        balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                        balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                    else:
                        require 1 <= balances[msg.sender].field_0
                        require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                        if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                            require 1 <= balances[msg.sender].field_0
                            require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(-arg1)
                        else:
                            balances[msg.sender].field_0++
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                            balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                else:
                    require 1 <= mem[_1684]
                    require mem[_1684] - 1 < mem[_1684]
                    require 1 <= mem[_1684]
                    if block.number >= mem[mem[_1684 + (32 * mem[_1684] - 1) + 32] + 16 len 16]:
                        require mem[_1684] - 1 < mem[_1684]
                        require arg1 <= 0
                        if not totalSupplyHistory.length:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                        else:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(-arg1)
                            else:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                        require arg1 <= mem[mem[(32 * mem[_1684] - 1) + _1684 + 32] + 48 len 16]
                        if not balances[msg.sender].field_0:
                            balances[msg.sender].field_0++
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                            balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * mem[_1684] - 1) + _1684 + 32] + 48 len 16] - arg1)
                        else:
                            require 1 <= balances[msg.sender].field_0
                            require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                            if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                                require 1 <= balances[msg.sender].field_0
                                require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(mem[mem[(32 * mem[_1684] - 1) + _1684 + 32] + 48 len 16] - arg1)
                            else:
                                balances[msg.sender].field_0++
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * mem[_1684] - 1) + _1684 + 32] + 48 len 16] - arg1)
                    else:
                        s = 0
                        idx = 0
                        while mem[_1684] - 1 > idx:
                            require idx >= 0
                            require idx + mem[_1684] / 2 < mem[_1684]
                            if mem[mem[_1684 + (16 * Mask(251, 1, idx + mem[_1684])) + 32] + 16 len 16] <= block.number:
                                s = idx + mem[_1684] / 2
                                idx = idx + mem[_1684] / 2
                                continue 
                            require 1 <= idx + mem[_1684] / 2
                            s = idx + mem[_1684] / 2
                            idx = idx
                            continue 
                        require idx < mem[_1684]
                        require arg1 <= 0
                        if not totalSupplyHistory.length:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                        else:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(-arg1)
                            else:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(-arg1)
                        require arg1 <= mem[mem[(32 * idx) + _1684 + 32] + 48 len 16]
                        if not balances[msg.sender].field_0:
                            balances[msg.sender].field_0++
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                            balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * idx) + _1684 + 32] + 48 len 16] - arg1)
                        else:
                            require 1 <= balances[msg.sender].field_0
                            require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                            if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                                require 1 <= balances[msg.sender].field_0
                                require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(mem[mem[(32 * idx) + _1684 + 32] + 48 len 16] - arg1)
                            else:
                                balances[msg.sender].field_0++
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * idx) + _1684 + 32] + 48 len 16] - arg1)
        else:
            require 1 <= mem[96]
            require mem[96] - 1 < mem[96]
            require 1 <= mem[96]
            if block.number >= mem[mem[(32 * mem[96] - 1) + 128] + 16 len 16]:
                require mem[96] - 1 < mem[96]
                _1689 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                mem[0] = msg.sender
                mem[32] = 5
                _1711 = mem[64]
                mem[64] = mem[64] + (32 * balances[address(msg.sender)].field_0) + 32
                mem[_1711] = balances[address(msg.sender)].field_0
                s = _1711 + 32
                idx = 0
                while idx < balances[address(msg.sender)].field_0:
                    mem[0] = sha3(address(msg.sender), 5)
                    _3336 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3336] = balances[address(msg.sender)][idx].field_0
                    mem[_3336 + 32] = balances[address(msg.sender)][idx].field_128
                    mem[s] = _3336
                    s = s + 32
                    idx = idx + 1
                    continue 
                if not mem[_1711]:
                    require arg1 <= uint128(_1689)
                    if not totalSupplyHistory.length:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_1689) - arg1)
                    else:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(uint128(_1689) - arg1)
                        else:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_1689) - arg1)
                    require arg1 <= 0
                    if not balances[msg.sender].field_0:
                        balances[msg.sender].field_0++
                        balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                        balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                    else:
                        require 1 <= balances[msg.sender].field_0
                        require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                        if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                            require 1 <= balances[msg.sender].field_0
                            require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(-arg1)
                        else:
                            balances[msg.sender].field_0++
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                            balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                else:
                    require 0 < mem[_1711]
                    if mem[mem[_1711 + 32] + 16 len 16] > block.number:
                        require arg1 <= uint128(_1689)
                        if not totalSupplyHistory.length:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_1689) - arg1)
                        else:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(uint128(_1689) - arg1)
                            else:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_1689) - arg1)
                        require arg1 <= 0
                        if not balances[msg.sender].field_0:
                            balances[msg.sender].field_0++
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                            balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                        else:
                            require 1 <= balances[msg.sender].field_0
                            require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                            if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                                require 1 <= balances[msg.sender].field_0
                                require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(-arg1)
                            else:
                                balances[msg.sender].field_0++
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                    else:
                        require 1 <= mem[_1711]
                        require mem[_1711] - 1 < mem[_1711]
                        require 1 <= mem[_1711]
                        if block.number >= mem[mem[_1711 + (32 * mem[_1711] - 1) + 32] + 16 len 16]:
                            require mem[_1711] - 1 < mem[_1711]
                            require arg1 <= uint128(_1689)
                            if not totalSupplyHistory.length:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_1689) - arg1)
                            else:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                    require 1 <= totalSupplyHistory.length
                                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(uint128(_1689) - arg1)
                                else:
                                    totalSupplyHistory.length++
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_1689) - arg1)
                            require arg1 <= mem[mem[(32 * mem[_1711] - 1) + _1711 + 32] + 48 len 16]
                            if not balances[msg.sender].field_0:
                                balances[msg.sender].field_0++
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * mem[_1711] - 1) + _1711 + 32] + 48 len 16] - arg1)
                            else:
                                require 1 <= balances[msg.sender].field_0
                                require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                                    require 1 <= balances[msg.sender].field_0
                                    require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(mem[mem[(32 * mem[_1711] - 1) + _1711 + 32] + 48 len 16] - arg1)
                                else:
                                    balances[msg.sender].field_0++
                                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                    balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * mem[_1711] - 1) + _1711 + 32] + 48 len 16] - arg1)
                        else:
                            s = 0
                            idx = 0
                            while mem[_1711] - 1 > idx:
                                require idx >= 0
                                require idx + mem[_1711] / 2 < mem[_1711]
                                if mem[mem[_1711 + (16 * Mask(251, 1, idx + mem[_1711])) + 32] + 16 len 16] <= block.number:
                                    s = idx + mem[_1711] / 2
                                    idx = idx + mem[_1711] / 2
                                    continue 
                                require 1 <= idx + mem[_1711] / 2
                                s = idx + mem[_1711] / 2
                                idx = idx
                                continue 
                            require idx < mem[_1711]
                            require arg1 <= uint128(_1689)
                            if not totalSupplyHistory.length:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_1689) - arg1)
                            else:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                    require 1 <= totalSupplyHistory.length
                                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(uint128(_1689) - arg1)
                                else:
                                    totalSupplyHistory.length++
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_1689) - arg1)
                            require arg1 <= mem[mem[(32 * idx) + _1711 + 32] + 48 len 16]
                            if not balances[msg.sender].field_0:
                                balances[msg.sender].field_0++
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * idx) + _1711 + 32] + 48 len 16] - arg1)
                            else:
                                require 1 <= balances[msg.sender].field_0
                                require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                                    require 1 <= balances[msg.sender].field_0
                                    require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(mem[mem[(32 * idx) + _1711 + 32] + 48 len 16] - arg1)
                                else:
                                    balances[msg.sender].field_0++
                                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                    balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * idx) + _1711 + 32] + 48 len 16] - arg1)
            else:
                s = 0
                idx = 0
                while mem[96] - 1 > idx:
                    require idx >= 0
                    require idx + mem[96] / 2 < mem[96]
                    if mem[mem[(16 * Mask(251, 1, idx + mem[96])) + 128] + 16 len 16] <= block.number:
                        s = idx + mem[96] / 2
                        idx = idx + mem[96] / 2
                        continue 
                    require 1 <= idx + mem[96] / 2
                    s = idx + mem[96] / 2
                    idx = idx
                    continue 
                require idx < mem[96]
                _3341 = mem[mem[(32 * idx) + 128] + 32]
                mem[0] = msg.sender
                mem[32] = 5
                _3371 = mem[64]
                mem[64] = mem[64] + (32 * balances[address(msg.sender)].field_0) + 32
                mem[_3371] = balances[address(msg.sender)].field_0
                s = _3371 + 32
                idx = 0
                while idx < balances[address(msg.sender)].field_0:
                    mem[0] = sha3(address(msg.sender), 5)
                    _4978 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4978] = balances[address(msg.sender)][idx].field_0
                    mem[_4978 + 32] = balances[address(msg.sender)][idx].field_128
                    mem[s] = _4978
                    s = s + 32
                    idx = idx + 1
                    continue 
                if not mem[_3371]:
                    require arg1 <= uint128(_3341)
                    if not totalSupplyHistory.length:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_3341) - arg1)
                    else:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(uint128(_3341) - arg1)
                        else:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_3341) - arg1)
                    require arg1 <= 0
                    if not balances[msg.sender].field_0:
                        balances[msg.sender].field_0++
                        balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                        balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                    else:
                        require 1 <= balances[msg.sender].field_0
                        require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                        if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                            require 1 <= balances[msg.sender].field_0
                            require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(-arg1)
                        else:
                            balances[msg.sender].field_0++
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                            balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                else:
                    require 0 < mem[_3371]
                    if mem[mem[_3371 + 32] + 16 len 16] > block.number:
                        require arg1 <= uint128(_3341)
                        if not totalSupplyHistory.length:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_3341) - arg1)
                        else:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(uint128(_3341) - arg1)
                            else:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_3341) - arg1)
                        require arg1 <= 0
                        if not balances[msg.sender].field_0:
                            balances[msg.sender].field_0++
                            balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                            balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                        else:
                            require 1 <= balances[msg.sender].field_0
                            require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                            if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                                require 1 <= balances[msg.sender].field_0
                                require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(-arg1)
                            else:
                                balances[msg.sender].field_0++
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(-arg1)
                    else:
                        require 1 <= mem[_3371]
                        require mem[_3371] - 1 < mem[_3371]
                        require 1 <= mem[_3371]
                        if block.number >= mem[mem[_3371 + (32 * mem[_3371] - 1) + 32] + 16 len 16]:
                            require mem[_3371] - 1 < mem[_3371]
                            require arg1 <= uint128(_3341)
                            if not totalSupplyHistory.length:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_3341) - arg1)
                            else:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                    require 1 <= totalSupplyHistory.length
                                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(uint128(_3341) - arg1)
                                else:
                                    totalSupplyHistory.length++
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_3341) - arg1)
                            require arg1 <= mem[mem[(32 * mem[_3371] - 1) + _3371 + 32] + 48 len 16]
                            if not balances[msg.sender].field_0:
                                balances[msg.sender].field_0++
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * mem[_3371] - 1) + _3371 + 32] + 48 len 16] - arg1)
                            else:
                                require 1 <= balances[msg.sender].field_0
                                require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                                    require 1 <= balances[msg.sender].field_0
                                    require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(mem[mem[(32 * mem[_3371] - 1) + _3371 + 32] + 48 len 16] - arg1)
                                else:
                                    balances[msg.sender].field_0++
                                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                    balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * mem[_3371] - 1) + _3371 + 32] + 48 len 16] - arg1)
                        else:
                            s = 0
                            idx = 0
                            while mem[_3371] - 1 > idx:
                                require idx >= 0
                                require idx + mem[_3371] / 2 < mem[_3371]
                                if mem[mem[_3371 + (16 * Mask(251, 1, idx + mem[_3371])) + 32] + 16 len 16] <= block.number:
                                    s = idx + mem[_3371] / 2
                                    idx = idx + mem[_3371] / 2
                                    continue 
                                require 1 <= idx + mem[_3371] / 2
                                s = idx + mem[_3371] / 2
                                idx = idx
                                continue 
                            require idx < mem[_3371]
                            require arg1 <= uint128(_3341)
                            if not totalSupplyHistory.length:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_3341) - arg1)
                            else:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                    require 1 <= totalSupplyHistory.length
                                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(uint128(_3341) - arg1)
                                else:
                                    totalSupplyHistory.length++
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(uint128(_3341) - arg1)
                            require arg1 <= mem[mem[(32 * idx) + _3371 + 32] + 48 len 16]
                            if not balances[msg.sender].field_0:
                                balances[msg.sender].field_0++
                                balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * idx) + _3371 + 32] + 48 len 16] - arg1)
                            else:
                                require 1 <= balances[msg.sender].field_0
                                require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                if balances[msg.sender][balances[msg.sender].field_0].field_0 >= block.number:
                                    require 1 <= balances[msg.sender].field_0
                                    require balances[msg.sender].field_0 - 1 < balances[msg.sender].field_0
                                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(mem[mem[(32 * idx) + _3371 + 32] + 48 len 16] - arg1)
                                else:
                                    balances[msg.sender].field_0++
                                    balances[msg.sender][balances[msg.sender].field_0].field_0 = uint128(block.number)
                                    balances[msg.sender][balances[msg.sender].field_0].field_128 = uint128(mem[mem[(32 * idx) + _3371 + 32] + 48 len 16] - arg1)
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    mem[64] = (32 * totalSupplyHistory.length) + 128
    mem[96] = totalSupplyHistory.length
    s = 128
    idx = 0
    while idx < totalSupplyHistory.length:
        mem[0] = 4
        _1956 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1956] = totalSupplyHistory[idx].field_0
        mem[_1956 + 32] = totalSupplyHistory[idx].field_128
        mem[s] = _1956
        s = s + 32
        idx = idx + 1
        continue 
    if not mem[96]:
        mem[0] = arg1
        mem[32] = 5
        _1966 = mem[64]
        mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
        mem[_1966] = balances[address(arg1)].field_0
        s = _1966 + 32
        idx = 0
        while idx < balances[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 5)
            _3909 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3909] = balances[address(arg1)][idx].field_0
            mem[_3909 + 32] = balances[address(arg1)][idx].field_128
            mem[s] = _3909
            s = s + 32
            idx = idx + 1
            continue 
        if not mem[_1966]:
            require arg2 >= 0
            if not totalSupplyHistory.length:
                totalSupplyHistory.length++
                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
            else:
                require 1 <= totalSupplyHistory.length
                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                    require 1 <= totalSupplyHistory.length
                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2)
                else:
                    totalSupplyHistory.length++
                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
            require arg2 >= 0
            if not balances[address(arg1)].field_0:
                balances[address(arg1)].field_0++
                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
            else:
                require 1 <= balances[address(arg1)].field_0
                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                    require 1 <= balances[address(arg1)].field_0
                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                else:
                    balances[address(arg1)].field_0++
                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
        else:
            require 0 < mem[_1966]
            if mem[mem[_1966 + 32] + 16 len 16] > block.number:
                require arg2 >= 0
                if not totalSupplyHistory.length:
                    totalSupplyHistory.length++
                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                else:
                    require 1 <= totalSupplyHistory.length
                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                    if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2)
                    else:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                require arg2 >= 0
                if not balances[address(arg1)].field_0:
                    balances[address(arg1)].field_0++
                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require 1 <= balances[address(arg1)].field_0
                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                    else:
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
            else:
                require 1 <= mem[_1966]
                require mem[_1966] - 1 < mem[_1966]
                require 1 <= mem[_1966]
                if block.number >= mem[mem[_1966 + (32 * mem[_1966] - 1) + 32] + 16 len 16]:
                    require mem[_1966] - 1 < mem[_1966]
                    require arg2 >= 0
                    if not totalSupplyHistory.length:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                    else:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2)
                        else:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                    require arg2 + mem[mem[(32 * mem[_1966] - 1) + _1966 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1966] - 1) + _1966 + 32] + 48 len 16]
                    if not balances[address(arg1)].field_0:
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1966] - 1) + _1966 + 32] + 48 len 16])
                    else:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1966] - 1) + _1966 + 32] + 48 len 16])
                        else:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1966] - 1) + _1966 + 32] + 48 len 16])
                else:
                    s = 0
                    idx = 0
                    while mem[_1966] - 1 > idx:
                        require idx >= 0
                        require idx + mem[_1966] / 2 < mem[_1966]
                        if mem[mem[_1966 + (16 * Mask(251, 1, idx + mem[_1966])) + 32] + 16 len 16] <= block.number:
                            s = idx + mem[_1966] / 2
                            idx = idx + mem[_1966] / 2
                            continue 
                        require 1 <= idx + mem[_1966] / 2
                        s = idx + mem[_1966] / 2
                        idx = idx
                        continue 
                    require idx < mem[_1966]
                    require arg2 >= 0
                    if not totalSupplyHistory.length:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                    else:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2)
                        else:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                    require arg2 + mem[mem[(32 * idx) + _1966 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1966 + 32] + 48 len 16]
                    if not balances[address(arg1)].field_0:
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1966 + 32] + 48 len 16])
                    else:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1966 + 32] + 48 len 16])
                        else:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1966 + 32] + 48 len 16])
    else:
        require 0 < mem[96]
        if mem[mem[128] + 16 len 16] > block.number:
            mem[0] = arg1
            mem[32] = 5
            _1972 = mem[64]
            mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
            mem[_1972] = balances[address(arg1)].field_0
            s = _1972 + 32
            idx = 0
            while idx < balances[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 5)
                _3914 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3914] = balances[address(arg1)][idx].field_0
                mem[_3914 + 32] = balances[address(arg1)][idx].field_128
                mem[s] = _3914
                s = s + 32
                idx = idx + 1
                continue 
            if not mem[_1972]:
                require arg2 >= 0
                if not totalSupplyHistory.length:
                    totalSupplyHistory.length++
                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                else:
                    require 1 <= totalSupplyHistory.length
                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                    if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2)
                    else:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                require arg2 >= 0
                if not balances[address(arg1)].field_0:
                    balances[address(arg1)].field_0++
                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require 1 <= balances[address(arg1)].field_0
                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                    else:
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
            else:
                require 0 < mem[_1972]
                if mem[mem[_1972 + 32] + 16 len 16] > block.number:
                    require arg2 >= 0
                    if not totalSupplyHistory.length:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                    else:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2)
                        else:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                    require arg2 >= 0
                    if not balances[address(arg1)].field_0:
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require 1 <= mem[_1972]
                    require mem[_1972] - 1 < mem[_1972]
                    require 1 <= mem[_1972]
                    if block.number >= mem[mem[_1972 + (32 * mem[_1972] - 1) + 32] + 16 len 16]:
                        require mem[_1972] - 1 < mem[_1972]
                        require arg2 >= 0
                        if not totalSupplyHistory.length:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                        else:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2)
                            else:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                        require arg2 + mem[mem[(32 * mem[_1972] - 1) + _1972 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1972] - 1) + _1972 + 32] + 48 len 16]
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1972] - 1) + _1972 + 32] + 48 len 16])
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1972] - 1) + _1972 + 32] + 48 len 16])
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1972] - 1) + _1972 + 32] + 48 len 16])
                    else:
                        s = 0
                        idx = 0
                        while mem[_1972] - 1 > idx:
                            require idx >= 0
                            require idx + mem[_1972] / 2 < mem[_1972]
                            if mem[mem[_1972 + (16 * Mask(251, 1, idx + mem[_1972])) + 32] + 16 len 16] <= block.number:
                                s = idx + mem[_1972] / 2
                                idx = idx + mem[_1972] / 2
                                continue 
                            require 1 <= idx + mem[_1972] / 2
                            s = idx + mem[_1972] / 2
                            idx = idx
                            continue 
                        require idx < mem[_1972]
                        require arg2 >= 0
                        if not totalSupplyHistory.length:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                        else:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2)
                            else:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2)
                        require arg2 + mem[mem[(32 * idx) + _1972 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1972 + 32] + 48 len 16]
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1972 + 32] + 48 len 16])
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1972 + 32] + 48 len 16])
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1972 + 32] + 48 len 16])
        else:
            require 1 <= mem[96]
            require mem[96] - 1 < mem[96]
            require 1 <= mem[96]
            if block.number >= mem[mem[(32 * mem[96] - 1) + 128] + 16 len 16]:
                require mem[96] - 1 < mem[96]
                _1977 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                mem[0] = arg1
                mem[32] = 5
                _1999 = mem[64]
                mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                mem[_1999] = balances[address(arg1)].field_0
                s = _1999 + 32
                idx = 0
                while idx < balances[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 5)
                    _3912 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3912] = balances[address(arg1)][idx].field_0
                    mem[_3912 + 32] = balances[address(arg1)][idx].field_128
                    mem[s] = _3912
                    s = s + 32
                    idx = idx + 1
                    continue 
                if not mem[_1999]:
                    require arg2 + uint128(_1977) >= uint128(_1977)
                    if not totalSupplyHistory.length:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_1977))
                    else:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2 + uint128(_1977))
                        else:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_1977))
                    require arg2 >= 0
                    if not balances[address(arg1)].field_0:
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require 0 < mem[_1999]
                    if mem[mem[_1999 + 32] + 16 len 16] > block.number:
                        require arg2 + uint128(_1977) >= uint128(_1977)
                        if not totalSupplyHistory.length:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_1977))
                        else:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2 + uint128(_1977))
                            else:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_1977))
                        require arg2 >= 0
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 1 <= mem[_1999]
                        require mem[_1999] - 1 < mem[_1999]
                        require 1 <= mem[_1999]
                        if block.number >= mem[mem[_1999 + (32 * mem[_1999] - 1) + 32] + 16 len 16]:
                            require mem[_1999] - 1 < mem[_1999]
                            require arg2 + uint128(_1977) >= uint128(_1977)
                            if not totalSupplyHistory.length:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_1977))
                            else:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                    require 1 <= totalSupplyHistory.length
                                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2 + uint128(_1977))
                                else:
                                    totalSupplyHistory.length++
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_1977))
                            require arg2 + mem[mem[(32 * mem[_1999] - 1) + _1999 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1999] - 1) + _1999 + 32] + 48 len 16]
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1999] - 1) + _1999 + 32] + 48 len 16])
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1999] - 1) + _1999 + 32] + 48 len 16])
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1999] - 1) + _1999 + 32] + 48 len 16])
                        else:
                            s = 0
                            idx = 0
                            while mem[_1999] - 1 > idx:
                                require idx >= 0
                                require idx + mem[_1999] / 2 < mem[_1999]
                                if mem[mem[_1999 + (16 * Mask(251, 1, idx + mem[_1999])) + 32] + 16 len 16] <= block.number:
                                    s = idx + mem[_1999] / 2
                                    idx = idx + mem[_1999] / 2
                                    continue 
                                require 1 <= idx + mem[_1999] / 2
                                s = idx + mem[_1999] / 2
                                idx = idx
                                continue 
                            require idx < mem[_1999]
                            require arg2 + uint128(_1977) >= uint128(_1977)
                            if not totalSupplyHistory.length:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_1977))
                            else:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                    require 1 <= totalSupplyHistory.length
                                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2 + uint128(_1977))
                                else:
                                    totalSupplyHistory.length++
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_1977))
                            require arg2 + mem[mem[(32 * idx) + _1999 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1999 + 32] + 48 len 16]
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1999 + 32] + 48 len 16])
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1999 + 32] + 48 len 16])
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1999 + 32] + 48 len 16])
            else:
                s = 0
                idx = 0
                while mem[96] - 1 > idx:
                    require idx >= 0
                    require idx + mem[96] / 2 < mem[96]
                    if mem[mem[(16 * Mask(251, 1, idx + mem[96])) + 128] + 16 len 16] <= block.number:
                        s = idx + mem[96] / 2
                        idx = idx + mem[96] / 2
                        continue 
                    require 1 <= idx + mem[96] / 2
                    s = idx + mem[96] / 2
                    idx = idx
                    continue 
                require idx < mem[96]
                _3917 = mem[mem[(32 * idx) + 128] + 32]
                mem[0] = arg1
                mem[32] = 5
                _3947 = mem[64]
                mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                mem[_3947] = balances[address(arg1)].field_0
                s = _3947 + 32
                idx = 0
                while idx < balances[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 5)
                    _5842 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5842] = balances[address(arg1)][idx].field_0
                    mem[_5842 + 32] = balances[address(arg1)][idx].field_128
                    mem[s] = _5842
                    s = s + 32
                    idx = idx + 1
                    continue 
                if not mem[_3947]:
                    require arg2 + uint128(_3917) >= uint128(_3917)
                    if not totalSupplyHistory.length:
                        totalSupplyHistory.length++
                        totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                        totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_3917))
                    else:
                        require 1 <= totalSupplyHistory.length
                        require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                        if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2 + uint128(_3917))
                        else:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_3917))
                    require arg2 >= 0
                    if not balances[address(arg1)].field_0:
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require 0 < mem[_3947]
                    if mem[mem[_3947 + 32] + 16 len 16] > block.number:
                        require arg2 + uint128(_3917) >= uint128(_3917)
                        if not totalSupplyHistory.length:
                            totalSupplyHistory.length++
                            totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                            totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_3917))
                        else:
                            require 1 <= totalSupplyHistory.length
                            require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                            if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2 + uint128(_3917))
                            else:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_3917))
                        require arg2 >= 0
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 1 <= mem[_3947]
                        require mem[_3947] - 1 < mem[_3947]
                        require 1 <= mem[_3947]
                        if block.number >= mem[mem[_3947 + (32 * mem[_3947] - 1) + 32] + 16 len 16]:
                            require mem[_3947] - 1 < mem[_3947]
                            require arg2 + uint128(_3917) >= uint128(_3917)
                            if not totalSupplyHistory.length:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_3917))
                            else:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                    require 1 <= totalSupplyHistory.length
                                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2 + uint128(_3917))
                                else:
                                    totalSupplyHistory.length++
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_3917))
                            require arg2 + mem[mem[(32 * mem[_3947] - 1) + _3947 + 32] + 48 len 16] >= mem[mem[(32 * mem[_3947] - 1) + _3947 + 32] + 48 len 16]
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_3947] - 1) + _3947 + 32] + 48 len 16])
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_3947] - 1) + _3947 + 32] + 48 len 16])
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_3947] - 1) + _3947 + 32] + 48 len 16])
                        else:
                            s = 0
                            idx = 0
                            while mem[_3947] - 1 > idx:
                                require idx >= 0
                                require idx + mem[_3947] / 2 < mem[_3947]
                                if mem[mem[_3947 + (16 * Mask(251, 1, idx + mem[_3947])) + 32] + 16 len 16] <= block.number:
                                    s = idx + mem[_3947] / 2
                                    idx = idx + mem[_3947] / 2
                                    continue 
                                require 1 <= idx + mem[_3947] / 2
                                s = idx + mem[_3947] / 2
                                idx = idx
                                continue 
                            require idx < mem[_3947]
                            require arg2 + uint128(_3917) >= uint128(_3917)
                            if not totalSupplyHistory.length:
                                totalSupplyHistory.length++
                                totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_3917))
                            else:
                                require 1 <= totalSupplyHistory.length
                                require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                if totalSupplyHistory[totalSupplyHistory.length].field_0 >= block.number:
                                    require 1 <= totalSupplyHistory.length
                                    require totalSupplyHistory.length - 1 < totalSupplyHistory.length
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(arg2 + uint128(_3917))
                                else:
                                    totalSupplyHistory.length++
                                    totalSupplyHistory[totalSupplyHistory.length].field_0 = uint128(block.number)
                                    totalSupplyHistory[totalSupplyHistory.length].field_128 = uint128(arg2 + uint128(_3917))
                            require arg2 + mem[mem[(32 * idx) + _3947 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _3947 + 32] + 48 len 16]
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _3947 + 32] + 48 len 16])
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _3947 + 32] + 48 len 16])
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _3947 + 32] + 48 len 16])
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_168)
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'amount > allowance'
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if arg3:
        if not arg2:
            revert with 0, 'cannot transfer to 0x0 or self'
        if this.address == arg2:
            revert with 0, 'cannot transfer to 0x0 or self'
        mem[0] = arg1
        mem[32] = 5
        mem[64] = (32 * balances[address(arg1)].field_0) + 128
        mem[96] = balances[address(arg1)].field_0
        s = 128
        idx = 0
        while idx < balances[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 5)
            _1763 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1763] = balances[address(arg1)][idx].field_0
            mem[_1763 + 32] = balances[address(arg1)][idx].field_128
            mem[s] = _1763
            s = s + 32
            idx = idx + 1
            continue 
        if not mem[96]:
            if 0 < arg3:
                revert with 0, 'amount > balance'
            mem[0] = arg1
            mem[32] = 5
            require arg3 <= 0
            if not balances[address(arg1)].field_0:
                _1780 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1780] = uint128(block.number)
                mem[_1780 + 32] = uint128(-arg3)
                balances[address(arg1)].field_0++
                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(-arg3)
                mem[0] = arg2
                mem[32] = 5
                _1796 = mem[64]
                mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                mem[_1796] = balances[address(arg2)].field_0
                s = _1796 + 32
                idx = 0
                while idx < balances[address(arg2)].field_0:
                    mem[0] = sha3(address(arg2), 5)
                    _3504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3504] = balances[address(arg2)][idx].field_0
                    mem[_3504 + 32] = balances[address(arg2)][idx].field_128
                    mem[s] = _3504
                    s = s + 32
                    idx = idx + 1
                    continue 
                if not mem[_1796]:
                    require arg3 >= 0
                    if not balances[address(arg2)].field_0:
                        balances[address(arg2)].field_0++
                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                    else:
                        require 1 <= balances[address(arg2)].field_0
                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(arg2)].field_0
                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                        else:
                            balances[address(arg2)].field_0++
                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                else:
                    require 0 < mem[_1796]
                    if mem[mem[_1796 + 32] + 16 len 16] > block.number:
                        require arg3 >= 0
                        if not balances[address(arg2)].field_0:
                            balances[address(arg2)].field_0++
                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 1 <= balances[address(arg2)].field_0
                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                            else:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                    else:
                        require 1 <= mem[_1796]
                        require mem[_1796] - 1 < mem[_1796]
                        require 1 <= mem[_1796]
                        if block.number >= mem[mem[_1796 + (32 * mem[_1796] - 1) + 32] + 16 len 16]:
                            require mem[_1796] - 1 < mem[_1796]
                            require arg3 + mem[mem[(32 * mem[_1796] - 1) + _1796 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1796] - 1) + _1796 + 32] + 48 len 16]
                            if not balances[address(arg2)].field_0:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1796] - 1) + _1796 + 32] + 48 len 16])
                            else:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_1796] - 1) + _1796 + 32] + 48 len 16])
                                else:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1796] - 1) + _1796 + 32] + 48 len 16])
                        else:
                            s = 0
                            idx = 0
                            while mem[_1796] - 1 > idx:
                                require idx >= 0
                                require idx + mem[_1796] / 2 < mem[_1796]
                                if mem[mem[_1796 + (16 * Mask(251, 1, idx + mem[_1796])) + 32] + 16 len 16] <= block.number:
                                    s = idx + mem[_1796] / 2
                                    idx = idx + mem[_1796] / 2
                                    continue 
                                require 1 <= idx + mem[_1796] / 2
                                s = idx + mem[_1796] / 2
                                idx = idx
                                continue 
                            require idx < mem[_1796]
                            require arg3 + mem[mem[(32 * idx) + _1796 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1796 + 32] + 48 len 16]
                            if not balances[address(arg2)].field_0:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1796 + 32] + 48 len 16])
                            else:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _1796 + 32] + 48 len 16])
                                else:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1796 + 32] + 48 len 16])
            else:
                require 1 <= balances[address(arg1)].field_0
                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 5)
                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                    require 1 <= balances[address(arg1)].field_0
                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(-arg3)
                    mem[0] = arg2
                    mem[32] = 5
                    _1838 = mem[64]
                    mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                    mem[_1838] = balances[address(arg2)].field_0
                    s = _1838 + 32
                    idx = 0
                    while idx < balances[address(arg2)].field_0:
                        mem[0] = sha3(address(arg2), 5)
                        _3506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3506] = balances[address(arg2)][idx].field_0
                        mem[_3506 + 32] = balances[address(arg2)][idx].field_128
                        mem[s] = _3506
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if not mem[_1838]:
                        require arg3 >= 0
                        if not balances[address(arg2)].field_0:
                            balances[address(arg2)].field_0++
                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 1 <= balances[address(arg2)].field_0
                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                            else:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                    else:
                        require 0 < mem[_1838]
                        if mem[mem[_1838 + 32] + 16 len 16] > block.number:
                            require arg3 >= 0
                            if not balances[address(arg2)].field_0:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                else:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 1 <= mem[_1838]
                            require mem[_1838] - 1 < mem[_1838]
                            require 1 <= mem[_1838]
                            if block.number >= mem[mem[_1838 + (32 * mem[_1838] - 1) + 32] + 16 len 16]:
                                require mem[_1838] - 1 < mem[_1838]
                                require arg3 + mem[mem[(32 * mem[_1838] - 1) + _1838 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1838] - 1) + _1838 + 32] + 48 len 16]
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1838] - 1) + _1838 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_1838] - 1) + _1838 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1838] - 1) + _1838 + 32] + 48 len 16])
                            else:
                                s = 0
                                idx = 0
                                while mem[_1838] - 1 > idx:
                                    require idx >= 0
                                    require idx + mem[_1838] / 2 < mem[_1838]
                                    if mem[mem[_1838 + (16 * Mask(251, 1, idx + mem[_1838])) + 32] + 16 len 16] <= block.number:
                                        s = idx + mem[_1838] / 2
                                        idx = idx + mem[_1838] / 2
                                        continue 
                                    require 1 <= idx + mem[_1838] / 2
                                    s = idx + mem[_1838] / 2
                                    idx = idx
                                    continue 
                                require idx < mem[_1838]
                                require arg3 + mem[mem[(32 * idx) + _1838 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1838 + 32] + 48 len 16]
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1838 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _1838 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1838 + 32] + 48 len 16])
                else:
                    _1797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1797] = uint128(block.number)
                    mem[_1797 + 32] = uint128(-arg3)
                    balances[address(arg1)].field_0++
                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(-arg3)
                    mem[0] = arg2
                    mem[32] = 5
                    _1821 = mem[64]
                    mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                    mem[_1821] = balances[address(arg2)].field_0
                    s = _1821 + 32
                    idx = 0
                    while idx < balances[address(arg2)].field_0:
                        mem[0] = sha3(address(arg2), 5)
                        _3508 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3508] = balances[address(arg2)][idx].field_0
                        mem[_3508 + 32] = balances[address(arg2)][idx].field_128
                        mem[s] = _3508
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if not mem[_1821]:
                        require arg3 >= 0
                        if not balances[address(arg2)].field_0:
                            balances[address(arg2)].field_0++
                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 1 <= balances[address(arg2)].field_0
                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                            else:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                    else:
                        require 0 < mem[_1821]
                        if mem[mem[_1821 + 32] + 16 len 16] > block.number:
                            require arg3 >= 0
                            if not balances[address(arg2)].field_0:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                else:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 1 <= mem[_1821]
                            require mem[_1821] - 1 < mem[_1821]
                            require 1 <= mem[_1821]
                            if block.number >= mem[mem[_1821 + (32 * mem[_1821] - 1) + 32] + 16 len 16]:
                                require mem[_1821] - 1 < mem[_1821]
                                require arg3 + mem[mem[(32 * mem[_1821] - 1) + _1821 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1821] - 1) + _1821 + 32] + 48 len 16]
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1821] - 1) + _1821 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_1821] - 1) + _1821 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1821] - 1) + _1821 + 32] + 48 len 16])
                            else:
                                s = 0
                                idx = 0
                                while mem[_1821] - 1 > idx:
                                    require idx >= 0
                                    require idx + mem[_1821] / 2 < mem[_1821]
                                    if mem[mem[_1821 + (16 * Mask(251, 1, idx + mem[_1821])) + 32] + 16 len 16] <= block.number:
                                        s = idx + mem[_1821] / 2
                                        idx = idx + mem[_1821] / 2
                                        continue 
                                    require 1 <= idx + mem[_1821] / 2
                                    s = idx + mem[_1821] / 2
                                    idx = idx
                                    continue 
                                require idx < mem[_1821]
                                require arg3 + mem[mem[(32 * idx) + _1821 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1821 + 32] + 48 len 16]
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1821 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _1821 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1821 + 32] + 48 len 16])
        else:
            require 0 < mem[96]
            if mem[mem[128] + 16 len 16] > block.number:
                if 0 < arg3:
                    revert with 0, 'amount > balance'
                mem[0] = arg1
                mem[32] = 5
                require arg3 <= 0
                if not balances[address(arg1)].field_0:
                    _1787 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1787] = uint128(block.number)
                    mem[_1787 + 32] = uint128(-arg3)
                    balances[address(arg1)].field_0++
                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(-arg3)
                    mem[0] = arg2
                    mem[32] = 5
                    _1805 = mem[64]
                    mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                    mem[_1805] = balances[address(arg2)].field_0
                    s = _1805 + 32
                    idx = 0
                    while idx < balances[address(arg2)].field_0:
                        mem[0] = sha3(address(arg2), 5)
                        _3517 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3517] = balances[address(arg2)][idx].field_0
                        mem[_3517 + 32] = balances[address(arg2)][idx].field_128
                        mem[s] = _3517
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if not mem[_1805]:
                        require arg3 >= 0
                        if not balances[address(arg2)].field_0:
                            balances[address(arg2)].field_0++
                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 1 <= balances[address(arg2)].field_0
                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                            else:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                    else:
                        require 0 < mem[_1805]
                        if mem[mem[_1805 + 32] + 16 len 16] > block.number:
                            require arg3 >= 0
                            if not balances[address(arg2)].field_0:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                else:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 1 <= mem[_1805]
                            require mem[_1805] - 1 < mem[_1805]
                            require 1 <= mem[_1805]
                            if block.number >= mem[mem[_1805 + (32 * mem[_1805] - 1) + 32] + 16 len 16]:
                                require mem[_1805] - 1 < mem[_1805]
                                require arg3 + mem[mem[(32 * mem[_1805] - 1) + _1805 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1805] - 1) + _1805 + 32] + 48 len 16]
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1805] - 1) + _1805 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_1805] - 1) + _1805 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1805] - 1) + _1805 + 32] + 48 len 16])
                            else:
                                s = 0
                                idx = 0
                                while mem[_1805] - 1 > idx:
                                    require idx >= 0
                                    require idx + mem[_1805] / 2 < mem[_1805]
                                    if mem[mem[_1805 + (16 * Mask(251, 1, idx + mem[_1805])) + 32] + 16 len 16] <= block.number:
                                        s = idx + mem[_1805] / 2
                                        idx = idx + mem[_1805] / 2
                                        continue 
                                    require 1 <= idx + mem[_1805] / 2
                                    s = idx + mem[_1805] / 2
                                    idx = idx
                                    continue 
                                require idx < mem[_1805]
                                require arg3 + mem[mem[(32 * idx) + _1805 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1805 + 32] + 48 len 16]
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1805 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _1805 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1805 + 32] + 48 len 16])
                else:
                    require 1 <= balances[address(arg1)].field_0
                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(-arg3)
                        mem[0] = arg2
                        mem[32] = 5
                        _1857 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                        mem[_1857] = balances[address(arg2)].field_0
                        s = _1857 + 32
                        idx = 0
                        while idx < balances[address(arg2)].field_0:
                            mem[0] = sha3(address(arg2), 5)
                            _3519 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3519] = balances[address(arg2)][idx].field_0
                            mem[_3519 + 32] = balances[address(arg2)][idx].field_128
                            mem[s] = _3519
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_1857]:
                            require arg3 >= 0
                            if not balances[address(arg2)].field_0:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                else:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 0 < mem[_1857]
                            if mem[mem[_1857 + 32] + 16 len 16] > block.number:
                                require arg3 >= 0
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= mem[_1857]
                                require mem[_1857] - 1 < mem[_1857]
                                require 1 <= mem[_1857]
                                if block.number >= mem[mem[_1857 + (32 * mem[_1857] - 1) + 32] + 16 len 16]:
                                    require mem[_1857] - 1 < mem[_1857]
                                    require arg3 + mem[mem[(32 * mem[_1857] - 1) + _1857 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1857] - 1) + _1857 + 32] + 48 len 16]
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1857] - 1) + _1857 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_1857] - 1) + _1857 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1857] - 1) + _1857 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_1857] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_1857] / 2 < mem[_1857]
                                        if mem[mem[_1857 + (16 * Mask(251, 1, idx + mem[_1857])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_1857] / 2
                                            idx = idx + mem[_1857] / 2
                                            continue 
                                        require 1 <= idx + mem[_1857] / 2
                                        s = idx + mem[_1857] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_1857]
                                    require arg3 + mem[mem[(32 * idx) + _1857 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1857 + 32] + 48 len 16]
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1857 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _1857 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1857 + 32] + 48 len 16])
                    else:
                        _1806 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1806] = uint128(block.number)
                        mem[_1806 + 32] = uint128(-arg3)
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(-arg3)
                        mem[0] = arg2
                        mem[32] = 5
                        _1834 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                        mem[_1834] = balances[address(arg2)].field_0
                        s = _1834 + 32
                        idx = 0
                        while idx < balances[address(arg2)].field_0:
                            mem[0] = sha3(address(arg2), 5)
                            _3521 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3521] = balances[address(arg2)][idx].field_0
                            mem[_3521 + 32] = balances[address(arg2)][idx].field_128
                            mem[s] = _3521
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_1834]:
                            require arg3 >= 0
                            if not balances[address(arg2)].field_0:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                else:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 0 < mem[_1834]
                            if mem[mem[_1834 + 32] + 16 len 16] > block.number:
                                require arg3 >= 0
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= mem[_1834]
                                require mem[_1834] - 1 < mem[_1834]
                                require 1 <= mem[_1834]
                                if block.number >= mem[mem[_1834 + (32 * mem[_1834] - 1) + 32] + 16 len 16]:
                                    require mem[_1834] - 1 < mem[_1834]
                                    require arg3 + mem[mem[(32 * mem[_1834] - 1) + _1834 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1834] - 1) + _1834 + 32] + 48 len 16]
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1834] - 1) + _1834 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_1834] - 1) + _1834 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1834] - 1) + _1834 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_1834] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_1834] / 2 < mem[_1834]
                                        if mem[mem[_1834 + (16 * Mask(251, 1, idx + mem[_1834])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_1834] / 2
                                            idx = idx + mem[_1834] / 2
                                            continue 
                                        require 1 <= idx + mem[_1834] / 2
                                        s = idx + mem[_1834] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_1834]
                                    require arg3 + mem[mem[(32 * idx) + _1834 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1834 + 32] + 48 len 16]
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1834 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _1834 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1834 + 32] + 48 len 16])
            else:
                require 1 <= mem[96]
                require mem[96] - 1 < mem[96]
                require 1 <= mem[96]
                if block.number >= mem[mem[(32 * mem[96] - 1) + 128] + 16 len 16]:
                    require mem[96] - 1 < mem[96]
                    _1786 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                    if mem[mem[(32 * mem[96] - 1) + 128] + 48 len 16] < arg3:
                        revert with 0, 'amount > balance'
                    mem[0] = arg1
                    mem[32] = 5
                    require arg3 <= uint128(_1786)
                    if not balances[address(arg1)].field_0:
                        _1843 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1843] = uint128(block.number)
                        mem[_1843 + 32] = uint128(uint128(_1786) - arg3)
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(uint128(_1786) - arg3)
                        mem[0] = arg2
                        mem[32] = 5
                        _1889 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                        mem[_1889] = balances[address(arg2)].field_0
                        s = _1889 + 32
                        idx = 0
                        while idx < balances[address(arg2)].field_0:
                            mem[0] = sha3(address(arg2), 5)
                            _3511 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3511] = balances[address(arg2)][idx].field_0
                            mem[_3511 + 32] = balances[address(arg2)][idx].field_128
                            mem[s] = _3511
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_1889]:
                            require arg3 >= 0
                            if not balances[address(arg2)].field_0:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                else:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 0 < mem[_1889]
                            if mem[mem[_1889 + 32] + 16 len 16] > block.number:
                                require arg3 >= 0
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= mem[_1889]
                                require mem[_1889] - 1 < mem[_1889]
                                require 1 <= mem[_1889]
                                if block.number >= mem[mem[_1889 + (32 * mem[_1889] - 1) + 32] + 16 len 16]:
                                    require mem[_1889] - 1 < mem[_1889]
                                    require arg3 + mem[mem[(32 * mem[_1889] - 1) + _1889 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1889] - 1) + _1889 + 32] + 48 len 16]
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1889] - 1) + _1889 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_1889] - 1) + _1889 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1889] - 1) + _1889 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_1889] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_1889] / 2 < mem[_1889]
                                        if mem[mem[_1889 + (16 * Mask(251, 1, idx + mem[_1889])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_1889] / 2
                                            idx = idx + mem[_1889] / 2
                                            continue 
                                        require 1 <= idx + mem[_1889] / 2
                                        s = idx + mem[_1889] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_1889]
                                    require arg3 + mem[mem[(32 * idx) + _1889 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1889 + 32] + 48 len 16]
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1889 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _1889 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1889 + 32] + 48 len 16])
                    else:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(uint128(_1786) - arg3)
                            mem[0] = arg2
                            mem[32] = 5
                            _2047 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                            mem[_2047] = balances[address(arg2)].field_0
                            s = _2047 + 32
                            idx = 0
                            while idx < balances[address(arg2)].field_0:
                                mem[0] = sha3(address(arg2), 5)
                                _3513 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3513] = balances[address(arg2)][idx].field_0
                                mem[_3513 + 32] = balances[address(arg2)][idx].field_128
                                mem[s] = _3513
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_2047]:
                                require arg3 >= 0
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 0 < mem[_2047]
                                if mem[mem[_2047 + 32] + 16 len 16] > block.number:
                                    require arg3 >= 0
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= mem[_2047]
                                    require mem[_2047] - 1 < mem[_2047]
                                    require 1 <= mem[_2047]
                                    if block.number >= mem[mem[_2047 + (32 * mem[_2047] - 1) + 32] + 16 len 16]:
                                        require mem[_2047] - 1 < mem[_2047]
                                        require arg3 + mem[mem[(32 * mem[_2047] - 1) + _2047 + 32] + 48 len 16] >= mem[mem[(32 * mem[_2047] - 1) + _2047 + 32] + 48 len 16]
                                        if not balances[address(arg2)].field_0:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_2047] - 1) + _2047 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg2)].field_0
                                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_2047] - 1) + _2047 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg2)].field_0++
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_2047] - 1) + _2047 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_2047] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_2047] / 2 < mem[_2047]
                                            if mem[mem[_2047 + (16 * Mask(251, 1, idx + mem[_2047])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_2047] / 2
                                                idx = idx + mem[_2047] / 2
                                                continue 
                                            require 1 <= idx + mem[_2047] / 2
                                            s = idx + mem[_2047] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_2047]
                                        require arg3 + mem[mem[(32 * idx) + _2047 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _2047 + 32] + 48 len 16]
                                        if not balances[address(arg2)].field_0:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _2047 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg2)].field_0
                                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _2047 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg2)].field_0++
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _2047 + 32] + 48 len 16])
                        else:
                            _1890 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1890] = uint128(block.number)
                            mem[_1890 + 32] = uint128(uint128(_1786) - arg3)
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(uint128(_1786) - arg3)
                            mem[0] = arg2
                            mem[32] = 5
                            _1977 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                            mem[_1977] = balances[address(arg2)].field_0
                            s = _1977 + 32
                            idx = 0
                            while idx < balances[address(arg2)].field_0:
                                mem[0] = sha3(address(arg2), 5)
                                _3515 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3515] = balances[address(arg2)][idx].field_0
                                mem[_3515 + 32] = balances[address(arg2)][idx].field_128
                                mem[s] = _3515
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_1977]:
                                require arg3 >= 0
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 0 < mem[_1977]
                                if mem[mem[_1977 + 32] + 16 len 16] > block.number:
                                    require arg3 >= 0
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= mem[_1977]
                                    require mem[_1977] - 1 < mem[_1977]
                                    require 1 <= mem[_1977]
                                    if block.number >= mem[mem[_1977 + (32 * mem[_1977] - 1) + 32] + 16 len 16]:
                                        require mem[_1977] - 1 < mem[_1977]
                                        require arg3 + mem[mem[(32 * mem[_1977] - 1) + _1977 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1977] - 1) + _1977 + 32] + 48 len 16]
                                        if not balances[address(arg2)].field_0:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1977] - 1) + _1977 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg2)].field_0
                                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_1977] - 1) + _1977 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg2)].field_0++
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_1977] - 1) + _1977 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_1977] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_1977] / 2 < mem[_1977]
                                            if mem[mem[_1977 + (16 * Mask(251, 1, idx + mem[_1977])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_1977] / 2
                                                idx = idx + mem[_1977] / 2
                                                continue 
                                            require 1 <= idx + mem[_1977] / 2
                                            s = idx + mem[_1977] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_1977]
                                        require arg3 + mem[mem[(32 * idx) + _1977 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1977 + 32] + 48 len 16]
                                        if not balances[address(arg2)].field_0:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1977 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg2)].field_0
                                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _1977 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg2)].field_0++
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _1977 + 32] + 48 len 16])
                else:
                    s = 0
                    idx = 0
                    while mem[96] - 1 > idx:
                        require idx >= 0
                        require idx + mem[96] / 2 < mem[96]
                        if mem[mem[(16 * Mask(251, 1, idx + mem[96])) + 128] + 16 len 16] <= block.number:
                            s = idx + mem[96] / 2
                            idx = idx + mem[96] / 2
                            continue 
                        require 1 <= idx + mem[96] / 2
                        s = idx + mem[96] / 2
                        idx = idx
                        continue 
                    require idx < mem[96]
                    _3526 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 48 len 16] < arg3:
                        revert with 0, 'amount > balance'
                    mem[0] = arg1
                    mem[32] = 5
                    require arg3 <= uint128(_3526)
                    if not balances[address(arg1)].field_0:
                        _3674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3674] = uint128(block.number)
                        mem[_3674 + 32] = uint128(uint128(_3526) - arg3)
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(uint128(_3526) - arg3)
                        mem[0] = arg2
                        mem[32] = 5
                        _3914 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                        mem[_3914] = balances[address(arg2)].field_0
                        s = _3914 + 32
                        idx = 0
                        while idx < balances[address(arg2)].field_0:
                            mem[0] = sha3(address(arg2), 5)
                            _5176 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5176] = balances[address(arg2)][idx].field_0
                            mem[_5176 + 32] = balances[address(arg2)][idx].field_128
                            mem[s] = _5176
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_3914]:
                            require arg3 >= 0
                            if not balances[address(arg2)].field_0:
                                balances[address(arg2)].field_0++
                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= balances[address(arg2)].field_0
                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                else:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                        else:
                            require 0 < mem[_3914]
                            if mem[mem[_3914 + 32] + 16 len 16] > block.number:
                                require arg3 >= 0
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 1 <= mem[_3914]
                                require mem[_3914] - 1 < mem[_3914]
                                require 1 <= mem[_3914]
                                if block.number >= mem[mem[_3914 + (32 * mem[_3914] - 1) + 32] + 16 len 16]:
                                    require mem[_3914] - 1 < mem[_3914]
                                    require arg3 + mem[mem[(32 * mem[_3914] - 1) + _3914 + 32] + 48 len 16] >= mem[mem[(32 * mem[_3914] - 1) + _3914 + 32] + 48 len 16]
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_3914] - 1) + _3914 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_3914] - 1) + _3914 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_3914] - 1) + _3914 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_3914] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_3914] / 2 < mem[_3914]
                                        if mem[mem[_3914 + (16 * Mask(251, 1, idx + mem[_3914])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_3914] / 2
                                            idx = idx + mem[_3914] / 2
                                            continue 
                                        require 1 <= idx + mem[_3914] / 2
                                        s = idx + mem[_3914] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_3914]
                                    require arg3 + mem[mem[(32 * idx) + _3914 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _3914 + 32] + 48 len 16]
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _3914 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _3914 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _3914 + 32] + 48 len 16])
                    else:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(uint128(_3526) - arg3)
                            mem[0] = arg2
                            mem[32] = 5
                            _4248 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                            mem[_4248] = balances[address(arg2)].field_0
                            s = _4248 + 32
                            idx = 0
                            while idx < balances[address(arg2)].field_0:
                                mem[0] = sha3(address(arg2), 5)
                                _5178 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5178] = balances[address(arg2)][idx].field_0
                                mem[_5178 + 32] = balances[address(arg2)][idx].field_128
                                mem[s] = _5178
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_4248]:
                                require arg3 >= 0
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 0 < mem[_4248]
                                if mem[mem[_4248 + 32] + 16 len 16] > block.number:
                                    require arg3 >= 0
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= mem[_4248]
                                    require mem[_4248] - 1 < mem[_4248]
                                    require 1 <= mem[_4248]
                                    if block.number >= mem[mem[_4248 + (32 * mem[_4248] - 1) + 32] + 16 len 16]:
                                        require mem[_4248] - 1 < mem[_4248]
                                        require arg3 + mem[mem[(32 * mem[_4248] - 1) + _4248 + 32] + 48 len 16] >= mem[mem[(32 * mem[_4248] - 1) + _4248 + 32] + 48 len 16]
                                        if not balances[address(arg2)].field_0:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_4248] - 1) + _4248 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg2)].field_0
                                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_4248] - 1) + _4248 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg2)].field_0++
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_4248] - 1) + _4248 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_4248] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_4248] / 2 < mem[_4248]
                                            if mem[mem[_4248 + (16 * Mask(251, 1, idx + mem[_4248])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_4248] / 2
                                                idx = idx + mem[_4248] / 2
                                                continue 
                                            require 1 <= idx + mem[_4248] / 2
                                            s = idx + mem[_4248] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_4248]
                                        require arg3 + mem[mem[(32 * idx) + _4248 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _4248 + 32] + 48 len 16]
                                        if not balances[address(arg2)].field_0:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _4248 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg2)].field_0
                                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _4248 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg2)].field_0++
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _4248 + 32] + 48 len 16])
                        else:
                            _3915 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3915] = uint128(block.number)
                            mem[_3915 + 32] = uint128(uint128(_3526) - arg3)
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(uint128(_3526) - arg3)
                            mem[0] = arg2
                            mem[32] = 5
                            _4137 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg2)].field_0) + 32
                            mem[_4137] = balances[address(arg2)].field_0
                            s = _4137 + 32
                            idx = 0
                            while idx < balances[address(arg2)].field_0:
                                mem[0] = sha3(address(arg2), 5)
                                _5180 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5180] = balances[address(arg2)][idx].field_0
                                mem[_5180 + 32] = balances[address(arg2)][idx].field_128
                                mem[s] = _5180
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_4137]:
                                require arg3 >= 0
                                if not balances[address(arg2)].field_0:
                                    balances[address(arg2)].field_0++
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= balances[address(arg2)].field_0
                                    require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                    if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                    else:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                            else:
                                require 0 < mem[_4137]
                                if mem[mem[_4137 + 32] + 16 len 16] > block.number:
                                    require arg3 >= 0
                                    if not balances[address(arg2)].field_0:
                                        balances[address(arg2)].field_0++
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                    else:
                                        require 1 <= balances[address(arg2)].field_0
                                        require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                        if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3)
                                        else:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3)
                                else:
                                    require 1 <= mem[_4137]
                                    require mem[_4137] - 1 < mem[_4137]
                                    require 1 <= mem[_4137]
                                    if block.number >= mem[mem[_4137 + (32 * mem[_4137] - 1) + 32] + 16 len 16]:
                                        require mem[_4137] - 1 < mem[_4137]
                                        require arg3 + mem[mem[(32 * mem[_4137] - 1) + _4137 + 32] + 48 len 16] >= mem[mem[(32 * mem[_4137] - 1) + _4137 + 32] + 48 len 16]
                                        if not balances[address(arg2)].field_0:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_4137] - 1) + _4137 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg2)].field_0
                                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * mem[_4137] - 1) + _4137 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg2)].field_0++
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * mem[_4137] - 1) + _4137 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_4137] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_4137] / 2 < mem[_4137]
                                            if mem[mem[_4137 + (16 * Mask(251, 1, idx + mem[_4137])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_4137] / 2
                                                idx = idx + mem[_4137] / 2
                                                continue 
                                            require 1 <= idx + mem[_4137] / 2
                                            s = idx + mem[_4137] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_4137]
                                        require arg3 + mem[mem[(32 * idx) + _4137 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _4137 + 32] + 48 len 16]
                                        if not balances[address(arg2)].field_0:
                                            balances[address(arg2)].field_0++
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _4137 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg2)].field_0
                                            require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                            if balances[address(arg2)][balances[address(arg2)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg2)].field_0
                                                require balances[address(arg2)].field_0 - 1 < balances[address(arg2)].field_0
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(arg3 + mem[mem[(32 * idx) + _4137 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg2)].field_0++
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg2)][balances[address(arg2)].field_0].field_128 = uint128(arg3 + mem[mem[(32 * idx) + _4137 + 32] + 48 len 16])
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_168)
    if arg2:
        if not arg1:
            revert with 0, 'cannot transfer to 0x0 or self'
        if this.address == arg1:
            revert with 0, 'cannot transfer to 0x0 or self'
        mem[0] = msg.sender
        mem[32] = 5
        mem[64] = (32 * balances[address(msg.sender)].field_0) + 128
        mem[96] = balances[address(msg.sender)].field_0
        s = 128
        idx = 0
        while idx < balances[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 5)
            _1755 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1755] = balances[address(msg.sender)][idx].field_0
            mem[_1755 + 32] = balances[address(msg.sender)][idx].field_128
            mem[s] = _1755
            s = s + 32
            idx = idx + 1
            continue 
        if not mem[96]:
            if 0 < arg2:
                revert with 0, 'amount > balance'
            mem[0] = msg.sender
            mem[32] = 5
            require arg2 <= 0
            if not balances[address(msg.sender)].field_0:
                _1772 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1772] = uint128(block.number)
                mem[_1772 + 32] = uint128(-arg2)
                balances[address(msg.sender)].field_0++
                balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(block.number)
                balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                mem[0] = arg1
                mem[32] = 5
                _1788 = mem[64]
                mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                mem[_1788] = balances[address(arg1)].field_0
                s = _1788 + 32
                idx = 0
                while idx < balances[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 5)
                    _3496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3496] = balances[address(arg1)][idx].field_0
                    mem[_3496 + 32] = balances[address(arg1)][idx].field_128
                    mem[s] = _3496
                    s = s + 32
                    idx = idx + 1
                    continue 
                if not mem[_1788]:
                    require arg2 >= 0
                    if not balances[address(arg1)].field_0:
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require 0 < mem[_1788]
                    if mem[mem[_1788 + 32] + 16 len 16] > block.number:
                        require arg2 >= 0
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 1 <= mem[_1788]
                        require mem[_1788] - 1 < mem[_1788]
                        require 1 <= mem[_1788]
                        if block.number >= mem[mem[_1788 + (32 * mem[_1788] - 1) + 32] + 16 len 16]:
                            require mem[_1788] - 1 < mem[_1788]
                            require arg2 + mem[mem[(32 * mem[_1788] - 1) + _1788 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1788] - 1) + _1788 + 32] + 48 len 16]
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1788] - 1) + _1788 + 32] + 48 len 16])
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1788] - 1) + _1788 + 32] + 48 len 16])
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1788] - 1) + _1788 + 32] + 48 len 16])
                        else:
                            s = 0
                            idx = 0
                            while mem[_1788] - 1 > idx:
                                require idx >= 0
                                require idx + mem[_1788] / 2 < mem[_1788]
                                if mem[mem[_1788 + (16 * Mask(251, 1, idx + mem[_1788])) + 32] + 16 len 16] <= block.number:
                                    s = idx + mem[_1788] / 2
                                    idx = idx + mem[_1788] / 2
                                    continue 
                                require 1 <= idx + mem[_1788] / 2
                                s = idx + mem[_1788] / 2
                                idx = idx
                                continue 
                            require idx < mem[_1788]
                            require arg2 + mem[mem[(32 * idx) + _1788 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1788 + 32] + 48 len 16]
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1788 + 32] + 48 len 16])
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1788 + 32] + 48 len 16])
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1788 + 32] + 48 len 16])
            else:
                require 1 <= balances[address(msg.sender)].field_0
                require balances[address(msg.sender)].field_0 - 1 < balances[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 5)
                if balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 >= block.number:
                    require 1 <= balances[address(msg.sender)].field_0
                    require balances[address(msg.sender)].field_0 - 1 < balances[address(msg.sender)].field_0
                    balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(-arg2)
                    mem[0] = arg1
                    mem[32] = 5
                    _1830 = mem[64]
                    mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                    mem[_1830] = balances[address(arg1)].field_0
                    s = _1830 + 32
                    idx = 0
                    while idx < balances[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 5)
                        _3498 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3498] = balances[address(arg1)][idx].field_0
                        mem[_3498 + 32] = balances[address(arg1)][idx].field_128
                        mem[s] = _3498
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if not mem[_1830]:
                        require arg2 >= 0
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 0 < mem[_1830]
                        if mem[mem[_1830 + 32] + 16 len 16] > block.number:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= mem[_1830]
                            require mem[_1830] - 1 < mem[_1830]
                            require 1 <= mem[_1830]
                            if block.number >= mem[mem[_1830 + (32 * mem[_1830] - 1) + 32] + 16 len 16]:
                                require mem[_1830] - 1 < mem[_1830]
                                require arg2 + mem[mem[(32 * mem[_1830] - 1) + _1830 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1830] - 1) + _1830 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1830] - 1) + _1830 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1830] - 1) + _1830 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1830] - 1) + _1830 + 32] + 48 len 16])
                            else:
                                s = 0
                                idx = 0
                                while mem[_1830] - 1 > idx:
                                    require idx >= 0
                                    require idx + mem[_1830] / 2 < mem[_1830]
                                    if mem[mem[_1830 + (16 * Mask(251, 1, idx + mem[_1830])) + 32] + 16 len 16] <= block.number:
                                        s = idx + mem[_1830] / 2
                                        idx = idx + mem[_1830] / 2
                                        continue 
                                    require 1 <= idx + mem[_1830] / 2
                                    s = idx + mem[_1830] / 2
                                    idx = idx
                                    continue 
                                require idx < mem[_1830]
                                require arg2 + mem[mem[(32 * idx) + _1830 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1830 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1830 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1830 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1830 + 32] + 48 len 16])
                else:
                    _1789 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1789] = uint128(block.number)
                    mem[_1789 + 32] = uint128(-arg2)
                    balances[address(msg.sender)].field_0++
                    balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(block.number)
                    balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                    mem[0] = arg1
                    mem[32] = 5
                    _1813 = mem[64]
                    mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                    mem[_1813] = balances[address(arg1)].field_0
                    s = _1813 + 32
                    idx = 0
                    while idx < balances[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 5)
                        _3500 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3500] = balances[address(arg1)][idx].field_0
                        mem[_3500 + 32] = balances[address(arg1)][idx].field_128
                        mem[s] = _3500
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if not mem[_1813]:
                        require arg2 >= 0
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 0 < mem[_1813]
                        if mem[mem[_1813 + 32] + 16 len 16] > block.number:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= mem[_1813]
                            require mem[_1813] - 1 < mem[_1813]
                            require 1 <= mem[_1813]
                            if block.number >= mem[mem[_1813 + (32 * mem[_1813] - 1) + 32] + 16 len 16]:
                                require mem[_1813] - 1 < mem[_1813]
                                require arg2 + mem[mem[(32 * mem[_1813] - 1) + _1813 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1813] - 1) + _1813 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1813] - 1) + _1813 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1813] - 1) + _1813 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1813] - 1) + _1813 + 32] + 48 len 16])
                            else:
                                s = 0
                                idx = 0
                                while mem[_1813] - 1 > idx:
                                    require idx >= 0
                                    require idx + mem[_1813] / 2 < mem[_1813]
                                    if mem[mem[_1813 + (16 * Mask(251, 1, idx + mem[_1813])) + 32] + 16 len 16] <= block.number:
                                        s = idx + mem[_1813] / 2
                                        idx = idx + mem[_1813] / 2
                                        continue 
                                    require 1 <= idx + mem[_1813] / 2
                                    s = idx + mem[_1813] / 2
                                    idx = idx
                                    continue 
                                require idx < mem[_1813]
                                require arg2 + mem[mem[(32 * idx) + _1813 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1813 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1813 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1813 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1813 + 32] + 48 len 16])
        else:
            require 0 < mem[96]
            if mem[mem[128] + 16 len 16] > block.number:
                if 0 < arg2:
                    revert with 0, 'amount > balance'
                mem[0] = msg.sender
                mem[32] = 5
                require arg2 <= 0
                if not balances[address(msg.sender)].field_0:
                    _1779 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1779] = uint128(block.number)
                    mem[_1779 + 32] = uint128(-arg2)
                    balances[address(msg.sender)].field_0++
                    balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(block.number)
                    balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                    mem[0] = arg1
                    mem[32] = 5
                    _1797 = mem[64]
                    mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                    mem[_1797] = balances[address(arg1)].field_0
                    s = _1797 + 32
                    idx = 0
                    while idx < balances[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 5)
                        _3509 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3509] = balances[address(arg1)][idx].field_0
                        mem[_3509 + 32] = balances[address(arg1)][idx].field_128
                        mem[s] = _3509
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if not mem[_1797]:
                        require arg2 >= 0
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 0 < mem[_1797]
                        if mem[mem[_1797 + 32] + 16 len 16] > block.number:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= mem[_1797]
                            require mem[_1797] - 1 < mem[_1797]
                            require 1 <= mem[_1797]
                            if block.number >= mem[mem[_1797 + (32 * mem[_1797] - 1) + 32] + 16 len 16]:
                                require mem[_1797] - 1 < mem[_1797]
                                require arg2 + mem[mem[(32 * mem[_1797] - 1) + _1797 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1797] - 1) + _1797 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1797] - 1) + _1797 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1797] - 1) + _1797 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1797] - 1) + _1797 + 32] + 48 len 16])
                            else:
                                s = 0
                                idx = 0
                                while mem[_1797] - 1 > idx:
                                    require idx >= 0
                                    require idx + mem[_1797] / 2 < mem[_1797]
                                    if mem[mem[_1797 + (16 * Mask(251, 1, idx + mem[_1797])) + 32] + 16 len 16] <= block.number:
                                        s = idx + mem[_1797] / 2
                                        idx = idx + mem[_1797] / 2
                                        continue 
                                    require 1 <= idx + mem[_1797] / 2
                                    s = idx + mem[_1797] / 2
                                    idx = idx
                                    continue 
                                require idx < mem[_1797]
                                require arg2 + mem[mem[(32 * idx) + _1797 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1797 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1797 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1797 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1797 + 32] + 48 len 16])
                else:
                    require 1 <= balances[address(msg.sender)].field_0
                    require balances[address(msg.sender)].field_0 - 1 < balances[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 5)
                    if balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 >= block.number:
                        require 1 <= balances[address(msg.sender)].field_0
                        require balances[address(msg.sender)].field_0 - 1 < balances[address(msg.sender)].field_0
                        balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(-arg2)
                        mem[0] = arg1
                        mem[32] = 5
                        _1849 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                        mem[_1849] = balances[address(arg1)].field_0
                        s = _1849 + 32
                        idx = 0
                        while idx < balances[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 5)
                            _3511 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3511] = balances[address(arg1)][idx].field_0
                            mem[_3511 + 32] = balances[address(arg1)][idx].field_128
                            mem[s] = _3511
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_1849]:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 0 < mem[_1849]
                            if mem[mem[_1849 + 32] + 16 len 16] > block.number:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= mem[_1849]
                                require mem[_1849] - 1 < mem[_1849]
                                require 1 <= mem[_1849]
                                if block.number >= mem[mem[_1849 + (32 * mem[_1849] - 1) + 32] + 16 len 16]:
                                    require mem[_1849] - 1 < mem[_1849]
                                    require arg2 + mem[mem[(32 * mem[_1849] - 1) + _1849 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1849] - 1) + _1849 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1849] - 1) + _1849 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1849] - 1) + _1849 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1849] - 1) + _1849 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_1849] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_1849] / 2 < mem[_1849]
                                        if mem[mem[_1849 + (16 * Mask(251, 1, idx + mem[_1849])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_1849] / 2
                                            idx = idx + mem[_1849] / 2
                                            continue 
                                        require 1 <= idx + mem[_1849] / 2
                                        s = idx + mem[_1849] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_1849]
                                    require arg2 + mem[mem[(32 * idx) + _1849 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1849 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1849 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1849 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1849 + 32] + 48 len 16])
                    else:
                        _1798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1798] = uint128(block.number)
                        mem[_1798 + 32] = uint128(-arg2)
                        balances[address(msg.sender)].field_0++
                        balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(block.number)
                        balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                        mem[0] = arg1
                        mem[32] = 5
                        _1826 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                        mem[_1826] = balances[address(arg1)].field_0
                        s = _1826 + 32
                        idx = 0
                        while idx < balances[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 5)
                            _3513 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3513] = balances[address(arg1)][idx].field_0
                            mem[_3513 + 32] = balances[address(arg1)][idx].field_128
                            mem[s] = _3513
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_1826]:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 0 < mem[_1826]
                            if mem[mem[_1826 + 32] + 16 len 16] > block.number:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= mem[_1826]
                                require mem[_1826] - 1 < mem[_1826]
                                require 1 <= mem[_1826]
                                if block.number >= mem[mem[_1826 + (32 * mem[_1826] - 1) + 32] + 16 len 16]:
                                    require mem[_1826] - 1 < mem[_1826]
                                    require arg2 + mem[mem[(32 * mem[_1826] - 1) + _1826 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1826] - 1) + _1826 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1826] - 1) + _1826 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1826] - 1) + _1826 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1826] - 1) + _1826 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_1826] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_1826] / 2 < mem[_1826]
                                        if mem[mem[_1826 + (16 * Mask(251, 1, idx + mem[_1826])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_1826] / 2
                                            idx = idx + mem[_1826] / 2
                                            continue 
                                        require 1 <= idx + mem[_1826] / 2
                                        s = idx + mem[_1826] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_1826]
                                    require arg2 + mem[mem[(32 * idx) + _1826 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1826 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1826 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1826 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1826 + 32] + 48 len 16])
            else:
                require 1 <= mem[96]
                require mem[96] - 1 < mem[96]
                require 1 <= mem[96]
                if block.number >= mem[mem[(32 * mem[96] - 1) + 128] + 16 len 16]:
                    require mem[96] - 1 < mem[96]
                    _1778 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                    if mem[mem[(32 * mem[96] - 1) + 128] + 48 len 16] < arg2:
                        revert with 0, 'amount > balance'
                    mem[0] = msg.sender
                    mem[32] = 5
                    require arg2 <= uint128(_1778)
                    if not balances[address(msg.sender)].field_0:
                        _1835 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1835] = uint128(block.number)
                        mem[_1835 + 32] = uint128(uint128(_1778) - arg2)
                        balances[address(msg.sender)].field_0++
                        balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(block.number)
                        balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_128 = uint128(uint128(_1778) - arg2)
                        mem[0] = arg1
                        mem[32] = 5
                        _1881 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                        mem[_1881] = balances[address(arg1)].field_0
                        s = _1881 + 32
                        idx = 0
                        while idx < balances[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 5)
                            _3503 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3503] = balances[address(arg1)][idx].field_0
                            mem[_3503 + 32] = balances[address(arg1)][idx].field_128
                            mem[s] = _3503
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_1881]:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 0 < mem[_1881]
                            if mem[mem[_1881 + 32] + 16 len 16] > block.number:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= mem[_1881]
                                require mem[_1881] - 1 < mem[_1881]
                                require 1 <= mem[_1881]
                                if block.number >= mem[mem[_1881 + (32 * mem[_1881] - 1) + 32] + 16 len 16]:
                                    require mem[_1881] - 1 < mem[_1881]
                                    require arg2 + mem[mem[(32 * mem[_1881] - 1) + _1881 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1881] - 1) + _1881 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1881] - 1) + _1881 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1881] - 1) + _1881 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1881] - 1) + _1881 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_1881] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_1881] / 2 < mem[_1881]
                                        if mem[mem[_1881 + (16 * Mask(251, 1, idx + mem[_1881])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_1881] / 2
                                            idx = idx + mem[_1881] / 2
                                            continue 
                                        require 1 <= idx + mem[_1881] / 2
                                        s = idx + mem[_1881] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_1881]
                                    require arg2 + mem[mem[(32 * idx) + _1881 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1881 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1881 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1881 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1881 + 32] + 48 len 16])
                    else:
                        require 1 <= balances[address(msg.sender)].field_0
                        require balances[address(msg.sender)].field_0 - 1 < balances[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(msg.sender)].field_0
                            require balances[address(msg.sender)].field_0 - 1 < balances[address(msg.sender)].field_0
                            balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(uint128(_1778) - arg2)
                            mem[0] = arg1
                            mem[32] = 5
                            _2039 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                            mem[_2039] = balances[address(arg1)].field_0
                            s = _2039 + 32
                            idx = 0
                            while idx < balances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 5)
                                _3505 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3505] = balances[address(arg1)][idx].field_0
                                mem[_3505 + 32] = balances[address(arg1)][idx].field_128
                                mem[s] = _3505
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_2039]:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 0 < mem[_2039]
                                if mem[mem[_2039 + 32] + 16 len 16] > block.number:
                                    require arg2 >= 0
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= mem[_2039]
                                    require mem[_2039] - 1 < mem[_2039]
                                    require 1 <= mem[_2039]
                                    if block.number >= mem[mem[_2039 + (32 * mem[_2039] - 1) + 32] + 16 len 16]:
                                        require mem[_2039] - 1 < mem[_2039]
                                        require arg2 + mem[mem[(32 * mem[_2039] - 1) + _2039 + 32] + 48 len 16] >= mem[mem[(32 * mem[_2039] - 1) + _2039 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_2039] - 1) + _2039 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_2039] - 1) + _2039 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_2039] - 1) + _2039 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_2039] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_2039] / 2 < mem[_2039]
                                            if mem[mem[_2039 + (16 * Mask(251, 1, idx + mem[_2039])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_2039] / 2
                                                idx = idx + mem[_2039] / 2
                                                continue 
                                            require 1 <= idx + mem[_2039] / 2
                                            s = idx + mem[_2039] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_2039]
                                        require arg2 + mem[mem[(32 * idx) + _2039 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _2039 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _2039 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _2039 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _2039 + 32] + 48 len 16])
                        else:
                            _1882 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1882] = uint128(block.number)
                            mem[_1882 + 32] = uint128(uint128(_1778) - arg2)
                            balances[address(msg.sender)].field_0++
                            balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(block.number)
                            balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_128 = uint128(uint128(_1778) - arg2)
                            mem[0] = arg1
                            mem[32] = 5
                            _1969 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                            mem[_1969] = balances[address(arg1)].field_0
                            s = _1969 + 32
                            idx = 0
                            while idx < balances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 5)
                                _3507 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3507] = balances[address(arg1)][idx].field_0
                                mem[_3507 + 32] = balances[address(arg1)][idx].field_128
                                mem[s] = _3507
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_1969]:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 0 < mem[_1969]
                                if mem[mem[_1969 + 32] + 16 len 16] > block.number:
                                    require arg2 >= 0
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= mem[_1969]
                                    require mem[_1969] - 1 < mem[_1969]
                                    require 1 <= mem[_1969]
                                    if block.number >= mem[mem[_1969 + (32 * mem[_1969] - 1) + 32] + 16 len 16]:
                                        require mem[_1969] - 1 < mem[_1969]
                                        require arg2 + mem[mem[(32 * mem[_1969] - 1) + _1969 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1969] - 1) + _1969 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1969] - 1) + _1969 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1969] - 1) + _1969 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1969] - 1) + _1969 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_1969] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_1969] / 2 < mem[_1969]
                                            if mem[mem[_1969 + (16 * Mask(251, 1, idx + mem[_1969])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_1969] / 2
                                                idx = idx + mem[_1969] / 2
                                                continue 
                                            require 1 <= idx + mem[_1969] / 2
                                            s = idx + mem[_1969] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_1969]
                                        require arg2 + mem[mem[(32 * idx) + _1969 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1969 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1969 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1969 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1969 + 32] + 48 len 16])
                else:
                    s = 0
                    idx = 0
                    while mem[96] - 1 > idx:
                        require idx >= 0
                        require idx + mem[96] / 2 < mem[96]
                        if mem[mem[(16 * Mask(251, 1, idx + mem[96])) + 128] + 16 len 16] <= block.number:
                            s = idx + mem[96] / 2
                            idx = idx + mem[96] / 2
                            continue 
                        require 1 <= idx + mem[96] / 2
                        s = idx + mem[96] / 2
                        idx = idx
                        continue 
                    require idx < mem[96]
                    _3518 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 48 len 16] < arg2:
                        revert with 0, 'amount > balance'
                    mem[0] = msg.sender
                    mem[32] = 5
                    require arg2 <= uint128(_3518)
                    if not balances[address(msg.sender)].field_0:
                        _3666 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3666] = uint128(block.number)
                        mem[_3666 + 32] = uint128(uint128(_3518) - arg2)
                        balances[address(msg.sender)].field_0++
                        balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(block.number)
                        balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_128 = uint128(uint128(_3518) - arg2)
                        mem[0] = arg1
                        mem[32] = 5
                        _3906 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                        mem[_3906] = balances[address(arg1)].field_0
                        s = _3906 + 32
                        idx = 0
                        while idx < balances[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 5)
                            _5168 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5168] = balances[address(arg1)][idx].field_0
                            mem[_5168 + 32] = balances[address(arg1)][idx].field_128
                            mem[s] = _5168
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_3906]:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 0 < mem[_3906]
                            if mem[mem[_3906 + 32] + 16 len 16] > block.number:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= mem[_3906]
                                require mem[_3906] - 1 < mem[_3906]
                                require 1 <= mem[_3906]
                                if block.number >= mem[mem[_3906 + (32 * mem[_3906] - 1) + 32] + 16 len 16]:
                                    require mem[_3906] - 1 < mem[_3906]
                                    require arg2 + mem[mem[(32 * mem[_3906] - 1) + _3906 + 32] + 48 len 16] >= mem[mem[(32 * mem[_3906] - 1) + _3906 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_3906] - 1) + _3906 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_3906] - 1) + _3906 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_3906] - 1) + _3906 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_3906] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_3906] / 2 < mem[_3906]
                                        if mem[mem[_3906 + (16 * Mask(251, 1, idx + mem[_3906])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_3906] / 2
                                            idx = idx + mem[_3906] / 2
                                            continue 
                                        require 1 <= idx + mem[_3906] / 2
                                        s = idx + mem[_3906] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_3906]
                                    require arg2 + mem[mem[(32 * idx) + _3906 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _3906 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _3906 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _3906 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _3906 + 32] + 48 len 16])
                    else:
                        require 1 <= balances[address(msg.sender)].field_0
                        require balances[address(msg.sender)].field_0 - 1 < balances[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(msg.sender)].field_0
                            require balances[address(msg.sender)].field_0 - 1 < balances[address(msg.sender)].field_0
                            balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(uint128(_3518) - arg2)
                            mem[0] = arg1
                            mem[32] = 5
                            _4240 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                            mem[_4240] = balances[address(arg1)].field_0
                            s = _4240 + 32
                            idx = 0
                            while idx < balances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 5)
                                _5170 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5170] = balances[address(arg1)][idx].field_0
                                mem[_5170 + 32] = balances[address(arg1)][idx].field_128
                                mem[s] = _5170
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_4240]:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 0 < mem[_4240]
                                if mem[mem[_4240 + 32] + 16 len 16] > block.number:
                                    require arg2 >= 0
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= mem[_4240]
                                    require mem[_4240] - 1 < mem[_4240]
                                    require 1 <= mem[_4240]
                                    if block.number >= mem[mem[_4240 + (32 * mem[_4240] - 1) + 32] + 16 len 16]:
                                        require mem[_4240] - 1 < mem[_4240]
                                        require arg2 + mem[mem[(32 * mem[_4240] - 1) + _4240 + 32] + 48 len 16] >= mem[mem[(32 * mem[_4240] - 1) + _4240 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_4240] - 1) + _4240 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_4240] - 1) + _4240 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_4240] - 1) + _4240 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_4240] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_4240] / 2 < mem[_4240]
                                            if mem[mem[_4240 + (16 * Mask(251, 1, idx + mem[_4240])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_4240] / 2
                                                idx = idx + mem[_4240] / 2
                                                continue 
                                            require 1 <= idx + mem[_4240] / 2
                                            s = idx + mem[_4240] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_4240]
                                        require arg2 + mem[mem[(32 * idx) + _4240 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _4240 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _4240 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _4240 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _4240 + 32] + 48 len 16])
                        else:
                            _3907 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3907] = uint128(block.number)
                            mem[_3907 + 32] = uint128(uint128(_3518) - arg2)
                            balances[address(msg.sender)].field_0++
                            balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_0 = uint128(block.number)
                            balances[address(msg.sender)][balances[address(msg.sender)].field_0].field_128 = uint128(uint128(_3518) - arg2)
                            mem[0] = arg1
                            mem[32] = 5
                            _4129 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                            mem[_4129] = balances[address(arg1)].field_0
                            s = _4129 + 32
                            idx = 0
                            while idx < balances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 5)
                                _5172 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5172] = balances[address(arg1)][idx].field_0
                                mem[_5172 + 32] = balances[address(arg1)][idx].field_128
                                mem[s] = _5172
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_4129]:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 0 < mem[_4129]
                                if mem[mem[_4129 + 32] + 16 len 16] > block.number:
                                    require arg2 >= 0
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= mem[_4129]
                                    require mem[_4129] - 1 < mem[_4129]
                                    require 1 <= mem[_4129]
                                    if block.number >= mem[mem[_4129 + (32 * mem[_4129] - 1) + 32] + 16 len 16]:
                                        require mem[_4129] - 1 < mem[_4129]
                                        require arg2 + mem[mem[(32 * mem[_4129] - 1) + _4129 + 32] + 48 len 16] >= mem[mem[(32 * mem[_4129] - 1) + _4129 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_4129] - 1) + _4129 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_4129] - 1) + _4129 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_4129] - 1) + _4129 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_4129] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_4129] / 2 < mem[_4129]
                                            if mem[mem[_4129 + (16 * Mask(251, 1, idx + mem[_4129])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_4129] / 2
                                                idx = idx + mem[_4129] / 2
                                                continue 
                                            require 1 <= idx + mem[_4129] / 2
                                            s = idx + mem[_4129] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_4129]
                                        require arg2 + mem[mem[(32 * idx) + _4129 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _4129 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _4129 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _4129 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _4129 + 32] + 48 len 16])
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_3b3fb85e(?) {
    if sub_e25e1e17Address != msg.sender:
        revert with 0, 'not a member'
    if arg2:
        if not arg1:
            revert with 0, 'cannot transfer to 0x0 or self'
        if this.address == arg1:
            revert with 0, 'cannot transfer to 0x0 or self'
        mem[0] = sub_21cc9487Address
        mem[32] = 5
        mem[64] = (32 * balances[address(stor7.field_0)].field_0) + 128
        mem[96] = balances[address(stor7.field_0)].field_0
        s = 128
        idx = 0
        while idx < balances[address(stor7.field_0)].field_0:
            mem[0] = sha3(sub_21cc9487Address, 5)
            _1467 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1467] = balances[address(stor7.field_0)][idx].field_0
            mem[_1467 + 32] = balances[address(stor7.field_0)][idx].field_128
            mem[s] = _1467
            s = s + 32
            idx = idx + 1
            continue 
        if not mem[96]:
            if 0 < arg2:
                revert with 0, 'amount > balance'
            mem[0] = sub_21cc9487Address
            mem[32] = 5
            require arg2 <= 0
            if not balances[address(stor7.field_0)].field_0:
                _1484 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1484] = uint128(block.number)
                mem[_1484 + 32] = uint128(-arg2)
                balances[address(stor7.field_0)].field_0++
                balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(block.number)
                balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_128 = uint128(-arg2)
                mem[0] = arg1
                mem[32] = 5
                _1500 = mem[64]
                mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                mem[_1500] = balances[address(arg1)].field_0
                s = _1500 + 32
                idx = 0
                while idx < balances[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 5)
                    _2920 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2920] = balances[address(arg1)][idx].field_0
                    mem[_2920 + 32] = balances[address(arg1)][idx].field_128
                    mem[s] = _2920
                    s = s + 32
                    idx = idx + 1
                    continue 
                if not mem[_1500]:
                    require arg2 >= 0
                    if not balances[address(arg1)].field_0:
                        balances[address(arg1)].field_0++
                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 1 <= balances[address(arg1)].field_0
                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require 0 < mem[_1500]
                    if mem[mem[_1500 + 32] + 16 len 16] > block.number:
                        require arg2 >= 0
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 1 <= mem[_1500]
                        require mem[_1500] - 1 < mem[_1500]
                        require 1 <= mem[_1500]
                        if block.number >= mem[mem[_1500 + (32 * mem[_1500] - 1) + 32] + 16 len 16]:
                            require mem[_1500] - 1 < mem[_1500]
                            require arg2 + mem[mem[(32 * mem[_1500] - 1) + _1500 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1500] - 1) + _1500 + 32] + 48 len 16]
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1500] - 1) + _1500 + 32] + 48 len 16])
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1500] - 1) + _1500 + 32] + 48 len 16])
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1500] - 1) + _1500 + 32] + 48 len 16])
                        else:
                            s = 0
                            idx = 0
                            while mem[_1500] - 1 > idx:
                                require idx >= 0
                                require idx + mem[_1500] / 2 < mem[_1500]
                                if mem[mem[_1500 + (16 * Mask(251, 1, idx + mem[_1500])) + 32] + 16 len 16] <= block.number:
                                    s = idx + mem[_1500] / 2
                                    idx = idx + mem[_1500] / 2
                                    continue 
                                require 1 <= idx + mem[_1500] / 2
                                s = idx + mem[_1500] / 2
                                idx = idx
                                continue 
                            require idx < mem[_1500]
                            require arg2 + mem[mem[(32 * idx) + _1500 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1500 + 32] + 48 len 16]
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1500 + 32] + 48 len 16])
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1500 + 32] + 48 len 16])
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1500 + 32] + 48 len 16])
            else:
                require 1 <= balances[address(stor7.field_0)].field_0
                require balances[address(stor7.field_0)].field_0 - 1 < balances[address(stor7.field_0)].field_0
                mem[0] = sha3(sub_21cc9487Address, 5)
                if balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 >= block.number:
                    require 1 <= balances[address(stor7.field_0)].field_0
                    require balances[address(stor7.field_0)].field_0 - 1 < balances[address(stor7.field_0)].field_0
                    balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(-arg2)
                    mem[0] = arg1
                    mem[32] = 5
                    _1542 = mem[64]
                    mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                    mem[_1542] = balances[address(arg1)].field_0
                    s = _1542 + 32
                    idx = 0
                    while idx < balances[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 5)
                        _2922 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2922] = balances[address(arg1)][idx].field_0
                        mem[_2922 + 32] = balances[address(arg1)][idx].field_128
                        mem[s] = _2922
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if not mem[_1542]:
                        require arg2 >= 0
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 0 < mem[_1542]
                        if mem[mem[_1542 + 32] + 16 len 16] > block.number:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= mem[_1542]
                            require mem[_1542] - 1 < mem[_1542]
                            require 1 <= mem[_1542]
                            if block.number >= mem[mem[_1542 + (32 * mem[_1542] - 1) + 32] + 16 len 16]:
                                require mem[_1542] - 1 < mem[_1542]
                                require arg2 + mem[mem[(32 * mem[_1542] - 1) + _1542 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1542] - 1) + _1542 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1542] - 1) + _1542 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1542] - 1) + _1542 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1542] - 1) + _1542 + 32] + 48 len 16])
                            else:
                                s = 0
                                idx = 0
                                while mem[_1542] - 1 > idx:
                                    require idx >= 0
                                    require idx + mem[_1542] / 2 < mem[_1542]
                                    if mem[mem[_1542 + (16 * Mask(251, 1, idx + mem[_1542])) + 32] + 16 len 16] <= block.number:
                                        s = idx + mem[_1542] / 2
                                        idx = idx + mem[_1542] / 2
                                        continue 
                                    require 1 <= idx + mem[_1542] / 2
                                    s = idx + mem[_1542] / 2
                                    idx = idx
                                    continue 
                                require idx < mem[_1542]
                                require arg2 + mem[mem[(32 * idx) + _1542 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1542 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1542 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1542 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1542 + 32] + 48 len 16])
                else:
                    _1501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1501] = uint128(block.number)
                    mem[_1501 + 32] = uint128(-arg2)
                    balances[address(stor7.field_0)].field_0++
                    balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(block.number)
                    balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_128 = uint128(-arg2)
                    mem[0] = arg1
                    mem[32] = 5
                    _1525 = mem[64]
                    mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                    mem[_1525] = balances[address(arg1)].field_0
                    s = _1525 + 32
                    idx = 0
                    while idx < balances[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 5)
                        _2924 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2924] = balances[address(arg1)][idx].field_0
                        mem[_2924 + 32] = balances[address(arg1)][idx].field_128
                        mem[s] = _2924
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if not mem[_1525]:
                        require arg2 >= 0
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 0 < mem[_1525]
                        if mem[mem[_1525 + 32] + 16 len 16] > block.number:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= mem[_1525]
                            require mem[_1525] - 1 < mem[_1525]
                            require 1 <= mem[_1525]
                            if block.number >= mem[mem[_1525 + (32 * mem[_1525] - 1) + 32] + 16 len 16]:
                                require mem[_1525] - 1 < mem[_1525]
                                require arg2 + mem[mem[(32 * mem[_1525] - 1) + _1525 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1525] - 1) + _1525 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1525] - 1) + _1525 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1525] - 1) + _1525 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1525] - 1) + _1525 + 32] + 48 len 16])
                            else:
                                s = 0
                                idx = 0
                                while mem[_1525] - 1 > idx:
                                    require idx >= 0
                                    require idx + mem[_1525] / 2 < mem[_1525]
                                    if mem[mem[_1525 + (16 * Mask(251, 1, idx + mem[_1525])) + 32] + 16 len 16] <= block.number:
                                        s = idx + mem[_1525] / 2
                                        idx = idx + mem[_1525] / 2
                                        continue 
                                    require 1 <= idx + mem[_1525] / 2
                                    s = idx + mem[_1525] / 2
                                    idx = idx
                                    continue 
                                require idx < mem[_1525]
                                require arg2 + mem[mem[(32 * idx) + _1525 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1525 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1525 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1525 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1525 + 32] + 48 len 16])
        else:
            require 0 < mem[96]
            if mem[mem[128] + 16 len 16] > block.number:
                if 0 < arg2:
                    revert with 0, 'amount > balance'
                mem[0] = sub_21cc9487Address
                mem[32] = 5
                require arg2 <= 0
                if not balances[address(stor7.field_0)].field_0:
                    _1491 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1491] = uint128(block.number)
                    mem[_1491 + 32] = uint128(-arg2)
                    balances[address(stor7.field_0)].field_0++
                    balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(block.number)
                    balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_128 = uint128(-arg2)
                    mem[0] = arg1
                    mem[32] = 5
                    _1509 = mem[64]
                    mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                    mem[_1509] = balances[address(arg1)].field_0
                    s = _1509 + 32
                    idx = 0
                    while idx < balances[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 5)
                        _2933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2933] = balances[address(arg1)][idx].field_0
                        mem[_2933 + 32] = balances[address(arg1)][idx].field_128
                        mem[s] = _2933
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if not mem[_1509]:
                        require arg2 >= 0
                        if not balances[address(arg1)].field_0:
                            balances[address(arg1)].field_0++
                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= balances[address(arg1)].field_0
                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 0 < mem[_1509]
                        if mem[mem[_1509 + 32] + 16 len 16] > block.number:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 1 <= mem[_1509]
                            require mem[_1509] - 1 < mem[_1509]
                            require 1 <= mem[_1509]
                            if block.number >= mem[mem[_1509 + (32 * mem[_1509] - 1) + 32] + 16 len 16]:
                                require mem[_1509] - 1 < mem[_1509]
                                require arg2 + mem[mem[(32 * mem[_1509] - 1) + _1509 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1509] - 1) + _1509 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1509] - 1) + _1509 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1509] - 1) + _1509 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1509] - 1) + _1509 + 32] + 48 len 16])
                            else:
                                s = 0
                                idx = 0
                                while mem[_1509] - 1 > idx:
                                    require idx >= 0
                                    require idx + mem[_1509] / 2 < mem[_1509]
                                    if mem[mem[_1509 + (16 * Mask(251, 1, idx + mem[_1509])) + 32] + 16 len 16] <= block.number:
                                        s = idx + mem[_1509] / 2
                                        idx = idx + mem[_1509] / 2
                                        continue 
                                    require 1 <= idx + mem[_1509] / 2
                                    s = idx + mem[_1509] / 2
                                    idx = idx
                                    continue 
                                require idx < mem[_1509]
                                require arg2 + mem[mem[(32 * idx) + _1509 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1509 + 32] + 48 len 16]
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1509 + 32] + 48 len 16])
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1509 + 32] + 48 len 16])
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1509 + 32] + 48 len 16])
                else:
                    require 1 <= balances[address(stor7.field_0)].field_0
                    require balances[address(stor7.field_0)].field_0 - 1 < balances[address(stor7.field_0)].field_0
                    mem[0] = sha3(sub_21cc9487Address, 5)
                    if balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 >= block.number:
                        require 1 <= balances[address(stor7.field_0)].field_0
                        require balances[address(stor7.field_0)].field_0 - 1 < balances[address(stor7.field_0)].field_0
                        balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(-arg2)
                        mem[0] = arg1
                        mem[32] = 5
                        _1561 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                        mem[_1561] = balances[address(arg1)].field_0
                        s = _1561 + 32
                        idx = 0
                        while idx < balances[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 5)
                            _2935 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2935] = balances[address(arg1)][idx].field_0
                            mem[_2935 + 32] = balances[address(arg1)][idx].field_128
                            mem[s] = _2935
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_1561]:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 0 < mem[_1561]
                            if mem[mem[_1561 + 32] + 16 len 16] > block.number:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= mem[_1561]
                                require mem[_1561] - 1 < mem[_1561]
                                require 1 <= mem[_1561]
                                if block.number >= mem[mem[_1561 + (32 * mem[_1561] - 1) + 32] + 16 len 16]:
                                    require mem[_1561] - 1 < mem[_1561]
                                    require arg2 + mem[mem[(32 * mem[_1561] - 1) + _1561 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1561] - 1) + _1561 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1561] - 1) + _1561 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1561] - 1) + _1561 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1561] - 1) + _1561 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_1561] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_1561] / 2 < mem[_1561]
                                        if mem[mem[_1561 + (16 * Mask(251, 1, idx + mem[_1561])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_1561] / 2
                                            idx = idx + mem[_1561] / 2
                                            continue 
                                        require 1 <= idx + mem[_1561] / 2
                                        s = idx + mem[_1561] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_1561]
                                    require arg2 + mem[mem[(32 * idx) + _1561 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1561 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1561 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1561 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1561 + 32] + 48 len 16])
                    else:
                        _1510 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1510] = uint128(block.number)
                        mem[_1510 + 32] = uint128(-arg2)
                        balances[address(stor7.field_0)].field_0++
                        balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(block.number)
                        balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_128 = uint128(-arg2)
                        mem[0] = arg1
                        mem[32] = 5
                        _1538 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                        mem[_1538] = balances[address(arg1)].field_0
                        s = _1538 + 32
                        idx = 0
                        while idx < balances[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 5)
                            _2937 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2937] = balances[address(arg1)][idx].field_0
                            mem[_2937 + 32] = balances[address(arg1)][idx].field_128
                            mem[s] = _2937
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_1538]:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 0 < mem[_1538]
                            if mem[mem[_1538 + 32] + 16 len 16] > block.number:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= mem[_1538]
                                require mem[_1538] - 1 < mem[_1538]
                                require 1 <= mem[_1538]
                                if block.number >= mem[mem[_1538 + (32 * mem[_1538] - 1) + 32] + 16 len 16]:
                                    require mem[_1538] - 1 < mem[_1538]
                                    require arg2 + mem[mem[(32 * mem[_1538] - 1) + _1538 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1538] - 1) + _1538 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1538] - 1) + _1538 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1538] - 1) + _1538 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1538] - 1) + _1538 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_1538] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_1538] / 2 < mem[_1538]
                                        if mem[mem[_1538 + (16 * Mask(251, 1, idx + mem[_1538])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_1538] / 2
                                            idx = idx + mem[_1538] / 2
                                            continue 
                                        require 1 <= idx + mem[_1538] / 2
                                        s = idx + mem[_1538] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_1538]
                                    require arg2 + mem[mem[(32 * idx) + _1538 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1538 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1538 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1538 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1538 + 32] + 48 len 16])
            else:
                require 1 <= mem[96]
                require mem[96] - 1 < mem[96]
                require 1 <= mem[96]
                if block.number >= mem[mem[(32 * mem[96] - 1) + 128] + 16 len 16]:
                    require mem[96] - 1 < mem[96]
                    _1490 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                    if mem[mem[(32 * mem[96] - 1) + 128] + 48 len 16] < arg2:
                        revert with 0, 'amount > balance'
                    mem[0] = sub_21cc9487Address
                    mem[32] = 5
                    require arg2 <= uint128(_1490)
                    if not balances[address(stor7.field_0)].field_0:
                        _1547 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1547] = uint128(block.number)
                        mem[_1547 + 32] = uint128(uint128(_1490) - arg2)
                        balances[address(stor7.field_0)].field_0++
                        balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(block.number)
                        balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_128 = uint128(uint128(_1490) - arg2)
                        mem[0] = arg1
                        mem[32] = 5
                        _1593 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                        mem[_1593] = balances[address(arg1)].field_0
                        s = _1593 + 32
                        idx = 0
                        while idx < balances[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 5)
                            _2927 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2927] = balances[address(arg1)][idx].field_0
                            mem[_2927 + 32] = balances[address(arg1)][idx].field_128
                            mem[s] = _2927
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_1593]:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 0 < mem[_1593]
                            if mem[mem[_1593 + 32] + 16 len 16] > block.number:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= mem[_1593]
                                require mem[_1593] - 1 < mem[_1593]
                                require 1 <= mem[_1593]
                                if block.number >= mem[mem[_1593 + (32 * mem[_1593] - 1) + 32] + 16 len 16]:
                                    require mem[_1593] - 1 < mem[_1593]
                                    require arg2 + mem[mem[(32 * mem[_1593] - 1) + _1593 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1593] - 1) + _1593 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1593] - 1) + _1593 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1593] - 1) + _1593 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1593] - 1) + _1593 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_1593] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_1593] / 2 < mem[_1593]
                                        if mem[mem[_1593 + (16 * Mask(251, 1, idx + mem[_1593])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_1593] / 2
                                            idx = idx + mem[_1593] / 2
                                            continue 
                                        require 1 <= idx + mem[_1593] / 2
                                        s = idx + mem[_1593] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_1593]
                                    require arg2 + mem[mem[(32 * idx) + _1593 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1593 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1593 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1593 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1593 + 32] + 48 len 16])
                    else:
                        require 1 <= balances[address(stor7.field_0)].field_0
                        require balances[address(stor7.field_0)].field_0 - 1 < balances[address(stor7.field_0)].field_0
                        mem[0] = sha3(sub_21cc9487Address, 5)
                        if balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(stor7.field_0)].field_0
                            require balances[address(stor7.field_0)].field_0 - 1 < balances[address(stor7.field_0)].field_0
                            balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(uint128(_1490) - arg2)
                            mem[0] = arg1
                            mem[32] = 5
                            _1745 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                            mem[_1745] = balances[address(arg1)].field_0
                            s = _1745 + 32
                            idx = 0
                            while idx < balances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 5)
                                _2929 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2929] = balances[address(arg1)][idx].field_0
                                mem[_2929 + 32] = balances[address(arg1)][idx].field_128
                                mem[s] = _2929
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_1745]:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 0 < mem[_1745]
                                if mem[mem[_1745 + 32] + 16 len 16] > block.number:
                                    require arg2 >= 0
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= mem[_1745]
                                    require mem[_1745] - 1 < mem[_1745]
                                    require 1 <= mem[_1745]
                                    if block.number >= mem[mem[_1745 + (32 * mem[_1745] - 1) + 32] + 16 len 16]:
                                        require mem[_1745] - 1 < mem[_1745]
                                        require arg2 + mem[mem[(32 * mem[_1745] - 1) + _1745 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1745] - 1) + _1745 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1745] - 1) + _1745 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1745] - 1) + _1745 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1745] - 1) + _1745 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_1745] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_1745] / 2 < mem[_1745]
                                            if mem[mem[_1745 + (16 * Mask(251, 1, idx + mem[_1745])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_1745] / 2
                                                idx = idx + mem[_1745] / 2
                                                continue 
                                            require 1 <= idx + mem[_1745] / 2
                                            s = idx + mem[_1745] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_1745]
                                        require arg2 + mem[mem[(32 * idx) + _1745 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1745 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1745 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1745 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1745 + 32] + 48 len 16])
                        else:
                            _1594 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1594] = uint128(block.number)
                            mem[_1594 + 32] = uint128(uint128(_1490) - arg2)
                            balances[address(stor7.field_0)].field_0++
                            balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(block.number)
                            balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_128 = uint128(uint128(_1490) - arg2)
                            mem[0] = arg1
                            mem[32] = 5
                            _1679 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                            mem[_1679] = balances[address(arg1)].field_0
                            s = _1679 + 32
                            idx = 0
                            while idx < balances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 5)
                                _2931 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2931] = balances[address(arg1)][idx].field_0
                                mem[_2931 + 32] = balances[address(arg1)][idx].field_128
                                mem[s] = _2931
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_1679]:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 0 < mem[_1679]
                                if mem[mem[_1679 + 32] + 16 len 16] > block.number:
                                    require arg2 >= 0
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= mem[_1679]
                                    require mem[_1679] - 1 < mem[_1679]
                                    require 1 <= mem[_1679]
                                    if block.number >= mem[mem[_1679 + (32 * mem[_1679] - 1) + 32] + 16 len 16]:
                                        require mem[_1679] - 1 < mem[_1679]
                                        require arg2 + mem[mem[(32 * mem[_1679] - 1) + _1679 + 32] + 48 len 16] >= mem[mem[(32 * mem[_1679] - 1) + _1679 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1679] - 1) + _1679 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_1679] - 1) + _1679 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_1679] - 1) + _1679 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_1679] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_1679] / 2 < mem[_1679]
                                            if mem[mem[_1679 + (16 * Mask(251, 1, idx + mem[_1679])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_1679] / 2
                                                idx = idx + mem[_1679] / 2
                                                continue 
                                            require 1 <= idx + mem[_1679] / 2
                                            s = idx + mem[_1679] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_1679]
                                        require arg2 + mem[mem[(32 * idx) + _1679 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _1679 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1679 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _1679 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _1679 + 32] + 48 len 16])
                else:
                    s = 0
                    idx = 0
                    while mem[96] - 1 > idx:
                        require idx >= 0
                        require idx + mem[96] / 2 < mem[96]
                        if mem[mem[(16 * Mask(251, 1, idx + mem[96])) + 128] + 16 len 16] <= block.number:
                            s = idx + mem[96] / 2
                            idx = idx + mem[96] / 2
                            continue 
                        require 1 <= idx + mem[96] / 2
                        s = idx + mem[96] / 2
                        idx = idx
                        continue 
                    require idx < mem[96]
                    _2942 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 48 len 16] < arg2:
                        revert with 0, 'amount > balance'
                    mem[0] = sub_21cc9487Address
                    mem[32] = 5
                    require arg2 <= uint128(_2942)
                    if not balances[address(stor7.field_0)].field_0:
                        _3090 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3090] = uint128(block.number)
                        mem[_3090 + 32] = uint128(uint128(_2942) - arg2)
                        balances[address(stor7.field_0)].field_0++
                        balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(block.number)
                        balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_128 = uint128(uint128(_2942) - arg2)
                        mem[0] = arg1
                        mem[32] = 5
                        _3312 = mem[64]
                        mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                        mem[_3312] = balances[address(arg1)].field_0
                        s = _3312 + 32
                        idx = 0
                        while idx < balances[address(arg1)].field_0:
                            mem[0] = sha3(address(arg1), 5)
                            _4304 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4304] = balances[address(arg1)][idx].field_0
                            mem[_4304 + 32] = balances[address(arg1)][idx].field_128
                            mem[s] = _4304
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if not mem[_3312]:
                            require arg2 >= 0
                            if not balances[address(arg1)].field_0:
                                balances[address(arg1)].field_0++
                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= balances[address(arg1)].field_0
                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 0 < mem[_3312]
                            if mem[mem[_3312 + 32] + 16 len 16] > block.number:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 1 <= mem[_3312]
                                require mem[_3312] - 1 < mem[_3312]
                                require 1 <= mem[_3312]
                                if block.number >= mem[mem[_3312 + (32 * mem[_3312] - 1) + 32] + 16 len 16]:
                                    require mem[_3312] - 1 < mem[_3312]
                                    require arg2 + mem[mem[(32 * mem[_3312] - 1) + _3312 + 32] + 48 len 16] >= mem[mem[(32 * mem[_3312] - 1) + _3312 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_3312] - 1) + _3312 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_3312] - 1) + _3312 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_3312] - 1) + _3312 + 32] + 48 len 16])
                                else:
                                    s = 0
                                    idx = 0
                                    while mem[_3312] - 1 > idx:
                                        require idx >= 0
                                        require idx + mem[_3312] / 2 < mem[_3312]
                                        if mem[mem[_3312 + (16 * Mask(251, 1, idx + mem[_3312])) + 32] + 16 len 16] <= block.number:
                                            s = idx + mem[_3312] / 2
                                            idx = idx + mem[_3312] / 2
                                            continue 
                                        require 1 <= idx + mem[_3312] / 2
                                        s = idx + mem[_3312] / 2
                                        idx = idx
                                        continue 
                                    require idx < mem[_3312]
                                    require arg2 + mem[mem[(32 * idx) + _3312 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _3312 + 32] + 48 len 16]
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _3312 + 32] + 48 len 16])
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _3312 + 32] + 48 len 16])
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _3312 + 32] + 48 len 16])
                    else:
                        require 1 <= balances[address(stor7.field_0)].field_0
                        require balances[address(stor7.field_0)].field_0 - 1 < balances[address(stor7.field_0)].field_0
                        mem[0] = sha3(sub_21cc9487Address, 5)
                        if balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 >= block.number:
                            require 1 <= balances[address(stor7.field_0)].field_0
                            require balances[address(stor7.field_0)].field_0 - 1 < balances[address(stor7.field_0)].field_0
                            balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(uint128(_2942) - arg2)
                            mem[0] = arg1
                            mem[32] = 5
                            _3574 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                            mem[_3574] = balances[address(arg1)].field_0
                            s = _3574 + 32
                            idx = 0
                            while idx < balances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 5)
                                _4306 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4306] = balances[address(arg1)][idx].field_0
                                mem[_4306 + 32] = balances[address(arg1)][idx].field_128
                                mem[s] = _4306
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_3574]:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 0 < mem[_3574]
                                if mem[mem[_3574 + 32] + 16 len 16] > block.number:
                                    require arg2 >= 0
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= mem[_3574]
                                    require mem[_3574] - 1 < mem[_3574]
                                    require 1 <= mem[_3574]
                                    if block.number >= mem[mem[_3574 + (32 * mem[_3574] - 1) + 32] + 16 len 16]:
                                        require mem[_3574] - 1 < mem[_3574]
                                        require arg2 + mem[mem[(32 * mem[_3574] - 1) + _3574 + 32] + 48 len 16] >= mem[mem[(32 * mem[_3574] - 1) + _3574 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_3574] - 1) + _3574 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_3574] - 1) + _3574 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_3574] - 1) + _3574 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_3574] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_3574] / 2 < mem[_3574]
                                            if mem[mem[_3574 + (16 * Mask(251, 1, idx + mem[_3574])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_3574] / 2
                                                idx = idx + mem[_3574] / 2
                                                continue 
                                            require 1 <= idx + mem[_3574] / 2
                                            s = idx + mem[_3574] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_3574]
                                        require arg2 + mem[mem[(32 * idx) + _3574 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _3574 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _3574 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _3574 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _3574 + 32] + 48 len 16])
                        else:
                            _3313 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3313] = uint128(block.number)
                            mem[_3313 + 32] = uint128(uint128(_2942) - arg2)
                            balances[address(stor7.field_0)].field_0++
                            balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_0 = uint128(block.number)
                            balances[address(stor7.field_0)][balances[address(stor7.field_0)].field_0].field_128 = uint128(uint128(_2942) - arg2)
                            mem[0] = arg1
                            mem[32] = 5
                            _3499 = mem[64]
                            mem[64] = mem[64] + (32 * balances[address(arg1)].field_0) + 32
                            mem[_3499] = balances[address(arg1)].field_0
                            s = _3499 + 32
                            idx = 0
                            while idx < balances[address(arg1)].field_0:
                                mem[0] = sha3(address(arg1), 5)
                                _4308 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4308] = balances[address(arg1)][idx].field_0
                                mem[_4308 + 32] = balances[address(arg1)][idx].field_128
                                mem[s] = _4308
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if not mem[_3499]:
                                require arg2 >= 0
                                if not balances[address(arg1)].field_0:
                                    balances[address(arg1)].field_0++
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                    balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= balances[address(arg1)].field_0
                                    require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                    if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require 0 < mem[_3499]
                                if mem[mem[_3499 + 32] + 16 len 16] > block.number:
                                    require arg2 >= 0
                                    if not balances[address(arg1)].field_0:
                                        balances[address(arg1)].field_0++
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                        balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require 1 <= balances[address(arg1)].field_0
                                        require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                        if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require 1 <= mem[_3499]
                                    require mem[_3499] - 1 < mem[_3499]
                                    require 1 <= mem[_3499]
                                    if block.number >= mem[mem[_3499 + (32 * mem[_3499] - 1) + 32] + 16 len 16]:
                                        require mem[_3499] - 1 < mem[_3499]
                                        require arg2 + mem[mem[(32 * mem[_3499] - 1) + _3499 + 32] + 48 len 16] >= mem[mem[(32 * mem[_3499] - 1) + _3499 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_3499] - 1) + _3499 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * mem[_3499] - 1) + _3499 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * mem[_3499] - 1) + _3499 + 32] + 48 len 16])
                                    else:
                                        s = 0
                                        idx = 0
                                        while mem[_3499] - 1 > idx:
                                            require idx >= 0
                                            require idx + mem[_3499] / 2 < mem[_3499]
                                            if mem[mem[_3499 + (16 * Mask(251, 1, idx + mem[_3499])) + 32] + 16 len 16] <= block.number:
                                                s = idx + mem[_3499] / 2
                                                idx = idx + mem[_3499] / 2
                                                continue 
                                            require 1 <= idx + mem[_3499] / 2
                                            s = idx + mem[_3499] / 2
                                            idx = idx
                                            continue 
                                        require idx < mem[_3499]
                                        require arg2 + mem[mem[(32 * idx) + _3499 + 32] + 48 len 16] >= mem[mem[(32 * idx) + _3499 + 32] + 48 len 16]
                                        if not balances[address(arg1)].field_0:
                                            balances[address(arg1)].field_0++
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                            balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _3499 + 32] + 48 len 16])
                                        else:
                                            require 1 <= balances[address(arg1)].field_0
                                            require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                            if balances[address(arg1)][balances[address(arg1)].field_0].field_0 >= block.number:
                                                require 1 <= balances[address(arg1)].field_0
                                                require balances[address(arg1)].field_0 - 1 < balances[address(arg1)].field_0
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(arg2 + mem[mem[(32 * idx) + _3499 + 32] + 48 len 16])
                                            else:
                                                balances[address(arg1)].field_0++
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_0 = uint128(block.number)
                                                balances[address(arg1)][balances[address(arg1)].field_0].field_128 = uint128(arg2 + mem[mem[(32 * idx) + _3499 + 32] + 48 len 16])
    emit Transfer(arg2, sub_21cc9487Address, arg1);
}



}
