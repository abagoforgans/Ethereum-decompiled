contract main {


// =======================  Init code  ======================


mapping of uint256 stor3;

function _fallback() payable {
    mem[96 len -634] = code.data[700 len -634]
    stor3[address(msg.sender)] = mem[96]
    return code.data[66 len 634]
}



// =====================  Runtime code  =====================


array of uint256 tokenName;
array of uint256 tokenSymbol;
uint256 decimalUnits;
mapping of uint256 balanceOf;

function decimalUnits() payable {
    return decimalUnits
}

function tokenName() payable {
    return tokenName[0 len tokenName.length]
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function tokenSymbol() payable {
    return tokenSymbol[0 len tokenSymbol.length]
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}



}
