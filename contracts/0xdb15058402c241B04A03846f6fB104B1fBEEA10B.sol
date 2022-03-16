contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor2; offset 160
uint256 stor2;
uint128 stor3; offset 160
uint256 stor3;
uint128 stor11; offset 160
uint256 stor11;

function _fallback() payable {
    stor0 = 0xfe9d4e5717ec0e16f8301240df5c3f7d3e9effef
    create contract with 0 wei
                    code: code.data[195 len 366]
    uint256(stor2.field_0) = Mask(96, 0, stor2.field_160)
    create contract with 0 wei
                    code: code.data[561 len 366]
    uint256(stor3.field_0) = Mask(96, 0, stor3.field_160)
    create contract with 0 wei
                    code: code.data[927 len 3758]
    uint256(stor11.field_0) = Mask(96, 0, stor11.field_160)
    return code.data[4685 len 6380]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 330]
}



}
