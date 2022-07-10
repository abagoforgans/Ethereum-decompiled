contract main {




// =====================  Runtime code  =====================


const name = 'Test Token2'

const decimals = 18

const symbol = 'TT2'


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
uint256 totalSupply;
uint256 sub_7115adef;
uint256 airDropNum;

function totalSupply() {
    return totalSupply
}

function airDropNum() {
    return airDropNum
}

function sub_2b87ebb6(?) {
    return bool(stor3[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7115adef(?) {
    return sub_7115adef
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    if arg1:
        stor0 = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function _fallback() payable {
    if sub_7115adef > 0:
        if bool(stor3[address(msg.sender)]) != 1:
            require airDropNum <= sub_7115adef
            sub_7115adef -= airDropNum
            require balanceOf[address(msg.sender)] + airDropNum >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += airDropNum
            emit AirDrop(airDropNum, msg.sender);
            emit Transfer(airDropNum, 0, msg.sender);
            stor3[address(msg.sender)] = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
