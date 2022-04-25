contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 12
    stor3.length.field_8 = 'InfiniteGold' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 2
    stor4.length.field_8 = 'IG' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    require not msg.value
    stor1 = msg.sender
    stor6 = 800000 * 10^18
    stor7[address(msg.sender)] = 800000 * 10^18
    emit Transfer(800000 * 10^18, 0, msg.sender);
    return code.data[462 len 2496]
}



// =====================  Runtime code  =====================


address owner;
address candidateAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function candidate() {
    return candidateAddress
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    candidateAddress = arg1
}

function confirmOwner() {
    require candidateAddress
    require candidateAddress == msg.sender
    owner = candidateAddress
    candidateAddress = 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawTokens(uint256 arg1) {
    require owner == msg.sender
    require balanceOf[address(this.address)] >= arg1
    require balanceOf[address(this.address)] >= arg1
    balanceOf[address(this.address)] -= arg1
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require arg1 + balanceOf[msg.sender] >= arg1
    balanceOf[address(msg.sender)] = arg1 + balanceOf[msg.sender]
    emit Transfer(arg1, this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
