contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
address stor10;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 14
    stor2.length.field_8 = 'e-Pocket Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'EPT' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 64000000 * 10^18
    require not msg.value
    stor10 = code.data[3265 len 20]
    stor9 = code.data[3297 len 20]
    stor7 = 32000000 * 10^18
    stor8 = 32000000 * 10^18
    stor0[code.data[3265 len 20]] = 32000000 * 10^18
    stor0[stor9] = 32000000 * 10^18
    stor6 = stor0[stor9]
    return code.data[512 len 2741]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupply;
uint256 totalAllocatedTokens;
uint256 tokensAllocatedToCrowdFund;
uint256 foundersAllocation;
address founderMultiSigAddress;
address crowdFundAddress;

function name() {
    return name[0 len name.length]
}

function totalAllocatedTokens() {
    return totalAllocatedTokens
}

function foundersAllocation() {
    return foundersAllocation
}

function founderMultiSigAddress() {
    return founderMultiSigAddress
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function crowdFundAddress() {
    return crowdFundAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokensAllocatedToCrowdFund() {
    return tokensAllocatedToCrowdFund
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeTotalSupply(uint256 arg1) {
    require crowdFundAddress == msg.sender
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

function transfer(address arg1, uint256 arg2) {
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
