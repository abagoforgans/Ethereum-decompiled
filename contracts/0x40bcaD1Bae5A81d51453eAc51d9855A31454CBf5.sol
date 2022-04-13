contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;

function _fallback() {
    stor0[address(msg.sender)] = code.data[1493 len 32]
    stor1 = code.data[1493 len 32]
    return code.data[136 len 1357]
}



// =====================  Runtime code  =====================


const name = 'Kolkha'

const decimals = 6

const symbol = 'KHC'


mapping of uint256 balanceOf;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size == 68
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
