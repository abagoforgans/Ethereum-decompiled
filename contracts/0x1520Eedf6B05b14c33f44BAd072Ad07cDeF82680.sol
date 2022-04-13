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
mapping of uint256 balanceOf;
mapping of uint256 agingBalanceOf;
array of uint256 stor8;
array of struct stor9;
mapping of uint256 allowance;
array of address addressByIndex;
mapping of uint8 stor12;
mapping of uint256 stor13;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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

function accountBalance(address arg1) {
    return (balanceOf[address(arg1)] - agingBalanceOf[address(arg1)][0])
}

function addAgingTimesForPool(address arg1, uint256 arg2) {
    require owner == msg.sender
    stor13[address(arg1)] = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addAgingTime(uint256 arg1) {
    require owner == msg.sender
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
    stor8[stor8.length] = arg1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function mintToken(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    if arg3 > block.timestamp:
        agingBalanceOf[address(arg1)][0] += arg2
        agingBalanceOf[address(arg1)][arg3] += arg2
        emit AgingTransfer(arg2, arg3, owner, arg1);
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    if not stor12[address(arg1)]:
        stor12[address(arg1)] = 1
        addressByIndex.length++
        if not addressByIndex.length <= addressByIndex.length + 1:
            idx = addressByIndex.length + 1
            while addressByIndex.length > idx:
                uint256(addressByIndex[idx]) = 0
                idx = idx + 1
                continue 
        address(addressByIndex[addressByIndex.length]) = arg1
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if agingBalanceOf[address(msg.sender)][0]:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            if stor8[idx] < block.timestamp:
                require idx < stor8.length
                agingBalanceOf[address(msg.sender)][0] -= agingBalanceOf[address(msg.sender)][stor8[idx]]
                mem[0] = stor8[idx]
                mem[32] = sha3(address(msg.sender), 7)
                agingBalanceOf[address(msg.sender)][stor8[idx]] = 0
            idx = idx + 1
            continue 
    require balanceOf[address(msg.sender)] - agingBalanceOf[address(msg.sender)][0] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    if stor13[address(msg.sender)] <= 0:
        balanceOf[address(arg1)] += arg2
        if not stor12[address(arg1)]:
            stor12[address(arg1)] = 1
            addressByIndex.length++
            if not addressByIndex.length <= addressByIndex.length + 1:
                idx = addressByIndex.length + 1
                while addressByIndex.length > idx:
                    uint256(addressByIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            address(addressByIndex[addressByIndex.length]) = arg1
    else:
        if stor13[address(msg.sender)] > block.timestamp:
            agingBalanceOf[address(arg1)][0] += arg2
            agingBalanceOf[address(arg1)][stor13[address(msg.sender)]] += arg2
            emit AgingTransfer(arg2, stor13[address(msg.sender)], msg.sender, arg1);
        balanceOf[address(arg1)] += arg2
        if not stor12[address(arg1)]:
            stor12[address(arg1)] = 1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if agingBalanceOf[address(arg1)][0]:
        idx = 0
        while idx < stor8.length:
            mem[0] = 8
            if stor8[idx] < block.timestamp:
                require idx < stor8.length
                agingBalanceOf[address(arg1)][0] -= agingBalanceOf[address(arg1)][stor8[idx]]
                mem[0] = stor8[idx]
                mem[32] = sha3(address(arg1), 7)
                agingBalanceOf[address(arg1)][stor8[idx]] = 0
            idx = idx + 1
            continue 
    require balanceOf[address(arg1)] - agingBalanceOf[address(arg1)][0] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if stor13[address(arg1)] <= 0:
        if not stor12[address(arg2)]:
            stor12[address(arg2)] = 1
            addressByIndex.length++
            if not addressByIndex.length <= addressByIndex.length + 1:
                idx = addressByIndex.length + 1
                while addressByIndex.length > idx:
                    uint256(addressByIndex[idx]) = 0
                    idx = idx + 1
                    continue 
            address(addressByIndex[addressByIndex.length]) = arg2
    else:
        if stor13[address(arg1)] > block.timestamp:
            agingBalanceOf[address(arg2)][0] += arg3
            agingBalanceOf[address(arg2)][stor13[address(arg1)]] += arg3
            emit AgingTransfer(arg3, stor13[address(arg1)], arg1, arg2);
        if not stor12[address(arg2)]:
            stor12[address(arg2)] = 1
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

function calculateDividends(uint256 arg1, uint256 arg2) {
    require arg1 < stor9.length
    require block.timestamp >= stor9[arg1].field_0
    require arg1 < stor9.length
    require not uint8(stor9[arg1].field_512)
    require arg1 < stor9.length
    require arg1 < stor9.length
    mem[0] = 9
    if arg2:
        if arg2 + stor9[arg1].field_768 <= addressByIndex.length:
            s = 0
            idx = stor[(4 * arg1) + sha3(mem[0]) + 3]
            while idx < arg2 + stor9[arg1].field_768:
                require arg1 < stor9.length
                require idx < addressByIndex.length
                require idx < addressByIndex.length
                balanceOf[address(stor11[idx])] += balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                emit Transfer((balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000), 0, owner);
                mem[96] = balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                emit Transfer((balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000), owner, address(addressByIndex[idx]));
                mem[0] = 0
                mem[32] = sha3(address(addressByIndex[idx]), 7)
                if agingBalanceOf[address(stor11[idx])][0] > 0:
                    require arg1 < stor9.length
                    require idx < addressByIndex.length
                    require idx < addressByIndex.length
                    mem[0] = 0
                    mem[32] = sha3(address(addressByIndex[idx]), 7)
                    agingBalanceOf[address(stor11[idx])][0] += agingBalanceOf[address(stor11[idx])][0] * stor9[arg1].field_256 / 10000
                    s = 0
                    while s < stor8.length:
                        require arg1 < stor9.length
                        require idx < addressByIndex.length
                        require s < stor8.length
                        require idx < addressByIndex.length
                        require s < stor8.length
                        mem[0] = stor8[s]
                        mem[32] = sha3(address(addressByIndex[idx]), 7)
                        agingBalanceOf[address(stor11[idx])][stor8[s]] += agingBalanceOf[address(stor11[idx])][stor8[s]] * stor9[arg1].field_256 / 10000
                        s = s + 1
                        continue 
                s = balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                idx = idx + 1
                continue 
            require arg1 < stor9.length
            if arg2 + stor9[arg1].field_768 != addressByIndex.length:
                stor9[arg1].field_768 += arg2
            else:
                uint8(stor9[arg1].field_512) = 1
        else:
            s = 0
            idx = stor[(4 * arg1) + sha3(mem[0]) + 3]
            while idx < addressByIndex.length:
                require arg1 < stor9.length
                require idx < addressByIndex.length
                require idx < addressByIndex.length
                balanceOf[address(stor11[idx])] += balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                emit Transfer((balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000), 0, owner);
                mem[96] = balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                emit Transfer((balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000), owner, address(addressByIndex[idx]));
                mem[0] = 0
                mem[32] = sha3(address(addressByIndex[idx]), 7)
                if agingBalanceOf[address(stor11[idx])][0] > 0:
                    require arg1 < stor9.length
                    require idx < addressByIndex.length
                    require idx < addressByIndex.length
                    mem[0] = 0
                    mem[32] = sha3(address(addressByIndex[idx]), 7)
                    agingBalanceOf[address(stor11[idx])][0] += agingBalanceOf[address(stor11[idx])][0] * stor9[arg1].field_256 / 10000
                    s = 0
                    while s < stor8.length:
                        require arg1 < stor9.length
                        require idx < addressByIndex.length
                        require s < stor8.length
                        require idx < addressByIndex.length
                        require s < stor8.length
                        mem[0] = stor8[s]
                        mem[32] = sha3(address(addressByIndex[idx]), 7)
                        agingBalanceOf[address(stor11[idx])][stor8[s]] += agingBalanceOf[address(stor11[idx])][stor8[s]] * stor9[arg1].field_256 / 10000
                        s = s + 1
                        continue 
                s = balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                idx = idx + 1
                continue 
            require arg1 < stor9.length
            if addressByIndex.length != addressByIndex.length:
                stor9[arg1].field_768 = addressByIndex.length
            else:
                uint8(stor9[arg1].field_512) = 1
    else:
        if addressByIndex.length + stor9[arg1].field_768 <= addressByIndex.length:
            s = 0
            idx = stor[(4 * arg1) + sha3(mem[0]) + 3]
            while idx < addressByIndex.length + stor9[arg1].field_768:
                require arg1 < stor9.length
                require idx < addressByIndex.length
                require idx < addressByIndex.length
                balanceOf[address(stor11[idx])] += balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                emit Transfer((balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000), 0, owner);
                mem[96] = balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                emit Transfer((balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000), owner, address(addressByIndex[idx]));
                mem[0] = 0
                mem[32] = sha3(address(addressByIndex[idx]), 7)
                if agingBalanceOf[address(stor11[idx])][0] > 0:
                    require arg1 < stor9.length
                    require idx < addressByIndex.length
                    require idx < addressByIndex.length
                    mem[0] = 0
                    mem[32] = sha3(address(addressByIndex[idx]), 7)
                    agingBalanceOf[address(stor11[idx])][0] += agingBalanceOf[address(stor11[idx])][0] * stor9[arg1].field_256 / 10000
                    s = 0
                    while s < stor8.length:
                        require arg1 < stor9.length
                        require idx < addressByIndex.length
                        require s < stor8.length
                        require idx < addressByIndex.length
                        require s < stor8.length
                        mem[0] = stor8[s]
                        mem[32] = sha3(address(addressByIndex[idx]), 7)
                        agingBalanceOf[address(stor11[idx])][stor8[s]] += agingBalanceOf[address(stor11[idx])][stor8[s]] * stor9[arg1].field_256 / 10000
                        s = s + 1
                        continue 
                s = balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                idx = idx + 1
                continue 
            require arg1 < stor9.length
            if addressByIndex.length + stor9[arg1].field_768 != addressByIndex.length:
                stor9[arg1].field_768 += addressByIndex.length
            else:
                uint8(stor9[arg1].field_512) = 1
        else:
            s = 0
            idx = stor[(4 * arg1) + sha3(mem[0]) + 3]
            while idx < addressByIndex.length:
                require arg1 < stor9.length
                require idx < addressByIndex.length
                require idx < addressByIndex.length
                balanceOf[address(stor11[idx])] += balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                emit Transfer((balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000), 0, owner);
                mem[96] = balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                emit Transfer((balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000), owner, address(addressByIndex[idx]));
                mem[0] = 0
                mem[32] = sha3(address(addressByIndex[idx]), 7)
                if agingBalanceOf[address(stor11[idx])][0] > 0:
                    require arg1 < stor9.length
                    require idx < addressByIndex.length
                    require idx < addressByIndex.length
                    mem[0] = 0
                    mem[32] = sha3(address(addressByIndex[idx]), 7)
                    agingBalanceOf[address(stor11[idx])][0] += agingBalanceOf[address(stor11[idx])][0] * stor9[arg1].field_256 / 10000
                    s = 0
                    while s < stor8.length:
                        require arg1 < stor9.length
                        require idx < addressByIndex.length
                        require s < stor8.length
                        require idx < addressByIndex.length
                        require s < stor8.length
                        mem[0] = stor8[s]
                        mem[32] = sha3(address(addressByIndex[idx]), 7)
                        agingBalanceOf[address(stor11[idx])][stor8[s]] += agingBalanceOf[address(stor11[idx])][stor8[s]] * stor9[arg1].field_256 / 10000
                        s = s + 1
                        continue 
                s = balanceOf[address(stor11[idx])] * stor9[arg1].field_256 / 10000
                idx = idx + 1
                continue 
            require arg1 < stor9.length
            if addressByIndex.length != addressByIndex.length:
                stor9[arg1].field_768 = addressByIndex.length
            else:
                uint8(stor9[arg1].field_512) = 1
}



}
