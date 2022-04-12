contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
address stor7;
mapping of uint256 stor11;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor5[address(msg.sender)] = 60000000 * 10^18
    stor4 = 60000000 * 10^18
    bool(stor1.length) = 0
    stor1.length.field_1 = 17
    stor1.length.field_8 = 'I See Voice Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'ISVT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 10
    stor7 = msg.sender
    stor11[address(msg.sender)] = stor4 - 300000 * 10^18
    stor11[this.address] = 300000 * 10^18
    return code.data[597 len 5253]
}



// =====================  Runtime code  =====================


const BUY = 300000 * 10^18

const DECIMALS = 10

const INITIAL_SUPPLY = 60000000 * 10^18

const NAME = 'I See Voice Token'

const SYMBOL = 'ISVT'


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 stor5;
mapping of uint256 allowance;
address owner;
uint256 sellPrice;
uint256 buyPrice;
uint256 stor10;
mapping of uint256 balanceOf;
mapping of uint8 stor12;

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

function standard() {
    return standard[0 len standard.length]
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

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setMinBalance(uint256 arg1) {
    require owner == msg.sender
    stor10 = 10^15 * arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor12[address(arg1)] = uint8(arg2)
    emit FrozenFunds(arg2, arg1);
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function approve(address arg1, uint256 arg2) {
    require stor5[address(msg.sender)] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function _fallback() {
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    balanceOf[msg.sender] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function buy() payable {
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    balanceOf[msg.sender] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    return (msg.value / buyPrice)
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor12[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require not stor12[address(msg.sender)]
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 * sellPrice)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor12[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require stor5[address(msg.sender)] >= arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}



}
