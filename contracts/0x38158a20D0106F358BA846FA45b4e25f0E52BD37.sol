contract main {


// =======================  Init code  ======================


uint8 stor1; offset 160
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor3 = code.data[3381 len 32]
    stor2 = code.data[3413 len 32]
    return code.data[137 len 3244]
}



// =====================  Runtime code  =====================


address sub_94a43e5cAddress;
uint256 stor0;
uint8 stor1; offset 160
address sub_05f474a8Address;
uint256 stor1;
uint256 sub_bddeab77;
address stor3;

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

function sub_76d43271(?) payable {
    call sub_05f474a8Address.0xcd143d45 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    call sub_05f474a8Address.0xba061afa with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0] >= sub_bddeab77
    s = 0
    idx = 0
    s = 1
    while idx < arg2:
        mem[ceil32(arg1.length) + 128 len 1430] = code.data[1814 len 1430]
        mem[ceil32(arg1.length) + 1558] = sub_05f474a8Address
        mem[ceil32(arg1.length) + 1622] = sub_05f474a8Address
        mem[ceil32(arg1.length) + 1590] = 96
        mem[ceil32(arg1.length) + 1654] = arg1.length
        mem[ceil32(arg1.length) + 1686 len arg1.length] = arg1[all]
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[1814 len 1430], sub_05f474a8Address, Array(len=sub_05f474a8Address, data=arg1.length, arg1[all])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 1686] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 1718 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[1814 len 1430], sub_05f474a8Address, Array(len=sub_05f474a8Address, data=arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 1686 len -(arg1.length % 32) + 32])
        if not s:
            s = create.new_address
            idx = idx + 1
            s = s
            continue 
        mem[ceil32(arg1.length) + 132] = sub_05f474a8Address
        mem[ceil32(arg1.length) + 164] = sub_05f474a8Address
        mem[ceil32(arg1.length) + 196] = address(create.new_address)
        call stor3.0x12627c59 with:
             gas gas_remaining - 25050 wei
            args sub_05f474a8Address, sub_05f474a8Address, address(create.new_address)
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = create.new_address
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    return bool(s)
}



}
