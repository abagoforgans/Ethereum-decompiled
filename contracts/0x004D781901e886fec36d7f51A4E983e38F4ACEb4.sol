contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
uint256 sub_a4cee622;
mapping of uint8 stor10;
array of struct stor11;

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
    require calldata.size - 4 >= 32
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

function sub_a4cee622(?) {
    return sub_a4cee622
}

function frozenAccount(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor10[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function sub_c88aca12(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
    sub_a4cee622 = arg4
    stor11[].field_0 = Array(len=arg3.length, data=arg3[all])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor10[address(msg.sender)]
    require not stor10[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require not stor10[address(arg1)]
    require not stor10[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require buyPrice
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value * sub_a4cee622 / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value * sub_a4cee622 / buyPrice) >= balanceOf[address(msg.sender)]
    require not stor10[address(this.address)]
    require not stor10[address(msg.sender)]
    balanceOf[address(this.address)] -= msg.value * sub_a4cee622 / buyPrice
    balanceOf[address(msg.sender)] += msg.value * sub_a4cee622 / buyPrice
    emit Transfer((msg.value * sub_a4cee622 / buyPrice), this.address, msg.sender);
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require eth.balance(this.address) * sub_a4cee622 >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    require not stor10[address(msg.sender)]
    require not stor10[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    require sub_a4cee622
    call msg.sender with:
       value arg1 * sellPrice / sub_a4cee622 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function getPrices() {
    mem[128] = 'value: '
    mem[160] = stor11.length
    mem[192] = uint256(stor11.field_0)
    idx = 192
    s = 0
    while stor11.length + 160 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor11.length) + 192] = stor11.length + 7
    if stor11.length + 7:
        mem[ceil32(stor11.length) + 224 len stor11.length + 7] = code.data[8053 len stor11.length + 7]
    s = 0
    idx = 0
    while idx < 7:
        require idx < 7
        require s < stor11.length + 7
        mem[ceil32(stor11.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    s = 7
    idx = 0
    while idx < stor11.length:
        require idx < stor11.length
        require s < stor11.length + 7
        mem[ceil32(stor11.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
        s = s + 1
        idx = idx + 1
        continue 
    return Array(len=stor11.length + 7, data=mem[ceil32(stor11.length) + 224 len stor11.length + 7])
}



}
