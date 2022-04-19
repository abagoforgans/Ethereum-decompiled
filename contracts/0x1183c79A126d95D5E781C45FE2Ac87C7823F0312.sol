contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 18
    require not msg.value
    stor1 = 10^6 * 10^stor0
    stor2[address(msg.sender)] = 10^6 * 10^stor0
    return code.data[86 len 733]
}



// =====================  Runtime code  =====================


const name = 'Aguris'

const symbol = 'AGS'


uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}



}
