contract main {


// =======================  Init code  ======================


uint8 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    stor0 = 2
    require not msg.value
    stor1[address(msg.sender)] = 10000
    return code.data[128 len 1353]
}



// =====================  Runtime code  =====================


const name = 'WSI Private Equity Share'

const totalSupply = 10000

const symbol = 'WSIPES'


uint8 decimals;
mapping of uint256 balanceOf;

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
