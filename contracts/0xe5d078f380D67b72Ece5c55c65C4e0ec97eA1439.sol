contract main {




// =====================  Runtime code  =====================


#
#  - unfreeze(address arg1, uint256 arg2)
#
address owner;
address operatorAddress;
mapping of uint8 stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalFrozen;
mapping of struct sub_8351949e;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function totalFrozen() {
    return totalFrozen
}

function decimals() {
    return decimals
}

function blackList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function operator() {
    return operatorAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_8351949e(?) {
    require calldata.size - 4 >= 32
    return sub_8351949e[arg1].field_0, sub_8351949e[arg1].field_256, sub_8351949e[arg1].field_512
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    operatorAddress = arg1
}

function addBlackList(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        require msg.sender == owner
    stor2[address(arg1)] = 1
}

function removeBlackList(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        require msg.sender == owner
    stor2[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor2[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor2[msg.sender]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[msg.sender] + balanceOf[address(arg1)] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor2[msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[arg1] + balanceOf[address(arg2)] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}



}
