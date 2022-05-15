contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;
uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor7 = 1
    require not msg.value
    stor3 = msg.sender
    stor0 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor7 = 1
    return code.data[180 len 12357]
}



// =====================  Runtime code  =====================


const name = 'ShareToken'

const totalMainSaleTokenLimit = 10^11

const decimals = 2

const symbol = 'SHR'

const TOKEN_SUPPLY_SEED_LIMIT = 5 * 10^10

const TOKEN_SUPPLY_BOUNTY_LIMIT = 33333333333

const TOKEN_SUPPLY_AIRDROP_LIMIT = 6666666667

const TOKEN_SUPPLY_PRESALE_LIMIT = 25 * 10^10

const TOKEN_SUPPLY_SEED_PRESALE_LIMIT = 3 * 10^11

const TOKEN_SUPPLY_MAINSALE_LIMIT = 10^11


uint256 totalMainSaleTokenIssued;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
address icoContractAddress;
mapping of uint8 stor6;
uint8 stor7;
uint256 airDropTokenIssuedTotal;
uint256 bountyTokenIssuedTotal;
uint256 totalPreSaleTokenIssued;

function rewardTokenLocked(address arg1) {
    return bool(stor6[arg1])
}

function bountyTokenIssuedTotal() {
    return bountyTokenIssuedTotal
}

function isWhitelisted(address arg1) {
    return bool(stor4[address(arg1)])
}

function airDropTokenIssuedTotal() {
    return airDropTokenIssuedTotal
}

