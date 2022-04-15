contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[address(msg.sender)] = 10^14
    return code.data[66 len 1749]
}



// =====================  Runtime code  =====================


const name = 'CanYaCoin'

const totalSupply = 10^14

const decimals = 6

const totalTokens = 10^14

const symbol = 'CAN'


mapping of uint256 balances;
mapping of uint256 allowed;

function balances(address arg1) {
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        return 0
    balances[address(arg1)] -= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
