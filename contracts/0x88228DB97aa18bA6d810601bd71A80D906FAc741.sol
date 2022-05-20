contract main {




// =====================  Runtime code  =====================


const name = 'Zest Coz Coin'

const decimals = 18

const symbol = 'COZ'


address stor0;
mapping of uint256 balanceof;

function balanceof(address arg1) {
    return balanceof[arg1]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceof[address(msg.sender)]
    require balanceof[address(arg1)] + arg2 >= balanceof[address(arg1)]
    balanceof[address(msg.sender)] -= arg2
    balanceof[address(arg1)] += arg2
}



}
