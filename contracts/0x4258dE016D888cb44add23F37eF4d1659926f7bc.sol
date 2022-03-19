contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    mem[96 len -1707] = code.data[2231 len -1707]
    mem[64] = -1611
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    if mem[236 len 20] != 0:
        stor1 = msg.sender or Mask(96, 160, stor1)
    mem[32] = 7
    if mem[96] != 0:
        stor7[address(msg.sender)] = mem[96]
    else:
        stor7[address(msg.sender)] = 0
    mem[0] = 2
    stor2.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor4 = mem[160]
    stor5 = 0
    stor6 = 10000
    return code.data[524 len 1707]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint256 balanceOf;
mapping of uint8 frozenAccount;

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

function frozenAccount(address arg1) payable {
    return uint8(frozenAccount[arg1])
}

function kill() payable {
    require address(owner) == msg.sender
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function setPrices(uint256 arg1, uint256 arg2) payable {
    require address(owner) == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function withdraw(uint256 arg1) payable {
    require address(owner) == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 0 wei
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function mintToken(address arg1, uint256 arg2) payable {
    require address(owner) == msg.sender
    balanceOf[address(arg1)] += arg2
    emit 0x56ddf252: arg2, 0, arg1
}

function freezeAccount(address arg1, bool arg2) payable {
    require address(owner) == msg.sender
    uint256(frozenAccount[address(arg1)]) = arg2 or Mask(248, 8, uint256(frozenAccount[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function buy() payable {
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[msg.sender] += msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    emit 0x56ddf252: (msg.value / buyPrice), this.address, msg.sender
}

function sell(uint256 arg1) payable {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[this.address] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 0 wei
    emit 0x56ddf252: arg1, msg.sender, this.address
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require not uint8(frozenAccount[address(msg.sender)])
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
}



}
