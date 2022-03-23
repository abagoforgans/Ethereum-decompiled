contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[74 len 1043]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    require msg.value <= 0
}

function sub_33e59698(?) payable {
    if stor0 != msg.sender:
        return 0
    require msg.value <= 0
    call stor1.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0]:
        return 0
    call arg1.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg2), arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit TokenTransfer(arg3, arg1, arg2);
    return 1
}

function sub_ad958c33(?) payable {
    if stor0 != msg.sender:
        return 0
    require msg.value <= 0
    call stor1.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call arg1.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg2), arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit TokenTransfer(arg3, arg1, arg2);
    return 1
}

function sub_266777c3(?) payable {
    if stor0 != msg.sender:
        return 0
    require msg.value <= 0
    call stor1.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0]:
        return 0
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg2), address(arg3), arg4
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit TokenTransferFrom(arg4, arg1, arg2, arg3);
    return 1
}

function sub_a6bb62b5(?) payable {
    if stor0 != msg.sender:
        return 0
    require msg.value <= 0
    call stor1.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg2), address(arg3), arg4
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit TokenTransferFrom(arg4, arg1, arg2, arg3);
    return 1
}



}
