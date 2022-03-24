contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    mem[96 len -2637] = code.data[3159 len -2637]
    mem[64] = -2541
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor6[address(msg.sender)] = mem[96]
    stor5 = mem[96]
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
    if mem[236 len 20] != 0:
        uint256(stor0) = mem[224]
    stor6[address(stor0)] = mem[96]
    return code.data[522 len 2637]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
uint256 totalSupply;
mapping of uint8 stor11;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sellPrice() payable {
    return sellPrice
}

function standard() payable {
    return standard[0 len standard.length]
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
    return bool(uint8(stor11[arg1]))
}

function allowance(address arg1, address arg2) payable {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert 
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

function freezeAccount(address arg1, bool arg2) payable {
    require address(owner) == msg.sender
    uint256(stor11[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor11[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) payable {
    require address(owner) == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit 0x56ddf252: arg2, 0, address(owner)
    emit 0x56ddf252: arg2, address(owner), arg1
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
    require ext_call.success
    emit 0x56ddf252: arg1, msg.sender, this.address
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require not uint8(stor11[address(msg.sender)])
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require not uint8(stor11[address(arg1)])
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x56ddf252: arg3, arg1, arg2
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 292 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, arg3[all], mem[ceil32(arg3.length) + arg3.length + 292 len -(arg3.length % 32) + 32]
    require ext_call.success
    return 1
}



}