function seedAndPresaleTokenIssuedTotal() {
    return totalPreSaleTokenIssued
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalPreSaleTokenIssued() {
    return totalPreSaleTokenIssued
}

function list(address arg1) {
    return bool(stor4[arg1])
}

function icoContract() {
    return icoContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function mainSaleTokenLocked() {
    return bool(stor7)
}

function totalMainSaleTokenIssued() {
    return totalMainSaleTokenIssued
}

function _fallback() payable {
    revert
}

function lockMainSaleToken() {
    require msg.sender == owner
    stor7 = 1
}

function unlockMainSaleToken() {
    require msg.sender == owner
    stor7 = 0
}

function set(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function unset(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
}

function lockRewardToken(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function unlockRewardToken(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setIcoContract(address arg1) {
    require msg.sender == owner
    require not icoContractAddress
    require arg1
    icoContractAddress = arg1
}

function isLocked(address arg1) {
    if stor7:
        return 1
    if not stor4[address(arg1)]:
        return bool(stor6[address(arg1)])
    else:
        return 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function totalSupply() {
    require totalMainSaleTokenIssued + totalPreSaleTokenIssued >= totalMainSaleTokenIssued
    require airDropTokenIssuedTotal >= 0
    require bountyTokenIssuedTotal >= 0
    return (totalMainSaleTokenIssued + totalPreSaleTokenIssued + airDropTokenIssuedTotal + bountyTokenIssuedTotal)
}

function setMany(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function unsetMany(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function lockRewardTokenMany(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function unlockRewardTokenMany(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sell(address arg1, uint256 arg2) {
    require icoContractAddress
    require msg.sender == icoContractAddress
    require arg2 > 0
    require arg1
    require stor4[address(arg1)]
    require totalMainSaleTokenIssued + arg2 >= totalMainSaleTokenIssued
    require totalMainSaleTokenIssued + arg2 <= 10^11
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalMainSaleTokenIssued + arg2 >= totalMainSaleTokenIssued
    totalMainSaleTokenIssued += arg2
    emit Transfer(arg2, 1, arg1);
    return 1
}

function handlePresaleToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= 3 * 10^11
    require totalPreSaleTokenIssued < 3 * 10^11
    require totalPreSaleTokenIssued <= 3 * 10^11
    require arg2 <= -totalPreSaleTokenIssued + 3 * 10^11
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalPreSaleTokenIssued + arg2 >= totalPreSaleTokenIssued
    totalPreSaleTokenIssued += arg2
    emit Transfer(arg2, 0, arg1);
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor7
    if not stor4[address(msg.sender)]:
        require not stor6[address(msg.sender)]
    require not stor7
    if not stor4[address(arg1)]:
        require not stor6[address(arg1)]
    require arg1
    require ext_code.size(arg1) <= 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor7
    if not stor4[address(arg1)]:
        require not stor6[address(arg1)]
    require not stor7
    if not stor4[address(arg2)]:
        require not stor6[address(arg2)]
    require arg2
    require ext_code.size(arg2) <= 0
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function rewardBounty(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= 33333333333
    require bountyTokenIssuedTotal < 33333333333
    require bountyTokenIssuedTotal <= 33333333333
    if arg2 <= -bountyTokenIssuedTotal + 33333333333:
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require bountyTokenIssuedTotal + arg2 >= bountyTokenIssuedTotal
        bountyTokenIssuedTotal += arg2
        stor6[address(arg1)] = 1
        emit Transfer(arg2, 2, arg1);
    else:
        require balanceOf[address(arg1)] + -bountyTokenIssuedTotal + 33333333333 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -bountyTokenIssuedTotal + 33333333333
        require 33333333333 >= bountyTokenIssuedTotal
        bountyTokenIssuedTotal = 33333333333
        stor6[address(arg1)] = 1
        emit Transfer((-bountyTokenIssuedTotal + 33333333333), 2, arg1);
}

function rewardAirdrop(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= 6666666667
    require airDropTokenIssuedTotal < 6666666667
    require airDropTokenIssuedTotal <= 6666666667
    if arg2 <= -airDropTokenIssuedTotal + 6666666667:
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require airDropTokenIssuedTotal + arg2 >= airDropTokenIssuedTotal
        airDropTokenIssuedTotal += arg2
        stor6[address(arg1)] = 1
        emit Transfer(arg2, 3, arg1);
    else:
        require balanceOf[address(arg1)] + -airDropTokenIssuedTotal + 6666666667 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -airDropTokenIssuedTotal + 6666666667
        require 6666666667 >= airDropTokenIssuedTotal
        airDropTokenIssuedTotal = 6666666667
        stor6[address(arg1)] = 1
        emit Transfer((-airDropTokenIssuedTotal + 6666666667), 3, arg1);
}

function handlePresaleTokenMany(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require msg.sender == owner
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= 3 * 10^11
        require totalPreSaleTokenIssued < 3 * 10^11
        require totalPreSaleTokenIssued <= 3 * 10^11
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= -totalPreSaleTokenIssued + 3 * 10^11
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160]
        require totalPreSaleTokenIssued + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalPreSaleTokenIssued
        totalPreSaleTokenIssued += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_17));
        require msg.sender == owner
        mem[0] = address(_17)
        mem[32] = 4
        stor4[address(_17)] = 1
        idx = idx + 1
        continue 
}

function rewardBountyMany(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require msg.sender == owner
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= 33333333333
        require bountyTokenIssuedTotal < 33333333333
        require bountyTokenIssuedTotal <= 33333333333
        if mem[(32 * idx) + (32 * arg1.length) + 160] <= -bountyTokenIssuedTotal + 33333333333:
            require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160]
            require bountyTokenIssuedTotal + mem[(32 * idx) + (32 * arg1.length) + 160] >= bountyTokenIssuedTotal
            bountyTokenIssuedTotal += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            stor6[address(mem[(32 * idx) + 128])] = 1
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 2, address(_22));
        else:
            require balanceOf[mem[(32 * idx) + 140 len 20]] + -bountyTokenIssuedTotal + 33333333333 >= balanceOf[mem[(32 * idx) + 140 len 20]]
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + -bountyTokenIssuedTotal + 33333333333
            require 33333333333 >= bountyTokenIssuedTotal
            bountyTokenIssuedTotal = 33333333333
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            stor6[address(mem[(32 * idx) + 128])] = 1
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = -bountyTokenIssuedTotal + 33333333333
            emit Transfer((-bountyTokenIssuedTotal + 33333333333), 2, address(_22));
        idx = idx + 1
        continue 
}

function rewardAirdropMany(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require msg.sender == owner
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= 6666666667
        require airDropTokenIssuedTotal < 6666666667
        require airDropTokenIssuedTotal <= 6666666667
        if mem[(32 * idx) + (32 * arg1.length) + 160] <= -airDropTokenIssuedTotal + 6666666667:
            require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160]
            require airDropTokenIssuedTotal + mem[(32 * idx) + (32 * arg1.length) + 160] >= airDropTokenIssuedTotal
            airDropTokenIssuedTotal += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            stor6[address(mem[(32 * idx) + 128])] = 1
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 3, address(_22));
        else:
            require balanceOf[mem[(32 * idx) + 140 len 20]] + -airDropTokenIssuedTotal + 6666666667 >= balanceOf[mem[(32 * idx) + 140 len 20]]
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + -airDropTokenIssuedTotal + 6666666667
            require 6666666667 >= airDropTokenIssuedTotal
            airDropTokenIssuedTotal = 6666666667
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            stor6[address(mem[(32 * idx) + 128])] = 1
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = -airDropTokenIssuedTotal + 6666666667
            emit Transfer((-airDropTokenIssuedTotal + 6666666667), 3, address(_22));
        idx = idx + 1
        continue 
}



}
