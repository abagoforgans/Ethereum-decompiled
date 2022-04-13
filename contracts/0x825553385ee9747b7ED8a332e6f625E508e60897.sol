contract main {


// =======================  Init code  ======================


array of uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1[address(msg.sender)] = 20 * 10^18
    return code.data[305 len 1209]
}



// =====================  Runtime code  =====================


const name = 'TestP2Coin'

const totalSupply = 20 * 10^18

const decimals = 18

const symbol = 'P2C'


array of uint256 standard;
mapping of uint256 balanceOf;

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}



}
