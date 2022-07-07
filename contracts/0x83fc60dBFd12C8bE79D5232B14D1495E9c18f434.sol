contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 tokenUnit;
uint256 kUnit;
uint256 foundingTime;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 release;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function foundingTime() {
    return foundingTime
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function release() {
    return release
}

function symbol() {
    return symbol[0 len symbol.length]
}

function kUnit() {
    return kUnit
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function tokenUnit() {
    return tokenUnit
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
