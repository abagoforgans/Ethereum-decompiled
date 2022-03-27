contract main {


// =======================  Init code  ======================


uint8 stor1; offset 160
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor3 = code.data[1885 len 32]
    stor2 = code.data[1917 len 32]
    return code.data[137 len 1748]
}



// =====================  Runtime code  =====================


address sub_94a43e5cAddress;
uint256 stor0;
uint8 stor1; offset 160
address sub_05f474a8Address;
uint256 stor1;
uint256 sub_bddeab77;

function sub_05f474a8(?) payable {
    return sub_05f474a8Address
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

function sub_c174dce3(?) payable {
    if uint8(stor1.field_160):
        return 0
    uint256(stor1.field_0) = arg1 or Mask(96, 160, uint256(stor1.field_0))
    uint8(stor1.field_160) = 1
    return 1
}

function sub_5a1c5830(?) payable {
    call sub_05f474a8Address.0xcd143d45 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return (msg.sender == ext_call.return_data[12 len 20])
    call sub_05f474a8Address.0xba061afa with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return not ext_call.return_data[0] < sub_bddeab77
}

function sub_4c0a0dfa(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    call sub_05f474a8Address.0xcd143d45 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    call sub_05f474a8Address.0xba061afa with:
         gas gas_remaining - 25050 wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] >= sub_bddeab77
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x16a373800000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = sub_05f474a8Address
        call address(_21).destroyContract(address rg1) with:
             gas gas_remaining - 25050 wei
            args sub_05f474a8Address
        require ext_call.success
        idx = idx + 1
        continue 
    return 0
}



}
