contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sellPrice;
uint256 buyPrice;
uint8 stor7;
uint8 stor7; offset 8
uint256 stor7; offset 8
uint256 sub_27ae7996;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_27ae7996(?) {
    require msg.sender == owner
    return sub_27ae7996
}

function getBuy() {
    require msg.sender == owner
    return bool(uint8(stor7.field_8))
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

function sub_7abce384(?) {
    require msg.sender == owner
    return bool(uint8(stor7.field_0))
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

function sub_7e51d2cb(?) {
    require msg.sender == owner
    sub_27ae7996 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_fe8cfbf3(?) {
    require msg.sender == owner
    uint8(stor7.field_0) = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function sub_e6064519(?) {
    require msg.sender == owner
    Mask(248, 0, stor7.field_8) = Mask(248, 0, arg1)
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function withdrawEther(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdrawToken(uint256 arg1) {
    require msg.sender == owner
    require owner
    require arg1 <= balanceOf[address(this.address)]
    require balanceOf[stor0] + arg1 > balanceOf[stor0]
    balanceOf[this.address] -= arg1
    balanceOf[stor0] += arg1
    emit Transfer(arg1, this.address, owner);
    require balanceOf[stor0] + balanceOf[this.address] == balanceOf[this.address] + balanceOf[stor0]
}

function _fallback() payable {
    require uint8(stor7.field_8)
    require msg.value >= sub_27ae7996
    require buyPrice
    require msg.sender
    require 10^18 * msg.value / buyPrice <= balanceOf[address(this.address)]
    require balanceOf[address(msg.sender)] + (10^18 * msg.value / buyPrice) > balanceOf[address(msg.sender)]
    balanceOf[this.address] -= 10^18 * msg.value / buyPrice
    balanceOf[address(msg.sender)] += 10^18 * msg.value / buyPrice
    emit Transfer((10^18 * msg.value / buyPrice), this.address, msg.sender);
    require balanceOf[address(msg.sender)] + balanceOf[this.address] == balanceOf[this.address] + balanceOf[address(msg.sender)]
}

function transfer(address arg1, uint256 arg2) {
    if arg1 != this.address:
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        balanceOf[msg.sender] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    require uint8(stor7.field_0)
    require arg2 * sellPrice / 10^18 <= eth.balance(this.address)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    call msg.sender with:
       value arg2 * sellPrice / 10^18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    if arg2 != this.address:
        allowance[address(arg1)][msg.sender] -= arg3
        require arg2
        require arg3 <= balanceOf[address(arg1)]
        require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
        balanceOf[arg1] -= arg3
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
        return 1
    require uint8(stor7.field_0)
    require eth.balance(this.address) >= arg3 * sellPrice
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    call msg.sender with:
       value arg3 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
