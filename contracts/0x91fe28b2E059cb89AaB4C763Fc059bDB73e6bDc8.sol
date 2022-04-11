contract main {


// =======================  Init code  ======================


uint256 stor3;
address stor4;

function _fallback() payable {
    stor3 = 5000
    stor4 = msg.sender
    require not msg.value
    return code.data[102 len 3859]
}



// =====================  Runtime code  =====================


const name = 'kkTest104'

const decimals = 0

const symbol = 'kT104'

const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 rate;
address owner;
uint256 tokenAmount;

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

function tokenAmount() {
    return tokenAmount
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require arg2 == msg.value * rate / 10^18
    require arg2 >= 1
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value
    require msg.value >= 0
    tokenAmount = 0
    tokenAmount = msg.value * rate / 10^18
    require tokenAmount >= 1
    require tokenAmount == msg.value * rate / 10^18
    require tokenAmount >= 1
    require totalSupply + tokenAmount >= totalSupply
    require totalSupply + tokenAmount >= tokenAmount
    totalSupply += tokenAmount
    require balanceOf[address(msg.sender)] + tokenAmount >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + tokenAmount >= tokenAmount
    balanceOf[address(msg.sender)] += tokenAmount
    emit Transfer(tokenAmount, 0, msg.sender);
    tokenAmount = 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
