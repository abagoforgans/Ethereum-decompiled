contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    stor2 = 0
    return code.data[72 len 2807]
}



// =====================  Runtime code  =====================


address owner;
uint256 marketing;
uint8 stor2;
mapping of uint256 accountBalances;
mapping of uint256 accountShares;
mapping of address accountIndex;
uint256 accountCount;
uint8 stor7;

function marketing() {
    return marketing
}

function accountIndex(uint256 arg1) {
    return accountIndex[arg1]
}

function accountShares(address arg1) {
    return accountShares[arg1]
}

function accountBalances(address arg1) {
    return accountBalances[arg1]
}

function owner() {
    return owner
}

function isLocked() {
    return bool(stor7)
}

function sub_ae7dedd4(?) {
    return bool(stor2)
}

function accountCount() {
    return accountCount
}

function _fallback() payable {
    revert
}

function lock() {
    if not stor7:
        require owner == msg.sender
        stor7 = 1
        emit Lock()
}

function changeOwner(address arg1) {
    require not stor7
    require owner == msg.sender
    owner = arg1
    emit OwnerChanged(arg1);
}

function sub_3277a8e8(?) payable {
    if stor7:
        require msg.value > 0
        require stor2
        accountBalances[stor5[stor1]] += msg.value
        emit 0xf64a6b2f: msg.value
}

function sub_374b21c7(?) {
    if not stor7:
        require owner == msg.sender
        accountIndex[stor6] = arg1
        accountShares[address(arg1)] = arg2
        accountBalances[address(arg1)] = 0
        accountCount++
        emit 0xf4455073: address(arg1), arg2
}

function withdraw(uint256 arg1) payable {
    if stor7:
        require accountBalances[address(msg.sender)] > 0
        require arg1 > 0
        require accountBalances[address(msg.sender)] - arg1 >= 0
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        accountBalances[address(msg.sender)] -= arg1
        emit Withdraw(msg.sender, arg1);
}

function sub_2f3f0bc3(?) payable {
    if stor7:
        require msg.value > 0
        idx = 0
        s = 0
        while idx < accountCount:
            mem[0] = accountIndex[idx]
            mem[32] = 4
            idx = idx + 1
            s = accountShares[stor5[idx]] + s
            continue 
        idx = 0
        while idx < accountCount:
            require stor[_6] * accountCount
            mem[0] = accountIndex[idx]
            mem[32] = 3
            accountBalances[stor5[idx]] += msg.value * accountShares[stor5[idx]] / stor[_6] * accountCount
            idx = idx + 1
            continue 
        emit 0xc1195dc6: msg.value
}

function sub_9c10950e(?) {
    if not stor7:
        require owner == msg.sender
        if not stor2:
            marketing = accountCount
            accountIndex[stor6] = arg1
            accountShares[address(arg1)] = arg2
            accountBalances[address(arg1)] = 0
            accountCount++
        else:
            emit 0x5aae19ec: accountIndex[stor1]
            accountBalances[arg1] = accountBalances[stor5[stor1]]
            accountBalances[stor5[stor1]] = 0
            accountShares[stor5[stor1]] = 0
            accountIndex[stor1] = arg1
            accountShares[address(arg1)] = arg2
        stor2 = 1
        emit 0xf4455073: address(arg1), arg2
        emit 0x3181e132: arg1
}

function sub_801b8ed6(?) {
    if not stor7:
        require owner == msg.sender
        accountShares[address(arg1)] = 0
        accountBalances[address(arg1)] = 0
        idx = 0
        while idx < accountCount:
            mem[0] = idx
            mem[32] = 5
            if accountIndex[idx] != arg1:
                idx = idx + 1
                continue 
            s = idx
            while s < accountCount - 1:
                mem[32] = 5
                mem[0] = s
                accountIndex[s] = accountIndex[s + 1]
                s = s + 1
                continue 
            accountCount--
            mem[0] = accountCount - 1
            mem[32] = 5
            accountIndex[stor6 - 1] = 0
            if stor2:
                if idx == marketing:
                    marketing = 0
                    stor2 = 0
            idx = accountCount + 1
            continue 
        emit 0x5aae19ec: arg1
}



}
