contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 spread;
address owner;
uint256 stor5;
mapping of uint256 balances;
mapping of uint256 points;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() {
    return decimals
}

function points(address arg1) {
    require calldata.size - 4 >= 32
    return points[arg1]
}

function spread() {
    return spread
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getPoints() {
    return points[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy() payable {
    require stor5
    require msg.value / stor5 > 0
    require totalSupply + (msg.value / stor5) >= totalSupply
    totalSupply += msg.value / stor5
    require balances[address(msg.sender)] + (msg.value / stor5) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value / stor5
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    points[address(msg.sender)] += arg2
    spread += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
