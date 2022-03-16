contract main {


// =======================  Init code  ======================


uint128 stor3; offset 160
uint256 stor3;
uint128 stor4; offset 160
uint256 stor4;
uint128 stor12; offset 160
uint256 stor12;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[157 len 366]
    uint256(stor3.field_0) = Mask(96, 0, stor3.field_160)
    create contract with 0 wei
                    code: code.data[523 len 366]
    uint256(stor4.field_0) = Mask(96, 0, stor4.field_160)
    create contract with 0 wei
                    code: code.data[889 len 3483]
    uint256(stor12.field_0) = Mask(96, 0, stor12.field_160)
    return code.data[4372 len 6687]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 330]
}



}
