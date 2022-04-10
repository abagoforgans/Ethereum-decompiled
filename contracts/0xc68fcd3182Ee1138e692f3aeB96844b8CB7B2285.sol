contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
array of uint256 stor6;
address stor7;

function _fallback() {
    stor0[address(msg.sender)] = code.data[3671 len 32]
    stor2 = code.data[3671 len 32]
    stor7 = code.data[3715 len 20]
    uint8(stor3.length) = 16
    stor3.length.field_8 = 'MyConin2' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 3
    uint8(stor5.length) = 6
    stor5.length.field_8 = 'MY2' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor6.length) = 6
    stor6.length.field_8 = 'o.1' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[500 len 3171]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 allowances;
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address centralMinterAddress;
uint256 buyPrice;
uint256 sellPrice;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function version() {
    return version[0 len version.length]
}

function allowances(address arg1, address arg2) {
    return allowances[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function centralMinter() {
    return centralMinterAddress
}

function allowance(address arg1, address arg2) {
    return allowances[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferMinter(address arg1) {
    require centralMinterAddress == msg.sender
    centralMinterAddress = arg1
}

function setPrice(uint256 arg1, uint256 arg2) {
    require centralMinterAddress == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function approve(address arg1, uint256 arg2) {
    allowances[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require centralMinterAddress == msg.sender
    balances[stor7] += arg1
    totalSupply += arg1
    emit Transfer(arg1, this.address, centralMinterAddress);
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buy() payable {
    require buyPrice
    require balances[stor7] >= msg.value / buyPrice
    balances[stor7] -= msg.value / buyPrice
    balances[msg.sender] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), centralMinterAddress, msg.sender);
    return (msg.value / buyPrice)
}

function sell(uint256 arg1) {
    require balances[address(msg.sender)] >= arg1
    balances[stor7] += arg1
    balances[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, centralMinterAddress);
    return (arg1 * sellPrice)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require allowances[address(arg1)][address(msg.sender)] >= arg3
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    allowances[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
