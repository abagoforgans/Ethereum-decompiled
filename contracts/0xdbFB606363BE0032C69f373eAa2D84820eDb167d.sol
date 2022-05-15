contract main {




// =====================  Runtime code  =====================


const name = 'STELZ'

const initial_supply = 3 * 10^13

const decimals = 5

const symbol = 'STELZ'


address owner;
address techAddress;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 price;
uint256 minAmount;
uint8 state;

function tech() {
    return techAddress
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function minAmount() {
    return minAmount
}

function price() {
    return price
}

function state() {
    require state <= 1
    return state
}

function changePrice(uint256 arg1) {
    require msg.sender == techAddress
    price = arg1
}

function changeMinAmount(uint256 arg1) {
    require msg.sender == techAddress
    minAmount = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function transferTech(address arg1) {
    require msg.sender == owner
    require arg1
    techAddress = arg1
}

function changeState(uint8 arg1) {
    require msg.sender == techAddress
    require arg1 <= 1
    state = arg1
}

function requestPayout(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value >= minAmount
    require state <= 1
    require not state
    require price
    require balanceOf[stor0] >= msg.value / price
    require msg.value / price <= balanceOf[stor0]
    balanceOf[stor0] -= msg.value / price
    require balanceOf[address(msg.sender)] + (msg.value / price) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / price
    emit Transfer((msg.value / price), owner, msg.sender);
}

function transferMany(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require balanceOf[address(msg.sender)] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _46 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_46));
        idx = idx + 1
        continue 
}



}
