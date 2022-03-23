contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;

function _fallback() payable {
    mem[96 len -1389] = code.data[1802 len -1389]
    stor1[address(msg.sender)] = mem[96]
    uint8(stor2.length) = 22
    Mask(248, 0, stor2.length.field_8) = 'Mardlincoin' / 256
    idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor3.length) = 2
    Mask(248, 0, stor3.length.field_8) = '%' / 256
    idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4 = 2
    return code.data[413 len 1389]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sellPrice;
uint256 buyPrice;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function sellPrice() payable {
    return sellPrice
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function buyPrice() payable {
    return buyPrice
}

function owner() payable {
    return address(owner)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
  stop
}

function owned() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function setPrices(uint256 arg1, uint256 arg2) payable {
    require address(owner) == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function buy() payable {
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[msg.sender] += msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    return (msg.value / buyPrice)
}

function sell(uint256 arg1) payable {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[this.address] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 0 wei
    if not ext_call.success:
        balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 * sellPrice)
}



}
