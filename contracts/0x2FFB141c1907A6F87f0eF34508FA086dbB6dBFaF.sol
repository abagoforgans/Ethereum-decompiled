contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 state;
address initialHolderAddress; offset 8
uint256 price;
uint256 min_amount;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function min_amount() {
    return min_amount
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function initialHolder() {
    return initialHolderAddress
}

function state() {
    require state <= 1
    return state
}

function changePrice(uint256 arg1) {
    require msg.sender == initialHolderAddress
    price = arg1
}

function changeMinAmount(uint256 arg1) {
    require msg.sender == initialHolderAddress
    min_amount = arg1
}

function changeState(uint8 arg1) {
    require msg.sender == initialHolderAddress
    require arg1 <= 1
    state = arg1
}

function decreaseTokens(address arg1, uint256 arg2) {
    require msg.sender == initialHolderAddress
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
}

function requestPayout(uint256 arg1, address arg2) {
    require msg.sender == initialHolderAddress
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addTokens(address arg1, uint256 arg2) {
    require msg.sender == initialHolderAddress
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, initialHolderAddress, arg1);
}

function decreaseTokensMulti(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == initialHolderAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= totalSupply
        totalSupply -= mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require state <= 1
    require not state
    require msg.value >= min_amount
    if not msg.value:
        require price
        require totalSupply + (0 / price) >= totalSupply
        totalSupply += 0 / price
        require balanceOf[address(msg.sender)] + (0 / price) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 0 / price
        emit Transfer((0 / price), initialHolderAddress, msg.sender);
    else:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
        require price
        require totalSupply + (10^18 * msg.value / price) >= totalSupply
        totalSupply += 10^18 * msg.value / price
        require balanceOf[address(msg.sender)] + (10^18 * msg.value / price) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * msg.value / price
        emit Transfer((10^18 * msg.value / price), initialHolderAddress, msg.sender);
}

function addTokensMulti(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == initialHolderAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require totalSupply + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalSupply
        totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _32 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], initialHolderAddress, address(_32));
        idx = idx + 1
        continue 
}



}
