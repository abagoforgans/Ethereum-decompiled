contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
uint256 stor4;

function _fallback() payable {
    stor4 = 10^18
    require not msg.value
    stor0 = msg.sender
    stor1 = 300 * 10^18
    stor2[address(msg.sender)] = 300 * 10^18
    emit Transfer(300 * 10^18, 0, msg.sender);
    return code.data[155 len 3246]
}



// =====================  Runtime code  =====================


const name = 'Nikitin'

const decimals = 18

const symbol = 'NIK'

const INITIAL_SUPPLY = 300 * 10^18


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 rate;

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setRate(uint256 arg1) {
    require owner == msg.sender
    rate = arg1
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

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
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

function buyTokens() payable {
    require msg.value
    if not rate:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.sender
        require 0 <= balanceOf[stor0]
        require 0 <= balanceOf[stor0]
        require balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
        emit Transfer(0, owner, msg.sender);
    else:
        require msg.value * rate / rate == msg.value
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.sender
        require msg.value * rate / 10^18 <= balanceOf[stor0]
        require msg.value * rate / 10^18 <= balanceOf[stor0]
        balanceOf[stor0] -= msg.value * rate / 10^18
        require (msg.value * rate / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (msg.value * rate / 10^18) + balanceOf[msg.sender]
        emit Transfer((msg.value * rate / 10^18), owner, msg.sender);
}

function _fallback() payable {
    require msg.value
    if not rate:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.sender
        require 0 <= balanceOf[stor0]
        require 0 <= balanceOf[stor0]
        require balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = balanceOf[msg.sender]
        emit Transfer(0, owner, msg.sender);
    else:
        require msg.value * rate / rate == msg.value
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.sender
        require msg.value * rate / 10^18 <= balanceOf[stor0]
        require msg.value * rate / 10^18 <= balanceOf[stor0]
        balanceOf[stor0] -= msg.value * rate / 10^18
        require (msg.value * rate / 10^18) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (msg.value * rate / 10^18) + balanceOf[msg.sender]
        emit Transfer((msg.value * rate / 10^18), owner, msg.sender);
}



}
