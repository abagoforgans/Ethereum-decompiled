contract main {


// =======================  Init code  ======================


uint256 stor3;
mapping of uint256 stor4;

function _fallback() {
    mem[96 len -1126] = code.data[1413 len -1126]
    stor4[address(msg.sender)] = mem[96]
    stor3 = mem[96]
    return code.data[287 len 1126]
}



// =====================  Runtime code  =====================


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



}
