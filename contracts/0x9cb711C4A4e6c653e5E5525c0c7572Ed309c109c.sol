contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[address(msg.sender)] = 10^10
    return code.data[65 len 1599]
}



// =====================  Runtime code  =====================


const name = 'EthereumSC'

const decimals = 3

const initialSupply = 10^10

const symbol = 'ESC'

const _initialSupply = 10^10


mapping of uint256 balance;
mapping of uint256 allowance;

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function balance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balance[address(msg.sender)] >= arg2
    require arg2 > 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balance[address(arg1)] >= arg3
    require arg3 > 0
    balance[address(arg1)] -= arg3
    balance[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
