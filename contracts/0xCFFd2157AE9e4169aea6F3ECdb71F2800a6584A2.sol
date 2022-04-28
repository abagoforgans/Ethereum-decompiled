contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() {
    stor0 = 10000000 * 10^18
    stor1[address(msg.sender)] = 10000000 * 10^18
    return code.data[69 len 950]
}



// =====================  Runtime code  =====================


const name = 'HyperQuant Presale Token'

const decimals = 18

const symbol = 'HQPreSale'

const INITIAL_SUPPLY = 10000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
