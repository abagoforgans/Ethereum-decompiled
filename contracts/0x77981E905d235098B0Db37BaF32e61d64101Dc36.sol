contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor5;

function _fallback() payable {
    stor5 = 50000
    stor3 = msg.sender
    return code.data[90 len 7968]
}



// =====================  Runtime code  =====================


const name = 'parabox token'

const decimals = 2

const symbol = 'PRXD'

const INITIAL_SUPPLY = 42 * 10^10


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint256 amountRaised;
uint256 buyPrice;
uint8 stor6;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function amountRaised() {
    return amountRaised
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function crowdsaleClosed() {
    return bool(stor6)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setPrices(bool arg1, uint256 arg2) {
    require msg.sender == owner
    stor6 = uint8(arg1)
    buyPrice = arg2
}

function sub_f1b355a2(?) {
    totalSupply = 42 * 10^10
    balanceOf[address(msg.sender)] = 42 * 10^10
    emit Transfer(42 * 10^10, 0, msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function safeWithdrawal(uint256 arg1) {
    require msg.sender == owner
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not stor6
    require amountRaised + msg.value >= amountRaised
    amountRaised += msg.value
    if not msg.value:
        require balanceOf[stor3] >= 0
        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
        require 0 <= balanceOf[stor3]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, owner, msg.sender);
    else:
        require msg.value
        require msg.value * buyPrice / msg.value == buyPrice
        require balanceOf[stor3] >= msg.value * buyPrice
        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
        require msg.value * buyPrice <= balanceOf[stor3]
        balanceOf[stor3] += -1 * msg.value * buyPrice
        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * buyPrice
        emit Transfer((msg.value * buyPrice), owner, msg.sender);
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length <= balanceOf[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _66 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_66));
        idx = idx + 1
        continue 
    require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    return 1
}



}
