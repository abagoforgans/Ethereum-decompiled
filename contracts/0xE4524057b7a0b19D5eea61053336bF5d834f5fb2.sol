contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor0 = 0
    stor3 = 200
    stor4 = msg.sender
    return code.data[71 len 2260]
}



// =====================  Runtime code  =====================


const name = 'kkTest103'

const decimals = 0

const symbol = 'kT103'

const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 rate;
address owner;
uint256 amount;

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

function amount() {
    return amount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    emit Transfer(arg2, owner, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value
    require msg.value >= 0
    require 200 == rate
    amount = 0
    amount = msg.value * rate / 10^18
    require (msg.value * rate / 10^18) + totalSupply >= totalSupply
    require (msg.value * rate / 10^18) + totalSupply >= msg.value * rate / 10^18
    require (msg.value * rate / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require (msg.value * rate / 10^18) + balanceOf[address(msg.sender)] >= msg.value * rate / 10^18
    emit Transfer((msg.value * rate / 10^18), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
