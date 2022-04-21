contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 3762]
}



// =====================  Runtime code  =====================


const name = 'LendConnect Token'

const totalSupply = 0

const decimals = 18

const _totalSupply = 0

const symbol = 'LCT'

const RATE = 1000


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(address(arg1), arg2, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
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
    require msg.value > 0
    if not msg.value:
        if balanceOf[address(msg.sender)] + (1000 * msg.value) >= balanceOf[address(msg.sender)]:
            balanceOf[address(msg.sender)] += 1000 * msg.value
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    else:
        if msg.value:
            if 1000 * msg.value / msg.value == 1000:
                if balanceOf[address(msg.sender)] + (1000 * msg.value) >= balanceOf[address(msg.sender)]:
                    balanceOf[address(msg.sender)] += 1000 * msg.value
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    revert
}

function createTokens() payable {
    require msg.value > 0
    if not msg.value:
        if balanceOf[address(msg.sender)] + (1000 * msg.value) >= balanceOf[address(msg.sender)]:
            balanceOf[address(msg.sender)] += 1000 * msg.value
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    else:
        if msg.value:
            if 1000 * msg.value / msg.value == 1000:
                if balanceOf[address(msg.sender)] + (1000 * msg.value) >= balanceOf[address(msg.sender)]:
                    balanceOf[address(msg.sender)] += 1000 * msg.value
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    revert
}



}
