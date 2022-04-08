contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor5 = 416208 * 24 * 3600
    stor6 = 500000 * 10^18
    stor7 = 419
    require not msg.value
    require code.data[2409 len 20]
    stor4 = msg.sender
    stor3 = code.data[2409 len 20]
    return code.data[146 len 2251]
}



// =====================  Runtime code  =====================


const name = 'Shit'

const decimals = 18

const symbol = 'SHT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
address stor4;
uint256 stor5;
uint256 beerAndHookersCap;
uint256 shitRate;
uint256 totalEtherReceived;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function shitRate() {
    return shitRate
}

function totalEtherReceived() {
    return totalEtherReceived
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function beerAndHookersCap() {
    return beerAndHookersCap
}

function suicide() {
    require stor4 == msg.sender
    selfdestruct(stor4)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp < stor5
    require msg.value > 0
    require msg.value + totalEtherReceived >= totalEtherReceived
    require msg.value + totalEtherReceived <= beerAndHookersCap
    if not msg.value:
        require (shitRate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += shitRate * msg.value
        require msg.value + totalEtherReceived >= totalEtherReceived
        totalEtherReceived += msg.value
        require (shitRate * msg.value) + totalSupply >= totalSupply
        totalSupply += shitRate * msg.value
        emit Created(msg.value, shitRate * msg.value, msg.sender);
        call stor3 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if msg.value:
            require shitRate * msg.value / msg.value == shitRate
            require (shitRate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += shitRate * msg.value
            require msg.value + totalEtherReceived >= totalEtherReceived
            totalEtherReceived += msg.value
            require (shitRate * msg.value) + totalSupply >= totalSupply
            totalSupply += shitRate * msg.value
            emit Created(msg.value, shitRate * msg.value, msg.sender);
            call stor3 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    revert
}



}
