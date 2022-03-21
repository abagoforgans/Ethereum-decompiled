contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2762]




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint8 decimals;
uint256 totalSupply;
uint256 fee;
uint256 sub_13cde9a2;
address sub_5a1867e8Address;
uint256 initialSupply;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 spentAllowance;

function name() payable {
    return name[0 len name.length].field_0
}

function sub_13cde9a2(?) payable {
    return sub_13cde9a2
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function initialSupply() payable {
    return initialSupply
}

function sellPrice() payable {
    return sellPrice
}

function version() payable {
    return version[0 len version.length].field_0
}

function sub_5a1867e8(?) payable {
    return sub_5a1867e8Address
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function buyPrice() payable {
    return buyPrice
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function spentAllowance(address arg1, address arg2) payable {
    return spentAllowance[arg1][arg2]
}

function allowance(address arg1, address arg2) payable {
    return allowance[arg1][arg2]
}

function fee() payable {
    return fee
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit code.data[2730 len 32]: arg2, msg.sender, arg1
}

function sell(uint256 arg1) payable {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 0 wei
    emit code.data[2730 len 32]: arg1, msg.sender, this.address
    return (arg1 * sellPrice)
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require balanceOf[address(arg1)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + spentAllowance[address(arg1)][address(msg.sender)] <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    spentAllowance[address(arg1)][address(msg.sender)] += arg3
    emit code.data[2730 len 32]: arg3, arg1, arg2
    return 1
}

function _fallback() payable {
    sub_13cde9a2 = 9999 * buyPrice * msg.value / 10000
    fee = (buyPrice * msg.value) - (9999 * buyPrice * msg.value / 10000)
    require balanceOf[address(this.address)] >= 9999 * buyPrice * msg.value / 10000
    balanceOf[address(msg.sender)] += sub_13cde9a2
    balanceOf[this.address] = balanceOf[this.address] - fee - sub_13cde9a2
    emit code.data[2730 len 32]: sub_13cde9a2, this.address, msg.sender
    emit code.data[2730 len 32]: fee, this.address, sub_5a1867e8Address
    return (buyPrice * msg.value)
}

function ETH() payable {
    initialSupply = 1000000000000 * 10^18
    sub_5a1867e8Address = 0xe4282c8d102f650882aff3c00dcef89dbdc02d0f
    balanceOf[address(msg.sender)] = 1000000000000 * 10^18
    totalSupply = 1000000000000 * 10^18
    uint8(name.length) = 14
    Mask(248, 0, name.length.field_8) = 'ETHLITE' / 256
    idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (name.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(symbol.length) = 8
    Mask(248, 0, symbol.length.field_8) = 'LETH' / 256
    idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    while (symbol.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    decimals = 2
    uint8(version.length) = 16
    Mask(248, 0, version.length.field_8) = 'LETH 1.2' / 256
    idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (version.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    sellPrice = 10000
    buyPrice = 10000
}



}
