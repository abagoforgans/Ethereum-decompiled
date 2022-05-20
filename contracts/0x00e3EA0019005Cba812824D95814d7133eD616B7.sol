contract main {




// =====================  Runtime code  =====================


const name = 'Finder Hyper'

const decimals = 2

const symbol = 'FH'


uint256 totalSupply;
uint256 stor1;
uint256 stor2;
uint256 outAmount;
mapping of uint256 stor4;
mapping of uint8 stor5;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function getOutAmount() {
    return outAmount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    if outAmount >= stor2:
        return stor4[address(arg1)]
    if stor5[address(arg1)]:
        return stor4[address(arg1)]
    return (stor4[address(arg1)] + stor1)
}

function balance() {
    if outAmount >= stor2:
        return stor4[address(msg.sender)]
    if stor5[address(msg.sender)]:
        return stor4[address(msg.sender)]
    return (stor4[address(msg.sender)] + stor1)
}

function transfer(address arg1, uint256 arg2) {
    if outAmount < stor2:
        if not stor5[address(msg.sender)]:
            stor5[address(msg.sender)] = 1
            stor4[address(msg.sender)] = stor1
            outAmount += stor1
            totalSupply += stor1
    if arg2 > stor4[msg.sender]:
        return 0
    if arg2 <= 0:
        return 0
    if outAmount < stor2:
        if not stor5[address(arg1)]:
            stor5[address(arg1)] = 1
            stor4[address(arg1)] = stor1
            outAmount += stor1
            totalSupply += stor1
    if stor4[address(arg1)] + arg2 <= stor4[address(arg1)]:
        return 0
    stor4[msg.sender] -= arg2
    stor4[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if outAmount < stor2:
        if not stor5[address(arg1)]:
            stor5[address(arg1)] = 1
            stor4[address(arg1)] = stor1
            outAmount += stor1
            totalSupply += stor1
    if arg3 > stor4[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 <= 0:
        return 0
    if outAmount < stor2:
        if not stor5[address(arg2)]:
            stor5[address(arg2)] = 1
            stor4[address(arg2)] = stor1
            outAmount += stor1
            totalSupply += stor1
    if stor4[address(arg2)] + arg3 <= stor4[address(arg2)]:
        return 0
    stor4[address(arg1)] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    stor4[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
