contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor0 = msg.sender
    stor1[stor0] = 100000000 * 10^18
    return code.data[238 len 4477]
}



// =====================  Runtime code  =====================


const name = 'Unity Coin'

const totalSupply = 100000000 * 10^18

const decimals = 18

const initialSupply = 100000000 * 10^18

const symbol = 'UNT'


address owner;
mapping of uint256 balances;
mapping of uint256 allowed;
uint256 RATE;
uint8 stor4;

function balances(address arg1) {
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function RATE() {
    return RATE
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
    stor4 = 0
    if block.timestamp <= 1512968674:
        if block.timestamp >= 15173568001:
            if block.timestamp < 422160 * 24 * 3600:
                RATE = 37500
                stor4 = 1
    else:
        if block.timestamp < 421488 * 24 * 3600:
            RATE = 75000
            stor4 = 1
        else:
            if block.timestamp >= 15173568001:
                if block.timestamp < 422160 * 24 * 3600:
                    RATE = 37500
                    stor4 = 1
    if stor4:
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
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function convertTokens() payable {
    require msg.value > 0
    stor4 = 0
    if block.timestamp <= 1512968674:
        if block.timestamp >= 15173568001:
            if block.timestamp < 422160 * 24 * 3600:
                RATE = 37500
                stor4 = 1
    else:
        if block.timestamp < 421488 * 24 * 3600:
            RATE = 75000
            stor4 = 1
        else:
            if block.timestamp >= 15173568001:
                if block.timestamp < 422160 * 24 * 3600:
                    RATE = 37500
                    stor4 = 1
    if stor4:
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
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
