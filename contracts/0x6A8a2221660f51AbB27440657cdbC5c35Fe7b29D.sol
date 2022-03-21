contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 737]




// =====================  Runtime code  =====================


mapping of uint8 sub_0e371aec;

function sub_0e371aec(?) payable {
    return sub_0e371aec[arg1][arg2]
}

function _fallback() payable {
  stop
}

function sub_221e2efc(?) payable {
    call arg1.0x207c64fb with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_12627c59(?) payable {
    call arg1.0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if sub_0e371aec[address(arg2)][address(arg3)]:
        return 0
    sub_0e371aec[address(arg2)][address(arg3)] = 1
    return 1
}

function sub_9a9bed58(?) payable {
    call arg1.0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if not sub_0e371aec[address(arg2)][address(arg3)]:
        return 0
    sub_0e371aec[address(arg2)][address(arg3)] = 0
    return 1
}

function sub_0ceed41c(?) payable {
    call arg1.0x207c64fb with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require sub_0e371aec[address(arg2)][address(arg4)]
    sub_0e371aec[address(arg2)][address(arg4)] = 0
    sub_0e371aec[address(arg3)][address(arg4)] = 1
    return 1
}



}
