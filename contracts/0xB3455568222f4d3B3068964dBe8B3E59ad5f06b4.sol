contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = 1
    return code.data[23 len 1540]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 stor1;

function _fallback() payable {
  stop
}

function deleteOrder(uint256 arg1) payable {
    call stor0[arg1].field_256.sendCoin(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_512, stor0[arg1].field_0
    require ext_call.success
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_768 = 0
    stor0[arg1].field_1024 = 0
}

function placeOrder(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    call arg1.sendCoinFrom(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args address(msg.sender), arg2, this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor1++
    stor0[stor1].field_0 = msg.sender or Mask(96, 160, stor0[stor1].field_0)
    stor0[stor1].field_256 = arg1 or Mask(96, 160, stor0[stor1].field_256)
    stor0[stor1].field_512 = arg2
    stor0[stor1].field_768 = arg3 or Mask(96, 160, stor0[stor1].field_768)
    stor0[stor1].field_1024 = arg4
    return stor1
}

function claimOrder(uint256 arg1) payable {
    call stor0[arg1].field_768.sendCoinFrom(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining - 25050 wei
        args address(msg.sender), stor0[arg1].field_1024, stor0[arg1].field_0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call stor0[arg1].field_256.sendCoin(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args stor0[arg1].field_512, msg.sender
    require ext_call.success
    emit Traded(stor0[arg1].field_512, stor0[arg1].field_1024, (stor0[arg1].field_288 << 128) + stor0[arg1].field_800, stor0[arg1].field_0, msg.sender);
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_768 = 0
    stor0[arg1].field_1024 = 0
    return 1
}



}
