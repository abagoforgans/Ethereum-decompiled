contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = 'ETHER' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'ETH' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[523 len 1250]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
address stor2;
mapping of uint256 balanceOf;

function name() payable {
    return name[0 len name.length]
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    if stor2 != msg.sender:
        require balanceOf[address(msg.sender)] >= arg2
    if stor2 != msg.sender:
        balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}



}
