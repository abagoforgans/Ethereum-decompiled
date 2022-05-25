contract main {




// =====================  Runtime code  =====================


uint8 decimals; offset 160
address owner;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
mapping of uint256 balanceOf;
mapping of uint256 freezeOf;

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

function freezeOf(address arg1) {
    return freezeOf[address(arg1)]
}

function _fallback() payable {
  stop
}

function withdrawEther(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[msg.sender]
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function freeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)]
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 + freezeOf[address(arg1)] >= freezeOf[address(arg1)]
    require arg2 + freezeOf[address(arg1)] >= arg2
    freezeOf[address(arg1)] += arg2
    emit Freeze(arg2, arg1);
}

function unfreeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= freezeOf[address(arg1)]
    require arg2 > 0
    require arg2 <= freezeOf[address(arg1)]
    freezeOf[address(arg1)] -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    emit Unfreeze(arg2, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}



}
