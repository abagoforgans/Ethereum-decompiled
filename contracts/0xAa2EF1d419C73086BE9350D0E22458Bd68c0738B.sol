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
mapping of uint256 balanceOf;
mapping of uint256 allowance;
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

function buyOpen() {
    return bool(uint8(stor7.field_8))
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

function sellOpen() {
    return bool(uint8(stor7.field_0))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor10[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function setSellOpen(bool arg1) {
    require msg.sender == owner
    require 0 < sellPrice
    uint8(stor7.field_0) = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    require not stor10[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function setBuyOpen(bool arg1) {
    require msg.sender == owner
    require 0 < buyPrice
    Mask(248, 0, stor7.field_8) = Mask(248, 0, arg1)
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    require owner != arg1
    stor10[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function transferEth(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require not stor10[msg.sender]
    require not stor10[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require balanceOf[stor0] <= balanceOf[stor0]
    require balanceOf[address(arg1)] + balanceOf[stor0] > balanceOf[address(arg1)]
    balanceOf[stor0] -= balanceOf[stor0]
    balanceOf[address(arg1)] += balanceOf[stor0]
    emit Transfer(balanceOf[stor0], owner, arg1);
    require balanceOf[address(arg1)] + balanceOf[stor0] == balanceOf[stor0] + balanceOf[address(arg1)]
    owner = arg1
}

function _fallback() payable {
    if owner != msg.sender:
        require uint8(stor7.field_8)
        require 0 < buyPrice
        require msg.value > 0
        require buyPrice
        require msg.sender
        require msg.value / buyPrice <= balanceOf[stor0]
        require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
        balanceOf[stor0] -= msg.value / buyPrice
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        emit Transfer((msg.value / buyPrice), owner, msg.sender);
        require balanceOf[address(msg.sender)] + balanceOf[stor0] == balanceOf[stor0] + balanceOf[address(msg.sender)]
        emit BuyToken(msg.sender, buyPrice, msg.value / buyPrice, msg.value);
}

function transfer(address arg1, uint256 arg2) {
    require not stor10[msg.sender]
    if arg1 != this.address:
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        balanceOf[msg.sender] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    require uint8(stor7.field_0)
    require not stor10[address(msg.sender)]
    require arg2 > 0
    require 0 < sellPrice
    require owner != msg.sender
    require owner
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[stor0] + arg2 > balanceOf[stor0]
    balanceOf[msg.sender] -= arg2
    balanceOf[stor0] += arg2
    emit Transfer(arg2, msg.sender, owner);
    require balanceOf[stor0] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[stor0]
    call msg.sender with:
       value arg2 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SellToken(address(msg.sender), sellPrice, arg2, arg2 * sellPrice);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor10[address(arg1)]
    require not stor10[msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if arg2 != this.address:
        require arg2
        require arg3 <= balanceOf[address(arg1)]
        require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
        balanceOf[arg1] -= arg3
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
        return 1
    require uint8(stor7.field_0)
    require not stor10[address(arg1)]
    require arg3 > 0
    require 0 < sellPrice
    require owner != arg1
    require owner
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[stor0] + arg3 > balanceOf[stor0]
    balanceOf[arg1] -= arg3
    balanceOf[stor0] += arg3
    emit Transfer(arg3, arg1, owner);
    require balanceOf[stor0] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[stor0]
    call arg1 with:
       value arg3 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SellToken(address(arg1), sellPrice, arg3, arg3 * sellPrice);
    return 1
}



}
