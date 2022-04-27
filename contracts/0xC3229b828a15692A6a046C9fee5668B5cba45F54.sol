contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 100000 * 10^18 * 3600
    stor0 = msg.sender
    return code.data[64 len 1955]
}



// =====================  Runtime code  =====================


const name = 'Data Trading Token'

const decimals = 18

const symbol = 'DTT'


address owner;
uint256 totalSupply;
uint256 stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

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

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= stor2
    balanceOf[address(arg1)] += arg2
    stor2 -= arg2
    totalSupply += arg2
    return 1
}

function mintTokensWithApproval(address arg1, uint256 arg2, address arg3) {
    require owner == msg.sender
    require arg2 <= stor2
    balanceOf[address(arg1)] += arg2
    stor2 -= arg2
    totalSupply += arg2
    allowance[address(arg1)][address(arg3)] += arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
