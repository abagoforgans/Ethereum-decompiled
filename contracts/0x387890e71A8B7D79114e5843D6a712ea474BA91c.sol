contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor2;

function _fallback() {
    stor2 = msg.sender
    stor2 = msg.sender
    stor0 = 10000000 * 10^18
    stor1[code.data[2516 len 20]] = 10000000 * 10^18
    return code.data[286 len 2218]
}



// =====================  Runtime code  =====================


const name = 'Arbitrage Machine'

const decimals = 18

const symbol = 'ARM'

const INITIAL_SUPPLY = 10000000 * 10^18


uint256 totalSupply;
mapping of uint256 showMyTokenBalance;
address owner;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return showMyTokenBalance[address(arg1)]
}

function owner() {
    return owner
}

function showMyTokenBalance(address arg1) {
    return showMyTokenBalance[address(arg1)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require showMyTokenBalance[address(msg.sender)] >= arg2
    require arg2 <= showMyTokenBalance[address(msg.sender)]
    showMyTokenBalance[address(msg.sender)] -= arg2
    require showMyTokenBalance[address(arg1)] + arg2 >= showMyTokenBalance[address(arg1)]
    showMyTokenBalance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
