contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint128 stor7; offset 160
address stor7;
uint256 stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint8 stor15;

function _fallback() payable {
    Mask(96, 0, stor7.field_160) = 0
    stor15 = 0
    require not msg.value
    require code.data[22023 len 32] >= block.timestamp
    require code.data[22055 len 32] >= code.data[22023 len 32]
    require code.data[22151 len 32] > 0
    require code.data[22259 len 20] != 0
    create contract with 0 wei
                    code: code.data[17412 len 4611]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[22023 len 32]
    stor2 = code.data[22055 len 32]
    stor4 = code.data[22151 len 32]
    stor3 = code.data[22259 len 20]
    require code.data[22183 len 32] > 0
    stor6 = code.data[22183 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[22215 len 32] > 0
    create contract with 0 wei
                    code: code.data[15516 len 1896], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = code.data[22215 len 32]
    require code.data[22119 len 32] > stor1
    stor11 = code.data[22119 len 32]
    stor10 = code.data[22087 len 32]
    require ext_code.size(stor0)
    call stor0.setUnlockTime(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args code.data[22055 len 32]
    require ext_call.success
    return code.data[799 len 14717]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
