contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint8 stor7; offset 160
address stor7;
uint256 stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint8 stor15;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    stor15 = 0
    require not msg.value
    require code.data[19376 len 32] >= block.timestamp
    require code.data[19408 len 32] >= code.data[19376 len 32]
    require code.data[19504 len 32] > 0
    require code.data[19612 len 20]
    create contract with 0 wei
                    code: code.data[15219 len 4157]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[19376 len 32]
    stor2 = code.data[19408 len 32]
    stor4 = code.data[19504 len 32]
    stor3 = code.data[19612 len 20]
    require code.data[19536 len 32] > 0
    stor6 = code.data[19536 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[19568 len 32] > 0
    create contract with 0 wei
                    code: code.data[13592 len 1627], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = code.data[19568 len 32]
    require code.data[19472 len 32] > stor1
    stor11 = code.data[19472 len 32]
    stor10 = code.data[19440 len 32]
    require ext_code.size(stor0)
    call stor0.setUnlockTime(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args code.data[19408 len 32]
    require ext_call.success
    return code.data[704 len 12888]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
