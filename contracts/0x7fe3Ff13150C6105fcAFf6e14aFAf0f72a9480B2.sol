contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 10
    stor3.length.field_8 = 'IMNB Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'IMNB' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor6 = 1000000000 * 10^18
    require not msg.value
    stor10 = code.data[3565 len 20]
    stor11 = code.data[3597 len 20]
    stor9 = 500000000 * 10^18
    stor8 = 500000000 * 10^18
    stor1[code.data[3597 len 20]] = 500000000 * 10^18
    return code.data[488 len 3065]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 totalAllocatedTokens;
uint256 tokensForCrowdsale;
uint256 tokensForReward;
address founderMultiSigAddress;
address crowdsaleAddress;

function name() {
    return name[0 len name.length]
}

function totalAllocatedTokens() {
    return totalAllocatedTokens
}

function totalSupply() {
    return totalSupply
}

function founderMultiSigAddress() {
    return founderMultiSigAddress
}

function decimals() {
    return decimals
}

function crowdsaleAddress() {
    return crowdsaleAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokensForCrowdsale() {
    return tokensForCrowdsale
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokensForReward() {
    return tokensForReward
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeTotalSupply(uint256 arg1) {
    require crowdsaleAddress == msg.sender
    totalAllocatedTokens += arg1
}

function changeFounderMultiSigAddress(address arg1) {
    require founderMultiSigAddress == msg.sender
    require arg1
    founderMultiSigAddress = arg1
    emit ChangeFoundersWalletAddress(block.timestamp, arg1);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferRewardToken(address arg1, uint256 arg2) {
    require founderMultiSigAddress == msg.sender
    if tokensForReward < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    tokensForReward -= arg2
    balanceOf[address(arg1)] += arg2
    emit 0xec3fa866: block.timestamp, address(arg1), arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require calldata.size >= 68
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require calldata.size >= 68
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
