contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 price;
array of uint256 version;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor8;
address stor8; offset 8
address stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function stopped() {
    return bool(uint8(stor8.field_0))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function stop() {
    require address(stor8.field_8) == msg.sender
    uint8(stor8.field_0) = 1
}

function start() {
    require address(stor8.field_8) == msg.sender
    uint8(stor8.field_0) = 0
}

function setPrice(uint256 arg1) {
    require address(stor8.field_8) == msg.sender
    price = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor8.field_0)
    require msg.sender != 0
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor8.field_0)
    require msg.sender != 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor8.field_0)
    require msg.sender != 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require not uint8(stor8.field_0)
    require price
    require balanceOf[stor9] >= 10^18 * msg.value / price
    balanceOf[address(msg.sender)] += 10^18 * msg.value / price
    balanceOf[stor9] -= 10^18 * msg.value / price
    call stor9 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer((10^18 * msg.value / price), stor9, msg.sender);
    return (10^18 * msg.value / price)
}

function deployTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require address(stor8.field_8) == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] += 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        mem[0] = stor9
        mem[32] = 5
        balanceOf[stor9] += -1 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _28 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], stor9, address(_28));
        idx = idx + 1
        continue 
}



}
