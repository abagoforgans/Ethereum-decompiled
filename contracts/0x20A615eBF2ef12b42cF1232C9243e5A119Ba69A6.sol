contract main {




// =====================  Runtime code  =====================


mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint8 stor3;
address stor3; offset 8
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isTransferable() {
    return bool(uint8(stor3.field_0))
}

function decimals() {
    return decimals
}

function isLocked(address arg1) {
    return bool(stor2[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function enableTransfer() {
    require msg.sender == address(stor3.field_8)
    uint8(stor3.field_0) = 1
    return 1
}

function disableTransfer() {
    require msg.sender == address(stor3.field_8)
    uint8(stor3.field_0) = 0
    return 1
}

function lock(address arg1) {
    require msg.sender == address(stor3.field_8)
    stor2[address(arg1)] = 1
    return 1
}

function unlock(address arg1) {
    require msg.sender == address(stor3.field_8)
    stor2[address(arg1)] = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor3.field_0)
    require not stor2[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor3.field_0)
    require not stor2[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor3.field_0)
    require not stor2[msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
