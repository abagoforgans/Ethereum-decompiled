contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 862]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setDefaults(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    stor1 = arg1
    stor2 = arg2
}

function setModifiers(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    stor3[address(arg1)] = arg2
    stor4[address(arg1)] = arg3
}

function accountModifiers(address arg1) {
    if stor1 > stor3[address(arg1)]:
        if stor2 > stor4[address(arg1)]:
            return stor1, stor2
        return stor1, stor4[address(arg1)]
    if stor2 > stor4[address(arg1)]:
        return stor3[address(arg1)], stor2
    return stor3[address(arg1)], stor4[address(arg1)]
}

function tradeModifiers(address arg1, address arg2) {
    if stor1 > stor3[address(arg2)]:
        if stor2 > stor4[address(arg1)]:
            return stor1, stor2
        return stor1, stor4[address(arg1)]
    if stor2 > stor4[address(arg1)]:
        return stor3[address(arg2)], stor2
    return stor3[address(arg2)], stor4[address(arg1)]
}



}
