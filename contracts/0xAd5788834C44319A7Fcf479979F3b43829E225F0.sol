contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor9;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -3032] = code.data[3522 len -3032]
    stor0 = msg.sender
    if mem[300 len 20]:
        stor0 = msg.sender
    stor9[address(msg.sender)] = mem[160]
    stor5 = mem[160]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor4 = mem[255 len 1]
    return code.data[490 len 3032]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sellPrice;
uint256 buyPrice;
uint256 stor8;
mapping of uint256 balanceOf;
mapping of uint8 stor10;

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

function frozenAccount(address arg1) {
    return bool(stor10[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setMinBalance(uint256 arg1) {
    require owner == msg.sender
    stor8 = 10^15 * arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor10[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
}

function buy() payable {
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[this.address] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    return (msg.value / buyPrice)
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 * sellPrice)
}

function transfer(address arg1, uint256 arg2) {
    require not stor10[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if eth.balance(msg.sender) < stor8:
        require sellPrice
        require balanceOf[address(msg.sender)] >= stor8 - eth.balance(msg.sender) / sellPrice
        balanceOf[address(this.address)] += stor8 - eth.balance(msg.sender) / sellPrice
        balanceOf[msg.sender] -= stor8 - eth.balance(msg.sender) / sellPrice
        call msg.sender with:
           value stor8 - eth.balance(msg.sender) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((stor8 - eth.balance(msg.sender) / sellPrice), msg.sender, this.address);
    if eth.balance(arg1) < stor8:
        require sellPrice
        require balanceOf[address(msg.sender)] >= stor8 - eth.balance(arg1) / sellPrice
        balanceOf[address(this.address)] += stor8 - eth.balance(arg1) / sellPrice
        balanceOf[msg.sender] -= stor8 - eth.balance(arg1) / sellPrice
        call msg.sender with:
           value stor8 - eth.balance(arg1) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((stor8 - eth.balance(arg1) / sellPrice), msg.sender, this.address);
        call arg1 with:
           value stor8 - eth.balance(arg1) / sellPrice * sellPrice wei
             gas 2300 * is_zero(value) wei
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
