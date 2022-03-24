contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint256 stor0; offset 8
uint256 stor0;
address stor1;
uint256 stor1;

function _fallback() payable {
    call 0x23141df767233776f7cbbec497800ddedaa4c684.isRightBranch() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(248, 8, uint256(stor0.field_0))
    create contract with 0 wei
                    code: code.data[639 len 992], address(msg.sender), not bool(uint8(stor0.field_0))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, create.new_address)
    create contract with 0 wei
                    code: code.data[1631 len 992], address(msg.sender), bool(uint8(stor0.field_0))
    uint256(stor1) = create.new_address or Mask(96, 160, uint256(stor1))
    emit ETCWalletCreated(address(stor0.field_8));
    emit ETHWalletCreated(address(stor1));
    return code.data[2623 len 617]
}



// =====================  Runtime code  =====================


uint128 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint256(stor0.field_0) = code.data[992 len 32]
    Mask(96, 0, stor0.field_160) = code.data[1044 len 12]
    return code.data[126 len 866]
}



}
