contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor9;
mapping of uint256 stor10;

function _fallback() payable {
    stor5 = 18
    require not msg.value
    stor0 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 21
    stor3.length.field_8 = 'Mobile World Congress' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'MWC' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 21 * 10^6 * 10^stor5
    stor10[stor0] = 21 * 10^6 * 10^stor5
    return code.data[447 len 4453]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 withdrawableAmount;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor8;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor12;

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

function getWithdrawableAmount() {
    return withdrawableAmount[address(msg.sender)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function addFunds() payable {
    require stor0 == msg.sender
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require stor0 == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function sendTo(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    withdrawableAmount[address(arg1)] += arg2
}

function freezeAccount(address arg1, bool arg2) {
    require stor0 == msg.sender
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function withdraw(uint256 arg1) {
    require withdrawableAmount[address(msg.sender)] - arg1 >= 0
    withdrawableAmount[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function withdraw() {
    require withdrawableAmount[address(msg.sender)] > 0
    withdrawableAmount[address(msg.sender)] = 0
    call msg.sender with:
       value withdrawableAmount[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
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
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor8[address(arg1)]
    require not stor8[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function buy() payable {
    require buyPrice
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    require not stor8[address(this.address)]
    require not stor8[address(msg.sender)]
    balanceOf[this.address] -= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[this.address] + balanceOf[address(msg.sender)]
}

function sub_d360e1fd(?) payable {
    require stor0 == msg.sender
    stor12[address(msg.sender)].field_256 += msg.value
    stor12[address(msg.sender)].field_0 = 10^16
    require arg1
    require balanceOf[stor0] >= 10^16 * 10^decimals
    require balanceOf[address(arg1)] + (10^16 * 10^decimals) > balanceOf[address(arg1)]
    require not stor8[stor0]
    require not stor8[address(arg1)]
    balanceOf[stor0] += -1 * 10^16 * 10^decimals
    balanceOf[address(arg1)] += 10^16 * 10^decimals
    emit Transfer((10^16 * 10^decimals), stor0, arg1);
    require balanceOf[address(arg1)] + balanceOf[stor0] == balanceOf[stor0] + balanceOf[address(arg1)]
    emit 0x134d700f: 10^16
    return 10^16
}

function sell(uint256 arg1) {
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    require not stor8[address(msg.sender)]
    require not stor8[address(this.address)]
    balanceOf[msg.sender] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    require balanceOf[address(this.address)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(this.address)]
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
