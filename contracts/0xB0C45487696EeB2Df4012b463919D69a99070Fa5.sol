contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    stor3 = msg.sender
    stor6 = 100 * 10^6
    stor7 = 750 * 3600
    return code.data[143 len 8253]
}



// =====================  Runtime code  =====================


const name = 'Satoshi Brewery Limited'

const decimals = 1

const symbol = 'SBL'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function mintingFinished() {
    return bool(stor8)
}

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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setICO(address arg1) {
    if owner != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require arg1
    stor5 = arg1
}

function setPreIco(address arg1) {
    if owner != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require arg1
    stor4 = arg1
}

function finishMinting() {
    if owner != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    stor8 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require not stor8
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= stor6
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function mintPreico(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if stor4 != msg.sender:
            require msg.sender == stor5
    require not stor8
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= stor7
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
