contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of struct stor1;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 totalSupply;
address owner;
uint256 stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function _fallback() payable {
    revert
}

function setIcoLockUntil(uint256 arg1) {
    require msg.sender == owner
    stor7 = arg1
}

function lockedBalanceOf(address arg1) {
    if stor1[address(arg1)].field_256 < block.timestamp:
        return 0
    return stor1[address(arg1)].field_0
}

function lockBalance(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    stor1[address(arg1)].field_0 = arg2
    stor1[address(arg1)].field_256 = arg3
    return 1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    totalSupply -= arg2
    balanceOf[address(arg1)] -= arg2
    stor1[address(arg1)].field_0 = 0
    stor1[address(arg1)].field_256 = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor7 < block.timestamp
    if not arg1:
        return 0
    if stor1[address(msg.sender)].field_256 < block.timestamp:
        require balanceOf[address(msg.sender)] >= arg2
    else:
        require balanceOf[address(msg.sender)] > stor1[address(msg.sender)].field_0
        require balanceOf[address(msg.sender)] - stor1[address(msg.sender)].field_0 >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
