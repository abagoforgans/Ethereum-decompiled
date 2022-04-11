contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = 0
    stor1 = 5
    require not msg.value
    stor2 = msg.sender
    stor3[stor2] = stor1
    return code.data[213 len 3597]
}



// =====================  Runtime code  =====================


const name = 'I owe you'

const symbol = 'IOU'

const longDescription = 'Buy or trade IOUs from Connor'

const isToken = 1


uint256 decimals;
uint256 _totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] + arg2 >= allowance[address(arg1)][address(msg.sender)]
    require allowance[address(arg1)][address(msg.sender)] + arg2 >= arg2
    allowance[address(arg1)][address(msg.sender)] += arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(msg.sender)][address(arg1)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require allowance[address(msg.sender)][address(arg1)] >= arg3
    allowance[address(msg.sender)][address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
