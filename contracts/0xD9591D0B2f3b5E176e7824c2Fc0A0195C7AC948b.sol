contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() {
    stor1 = code.data[456 len 32]
    stor2 = code.data[488 len 32]
    stor3 = code.data[520 len 32]
    stor4 = block.number
    return code.data[111 len 345]
}



// =====================  Runtime code  =====================


uint32 sub_1291b68e;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function sub_1291b68e(?) {
    return sub_1291b68e
}

function _fallback() payable {
    revert
}

function decideWinner() {
    require block.number > stor4
    sub_1291b68e = uint32(sha3(block.hash(block.number - 1), stor1, stor2, stor3))
}



}
