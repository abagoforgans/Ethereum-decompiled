contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    stor3 = 18
    require not msg.value
    mem[96 len -5872] = code.data[6384 len -5872]
    mem[64] = -5776
    stor0 = msg.sender
    stor4 = mem[96] * 10^stor3
    stor5[address(msg.sender)] = stor4
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[512 len 5872]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
address coinbaseAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function coinbase() {
    return coinbaseAddress
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function upgradeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function upgradeCoinbase(address arg1) {
    require msg.sender == owner
    coinbaseAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    require coinbaseAddress
    call coinbaseAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function tToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require balanceOf[address(this.address)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(this.address)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
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
    return 1
}

function sell(uint256 arg1) {
    require sellPrice > 0
    require sellPrice
    require eth.balance(this.address) >= arg1 / sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    require sellPrice
    call msg.sender with:
       value arg1 / sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buy() payable {
    require buyPrice > 0
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value * buyPrice
    require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
    balanceOf[address(this.address)] += -1 * msg.value * buyPrice
    balanceOf[address(msg.sender)] += msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), this.address, msg.sender);
    if coinbaseAddress:
        call coinbaseAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
