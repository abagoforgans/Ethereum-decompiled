contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 736]




// =====================  Runtime code  =====================


address sub_94a43e5cAddress;
uint256 stor0;
address sub_05f474a8Address;
uint256 stor1;
uint256 sub_bddeab77;
address stor3;
uint256 stor3;

function sub_05f474a8(?) payable {
    return address(sub_05f474a8Address)
}

function sub_94a43e5c(?) payable {
    return address(sub_94a43e5cAddress)
}

function sub_bddeab77(?) payable {
    return sub_bddeab77
}

function _fallback() payable {
  stop
}

function sub_6b718db9(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function sub_75635e38(?) payable {
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
    sub_bddeab77 = arg2
}

function sub_c174dce3(?) payable {
    if address(sub_05f474a8Address) != 0:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function sub_5a1c5830(?) payable {
    call address(sub_05f474a8Address).0xcd143d45 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return (ext_call.return_data[12 len 20] == msg.sender)
    call address(sub_05f474a8Address).0xba061afa with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return not ext_call.return_data[0] < sub_bddeab77
}

function execute(address arg1, uint256 arg2) payable {
    call address(sub_05f474a8Address).0xcd143d45 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    call address(sub_05f474a8Address).0xba061afa with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0] >= sub_bddeab77
    call address(stor3).transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(sub_05f474a8Address), arg2
    require ext_call.success
    return ext_call.return_data[0]
}



}
