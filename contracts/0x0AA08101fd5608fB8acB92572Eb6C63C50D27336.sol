contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = address(code.data[2233 len 32])
    stor1 = address(code.data[2265 len 32])
    stor2 = code.data[2297 len 32]
    stor3 = code.data[2329 len 32]
    stor4 = code.data[2361 len 32]
    stor5 = code.data[2393 len 32]
    return code.data[686 len 1547]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address sub_653f43f5Address;

function sub_653f43f5(?) {
    return sub_653f43f5Address
}

function _fallback() payable {
    revert
}

function sub_1b268615(?) {
    require msg.sender == stor0
}

function sub_bce42d6c(?) {
    require msg.sender == stor1
}

function sub_463bf973(?) {
    return stor0, stor1, stor2, stor3, stor4, stor5
}

function sub_e97104d5(?) {
    require msg.sender == stor1
    require block.timestamp > stor2 + 3600
}

function sub_2d83626f(?) {
    require calldata.size - 4 < 32 != 1
    require msg.sender == stor0
    require stor5 > 0
    stor2 = arg1
    stor5--
    emit 0xa1ff4119: stor2, arg1, stor5, stor0, stor1
}



}
