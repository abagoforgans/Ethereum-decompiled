contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
address stor5;

function _fallback() {
    uint8(stor0.length) = 8
    stor0.length.field_8 = 'FERR' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor1.length) = 4
    stor1.length.field_8 = 'FF' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 2
    stor5 = msg.sender
    stor3 = 0
    return code.data[376 len 2627]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
bool stor3;
uint256 stor3; offset 1
uint256 totalTokens;
address ownerContract;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalTokens
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalTokens() {
    return totalTokens
}

function ownerContract() {
    return ownerContract
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

function balance(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert
}

function setContract(address arg1) {
    if owner == msg.sender:
        ownerContract = arg1
}

function burn(uint256 arg1) {
    require ownerContract == msg.sender
    emit Burn(arg1, ownerContract);
    return 1
}

function setOptions(uint256 arg1) {
    require ownerContract == msg.sender
    totalTokens = arg1
    balanceOf[stor4] = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_9bae5782(?) {
    require ownerContract == msg.sender
    balanceOf[stor5] = arg1
    bool(stor3.field_0) = 0
    uint255(stor3.field_1) = uint255(arg1)
    emit Burn(balanceOf[stor4], ownerContract);
    balanceOf[stor4] = 0
    emit Transfer(arg1, ownerContract, owner);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if ownerContract != msg.sender:
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require balanceOf[stor4] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[stor4] -= arg2
        balanceOf[arg1] += arg2
        emit Transfer(arg2, ownerContract, arg1);
    return 1
}



}
