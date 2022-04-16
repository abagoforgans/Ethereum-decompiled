contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor6;
uint256 stor6;
mapping of uint256 balanceOf;
mapping of uint256 agingBalanceOf;
array of uint256 stor9;
array of struct stor10;
mapping of uint256 allowance;
array of address addressByIndex;
mapping of uint8 stor13;
mapping of uint256 stor14;
uint16 stor15;
mapping of uint256 stor16;
uint8 transfersEnabled;
uint8 stor17; offset 8
uint256 stor17;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function allowManuallyBurnTokens() {
    return bool(uint8(stor6))
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transfersEnabled() {
    return bool(transfersEnabled)
}

function addressByIndex(uint256 arg1) {
    require arg1 < addressByIndex.length
    return address(addressByIndex[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function agingBalanceOf(address arg1, uint256 arg2) {
    return agingBalanceOf[arg1][arg2]
}

function countAddresses() {
    return addressByIndex.length
}

function _fallback() {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function allAgingTimesAdded() {
    require owner == msg.sender
    uint8(stor17.field_8) = 1
}

function addAgingTimesForPool(address arg1, uint256 arg2) {
    require owner == msg.sender
    stor14[address(arg1)] = arg2
}

function disableManuallyBurnTokens(bool arg1) {
    require owner == msg.sender
    uint256(stor6) = not arg1 or Mask(248, 8, uint256(stor6))
}

function disableTransfers(bool arg1) {
    require owner == msg.sender
    uint256(stor17.field_0) = not arg1 or Mask(248, 8, uint256(stor17.field_0))
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function accountBalance(address arg1) {
    require balanceOf[address(arg1)] >= agingBalanceOf[address(arg1)][0]
    return (balanceOf[address(arg1)] - agingBalanceOf[address(arg1)][0])
}

function addAgingTime(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor17.field_8)
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    stor9[stor9.length] = arg1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function issue(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if not stor13[address(arg1)]:
        stor13[address(arg1)] = 1
        addressByIndex.length++
        if not addressByIndex.length <= addressByIndex.length + 1:
            idx = addressByIndex.length + 1
            while addressByIndex.length > idx:
                uint256(addressByIndex[idx]) = 0
                idx = idx + 1
                continue 
        address(addressByIndex[addressByIndex.length]) = arg1
    emit Issuance(arg2);
    emit Transfer(arg2, this.address, arg1);
}

function mintToken(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    if arg3 > block.timestamp:
        require arg2 + agingBalanceOf[address(arg1)][0] >= agingBalanceOf[address(arg1)][0]
        agingBalanceOf[address(arg1)][0] += arg2
        require arg2 + agingBalanceOf[address(arg1)][arg3] >= agingBalanceOf[address(arg1)][arg3]
        agingBalanceOf[address(arg1)][arg3] += arg2
        emit AgingTransfer(arg2, arg3, owner, arg1);
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Issuance(arg2);
    if not stor13[address(arg1)]:
        stor13[address(arg1)] = 1
        addressByIndex.length++
        if not addressByIndex.length <= addressByIndex.length + 1:
            idx = addressByIndex.length + 1
            while addressByIndex.length > idx:
                uint256(addressByIndex[idx]) = 0
                idx = idx + 1
                continue 
        address(addressByIndex[addressByIndex.length]) = arg1
    emit Transfer(arg2, this.address, arg1);
}

function destroy(address arg1, uint256 arg2) {
    if agingBalanceOf[address(arg1)][0]:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            if stor9[idx] < block.timestamp:
                require idx < stor9.length
                require agingBalanceOf[address(arg1)][0] >= agingBalanceOf[address(arg1)][stor9[idx]]
                agingBalanceOf[address(arg1)][0] -= agingBalanceOf[address(arg1)][stor9[idx]]
                require idx < stor9.length
                mem[0] = stor9[idx]
                mem[32] = sha3(address(arg1), 8)
                agingBalanceOf[address(arg1)][stor9[idx]] = 0
            idx = idx + 1
            continue 
    if arg1 != msg.sender:
        require owner == msg.sender
    else:
        if not uint8(stor6):
            require owner == msg.sender
    require balanceOf[address(arg1)] >= agingBalanceOf[address(arg1)][0]
    require balanceOf[address(arg1)] - agingBalanceOf[address(arg1)][0] >= arg2
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    require totalSupply >= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, this.address);
    emit Destruction(arg2);
}

function burn(uint256 arg1) {
    if agingBalanceOf[address(msg.sender)][0]:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            if stor9[idx] < block.timestamp:
                require idx < stor9.length
                require agingBalanceOf[address(msg.sender)][0] >= agingBalanceOf[address(msg.sender)][stor9[idx]]
                agingBalanceOf[address(msg.sender)][0] -= agingBalanceOf[address(msg.sender)][stor9[idx]]
                require idx < stor9.length
                mem[0] = stor9[idx]
                mem[32] = sha3(address(msg.sender), 8)
                agingBalanceOf[address(msg.sender)][stor9[idx]] = 0
            idx = idx + 1
            continue 
    if msg.sender != msg.sender:
        require owner == msg.sender
    else:
        if not uint8(stor6):
            require owner == msg.sender
    require balanceOf[address(msg.sender)] >= agingBalanceOf[address(msg.sender)][0]
    require balanceOf[address(msg.sender)] - agingBalanceOf[address(msg.sender)][0] >= arg1
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply >= arg1
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, this.address);
    emit Destruction(arg1);
    emit Burn(arg1, msg.sender);
    return 1
}

function receiveDividends() {
    require stor15 < stor10.length
    require block.timestamp >= stor10[stor15].field_0
    require stor16[address(msg.sender)] < stor15
    require stor15 < stor10.length
    require (balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000
    emit Transfer((balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000), this.address, msg.sender);
    emit Issuance((balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000));
    require (balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000) + totalSupply >= totalSupply
    totalSupply += balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000
    if agingBalanceOf[address(msg.sender)][0] > 0:
        require stor15 < stor10.length
        require (agingBalanceOf[address(msg.sender)][0] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(msg.sender)][0] >= agingBalanceOf[address(msg.sender)][0]
        agingBalanceOf[address(msg.sender)][0] += agingBalanceOf[address(msg.sender)][0] * stor10[stor15].field_256 / 1000
        idx = 0
        while idx < stor9.length:
            require stor15 < stor10.length
            require idx < stor9.length
            require (agingBalanceOf[address(msg.sender)][stor9[idx]] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(msg.sender)][stor9[idx]] >= agingBalanceOf[address(msg.sender)][stor9[idx]]
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = sha3(address(msg.sender), 8)
            agingBalanceOf[address(msg.sender)][stor9[idx]] += agingBalanceOf[address(msg.sender)][stor9[idx]] * stor10[stor15].field_256 / 1000
            idx = idx + 1
            continue 
    stor16[address(msg.sender)] = stor15
}

function calculateDividends(uint256 arg1) {
    require stor15 < stor10.length
    require block.timestamp >= stor10[stor15].field_0
    require arg1 > 0
    require stor15 < stor10.length
    require arg1 + stor10[stor15].field_512 >= stor10[stor15].field_512
    require stor15 < stor10.length
    mem[0] = 10
    if arg1 + stor10[stor15].field_512 <= addressByIndex.length:
        idx = stor[(3 * stor15) + sha3(mem[0]) + 2]
        while idx < arg1 + stor10[stor15].field_512:
            require idx < addressByIndex.length
            mem[0] = address(addressByIndex[idx])
            mem[32] = 16
            if stor16[address(stor12[idx])] < stor15:
                require stor15 < stor10.length
                require (balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000) + balanceOf[address(stor12[idx])] >= balanceOf[address(stor12[idx])]
                balanceOf[address(stor12[idx])] += balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000
                emit Transfer((balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000), this.address, address(addressByIndex[idx]));
                mem[96] = balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000
                emit Issuance((balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000));
                require (balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000) + totalSupply >= totalSupply
                totalSupply += balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000
                if agingBalanceOf[address(stor12[idx])][0] > 0:
                    require stor15 < stor10.length
                    require (agingBalanceOf[address(stor12[idx])][0] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(stor12[idx])][0] >= agingBalanceOf[address(stor12[idx])][0]
                    agingBalanceOf[address(stor12[idx])][0] += agingBalanceOf[address(stor12[idx])][0] * stor10[stor15].field_256 / 1000
                    s = 0
                    while s < stor9.length:
                        require stor15 < stor10.length
                        require s < stor9.length
                        require (agingBalanceOf[address(stor12[idx])][stor9[s]] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(stor12[idx])][stor9[s]] >= agingBalanceOf[address(stor12[idx])][stor9[s]]
                        require s < stor9.length
                        mem[0] = stor9[s]
                        mem[32] = sha3(address(addressByIndex[idx]), 8)
                        agingBalanceOf[address(stor12[idx])][stor9[s]] += agingBalanceOf[address(stor12[idx])][stor9[s]] * stor10[stor15].field_256 / 1000
                        s = s + 1
                        continue 
                mem[0] = address(addressByIndex[idx])
                mem[32] = 16
                stor16[address(stor12[idx])] = stor15
            idx = idx + 1
            continue 
        if arg1 + stor10[stor15].field_512 == addressByIndex.length:
            stor15 = uint16(stor15 + 1)
        else:
            require stor15 < stor10.length
            stor10[stor15].field_512 += arg1
    else:
        idx = stor[(3 * stor15) + sha3(mem[0]) + 2]
        while idx < addressByIndex.length:
            mem[0] = address(addressByIndex[idx])
            mem[32] = 16
            if stor16[address(stor12[idx])] < stor15:
                require stor15 < stor10.length
                require (balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000) + balanceOf[address(stor12[idx])] >= balanceOf[address(stor12[idx])]
                balanceOf[address(stor12[idx])] += balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000
                emit Transfer((balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000), this.address, address(addressByIndex[idx]));
                mem[96] = balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000
                emit Issuance((balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000));
                require (balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000) + totalSupply >= totalSupply
                totalSupply += balanceOf[address(stor12[idx])] * stor10[stor15].field_256 / 1000
                if agingBalanceOf[address(stor12[idx])][0] > 0:
                    require stor15 < stor10.length
                    require (agingBalanceOf[address(stor12[idx])][0] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(stor12[idx])][0] >= agingBalanceOf[address(stor12[idx])][0]
                    agingBalanceOf[address(stor12[idx])][0] += agingBalanceOf[address(stor12[idx])][0] * stor10[stor15].field_256 / 1000
                    s = 0
                    while s < stor9.length:
                        require stor15 < stor10.length
                        require s < stor9.length
                        require (agingBalanceOf[address(stor12[idx])][stor9[s]] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(stor12[idx])][stor9[s]] >= agingBalanceOf[address(stor12[idx])][stor9[s]]
                        require s < stor9.length
                        mem[0] = stor9[s]
                        mem[32] = sha3(address(addressByIndex[idx]), 8)
                        agingBalanceOf[address(stor12[idx])][stor9[s]] += agingBalanceOf[address(stor12[idx])][stor9[s]] * stor10[stor15].field_256 / 1000
                        s = s + 1
                        continue 
                mem[0] = address(addressByIndex[idx])
                mem[32] = 16
                stor16[address(stor12[idx])] = stor15
            idx = idx + 1
            continue 
        if addressByIndex.length == addressByIndex.length:
            stor15 = uint16(stor15 + 1)
        else:
            require stor15 < stor10.length
            stor10[stor15].field_512 = addressByIndex.length
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require transfersEnabled
    if agingBalanceOf[address(arg1)][0]:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            if stor9[idx] < block.timestamp:
                require idx < stor9.length
                require agingBalanceOf[address(arg1)][0] >= agingBalanceOf[address(arg1)][stor9[idx]]
                agingBalanceOf[address(arg1)][0] -= agingBalanceOf[address(arg1)][stor9[idx]]
                require idx < stor9.length
                mem[0] = stor9[idx]
                mem[32] = sha3(address(arg1), 8)
                agingBalanceOf[address(arg1)][stor9[idx]] = 0
            idx = idx + 1
            continue 
    if stor15 < stor10.length:
        if block.timestamp >= stor10[stor15].field_0:
            if stor16[address(arg1)] < stor15:
                require stor15 < stor10.length
                require (balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000
                emit Transfer((balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000), this.address, arg1);
                emit Issuance((balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000));
                require (balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000) + totalSupply >= totalSupply
                totalSupply += balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000
                if agingBalanceOf[address(arg1)][0] > 0:
                    require stor15 < stor10.length
                    require (agingBalanceOf[address(arg1)][0] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(arg1)][0] >= agingBalanceOf[address(arg1)][0]
                    agingBalanceOf[address(arg1)][0] += agingBalanceOf[address(arg1)][0] * stor10[stor15].field_256 / 1000
                    idx = 0
                    while idx < stor9.length:
                        require stor15 < stor10.length
                        require idx < stor9.length
                        require (agingBalanceOf[address(arg1)][stor9[idx]] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(arg1)][stor9[idx]] >= agingBalanceOf[address(arg1)][stor9[idx]]
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = sha3(address(arg1), 8)
                        agingBalanceOf[address(arg1)][stor9[idx]] += agingBalanceOf[address(arg1)][stor9[idx]] * stor10[stor15].field_256 / 1000
                        idx = idx + 1
                        continue 
                stor16[address(arg1)] = stor15
            if stor16[address(arg2)] < stor15:
                require stor15 < stor10.length
                require (balanceOf[address(arg2)] * stor10[stor15].field_256 / 1000) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += balanceOf[address(arg2)] * stor10[stor15].field_256 / 1000
                emit Transfer((balanceOf[address(arg2)] * stor10[stor15].field_256 / 1000), this.address, arg2);
                emit Issuance((balanceOf[address(arg2)] * stor10[stor15].field_256 / 1000));
                require (balanceOf[address(arg2)] * stor10[stor15].field_256 / 1000) + totalSupply >= totalSupply
                totalSupply += balanceOf[address(arg2)] * stor10[stor15].field_256 / 1000
                if agingBalanceOf[address(arg2)][0] > 0:
                    require stor15 < stor10.length
                    require (agingBalanceOf[address(arg2)][0] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(arg2)][0] >= agingBalanceOf[address(arg2)][0]
                    agingBalanceOf[address(arg2)][0] += agingBalanceOf[address(arg2)][0] * stor10[stor15].field_256 / 1000
                    idx = 0
                    while idx < stor9.length:
                        require stor15 < stor10.length
                        require idx < stor9.length
                        require (agingBalanceOf[address(arg2)][stor9[idx]] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(arg2)][stor9[idx]] >= agingBalanceOf[address(arg2)][stor9[idx]]
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = sha3(address(arg2), 8)
                        agingBalanceOf[address(arg2)][stor9[idx]] += agingBalanceOf[address(arg2)][stor9[idx]] * stor10[stor15].field_256 / 1000
                        idx = idx + 1
                        continue 
                stor16[address(arg2)] = stor15
    require balanceOf[address(arg1)] >= agingBalanceOf[address(arg1)][0]
    require balanceOf[address(arg1)] - agingBalanceOf[address(arg1)][0] >= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if stor14[address(arg1)] > 0:
        if stor14[address(arg1)] > block.timestamp:
            require arg3 + agingBalanceOf[address(arg2)][0] >= agingBalanceOf[address(arg2)][0]
            agingBalanceOf[address(arg2)][0] += arg3
            require arg3 + agingBalanceOf[address(arg2)][stor14[address(arg1)]] >= agingBalanceOf[address(arg2)][stor14[address(arg1)]]
            agingBalanceOf[address(arg2)][stor14[address(arg1)]] += arg3
            emit AgingTransfer(arg3, stor14[address(arg1)], arg1, arg2);
    if not stor13[address(arg2)]:
        stor13[address(arg2)] = 1
        addressByIndex.length++
        if not addressByIndex.length <= addressByIndex.length + 1:
            idx = addressByIndex.length + 1
            while addressByIndex.length > idx:
                uint256(addressByIndex[idx]) = 0
                idx = idx + 1
                continue 
        address(addressByIndex[addressByIndex.length]) = arg2
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require transfersEnabled
    if agingBalanceOf[address(msg.sender)][0]:
        idx = 0
        while idx < stor9.length:
            mem[0] = 9
            if stor9[idx] < block.timestamp:
                require idx < stor9.length
                require agingBalanceOf[address(msg.sender)][0] >= agingBalanceOf[address(msg.sender)][stor9[idx]]
                agingBalanceOf[address(msg.sender)][0] -= agingBalanceOf[address(msg.sender)][stor9[idx]]
                require idx < stor9.length
                mem[0] = stor9[idx]
                mem[32] = sha3(address(msg.sender), 8)
                agingBalanceOf[address(msg.sender)][stor9[idx]] = 0
            idx = idx + 1
            continue 
    if stor15 < stor10.length:
        if block.timestamp >= stor10[stor15].field_0:
            if stor16[address(msg.sender)] < stor15:
                require stor15 < stor10.length
                require (balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000
                emit Transfer((balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000), this.address, msg.sender);
                emit Issuance((balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000));
                require (balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000) + totalSupply >= totalSupply
                totalSupply += balanceOf[address(msg.sender)] * stor10[stor15].field_256 / 1000
                if agingBalanceOf[address(msg.sender)][0] > 0:
                    require stor15 < stor10.length
                    require (agingBalanceOf[address(msg.sender)][0] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(msg.sender)][0] >= agingBalanceOf[address(msg.sender)][0]
                    agingBalanceOf[address(msg.sender)][0] += agingBalanceOf[address(msg.sender)][0] * stor10[stor15].field_256 / 1000
                    idx = 0
                    while idx < stor9.length:
                        require stor15 < stor10.length
                        require idx < stor9.length
                        require (agingBalanceOf[address(msg.sender)][stor9[idx]] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(msg.sender)][stor9[idx]] >= agingBalanceOf[address(msg.sender)][stor9[idx]]
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = sha3(address(msg.sender), 8)
                        agingBalanceOf[address(msg.sender)][stor9[idx]] += agingBalanceOf[address(msg.sender)][stor9[idx]] * stor10[stor15].field_256 / 1000
                        idx = idx + 1
                        continue 
                stor16[address(msg.sender)] = stor15
            if stor16[address(arg1)] < stor15:
                require stor15 < stor10.length
                require (balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000
                emit Transfer((balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000), this.address, arg1);
                emit Issuance((balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000));
                require (balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000) + totalSupply >= totalSupply
                totalSupply += balanceOf[address(arg1)] * stor10[stor15].field_256 / 1000
                if agingBalanceOf[address(arg1)][0] > 0:
                    require stor15 < stor10.length
                    require (agingBalanceOf[address(arg1)][0] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(arg1)][0] >= agingBalanceOf[address(arg1)][0]
                    agingBalanceOf[address(arg1)][0] += agingBalanceOf[address(arg1)][0] * stor10[stor15].field_256 / 1000
                    idx = 0
                    while idx < stor9.length:
                        require stor15 < stor10.length
                        require idx < stor9.length
                        require (agingBalanceOf[address(arg1)][stor9[idx]] * stor10[stor15].field_256 / 1000) + agingBalanceOf[address(arg1)][stor9[idx]] >= agingBalanceOf[address(arg1)][stor9[idx]]
                        require idx < stor9.length
                        mem[0] = stor9[idx]
                        mem[32] = sha3(address(arg1), 8)
                        agingBalanceOf[address(arg1)][stor9[idx]] += agingBalanceOf[address(arg1)][stor9[idx]] * stor10[stor15].field_256 / 1000
                        idx = idx + 1
                        continue 
                stor16[address(arg1)] = stor15
    require balanceOf[address(msg.sender)] >= agingBalanceOf[address(msg.sender)][0]
    require balanceOf[address(msg.sender)] - agingBalanceOf[address(msg.sender)][0] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    if stor14[address(msg.sender)] > 0:
        if stor14[address(msg.sender)] > block.timestamp:
            require arg2 + agingBalanceOf[address(arg1)][0] >= agingBalanceOf[address(arg1)][0]
            agingBalanceOf[address(arg1)][0] += arg2
            require arg2 + agingBalanceOf[address(arg1)][stor14[address(msg.sender)]] >= agingBalanceOf[address(arg1)][stor14[address(msg.sender)]]
            agingBalanceOf[address(arg1)][stor14[address(msg.sender)]] += arg2
            emit AgingTransfer(arg2, stor14[address(msg.sender)], msg.sender, arg1);
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if not stor13[address(arg1)]:
        stor13[address(arg1)] = 1
        addressByIndex.length++
        if not addressByIndex.length <= addressByIndex.length + 1:
            idx = addressByIndex.length + 1
            while addressByIndex.length > idx:
                uint256(addressByIndex[idx]) = 0
                idx = idx + 1
                continue 
        address(addressByIndex[addressByIndex.length]) = arg1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
