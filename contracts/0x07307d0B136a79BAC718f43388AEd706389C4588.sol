contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[126 len 350]
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    create contract with 0 wei
                    code: code.data[476 len 350]
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    stor8 = 80
    stor6 = 80
    stor7 = 256
    return code.data[826 len 8288]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 314]
}



}
