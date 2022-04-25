contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor2;
uint8 stor3; offset 160
address stor3;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    require not msg.value
    stor2 = code.data[2000 len 20]
    stor0[code.data[2000 len 20]] = -1
    address(stor3.field_0) = code.data[2000 len 20]
    return code.data[146 len 1842]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 allowance;
address stor2;
uint8 stor3; offset 160
address stor3;

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require -1 >= stor0[stor2]
    return (-stor0[stor2] - 1)
}

function balanceOf(address arg1) {
    if stor2 == arg1:
        return 0
    return stor0[address(arg1)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeTransfers() {
    require address(stor3.field_0) == msg.sender
    if not uint8(stor3.field_160):
        uint8(stor3.field_160) = 1
        emit Freeze()
}

function unfreezeTransfers() {
    require address(stor3.field_0) == msg.sender
    if uint8(stor3.field_160):
        uint8(stor3.field_160) = 0
        emit Unfreeze()
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor3.field_160):
        return 0
    if stor0[address(msg.sender)] < arg2:
        return 0
    if arg2 > 0:
        if arg1 != msg.sender:
            require stor0[address(msg.sender)] >= arg2
            stor0[address(msg.sender)] -= arg2
            require stor0[arg1] <= -arg2 - 1
            stor0[address(arg1)] = arg2 + stor0[arg1]
            emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor3.field_160):
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if stor0[address(arg1)] < arg3:
        return 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > 0:
        if arg1 != arg2:
            require stor0[address(arg1)] >= arg3
            stor0[address(arg1)] -= arg3
            require stor0[arg2] <= -arg3 - 1
            stor0[address(arg2)] = arg3 + stor0[arg2]
            emit Transfer(arg3, arg1, arg2);
    return 1
}



}
