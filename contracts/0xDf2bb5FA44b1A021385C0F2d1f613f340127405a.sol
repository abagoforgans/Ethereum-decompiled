contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 storDAE3;

function _fallback() {
    stor6 = 0x9a64fe62837d8e2c0bd0c2a96bbddea609ab2f19
    stor7 = 0x821c05372425709a68090a17075a855dd20371c7
    stor9 = 421024 * 3600
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Lightcoin' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 5
    stor1.length.field_8 = 'Light' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 8
    stor3 = 21 * 10^18
    stor4[stor6] = 525 * 10^13 * 24 * 3600
    storDAE3 = 2 * 10^6
    stor8 = stor3 / 10
    return code.data[551 len 2050]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowed;
address owner;
address lockOwner;
uint256 lockAmount;
uint256 startTime;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function lockOwner() {
    return lockOwner
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getBalanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function lockAmount() {
    return lockAmount
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function releaseToken() {
    require block.timestamp >= startTime + (17520 * 24 * 3600)
    require lockAmount > (3 * totalSupply / 40) - (block.timestamp + -startTime - (17520 * 24 * 3600) / 4380 * 3600 * totalSupply / 40)
    lockAmount -= totalSupply / 40
    balanceOf[stor7] += totalSupply / 40
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[arg1] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require arg2 + balanceOf[arg1] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require arg2 + balanceOf[arg1] + balanceOf[msg.sender] == balanceOf[arg1] + balanceOf[address(msg.sender)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[arg2] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 + balanceOf[arg2] + balanceOf[arg1] >= balanceOf[arg1]
    require arg3 + balanceOf[arg2] + balanceOf[arg1] == balanceOf[arg2] + balanceOf[address(arg1)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
