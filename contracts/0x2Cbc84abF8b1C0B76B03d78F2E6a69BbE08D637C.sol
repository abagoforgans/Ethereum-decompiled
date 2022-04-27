contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 1635]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;

function getOperator(address arg1) {
    return bool(stor2[address(arg1)])
}

function getApprove(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_1b62636c(?) {
    require msg.sender == stor0
    stor2[address(arg1)] = 0
}

function sub_4dbda91d(?) {
    require msg.sender == stor0
    require stor0
    stor0 = arg1
}

function sub_a4818df9(?) {
    require stor2[address(msg.sender)]
    stor1[address(arg1)] = 0
}

function setOperator(address arg1) {
    require msg.sender == stor0
    stor2[address(arg1)] = 1
}

function setApprove(address arg1) {
    require stor2[address(msg.sender)]
    stor1[address(arg1)] = 1
}



}
