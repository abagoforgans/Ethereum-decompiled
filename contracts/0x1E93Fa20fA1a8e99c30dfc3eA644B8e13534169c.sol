contract main {




// =====================  Runtime code  =====================


const name = 'frenzy coin'

const decimals = 18

const sub_5080af09(?) = 1000000 * 10^18

const version = '1.0'

const autoAirdropAmount = 1000 * 10^18

const symbol = 'FYC'

const MAX_SUPPLY = 1000000000000 * 10^18

const MAX_FUNDING_SUPPLY = 499999000000 * 10^18

const INIT_SUPPLY = 500000000000 * 10^18


uint256 totalSupply;
address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
uint256 totalFundingSupply;
uint256 rate;
uint256 alreadyAutoAirdropAmount;
mapping of uint8 stor7;
array of struct lockEpochsMap;

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function alreadyAutoAirdropAmount() {
    return alreadyAutoAirdropAmount
}

function lockEpochsMap(address arg1, uint256 arg2) {
    require arg2 < lockEpochsMap[arg1].field_0
    return lockEpochsMap[arg1][arg2].field_0, lockEpochsMap[arg1][arg2].field_256
}

function owner() {
    return owner
}

function totalFundingSupply() {
    return totalFundingSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function etherProceeds() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function lockBalance(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    lockEpochsMap[address(arg1)].field_0++
    lockEpochsMap[address(arg1)][lockEpochsMap[address(arg1)].field_0].field_0 = arg3
    lockEpochsMap[address(arg1)][lockEpochsMap[address(arg1)].field_0].field_256 = arg2
}

function balanceOf(address arg1) {
    require totalSupply + 1000 * 10^18 >= totalSupply
    if totalSupply + 1000 * 10^18 > 1000000000000 * 10^18:
        return stor2[address(arg1)]
    require alreadyAutoAirdropAmount + 1000 * 10^18 >= alreadyAutoAirdropAmount
    if alreadyAutoAirdropAmount + 1000 * 10^18 > 1000000 * 10^18:
        return stor2[address(arg1)]
    if stor7[address(arg1)]:
        return stor2[address(arg1)]
    require stor2[address(arg1)] + 1000 * 10^18 >= stor2[address(arg1)]
    return (stor2[address(arg1)] + 1000 * 10^18)
}

function withdrawCoin(uint256 arg1) {
    require msg.sender == owner
    if not arg1:
        require totalFundingSupply >= totalFundingSupply
        require 499999000000 * 10^18 >= totalFundingSupply
    else:
        require arg1
        require arg1 / arg1 == 1
        require totalFundingSupply + arg1 >= totalFundingSupply
        require 499999000000 * 10^18 >= totalFundingSupply + arg1
    if not arg1:
        require totalSupply >= totalSupply
        require totalSupply <= 1000000000000 * 10^18
    else:
        require arg1
        require arg1 * rate / arg1 == rate
        require totalSupply + (arg1 * rate) >= totalSupply
        require totalSupply + (arg1 * rate) <= 1000000000000 * 10^18
    if not arg1:
        require totalSupply >= totalSupply
        emit Transfer(0, 0, msg.sender);
    else:
        require arg1
        require arg1 / arg1 == 1
        require totalSupply + arg1 >= totalSupply
        totalSupply += arg1
        stor2[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
    require totalFundingSupply + arg1 >= totalFundingSupply
    totalFundingSupply += arg1
}

function _fallback() payable {
    if not msg.value:
        require totalFundingSupply >= totalFundingSupply
        require 499999000000 * 10^18 >= totalFundingSupply
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require totalFundingSupply + (msg.value * rate) >= totalFundingSupply
        require 499999000000 * 10^18 >= totalFundingSupply + (msg.value * rate)
    if not msg.value:
        require totalSupply >= totalSupply
        require totalSupply <= 1000000000000 * 10^18
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require totalSupply + (msg.value * rate) >= totalSupply
        require totalSupply + (msg.value * rate) <= 1000000000000 * 10^18
    if not msg.value:
        require totalSupply >= totalSupply
        emit Transfer(0, 0, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require totalSupply + (msg.value * rate) >= totalSupply
        totalSupply += msg.value * rate
        stor2[address(msg.sender)] += msg.value * rate
        emit Transfer((msg.value * rate), 0, msg.sender);
    if not msg.value:
        require totalFundingSupply >= totalFundingSupply
    require msg.value
    require msg.value * rate / msg.value == rate
    require totalFundingSupply + (msg.value * rate) >= totalFundingSupply
    totalFundingSupply += msg.value * rate
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if not stor7[address(msg.sender)]:
        require totalSupply + 1000 * 10^18 >= totalSupply
        if totalSupply + 1000 * 10^18 <= 1000000000000 * 10^18:
            require alreadyAutoAirdropAmount + 1000 * 10^18 >= alreadyAutoAirdropAmount
            if alreadyAutoAirdropAmount + 1000 * 10^18 <= 1000000 * 10^18:
                stor7[address(msg.sender)] = 1
                require stor2[address(msg.sender)] + 1000 * 10^18 >= stor2[address(msg.sender)]
                stor2[address(msg.sender)] += 1000 * 10^18
                require totalSupply + 1000 * 10^18 >= totalSupply
                totalSupply += 1000 * 10^18
                require alreadyAutoAirdropAmount + 1000 * 10^18 >= alreadyAutoAirdropAmount
                alreadyAutoAirdropAmount += 1000 * 10^18
    idx = 0
    s = 0
    while idx < lockEpochsMap[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 8)
        if block.timestamp >= lockEpochsMap[address(msg.sender)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < lockEpochsMap[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 8)
        require s + lockEpochsMap[address(msg.sender)][idx].field_256 >= s
        idx = idx + 1
        s = s + lockEpochsMap[address(msg.sender)][idx].field_256
        continue 
    require arg2 <= stor2[address(msg.sender)]
    require stor2[address(msg.sender)] - arg2 >= s
    require arg2 <= stor2[address(msg.sender)]
    require arg2 <= stor2[address(msg.sender)]
    stor2[address(msg.sender)] -= arg2
    require stor2[address(arg1)] + arg2 >= stor2[address(arg1)]
    stor2[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    if not stor7[address(arg1)]:
        require totalSupply + 1000 * 10^18 >= totalSupply
        if totalSupply + 1000 * 10^18 <= 1000000000000 * 10^18:
            require alreadyAutoAirdropAmount + 1000 * 10^18 >= alreadyAutoAirdropAmount
            if alreadyAutoAirdropAmount + 1000 * 10^18 <= 1000000 * 10^18:
                stor7[address(arg1)] = 1
                require stor2[address(arg1)] + 1000 * 10^18 >= stor2[address(arg1)]
                stor2[address(arg1)] += 1000 * 10^18
                require totalSupply + 1000 * 10^18 >= totalSupply
                totalSupply += 1000 * 10^18
                require alreadyAutoAirdropAmount + 1000 * 10^18 >= alreadyAutoAirdropAmount
                alreadyAutoAirdropAmount += 1000 * 10^18
    idx = 0
    s = 0
    while idx < lockEpochsMap[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 8)
        if block.timestamp >= lockEpochsMap[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < lockEpochsMap[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 8)
        require s + lockEpochsMap[address(arg1)][idx].field_256 >= s
        idx = idx + 1
        s = s + lockEpochsMap[address(arg1)][idx].field_256
        continue 
    require arg3 <= stor2[address(arg1)]
    require stor2[address(arg1)] - arg3 >= s
    require arg3 <= stor2[address(arg1)]
    require arg3 <= stor2[address(arg1)]
    stor2[address(arg1)] -= arg3
    require stor2[address(arg2)] + arg3 >= stor2[address(arg2)]
    stor2[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
