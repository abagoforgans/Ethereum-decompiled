contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor8;
uint256 stor9;
mapping of uint256 stor10;

function _fallback() payable {
    stor9 = 100000000000000 * 10^18
    mem[96 len -2267] = code.data[2799 len -2267]
    mem[64] = -2171
    stor0 = msg.sender or Mask(96, 160, stor0)
    if mem[236 len 20] != 0:
        stor0 = msg.sender or Mask(96, 160, stor0)
    if mem[96] != 0:
        stor10[address(msg.sender)] = mem[96]
    else:
        stor10[address(msg.sender)] = 10^6
    stor1.length = (2 * mem[mem[128] + 96]) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor3 = mem[160]
    stor8 = block.timestamp
    return code.data[532 len 2267]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sellPrice;
uint256 buyPrice;
uint256 sub_e1622af4;
uint256 currentChallenge;
uint256 timeOfLastProof;
uint256 difficulty;
mapping of uint256 balanceOf;
mapping of uint8 frozenAccount;
mapping of uint256 allowance;
mapping of uint256 spentAllowance;

function name() payable {
    return name[0 len name.length]
}

function difficulty() payable {
    return difficulty
}

function decimals() payable {
    return decimals
}

function sellPrice() payable {
    return sellPrice
}

function currentChallenge() payable {
    return currentChallenge
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function timeOfLastProof() payable {
    return timeOfLastProof
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

function spentAllowance(address arg1, address arg2) payable {
    return spentAllowance[arg1][arg2]
}

function allowance(address arg1, address arg2) payable {
    return allowance[arg1][arg2]
}

function sub_e1622af4(?) payable {
    return sub_e1622af4
}

function _fallback() payable {
    revert 
}

function setPrices(uint256 arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    sellPrice = arg1
    buyPrice = arg2
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function mintToken(address arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
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
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[this.address] -= msg.value / buyPrice
    emit 0x56ddf252: (msg.value / buyPrice), this.address, msg.sender
}

function sell(uint256 arg1) payable {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 0 wei
    emit 0x56ddf252: arg1, msg.sender, this.address
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    call arg1.sendApproval(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2, this.address
    require ext_call.success
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not uint8(frozenAccount[address(msg.sender)])
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
    require msg.sender == address(owner)
    balanceOf[address(msg.sender)] += sub_e1622af4
    emit 0x56ddf252: sub_e1622af4, 0, msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require balanceOf[address(arg1)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + spentAllowance[address(arg1)][address(msg.sender)] <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    spentAllowance[address(arg1)][address(msg.sender)] += arg3
    emit 0x56ddf252: arg3, msg.sender, arg2
    return 0
}



}
