contract main {




// =====================  Runtime code  =====================


#
#  - purchaseCallback(string arg1)
#
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint8 stor4; offset 176
uint128 stor4; offset 176
uint128 stor4; offset 168
uint128 stor4; offset 160
address stor4;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 penalty;
uint256 maxGasPrice;
uint256 stor10;
uint256 sellPrice;
array of address stor12;
array of address stor13;
mapping of uint8 stor14;
mapping of struct stor15;
mapping of struct group;
uint256 openGroupNumber;
mapping of uint256 stor99;

function name() {
    return name[0 len name.length]
}

function penalty() {
    return penalty
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function maxGasPrice() {
    return maxGasPrice
}

function allowedToPurchase() {
    return bool(uint8(stor4.field_176))
}

function sellPrice() {
    return sellPrice
}

function allowedToSell() {
    return bool(uint8(stor4.field_168))
}

function openGroupNumber() {
    return openGroupNumber
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function transferLock() {
    return bool(uint8(stor4.field_160))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getGroup(uint256 arg1) {
    require arg1 < stor10
    return bool(uint8(group[arg1].field_0)), 
           bool(uint8(group[arg1].field_16)),
           group[arg1].field_1536,
           group[arg1].field_1792,
           group[arg1].field_2304,
           group[arg1].field_256,
           group[arg1].field_512,
           group[arg1].field_768,
           group[arg1].field_1024,
           group[arg1].field_1280,
           group[arg1].field_2048,
           group[arg1].field_2560
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function fundContract() payable {
    require msg.sender == owner
}

function setPenalty(uint256 arg1) {
    require msg.sender == owner
    penalty = arg1
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setSellPrice(uint256 arg1) {
    require msg.sender == owner
    sellPrice = arg1
    emit SetSellPrice(arg1);
}

function setOracleAddress(address arg1) {
    require msg.sender == owner
    address(stor4.field_0) = arg1
    return 1
}

function setOpenGroup(uint256 arg1) {
    require msg.sender == owner
    require arg1 < stor10
    openGroupNumber = arg1
    return 1
}

function getHowManyLeftToDistribute(uint256 arg1) {
    require arg1 < stor10
    return (group[arg1].field_2816 - group[arg1].field_2560)
}

function addMemberToGroup(address arg1, uint256 arg2) {
    require msg.sender == owner
    emit AddToGroup(address(arg1), arg2);
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getHowMuchUntilHardCap() {
    require group[stor17].field_2048 <= group[stor17].field_2304
    return (group[stor17].field_2304 - group[stor17].field_2048)
}

function setTransferLock(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
    emit ChangedTransferLock(bool(0 or uint8(arg1)));
}

function unlock(uint256 arg1) {
    require msg.sender == owner
    require uint8(group[arg1].field_0)
    uint8(group[arg1].field_16) = 1
    emit UnlockDone(arg1);
    return 1
}

function setAllowedToSell(bool arg1) {
    require msg.sender == owner
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
    emit ChangedAllowedToSell(bool(0 or uint8(arg1)));
}

function setAllowedToPurchase(bool arg1) {
    require msg.sender == owner
    Mask(80, 0, stor4.field_176) = Mask(80, 0, arg1)
    emit ChangedAllowedToPurchase(bool(0 or uint8(arg1)));
}

function setMaximumGasPrice(uint256 arg1) {
    require msg.sender == owner
    if not arg1:
        maxGasPrice = 0
    else:
        require 10^9 * arg1 / arg1 == 10^9
        maxGasPrice = 10^9 * arg1
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit 0xb5ddf252: arg1, msg.sender, 0
}

function checkMyUndistributedBalance(uint256 arg1) {
    require uint8(stor15[address(msg.sender)].field_768)
    if not uint8(group[arg1].field_0):
        return stor15[address(msg.sender)][1][arg1].field_0
    else:
        return 0
}

function getUndistributedBalanceOf(address arg1, uint256 arg2) {
    require uint8(stor15[address(arg1)].field_768)
    if not uint8(group[arg2].field_0):
        return stor15[address(arg1)][1][arg2].field_0
    else:
        return 0
}

function distribute(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 < stor10
    require not uint8(group[arg1].field_0)
    emit WantsToDistribute(arg1, group[arg1].field_2560, arg2 + group[arg1].field_2560);
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function createGroup() {
    require msg.sender == owner
    group[stor10].field_512 = 0
    group[stor10].field_768 = 0
    group[stor10].field_1024 = 0
    group[stor10].field_1280 = 0
    group[stor10].field_1536 = 0
    group[stor10].field_1792 = 0
    group[stor10].field_2304 = 0
    group[stor10].field_256 = 0
    stor10++
    emit GroupCreated(stor10, 0, 0, 0, 0, 0, 0, 0, 0);
    return 1, stor10
}

function createGroup(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    require msg.sender == owner
    group[stor10].field_512 = arg1
    group[stor10].field_768 = arg2
    group[stor10].field_1024 = arg3
    group[stor10].field_1280 = arg4
    group[stor10].field_1536 = arg5
    group[stor10].field_1792 = arg6
    group[stor10].field_2304 = arg7
    group[stor10].field_256 = arg8
    stor10++
    emit GroupCreated(stor10, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
    return 1, stor10
}

function mintTokens(uint256 arg1) {
    require msg.sender == owner
    if not arg1:
        require totalSupply >= totalSupply
        require balanceOf[msg.sender] >= balanceOf[msg.sender]
        emit 0xb5ddf252: 0, 0, msg.sender
    else:
        require 10^decimals * arg1 / arg1 == 10^decimals
        require (10^decimals * arg1) + totalSupply >= totalSupply
        totalSupply += 10^decimals * arg1
        require (10^decimals * arg1) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 10^decimals * arg1
        emit 0xb5ddf252: (10^decimals * arg1), 0, msg.sender
}

function getUnlockedTokens(address arg1) {
    if not uint8(stor15[address(arg1)].field_768):
        return balanceOf[address(arg1)]
    if not uint8(stor15[address(arg1)].field_768):
        return (balanceOf[address(arg1)] - stor15[address(arg1)].field_512)
    idx = 0
    s = 0
    while idx < stor10:
        mem[0] = idx
        mem[32] = 16
        if not uint8(group[idx].field_16):
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 15) + 1
        require stor15[address(arg1)][1][idx].field_0 + s >= s
        idx = idx + 1
        s = stor15[address(arg1)][1][idx].field_0 + s
        continue 
    return (s - stor15[address(arg1)].field_512)
}

function _fallback() payable {
    require uint8(stor4.field_176)
    require msg.sender
    require group[stor17].field_256 > 0
    require block.timestamp >= group[stor17].field_512
    require block.timestamp <= group[stor17].field_1280
    require not uint8(group[stor17].field_8)
    require not uint8(group[stor17].field_0)
    require block.gasprice <= maxGasPrice
    require msg.value >= 10^17
    require msg.value + group[stor17].field_2048 >= group[stor17].field_2048
    require msg.value + group[stor17].field_2048 <= group[stor17].field_2304
    require msg.value + stor15[msg.sender][stor17].field_0 >= stor15[msg.sender][stor17].field_0
    if block.timestamp <= group[stor17].field_768:
        emit WantsToPurchase(msg.sender, msg.value, openGroupNumber, 1);
    else:
        if block.timestamp > group[stor17].field_1024:
            require msg.value + stor15[msg.sender][stor17].field_0 <= group[stor17].field_1792
        else:
            require msg.value + stor15[msg.sender][stor17].field_0 <= group[stor17].field_1536
        emit WantsToPurchase(msg.sender, msg.value, openGroupNumber, 0);
}

function purchase() payable {
    require uint8(stor4.field_176)
    require msg.sender
    require group[stor17].field_256 > 0
    require block.timestamp >= group[stor17].field_512
    require block.timestamp <= group[stor17].field_1280
    require not uint8(group[stor17].field_8)
    require not uint8(group[stor17].field_0)
    require block.gasprice <= maxGasPrice
    require msg.value >= 10^17
    require msg.value + group[stor17].field_2048 >= group[stor17].field_2048
    require msg.value + group[stor17].field_2048 <= group[stor17].field_2304
    require msg.value + stor15[msg.sender][stor17].field_0 >= stor15[msg.sender][stor17].field_0
    if block.timestamp <= group[stor17].field_768:
        emit WantsToPurchase(msg.sender, msg.value, openGroupNumber, 1);
    else:
        if block.timestamp > group[stor17].field_1024:
            require msg.value + stor15[msg.sender][stor17].field_0 <= group[stor17].field_1792
        else:
            require msg.value + stor15[msg.sender][stor17].field_0 <= group[stor17].field_1536
        emit WantsToPurchase(msg.sender, msg.value, openGroupNumber, 0);
    return 1
}

function reverseSplitTokensBeforeDistribution(uint256 arg1) {
    require msg.sender == owner
    require arg1
    require balanceOf[msg.sender] / arg1 <= balanceOf[msg.sender]
    require arg1
    totalSupply = totalSupply / arg1
    balanceOf[msg.sender] = balanceOf[msg.sender] / arg1
    emit 0xb5ddf252: (balanceOf[msg.sender] - (balanceOf[msg.sender] / arg1)), msg.sender, 0
    s = 0
    idx = 0
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = 15
        require arg1
        stor15[stor12[idx]].field_512 = stor15[stor12[idx]].field_512 / arg1
        t = 0
        t = 0
        s = 0
        while s < stor10:
            require arg1
            mem[0] = s
            mem[32] = sha3(stor12[idx], 15) + 1
            stor15[stor12[idx]][1][s].field_0 = stor15[stor12[idx]][1][s].field_0 / arg1
            t = stor15[stor12[idx]][1][s].field_0 / arg1
            t = stor15[stor12[idx]][1][s].field_0
            s = s + 1
            continue 
        s = sha3(stor12[idx], 15)
        idx = idx + 1
        continue 
    require stor10 > 0
    s = 0
    idx = 0
    while idx < stor10:
        mem[0] = idx
        mem[32] = 16
        require arg1
        group[idx].field_256 = group[idx].field_256 / arg1
        s = sha3(idx, 16)
        idx = idx + 1
        continue 
    emit ReverseSplitTokens(arg1);
    return 1
}

function distributeCallback(uint256 arg1, uint256 arg2, address[] arg3) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == address(stor4.field_0)
    uint8(group[arg1].field_8) = 1
    group[arg1].field_2816 = arg2
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _21 = mem[(32 * idx) + 128]
        _22 = sha3(mem[(32 * idx) + 140 len 20], 15)
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 15) + 1
        if stor15[mem[(32 * idx) + 140 len 20]][1][arg1].field_0 <= 0:
            s = stor15[mem[(32 * idx) + 140 len 20]][1][arg1].field_0
            s = sha3(mem[(32 * idx) + 140 len 20], 15)
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        require stor15[mem[(32 * idx) + 140 len 20]][1][arg1].field_0 + balanceOf[address(mem[(32 * idx) + 128])] >= balanceOf[address(mem[(32 * idx) + 128])]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] += stor15[mem[(32 * idx) + 140 len 20]][1][arg1].field_0
        mem[(32 * arg3.length) + 128] = stor15[mem[(32 * idx) + 140 len 20]][1][arg1].field_0
        mem[0] = address(_21)
        emit 0xb5ddf252: stor[_22 + 1][arg1], owner, address(_21)
        s = stor[_22 + 1][arg1]
        s = _22
        s = _21
        idx = idx + 1
        continue 
    require arg3.length + group[arg1].field_2560 >= group[arg1].field_2560
    group[arg1].field_2560 += arg3.length
    if group[arg1].field_2816 == arg3.length + group[arg1].field_2560:
        uint8(group[arg1].field_0) = 1
        uint8(group[arg1].field_8) = 0
        group[arg1].field_256 % 1 = 0
        emit DistributeDone(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require 68 == calldata.size
    require not uint8(stor4.field_160)
    if not uint8(stor15[msg.sender].field_768):
        if owner != msg.sender:
            if not stor14[msg.sender]:
                stor14[msg.sender] = 1
                stor13.length++
                uint256(stor13[stor13.length]) = msg.sender or Mask(96, 160, uint256(stor13[stor13.length]))
    else:
        require arg2 + stor15[msg.sender].field_512 >= stor15[msg.sender].field_512
        if not uint8(stor15[address(msg.sender)].field_768):
            require arg2 + stor15[msg.sender].field_512 <= balanceOf[address(msg.sender)]
        else:
            idx = 0
            s = 0
            while idx < stor10:
                mem[0] = idx
                mem[32] = 16
                if not uint8(group[idx].field_16):
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 15) + 1
                require stor15[address(msg.sender)][1][idx].field_0 + s >= s
                idx = idx + 1
                s = stor15[address(msg.sender)][1][idx].field_0 + s
                continue 
            require arg2 + stor15[msg.sender].field_512 <= s
        stor15[msg.sender].field_512 += arg2
        if not uint8(stor15[msg.sender].field_768):
            if owner != msg.sender:
                if not stor14[msg.sender]:
                    stor14[msg.sender] = 1
                    stor13.length++
                    uint256(stor13[stor13.length]) = msg.sender or Mask(96, 160, uint256(stor13[stor13.length]))
    if uint8(stor15[address(arg1)].field_768):
        if uint8(stor15[address(arg1)].field_768):
            require stor15[address(arg1)].field_512 - arg2 <= stor15[address(arg1)].field_512
            stor15[address(arg1)].field_512 -= arg2
    else:
        if owner == arg1:
            if uint8(stor15[address(arg1)].field_768):
                require stor15[address(arg1)].field_512 - arg2 <= stor15[address(arg1)].field_512
                stor15[address(arg1)].field_512 -= arg2
        else:
            if not stor14[address(arg1)]:
                stor14[address(arg1)] = 1
                stor13.length++
                address(stor13[stor13.length]) = arg1
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xb5ddf252: arg2, msg.sender, arg1
    return 1
}

function splitTokensBeforeDistribution(uint256 arg1) {
    require msg.sender == owner
    if not balanceOf[msg.sender]:
        require balanceOf[msg.sender] <= 0
        if not balanceOf[msg.sender]:
            balanceOf[msg.sender] = 0
        else:
            require arg1 * balanceOf[msg.sender] / balanceOf[msg.sender] == arg1
            balanceOf[msg.sender] = arg1 * balanceOf[msg.sender]
        if not totalSupply:
            totalSupply = 0
        else:
            require arg1 * totalSupply / totalSupply == arg1
            totalSupply = arg1 * totalSupply
        emit 0xb5ddf252: -balanceOf[msg.sender], 0, msg.sender
    else:
        require arg1 * balanceOf[msg.sender] / balanceOf[msg.sender] == arg1
        require balanceOf[msg.sender] <= arg1 * balanceOf[msg.sender]
        if not balanceOf[msg.sender]:
            balanceOf[msg.sender] = 0
        else:
            require arg1 * balanceOf[msg.sender] / balanceOf[msg.sender] == arg1
            balanceOf[msg.sender] = arg1 * balanceOf[msg.sender]
        if not totalSupply:
            totalSupply = 0
        else:
            require arg1 * totalSupply / totalSupply == arg1
            totalSupply = arg1 * totalSupply
        emit 0xb5ddf252: ((arg1 * balanceOf[msg.sender]) - balanceOf[msg.sender]), 0, msg.sender
    s = 0
    idx = 0
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = 15
        stor15[stor12[idx]].field_512 = arg1 * stor15[stor12[idx]].field_512
        t = 0
        s = 0
        while s < stor10:
            if not stor15[stor12[idx]][1][s].field_0:
                mem[0] = s
                mem[32] = sha3(stor12[idx], 15) + 1
                stor15[stor12[idx]][1][s].field_0 = 0
            else:
                require arg1 * stor15[stor12[idx]][1][s].field_0 / stor15[stor12[idx]][1][s].field_0 == arg1
                mem[0] = s
                mem[32] = sha3(stor12[idx], 15) + 1
                stor15[stor12[idx]][1][s].field_0 = arg1 * stor15[stor12[idx]][1][s].field_0
            t = stor15[stor12[idx]][1][s].field_0
            s = s + 1
            continue 
        s = sha3(stor12[idx], 15)
        idx = idx + 1
        continue 
    require stor10 > 0
    s = 0
    idx = 0
    while idx < stor10:
        mem[0] = idx
        mem[32] = 16
        if not group[idx].field_256:
            group[idx].field_256 = 0
        else:
            require arg1 * group[idx].field_256 / group[idx].field_256 == arg1
            group[idx].field_256 = arg1 * group[idx].field_256
        s = sha3(idx, 16)
        idx = idx + 1
        continue 
    emit SplitTokens(arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 100 == calldata.size
    require not uint8(stor4.field_160)
    if not uint8(stor15[address(arg1)].field_768):
        if owner != arg1:
            if not stor14[address(arg1)]:
                stor14[address(arg1)] = 1
                stor13.length++
                address(stor13[stor13.length]) = arg1
    else:
        require arg3 + stor15[address(arg1)].field_512 >= stor15[address(arg1)].field_512
        if not uint8(stor15[address(msg.sender)].field_768):
            require arg3 + stor15[address(arg1)].field_512 <= balanceOf[address(msg.sender)]
        else:
            idx = 0
            s = 0
            while idx < stor10:
                mem[0] = idx
                mem[32] = 16
                if not uint8(group[idx].field_16):
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 15) + 1
                require stor15[address(msg.sender)][1][idx].field_0 + s >= s
                idx = idx + 1
                s = stor15[address(msg.sender)][1][idx].field_0 + s
                continue 
            require arg3 + stor15[address(arg1)].field_512 <= s
        stor15[address(arg1)].field_512 += arg3
        if not uint8(stor15[address(arg1)].field_768):
            if owner != arg1:
                if not stor14[address(arg1)]:
                    stor14[address(arg1)] = 1
                    stor13.length++
                    address(stor13[stor13.length]) = arg1
    if uint8(stor15[address(arg2)].field_768):
        if uint8(stor15[address(arg2)].field_768):
            require stor15[address(arg2)].field_512 - arg3 <= stor15[address(arg2)].field_512
            stor15[address(arg2)].field_512 -= arg3
    else:
        if owner == arg2:
            if uint8(stor15[address(arg2)].field_768):
                require stor15[address(arg2)].field_512 - arg3 <= stor15[address(arg2)].field_512
                stor15[address(arg2)].field_512 -= arg3
        else:
            if not stor14[address(arg2)]:
                stor14[address(arg2)] = 1
                stor13.length++
                address(stor13[stor13.length]) = arg2
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0xb5ddf252: arg3, arg1, arg2
    return 1
}

function transferRecovery(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg3 + allowance[address(arg1)][msg.sender] >= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] += arg3
    if uint8(stor15[address(arg1)].field_768):
        stor15[address(arg1)].field_512 -= arg3
        require stor15[address(arg1)].field_512 >= stor15[address(arg1)].field_512 - arg3
    require 100 == calldata.size
    require not uint8(stor4.field_160)
    if not uint8(stor15[address(arg1)].field_768):
        if owner != arg1:
            if not stor14[address(arg1)]:
                stor14[address(arg1)] = 1
                stor13.length++
                address(stor13[stor13.length]) = arg1
    else:
        require arg3 + stor15[address(arg1)].field_512 >= stor15[address(arg1)].field_512
        if not uint8(stor15[address(msg.sender)].field_768):
            require arg3 + stor15[address(arg1)].field_512 <= balanceOf[address(msg.sender)]
        else:
            idx = 0
            s = 0
            while idx < stor10:
                mem[0] = idx
                mem[32] = 16
                if not uint8(group[idx].field_16):
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 15) + 1
                require stor15[address(msg.sender)][1][idx].field_0 + s >= s
                idx = idx + 1
                s = stor15[address(msg.sender)][1][idx].field_0 + s
                continue 
            require arg3 + stor15[address(arg1)].field_512 <= s
        stor15[address(arg1)].field_512 += arg3
        if not uint8(stor15[address(arg1)].field_768):
            if owner != arg1:
                if not stor14[address(arg1)]:
                    stor14[address(arg1)] = 1
                    stor13.length++
                    address(stor13[stor13.length]) = arg1
    if uint8(stor15[address(arg2)].field_768):
        if uint8(stor15[address(arg2)].field_768):
            require stor15[address(arg2)].field_512 - arg3 <= stor15[address(arg2)].field_512
            stor15[address(arg2)].field_512 -= arg3
    else:
        if owner == arg2:
            if uint8(stor15[address(arg2)].field_768):
                require stor15[address(arg2)].field_512 - arg3 <= stor15[address(arg2)].field_512
                stor15[address(arg2)].field_512 -= arg3
        else:
            if not stor14[address(arg2)]:
                stor14[address(arg2)] = 1
                stor13.length++
                address(stor13[stor13.length]) = arg2
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0xb5ddf252: arg3, arg1, arg2
    return 1
}

function reverseSplitTokensAfterDistribution(uint256 arg1) {
    require msg.sender == owner
    require msg.sender == owner
    require arg1
    require balanceOf[msg.sender] / arg1 <= balanceOf[msg.sender]
    require arg1
    totalSupply = totalSupply / arg1
    balanceOf[msg.sender] = balanceOf[msg.sender] / arg1
    emit 0xb5ddf252: (balanceOf[msg.sender] - (balanceOf[msg.sender] / arg1)), msg.sender, 0
    s = 0
    idx = 0
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = 15
        require arg1
        stor15[stor12[idx]].field_512 = stor15[stor12[idx]].field_512 / arg1
        t = 0
        t = 0
        s = 0
        while s < stor10:
            require arg1
            mem[0] = s
            mem[32] = sha3(stor12[idx], 15) + 1
            stor15[stor12[idx]][1][s].field_0 = stor15[stor12[idx]][1][s].field_0 / arg1
            t = stor15[stor12[idx]][1][s].field_0 / arg1
            t = stor15[stor12[idx]][1][s].field_0
            s = s + 1
            continue 
        s = sha3(stor12[idx], 15)
        idx = idx + 1
        continue 
    require stor10 > 0
    s = 0
    idx = 0
    while idx < stor10:
        mem[0] = idx
        mem[32] = 16
        require arg1
        group[idx].field_256 = group[idx].field_256 / arg1
        s = sha3(idx, 16)
        idx = idx + 1
        continue 
    emit ReverseSplitTokens(arg1);
    s = 0
    t = 0
    u = 0
    u = 0
    idx = 0
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = 0
        if balanceOf[stor12[idx]] <= 0:
            s = s
            t = t
            u = balanceOf[stor12[idx]]
            u = stor12[idx]
            idx = idx + 1
            continue 
        require arg1
        require balanceOf[stor12[idx]] / arg1 <= balanceOf[stor12[idx]]
        mem[32] = 0
        balanceOf[stor12[idx]] = balanceOf[stor12[idx]] / arg1
        mem[96] = balanceOf[stor12[idx]] - (balanceOf[stor12[idx]] / arg1)
        mem[0] = stor12[idx]
        emit 0xb5ddf252: (balanceOf[stor12[idx]] - (balanceOf[stor12[idx]] / arg1)), stor12[idx], 0
        s = balanceOf[stor12[idx]] - (balanceOf[stor12[idx]] / arg1)
        t = balanceOf[stor12[idx]] / arg1
        u = balanceOf[stor12[idx]]
        u = stor12[idx]
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < stor13.length:
        mem[0] = address(stor13[idx])
        mem[32] = 15
        if not uint8(stor15[address(stor13[idx])].field_768):
            mem[0] = address(stor13[idx])
            mem[32] = 0
            if balanceOf[address(stor13[idx])] > 0:
                require arg1
                require balanceOf[address(stor13[idx])] / arg1 <= balanceOf[address(stor13[idx])]
                mem[32] = 0
                balanceOf[address(stor13[idx])] = balanceOf[address(stor13[idx])] / arg1
                mem[96] = balanceOf[address(stor13[idx])] - (balanceOf[address(stor13[idx])] / arg1)
                mem[0] = address(stor13[idx])
                emit 0xb5ddf252: (balanceOf[address(stor13[idx])] - (balanceOf[address(stor13[idx])] / arg1)), address(stor13[idx]), 0
        s = address(stor13[idx])
        idx = idx + 1
        continue 
    emit ReverseSplitTokens(arg1);
    return 1
}

function sell(uint256 arg1) {
    require uint8(stor4.field_168)
    if not arg1:
        if uint8(stor15[msg.sender].field_768):
            require stor15[msg.sender].field_512 >= stor15[msg.sender].field_512
            if not uint8(stor15[address(msg.sender)].field_768):
                require stor15[msg.sender].field_512 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < stor10:
                    mem[0] = idx
                    mem[32] = 16
                    if not uint8(group[idx].field_16):
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 15) + 1
                    require stor15[address(msg.sender)][1][idx].field_0 + s >= s
                    idx = idx + 1
                    s = stor15[address(msg.sender)][1][idx].field_0 + s
                    continue 
                require stor15[msg.sender].field_512 <= s
        require 0 <= balanceOf[msg.sender]
        if not arg1:
            require 0 <= eth.balance(this.address)
            require balanceOf[stor3] >= balanceOf[stor3]
            call msg.sender with:
                 gas 2300 wei
        else:
            require sellPrice * arg1 / arg1 == sellPrice
            require sellPrice * arg1 <= eth.balance(this.address)
            require balanceOf[stor3] >= balanceOf[stor3]
            call msg.sender with:
               value sellPrice * arg1 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb5ddf252: 0, msg.sender, owner
    else:
        require 10^decimals * arg1 / arg1 == 10^decimals
        if uint8(stor15[msg.sender].field_768):
            require (10^decimals * arg1) + stor15[msg.sender].field_512 >= stor15[msg.sender].field_512
            if not uint8(stor15[address(msg.sender)].field_768):
                require (10^decimals * arg1) + stor15[msg.sender].field_512 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < stor10:
                    mem[0] = idx
                    mem[32] = 16
                    if not uint8(group[idx].field_16):
                        idx = idx + 1
                        s = s
                        continue 
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 15) + 1
                    require stor15[address(msg.sender)][1][idx].field_0 + s >= s
                    idx = idx + 1
                    s = stor15[address(msg.sender)][1][idx].field_0 + s
                    continue 
                require (10^decimals * arg1) + stor15[msg.sender].field_512 <= s
            stor15[msg.sender].field_512 += 10^decimals * arg1
        require 10^decimals * arg1 <= balanceOf[msg.sender]
        balanceOf[msg.sender] += -1 * 10^decimals * arg1
        if not arg1:
            require 0 <= eth.balance(this.address)
            require (10^decimals * arg1) + balanceOf[stor3] >= balanceOf[stor3]
            balanceOf[stor3] += 10^decimals * arg1
            call msg.sender with:
                 gas 2300 wei
        else:
            require sellPrice * arg1 / arg1 == sellPrice
            require sellPrice * arg1 <= eth.balance(this.address)
            require (10^decimals * arg1) + balanceOf[stor3] >= balanceOf[stor3]
            balanceOf[stor3] += 10^decimals * arg1
            call msg.sender with:
               value sellPrice * arg1 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb5ddf252: (10^decimals * arg1), msg.sender, owner
}

function splitTokensAfterDistribution(uint256 arg1) {
    require msg.sender == owner
    require msg.sender == owner
    if not balanceOf[msg.sender]:
        require balanceOf[msg.sender] <= 0
        if not balanceOf[msg.sender]:
            balanceOf[msg.sender] = 0
        else:
            require arg1 * balanceOf[msg.sender] / balanceOf[msg.sender] == arg1
            balanceOf[msg.sender] = arg1 * balanceOf[msg.sender]
        if not totalSupply:
            totalSupply = 0
        else:
            require arg1 * totalSupply / totalSupply == arg1
            totalSupply = arg1 * totalSupply
        emit 0xb5ddf252: -balanceOf[msg.sender], 0, msg.sender
    else:
        require arg1 * balanceOf[msg.sender] / balanceOf[msg.sender] == arg1
        require balanceOf[msg.sender] <= arg1 * balanceOf[msg.sender]
        if not balanceOf[msg.sender]:
            balanceOf[msg.sender] = 0
        else:
            require arg1 * balanceOf[msg.sender] / balanceOf[msg.sender] == arg1
            balanceOf[msg.sender] = arg1 * balanceOf[msg.sender]
        if not totalSupply:
            totalSupply = 0
        else:
            require arg1 * totalSupply / totalSupply == arg1
            totalSupply = arg1 * totalSupply
        emit 0xb5ddf252: ((arg1 * balanceOf[msg.sender]) - balanceOf[msg.sender]), 0, msg.sender
    s = 0
    idx = 0
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = 15
        stor15[stor12[idx]].field_512 = arg1 * stor15[stor12[idx]].field_512
        t = 0
        s = 0
        while s < stor10:
            if not stor15[stor12[idx]][1][s].field_0:
                mem[0] = s
                mem[32] = sha3(stor12[idx], 15) + 1
                stor15[stor12[idx]][1][s].field_0 = 0
            else:
                require arg1 * stor15[stor12[idx]][1][s].field_0 / stor15[stor12[idx]][1][s].field_0 == arg1
                mem[0] = s
                mem[32] = sha3(stor12[idx], 15) + 1
                stor15[stor12[idx]][1][s].field_0 = arg1 * stor15[stor12[idx]][1][s].field_0
            t = stor15[stor12[idx]][1][s].field_0
            s = s + 1
            continue 
        s = sha3(stor12[idx], 15)
        idx = idx + 1
        continue 
    require stor10 > 0
    s = 0
    idx = 0
    while idx < stor10:
        mem[0] = idx
        mem[32] = 16
        if not group[idx].field_256:
            group[idx].field_256 = 0
        else:
            require arg1 * group[idx].field_256 / group[idx].field_256 == arg1
            group[idx].field_256 = arg1 * group[idx].field_256
        s = sha3(idx, 16)
        idx = idx + 1
        continue 
    emit SplitTokens(arg1);
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = 0
        if balanceOf[stor12[idx]] <= 0:
            s = s
            t = balanceOf[stor12[idx]]
            t = stor12[idx]
            idx = idx + 1
            continue 
        if not balanceOf[stor12[idx]]:
            require balanceOf[stor12[idx]] <= 0
            mem[32] = 0
            balanceOf[stor12[idx]] = 0
            mem[96] = -balanceOf[stor12[idx]]
            mem[0] = stor12[idx]
            emit 0xb5ddf252: -balanceOf[stor12[idx]], 0, stor12[idx]
            s = -balanceOf[stor12[idx]]
            t = balanceOf[stor12[idx]]
            t = stor12[idx]
            idx = idx + 1
            continue 
        require arg1 * balanceOf[stor12[idx]] / balanceOf[stor12[idx]] == arg1
        require balanceOf[stor12[idx]] <= arg1 * balanceOf[stor12[idx]]
        mem[32] = 0
        balanceOf[stor12[idx]] = arg1 * balanceOf[stor12[idx]]
        mem[96] = (arg1 * balanceOf[stor12[idx]]) - balanceOf[stor12[idx]]
        mem[0] = stor12[idx]
        emit 0xb5ddf252: ((arg1 * balanceOf[stor12[idx]]) - balanceOf[stor12[idx]]), 0, stor12[idx]
        s = (arg1 * balanceOf[stor12[idx]]) - balanceOf[stor12[idx]]
        t = balanceOf[stor12[idx]]
        t = stor12[idx]
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < stor13.length:
        mem[0] = address(stor13[idx])
        mem[32] = 15
        if not uint8(stor15[address(stor13[idx])].field_768):
            mem[0] = address(stor13[idx])
            mem[32] = 0
            if balanceOf[address(stor13[idx])] > 0:
                if not balanceOf[address(stor13[idx])]:
                    require balanceOf[address(stor13[idx])] <= 0
                    mem[32] = 0
                    balanceOf[address(stor13[idx])] = 0
                    mem[96] = -balanceOf[address(stor13[idx])]
                    mem[0] = address(stor13[idx])
                    emit 0xb5ddf252: -balanceOf[address(stor13[idx])], 0, address(stor13[idx])
                else:
                    require arg1 * balanceOf[address(stor13[idx])] / balanceOf[address(stor13[idx])] == arg1
                    require balanceOf[address(stor13[idx])] <= arg1 * balanceOf[address(stor13[idx])]
                    mem[32] = 0
                    balanceOf[address(stor13[idx])] = arg1 * balanceOf[address(stor13[idx])]
                    mem[96] = (arg1 * balanceOf[address(stor13[idx])]) - balanceOf[address(stor13[idx])]
                    mem[0] = address(stor13[idx])
                    emit 0xb5ddf252: ((arg1 * balanceOf[address(stor13[idx])]) - balanceOf[address(stor13[idx])]), 0, address(stor13[idx])
        s = address(stor13[idx])
        idx = idx + 1
        continue 
    emit SplitTokens(arg1);
    return 1
}



}
