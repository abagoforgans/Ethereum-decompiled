contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender
    return code.data[53 len 1759]
}



// =====================  Runtime code  =====================


const name = 'ValeaCdsTok20220305I'

const decimals = 8

const symbol = 'VALEAI'


address owner;
uint256 totalSupply;
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
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require totalSupply + arg2 >= totalSupply
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        return 0
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
