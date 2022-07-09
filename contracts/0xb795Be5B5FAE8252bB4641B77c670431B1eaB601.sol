contract main {




// =====================  Runtime code  =====================


const name = 'Waste Chain Coin'

const totalSupply = 10000000000 * 10^18

const decimals = 18

const _totalSupply = 10000000000 * 10^18

const symbol = 'WCC'


address stor0;
mapping of uint256 balances;
mapping of uint256 allowed;
uint256 RATE;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function RATE() {
    return RATE
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balances[address(msg.sender)] < arg2:
        return 0
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if balances[address(arg1)] < arg3:
        return 0
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    RATE = 5 * 3600
    if not msg.value:
        require balances[address(msg.sender)] >= balances[address(msg.sender)]
        require 0 <= balances[stor0]
    else:
        require msg.value
        require msg.value * RATE / msg.value == RATE
        require balances[address(msg.sender)] + (msg.value * RATE) >= balances[address(msg.sender)]
        balances[address(msg.sender)] += msg.value * RATE
        require msg.value * RATE <= balances[stor0]
        balances[stor0] += -1 * msg.value * RATE
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function convertTokens() payable {
    require msg.value > 0
    RATE = 5 * 3600
    if not msg.value:
        require balances[address(msg.sender)] >= balances[address(msg.sender)]
        require 0 <= balances[stor0]
    else:
        require msg.value
        require msg.value * RATE / msg.value == RATE
        require balances[address(msg.sender)] + (msg.value * RATE) >= balances[address(msg.sender)]
        balances[address(msg.sender)] += msg.value * RATE
        require msg.value * RATE <= balances[stor0]
        balances[stor0] += -1 * msg.value * RATE
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
