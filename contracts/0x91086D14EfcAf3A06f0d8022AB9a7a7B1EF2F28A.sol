contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of uint256 stor12;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = 'NYT' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 14
    stor1.length.field_8 = 'New Year Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor4 = 0
    stor5 = 420773 * 3600
    stor6 = 10^16
    stor7 = 10^10
    stor8 = 10^15
    stor9 = 420773 * 3600
    stor10 = 2018
    stor11 = 0
    require not msg.value
    stor2 += 20000
    stor3 = msg.sender
    stor12[address(msg.sender)] += 20000
    emit Transfer(20000, this.address, msg.sender);
    return code.data[702 len 4391]
}



// =====================  Runtime code  =====================


const decimals = 8


array of uint256 symbol;
array of uint256 name;
uint256 totalSupply;
address stor3;
uint256 stor4;
uint256 maxTotalSupply;
uint256 stor7; offset 1
uint256 miningReward;
uint256 stor8; offset 1
uint256 maxMiningReward;
uint256 stor9;
uint8 stor10;
uint256 stor10;
uint256 currentMined;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function MaxMiningReward() {
    return maxMiningReward
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function MiningReward() {
    return miningReward
}

function symbol() {
    return symbol[0 len symbol.length]
}

function CurrentMined() {
    return currentMined
}

function MaxTotalSupply() {
    return maxTotalSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mine() {
    if block.timestamp >= stor9 + (8766 * 3600):
        stor9 += 8766 * 3600
        uint256(stor10)++
        currentMined = 0
        miningReward = stor7
        if not uint256(stor10) - 2018 % 5:
            if uint256(stor10) != 2018:
                maxMiningReward = stor8
        if stor10 % 4 != 1:
            if not uint256(stor10) - 1 % 400:
                stor9 += 24 * 3600
        else:
            if uint256(stor10) - 1 % 100:
                stor9 += 24 * 3600
            else:
                if not uint256(stor10) - 1 % 400:
                    stor9 += 24 * 3600
    require stor9 <= block.timestamp
    require block.timestamp <= stor9 + (168 * 24 * 3600)
    if currentMined < maxMiningReward:
        if maxMiningReward - currentMined >= miningReward:
            if totalSupply + miningReward <= maxTotalSupply:
                balanceOf[address(msg.sender)] += miningReward
                currentMined += miningReward
                totalSupply += miningReward
                emit Transfer(miningReward, this.address, msg.sender);
                return 1
            if block.timestamp > stor9 + (168 * 24 * 3600):
                stor4 = maxMiningReward - currentMined
                if stor4 >= 0:
                    if currentMined:
                        currentMined += stor4
                        balanceOf[stor3] += stor4
                        emit Transfer(stor4, this.address, stor3);
                        stor4 = 0
                        return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
