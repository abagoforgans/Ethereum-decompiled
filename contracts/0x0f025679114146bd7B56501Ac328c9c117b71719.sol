contract main {


// =======================  Init code  ======================


uint8 stor2;
mapping of uint8 stor6;

function _fallback() payable {
    stor2 = 2
    require not msg.value
    stor6[address(msg.sender)] = 1
    return code.data[80 len 1745]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;

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
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setBlance(address arg1, uint256 arg2) {
    balanceOf[address(arg1)] = arg2
}

function denyAccess(address arg1) {
    require 1 == bool(stor6[address(msg.sender)])
    stor6[address(arg1)] = 0
}

function allowAccess(address arg1) {
    require 1 == bool(stor6[address(msg.sender)])
    stor6[address(arg1)] = 1
}

function TokenERC20(uint256 arg1, string arg2, string arg3) {
    totalSupply = arg1 * 10^decimals
    balanceOf[address(msg.sender)] = arg1 * 10^decimals
    name[] = Array(len=arg2.length, data=arg2[all])
    symbol[] = Array(len=arg3.length, data=arg3[all])
}



}
