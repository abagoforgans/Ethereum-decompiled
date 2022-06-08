contract main {




// =====================  Runtime code  =====================


address owner;
address emergencyAddress;
uint256 version;
uint8 state;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address borrowerAddress;
uint256 coupon;
uint256 term;
uint256 sub_1ba12f61;
array of uint256 sub_7327652c;
uint256 remainingBalance;
array of uint256 currency;

function totalSupply() {
    return totalSupply
}

function sub_1ba12f61(?) {
    return sub_1ba12f61
}

function version() {
    return version
}

function coupon() {
    return coupon
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7327652c(?) {
    return sub_7327652c[0 len sub_7327652c.length]
}

function borrower() {
    return borrowerAddress
}

function owner() {
    return owner
}

function term() {
    return term
}

function state() {
    require state <= 4
    return state
}

function emergency() {
    return emergencyAddress
}

function remainingBalance() {
    return remainingBalance
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function currency() {
    return currency[0 len currency.length]
}

function void() {
    require emergencyAddress == msg.sender
    selfdestruct(emergencyAddress)
}

function _fallback() payable {
    revert
}

function sub_bf4208a0(?) {
    require owner == msg.sender
    sub_1ba12f61 = arg1
}

function sub_69e25ec1(?) {
    require owner == msg.sender
    require state <= 4
    require state == 1
    state = 3
}

function setOwner(address arg1) {
    require owner == msg.sender
    require arg1 != emergencyAddress
    owner = arg1
}

function sub_eb02a115(?) {
    require emergencyAddress == msg.sender
    require arg1 != owner
    emergencyAddress = arg1
}

function sub_337b5b16(?) {
    require owner == msg.sender
    remainingBalance = arg1
    if not remainingBalance:
        state = 2
}

function sub_78422f87(?) {
    require owner == msg.sender
    require state <= 4
    require state == 3
    state = 4
    remainingBalance = 0
    emit 0x1a07f76e: arg1
}

function approve(address arg1, uint256 arg2) {
    require state <= 4
    require state == 1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function sub_c62a521f(?) {
    require owner == msg.sender
    require state <= 4
    require state == 1
    if arg1 < remainingBalance:
        require arg1 <= remainingBalance
        remainingBalance -= arg1
    else:
        remainingBalance = 0
        state = 2
    require sub_1ba12f61 + 1 >= sub_1ba12f61
    sub_1ba12f61++
    emit 0x1a07f76e: arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require state <= 4
    require state == 1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require state <= 4
    require state == 1
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require state <= 4
    require state == 1
    require arg1
    require arg1 != owner
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require state <= 4
    require state == 1
    require arg2
    require arg2 != owner
    require balanceOf[address(arg1)] >= arg3
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        require msg.sender == owner
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    if owner != msg.sender:
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_afe15227(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length > 0
    require arg1.length <= 250
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require owner == msg.sender
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] - mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= totalSupply
        totalSupply -= mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_18), 0);
        idx = idx + 1
        continue 
}

function addInvestors(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require state <= 4
    require not state
    require arg1.length > 0
    require arg1.length <= 250
    require arg1.length == arg2.length
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        _18 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 140 len 20] != owner
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160]
        require totalSupply + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalSupply
        totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_20));
        s = _20
        s = _18
        idx = idx + 1
        continue 
    if totalSupply == remainingBalance:
        state = 1
}



}
