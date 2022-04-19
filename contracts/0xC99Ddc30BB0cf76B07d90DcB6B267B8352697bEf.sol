contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor8;
mapping of uint256 stor10;

function _fallback() payable {
    stor1 = 10000000 * 10^18
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'TDT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'TDT' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 10^15
    stor6 = 157553
    require not msg.value
    stor0 = msg.sender
    stor10[address(msg.sender)] = stor1
    stor8 = block.number + stor6
    return code.data[577 len 4404]
}



// =====================  Runtime code  =====================


address owner;
uint256 supply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 price;
uint256 durationInBlocks;
uint256 amountRaised;
uint256 deadline;
uint256 tokensSold;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function supply() {
    return supply
}

function name() {
    return name[0 len name.length]
}

function deadline() {
    return deadline
}

function decimals() {
    return decimals
}

function tokensSold() {
    return tokensSold
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function durationInBlocks() {
    return durationInBlocks
}

function isOwner() {
    return (msg.sender == owner)
}

function isCrowdsale() {
    return (block.number < deadline)
}

function addressIsOwner(address arg1) {
    return (arg1 == owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function _fallback() payable {
    if msg.sender == owner:
        call owner with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit FundTransfer(owner, amountRaised, 0);
        amountRaised = 0
    else:
        require block.number < deadline
        require msg.value
        require price
        require 10^18 * msg.value / price >= 10^18
        balanceOf[address(msg.sender)] += 10^18 * msg.value / price
        supply += 10^18 * msg.value / price
        tokensSold += 10^18 * msg.value / price
        emit Transfer((10^18 * msg.value / price), 0, this.address);
        emit Transfer((10^18 * msg.value / price), this.address, msg.sender);
        amountRaised += msg.value
}



}
