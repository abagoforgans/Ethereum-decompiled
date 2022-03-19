contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = 10^11
    stor2[address(stor0)] = stor1
    return code.data[175 len 1022]
}



// =====================  Runtime code  =====================


address owner;
uint256 tokenSupply;
mapping of uint256 balanceOf;

function totalSupply() payable {
    return tokenSupply
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function tokenSupply() payable {
    return tokenSupply
}

function wallets(address arg1) payable {
    return balanceOf[arg1]
}

function owner() payable {
    return owner
}

function kill() payable {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
