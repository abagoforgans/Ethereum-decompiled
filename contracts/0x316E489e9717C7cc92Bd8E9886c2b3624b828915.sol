contract main {




// =====================  Runtime code  =====================


array of struct name;
array of uint256 symbol;
uint256 totalSupply;
uint256 price;
uint256 decimals;
address owner;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    price = arg1
    return price
}

function setDecimals(uint256 arg1) {
    require msg.sender == owner
    decimals = arg1
    return decimals
}

function create(uint256 arg1) {
    require msg.sender == owner
    totalSupply += arg1
    balanceOf[stor5] += arg1
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function withdrawAmount(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(msg.sender, arg1);
}

function withdrawAll() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(msg.sender, eth.balance(this.address));
}

function sub_a127809d(?) {
    require msg.sender == owner
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg2 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function setName(string arg1) {
    require msg.sender == owner
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 160] = uint256(name.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + name.length + 128 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=name.length, data=mem[ceil32(arg1.length) + 160 len name.length])
}

function _fallback() payable {
    require 10^decimals
    if msg.sender == owner:
        totalSupply += msg.value * price / 10^decimals
        balanceOf[stor5] += msg.value * price / 10^decimals
    require balanceOf[stor5] >= msg.value * price / 10^decimals
    require msg.sender
    require balanceOf[stor5] >= msg.value * price / 10^decimals
    require balanceOf[address(msg.sender)] + (msg.value * price / 10^decimals) >= balanceOf[address(msg.sender)]
    balanceOf[stor5] -= msg.value * price / 10^decimals
    balanceOf[address(msg.sender)] += msg.value * price / 10^decimals
    emit Transfer((msg.value * price / 10^decimals), owner, msg.sender);
    require balanceOf[stor5] + balanceOf[address(msg.sender)] == balanceOf[stor5] + balanceOf[address(msg.sender)]
}



}
