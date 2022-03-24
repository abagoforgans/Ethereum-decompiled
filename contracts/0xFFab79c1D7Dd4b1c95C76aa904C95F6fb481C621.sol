contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[1307 len 32]
    return code.data[55 len 1252]
}



// =====================  Runtime code  =====================


address sub_44624e34Address;
uint256 stor0;
mapping of struct sub_30dd3a42;

function sub_30dd3a42(?) payable {
    mem[256] = sub_30dd3a42[arg1][2].field_0
    idx = 256
    s = 0
    while sub_30dd3a42[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = sub_30dd3a42[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_30dd3a42[arg1].field_0, 
           sub_30dd3a42[arg1].field_256,
           Array(len=sub_30dd3a42[arg1][2].length, data=mem[256 len sub_30dd3a42[arg1][2].length + (floor32(sub_30dd3a42[arg1][2].length - 1) + -sub_30dd3a42[arg1][2].length + 32 % 32)]),
           bool(sub_30dd3a42[arg1].field_768)
}

function sub_44624e34(?) payable {
    return address(sub_44624e34Address)
}

function _fallback() payable {
    revert 
}

function sub_1d90add6(?) payable {
    require not sub_30dd3a42[arg1].field_768
    sub_30dd3a42[arg1].field_256 = tx.origin or Mask(96, 160, sub_30dd3a42[arg1].field_256)
    sub_30dd3a42[arg1].field_768 = 0
    sub_30dd3a42[arg1].field_1024 = 0
}

function sub_c963b1bb(?) payable {
    call address(sub_44624e34Address).0xe2877dc8 with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_7ae10fbf(?) payable {
    call address(sub_44624e34Address).0x39bc5a53 with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        require arg1 == sha3(arg2[all])
        require not sub_30dd3a42[arg1].field_0
        sub_30dd3a42[arg1].field_0 = tx.origin or Mask(96, 160, sub_30dd3a42[arg1].field_0)
        sub_30dd3a42[arg1].field_256 = 0
        sub_30dd3a42[arg1].field_512 = 0
        sub_30dd3a42[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        sub_30dd3a42[arg1].field_768 = 0
        sub_30dd3a42[arg1].field_1024 = 0
}



}
