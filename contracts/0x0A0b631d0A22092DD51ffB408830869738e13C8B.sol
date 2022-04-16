contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;

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
    mem[160 len -6538] = code.data[7114 len -6538]
    stor0 = msg.sender
    stor6[address(msg.sender)] = mem[160]
    stor5 = mem[160]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor4 = mem[255 len 1]
    return code.data[576 len 6538]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
uint256 amount;
mapping of uint8 stor11;

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

function amount() {
    return amount
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    if msg.sender == owner:
        sellPrice = arg1
        buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    if msg.sender == owner:
        stor11[address(arg1)] = uint8(arg2)
        emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    if msg.sender == owner:
        balanceOf[address(arg1)] += arg2
        totalSupply += arg2
        emit Transfer(arg2, 0, this.address);
        emit Transfer(arg2, this.address, arg1);
}

function _fallback() payable {
    require buyPrice
    amount = msg.value / buyPrice
    if balanceOf[address(this.address)] >= amount:
        balanceOf[address(msg.sender)] += amount
        balanceOf[address(this.address)] -= amount
        emit Transfer(amount, this.address, msg.sender);
}

function buy() payable {
    require buyPrice
    if balanceOf[address(this.address)] >= msg.value / buyPrice:
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        balanceOf[address(this.address)] -= msg.value / buyPrice
        emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] >= arg2:
        if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
            if not stor11[address(msg.sender)]:
                balanceOf[address(msg.sender)] -= arg2
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
}

function sell(uint256 arg1) {
    if balanceOf[address(msg.sender)] >= arg1:
        balanceOf[address(this.address)] += arg1
        balanceOf[address(msg.sender)] -= arg1
        call msg.sender with:
           value amount * sellPrice wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit Transfer(arg1, msg.sender, this.address);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor11[address(arg1)]:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
