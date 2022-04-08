contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 514
    require not msg.value
    stor1 = msg.sender
    stor2[stor1] = stor0
    return code.data[205 len 4106]
}



// =====================  Runtime code  =====================


const name = 'Fiocoin'

const decimals = 0

const symbol = 'FIOCOIN'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function owned() {
    owner = msg.sender
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not stor4[address(msg.sender)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
