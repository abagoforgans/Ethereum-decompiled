contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor1 = msg.sender
    stor3[stor1] = stor0
    return code.data[203 len 3227]
}



// =====================  Runtime code  =====================


const name = 'ECTS Token'

const decimals = 0

const symbol = 'ECTS'


uint256 totalSupply;
address owner;
mapping of uint256 allowance;
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function mintTokens(uint256 arg1) {
    require msg.sender == owner
    totalSupply += arg1
    balanceOf[stor1] += arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
