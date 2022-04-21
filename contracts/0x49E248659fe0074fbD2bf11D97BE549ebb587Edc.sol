contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 250000
    require not msg.value
    stor1 = msg.sender
    stor2[stor1] = stor0
    return code.data[206 len 2348]
}



// =====================  Runtime code  =====================


const name = 'Durange Ltd. Blockshare'

const decimals = 0

const colour = 'Orange'

const symbol = 'DBS'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require arg1 == owner
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
