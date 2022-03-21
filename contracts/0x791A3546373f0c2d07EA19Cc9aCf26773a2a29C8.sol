contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 945]




// =====================  Runtime code  =====================


address sub_94a43e5cAddress;
uint256 stor0;
address sub_05f474a8Address;
uint256 stor1;
mapping of uint8 stor2;

function sub_05f474a8(?) payable {
    return address(sub_05f474a8Address)
}

function sub_94a43e5c(?) payable {
    return address(sub_94a43e5cAddress)
}

function _fallback() payable {
  stop
}

function sub_6b718db9(?) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function sub_c174dce3(?) payable {
    if address(sub_05f474a8Address) != 0:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function validate(address arg1) payable {
    call address(sub_05f474a8Address).0x207c64fb with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_23b6d49a(?) payable {
    call address(sub_05f474a8Address).0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if stor2[address(arg1)][address(arg2)]:
        return 0
    stor2[address(arg1)][address(arg2)] = 1
    return 1
}

function sub_24fdbe8b(?) payable {
    call address(sub_05f474a8Address).0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if not stor2[address(arg1)][address(arg2)]:
        return 0
    stor2[address(arg1)][address(arg2)] = 0
    return 1
}

function sub_13be0e91(?) payable {
    call address(sub_05f474a8Address).0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require stor2[address(arg1)][address(arg3)]
    stor2[address(arg1)][address(arg3)] = 0
    stor2[address(arg2)][address(arg3)] = 1
    return 1
}



}
