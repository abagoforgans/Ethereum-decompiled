contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor9;
array of uint256 stor10;
array of uint256 stor11;

function _fallback() payable {
    stor3 = 18
    stor9 = 18
    require not msg.value
    stor0 = msg.sender
    stor4 = 500 * 10^6 * 10^stor3
    stor5[address(msg.sender)] = 500 * 10^6 * 10^stor3
    bool(stor1.length) = 0
    stor1.length.field_1 = 15
    stor1.length.field_8 = 'CIBN Live Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'CIBN' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0 = msg.sender
    stor4 = 50000000 * 10^18
    stor5[address(msg.sender)] = 50000000 * 10^18
    bool(stor10.length) = 0
    stor10.length.field_1 = 15
    stor10.length.field_8 = 'CIBN Live Token' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor11.length) = 0
    stor11.length.field_1 = 4
    stor11.length.field_8 = 'CIBN' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[644 len 4424]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
uint256 decimals;
array of uint256 tokenName;
array of uint256 tokenSymbol;
uint256 stor12;
mapping of uint8 stor13;

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

function tokenName() {
    return tokenName[0 len tokenName.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function tokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
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
    return bool(stor13[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function destruct() {
    require owner == msg.sender
    selfdestruct(owner)
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
    stor12 = 10^15 * arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor13[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function setTokenName(string arg1) {
    require owner == msg.sender
    tokenName[] = Array(len=arg1.length, data=arg1[all])
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setTokenSymbol(string arg1) {
    require owner == msg.sender
    tokenSymbol[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor13[address(msg.sender)]
    require not stor13[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function buy() payable {
    require buyPrice
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    require not stor13[address(this.address)]
    require not stor13[address(msg.sender)]
    balanceOf[address(this.address)] -= msg.value / buyPrice
    balanceOf[msg.sender] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor13[address(arg1)]
    require not stor13[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    require not stor13[address(msg.sender)]
    require not stor13[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[this.address] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function AirDrop(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require balanceOf[address(this.address)] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(mem[(32 * idx) + 128])]
        require not stor13[address(this.address)]
        require not stor13[address(mem[(32 * idx) + 128])]
        mem[32] = 5
        balanceOf[address(this.address)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 140 len 20]
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], this.address, address(_22));
        idx = idx + 1
        continue 
    return arg1.length
}



}
