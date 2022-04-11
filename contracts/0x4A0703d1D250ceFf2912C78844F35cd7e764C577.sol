contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint256 stor8;
uint256 stor9;

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
    mem[160 len -4046] = code.data[4557 len -4046]
    stor0 = msg.sender
    stor0 = msg.sender
    stor6[address(this.address)] = mem[160]
    stor5 = mem[160]
    stor2[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    stor3[] = Array(len=mem[mem[288] + 160], data=mem[mem[288] + 192 len mem[mem[288] + 160]])
    stor4 = mem[287 len 1]
    stor9 = 10^18
    stor8 = block.timestamp + (3600 * mem[192])
    return code.data[511 len 4046]
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
uint256 deadline;
uint256 buyPrice;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function deadline() {
    return deadline
}

function decimals() {
    return decimals
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

function setPrice(uint256 arg1) {
    require owner == msg.sender
    buyPrice = 10^18 * arg1
    emit Price(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function prolong(uint256 arg1) {
    require owner == msg.sender
    deadline += 3600 * arg1
    emit Deadline(((3600 * arg1) + deadline));
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Mint(arg2, arg1);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_51bb5739(?) {
    require owner == msg.sender
    emit Redeem(eth.balance(this.address), owner);
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    require block.timestamp < deadline
    require buyPrice
    require msg.value / buyPrice >= 1
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[this.address] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
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
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
