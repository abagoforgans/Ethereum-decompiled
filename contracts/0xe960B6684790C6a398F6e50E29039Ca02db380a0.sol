contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;

function _fallback() payable {
    stor3 = 18
    stor7 = 20180418134311
    stor8 = 10^18
    stor9 = 0
    stor10 = 0
    require not msg.value
    mem[96 len -4055] = code.data[4468 len -4055]
    mem[64] = -3959
    stor0 = msg.sender
    stor4 = mem[96] * 10^stor3
    stor5[address(msg.sender)] = mem[96] * 10^stor3
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[413 len 4055]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceTAI;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 salesPrice;
uint256 limitAMT;
uint8 isPreSales;
mapping of uint8 stor11;

function getBalanceTAI() {
    return balanceTAI[address(msg.sender)]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isPreSales() {
    return bool(isPreSales)
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function limitAMT() {
    return limitAMT
}

function balanceOf(address arg1) {
    return balanceTAI[arg1]
}

function buyPrice() {
    return salesPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function getSalesPrice() {
    return salesPrice
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function getLeftPreSalesAMT() {
    return (balanceTAI[stor0] - limitAMT)
}

function stopPreSales() {
    require owner == msg.sender
    isPreSales = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function getTaiAMT(uint256 arg1) {
    require salesPrice
    return (arg1 / salesPrice * 10^decimals)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    salesPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceTAI[address(msg.sender)] >= arg1
    balanceTAI[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function startPreSales(uint256 arg1) {
    require owner == msg.sender
    require balanceTAI[stor0] - arg1 > 0
    limitAMT = balanceTAI[stor0] - arg1
    isPreSales = 1
    return (balanceTAI[stor0] - arg1)
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceTAI[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceTAI[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceTAI[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceTAI[address(msg.sender)] >= arg2
    require balanceTAI[address(arg1)] + arg2 > balanceTAI[address(arg1)]
    require not stor11[address(msg.sender)]
    require not stor11[address(arg1)]
    balanceTAI[address(msg.sender)] -= arg2
    balanceTAI[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceTAI[address(arg1)] >= arg3
    require balanceTAI[address(arg2)] + arg3 > balanceTAI[address(arg2)]
    require not stor11[address(arg1)]
    require not stor11[address(arg2)]
    balanceTAI[address(arg1)] -= arg3
    balanceTAI[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function procNormalSales() payable {
    require salesPrice
    require msg.sender
    require balanceTAI[stor0] >= 10^decimals * msg.value / salesPrice
    require balanceTAI[address(msg.sender)] + (10^decimals * msg.value / salesPrice) > balanceTAI[address(msg.sender)]
    require not stor11[stor0]
    require not stor11[address(msg.sender)]
    balanceTAI[stor0] += -1 * 10^decimals * msg.value / salesPrice
    balanceTAI[msg.sender] += 10^decimals * msg.value / salesPrice
    emit Transfer((10^decimals * msg.value / salesPrice), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (10^decimals * msg.value / salesPrice)
}

function procNormalBuyBack(address arg1) payable {
    require owner == msg.sender
    require salesPrice
    require msg.sender
    require balanceTAI[address(arg1)] >= msg.value / salesPrice * 10^decimals
    require balanceTAI[address(msg.sender)] + (msg.value / salesPrice * 10^decimals) > balanceTAI[address(msg.sender)]
    require not stor11[address(arg1)]
    require not stor11[address(msg.sender)]
    balanceTAI[address(arg1)] += -1 * msg.value / salesPrice * 10^decimals
    balanceTAI[msg.sender] += msg.value / salesPrice * 10^decimals
    emit Transfer((msg.value / salesPrice * 10^decimals), arg1, msg.sender);
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (msg.value / salesPrice * 10^decimals)
}

function procPreSales() payable {
    require 1 == bool(isPreSales)
    require salesPrice
    if balanceTAI[stor0] - (10^decimals * msg.value / salesPrice) <= limitAMT:
        isPreSales = 0
    require msg.sender
    require balanceTAI[stor0] >= 10^decimals * msg.value / salesPrice
    require balanceTAI[address(msg.sender)] + (10^decimals * msg.value / salesPrice) > balanceTAI[address(msg.sender)]
    require not stor11[stor0]
    require not stor11[address(msg.sender)]
    balanceTAI[stor0] += -1 * 10^decimals * msg.value / salesPrice
    balanceTAI[msg.sender] += 10^decimals * msg.value / salesPrice
    emit Transfer((10^decimals * msg.value / salesPrice), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (10^decimals * msg.value / salesPrice)
}



}
