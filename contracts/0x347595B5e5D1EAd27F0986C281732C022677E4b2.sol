contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[1047 len 32]
    return code.data[55 len 992]
}



// =====================  Runtime code  =====================


address sub_44624e34Address;
uint256 stor0;
array of struct sub_83ab7fc0;

function sub_44624e34(?) payable {
    return address(sub_44624e34Address)
}

function sub_83ab7fc0(?) payable {
    mem[192] = sub_83ab7fc0[arg1][1].field_0
    idx = 192
    s = 0
    while sub_83ab7fc0[arg1][1].length + 192 > idx + 32:
        mem[idx + 32] = sub_83ab7fc0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_83ab7fc0[arg1].field_0, 
           Array(len=sub_83ab7fc0[arg1][1].length, data=mem[192 len sub_83ab7fc0[arg1][1].length + (floor32(sub_83ab7fc0[arg1][1].length - 1) + -sub_83ab7fc0[arg1][1].length + 32 % 32)])
}

function _fallback() payable {
    revert 
}

function sub_c963b1bb(?) payable {
    call address(sub_44624e34Address).0xe2877dc8 with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_9e6b0dcf(?) payable {
    call address(sub_44624e34Address).0x39bc5a53 with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        require arg1 == sha3(arg2[all])
        require not sub_83ab7fc0[arg1].field_0
        sub_83ab7fc0[arg1].field_0 = arg3
        sub_83ab7fc0[arg1][1][].field_0 = Array(len=arg4.length, data=arg4[all])
}



}
