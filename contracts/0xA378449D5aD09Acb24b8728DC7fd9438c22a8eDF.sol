contract main {




// =====================  Runtime code  =====================


const name = 'Ethereum Faith'

const decimals = 18

const symbol = 'ETFH'

const INITIAL_SUPPLY = 102396759 * 10^18


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
    require owner == msg.sender
    stor6 = uint8(arg1)
    buyPrice = arg2
}

function transferOwnership(address arg1) {
    require owner == msg.sender
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
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
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
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function safeWithdrawal(uint256 arg1) {
    require owner == msg.sender
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not stor6
    require msg.value + amountRaised >= amountRaised
    amountRaised += msg.value
    if not msg.value:
        require 0 <= balanceOf[stor3]
        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
        require 0 <= balanceOf[stor3]
        require balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
        emit Transfer(0, owner, msg.sender);
    else:
        require buyPrice * msg.value / msg.value == buyPrice
        require buyPrice * msg.value <= balanceOf[stor3]
        require balanceOf[address(msg.sender)] + (buyPrice * msg.value) > balanceOf[address(msg.sender)]
        require buyPrice * msg.value <= balanceOf[stor3]
        balanceOf[stor3] += -1 * buyPrice * msg.value
        require (buyPrice * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (buyPrice * msg.value) + balanceOf[msg.sender]
        emit Transfer((buyPrice * msg.value), owner, msg.sender);
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
        continue 
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160] * arg2.length <= balanceOf[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _70 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_70));
        idx = idx + 1
        continue 
    require s <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= s
    return 1
}



}
