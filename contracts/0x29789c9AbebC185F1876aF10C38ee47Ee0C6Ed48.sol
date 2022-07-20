contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of struct sub_99560187;
mapping of uint8 stor3;

function sub_99560187(?) {
    return sub_99560187[arg1].field_0, 
           sub_99560187[arg1].field_256,
           sub_99560187[arg1].field_512,
           sub_99560187[arg1].field_768,
           sub_99560187[arg1].field_1024
}

function _fallback() payable {
    revert
}

function sub_f40b26bd(?) {
    require msg.sender == stor1
    stor0 = arg1
}

function setOperator(address arg1, bool arg2) {
    require msg.sender == stor1
    stor3[address(arg1)] = uint8(arg2)
}

function sub_f9c38999(?) {
    require stor3[msg.sender]
    sub_99560187[arg1].field_0 = arg1
    sub_99560187[arg1].field_256 = arg2
    sub_99560187[arg1].field_512 = arg3
    sub_99560187[arg1].field_768 = arg4
    sub_99560187[arg1].field_1024 = arg5
}

function sub_7309cbbd(?) {
    require 0 < sub_99560187[arg1].field_256
    require ext_code.size(stor0)
    call stor0.0xa8be8329 with:
         gas gas_remaining wei
        args msg.sender, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 < sub_99560187[arg1].field_512:
        require ext_code.size(0x8a6014227138556a259e7b2bf1dce668f9bdfd06)
        call 0x8a6014227138556a259e7b2bf1dce668f9bdfd06.0xfcd3533c with:
             gas gas_remaining wei
            args sub_99560187[arg1].field_512 - (sub_99560187[arg1].field_512 * Mask(224, 0, ext_call.return_data[0]) / 100), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_99560187[arg1].field_768 > 0:
        require ext_code.size(0x6804bbb708b8af0851e2980c8a5e9abb42adb179)
        call 0x6804bbb708b8af0851e2980c8a5e9abb42adb179.0xfcd3533c with:
             gas gas_remaining wei
            args sub_99560187[arg1].field_768 - (sub_99560187[arg1].field_768 * Mask(224, 0, ext_call.return_data[0]) / 100), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_99560187[arg1].field_1024 > 0:
        require ext_code.size(0xb334f68bf47c1f1c1556e7034954d389d7fbbf07)
        call 0xb334f68bf47c1f1c1556e7034954d389d7fbbf07.0xfcd3533c with:
             gas gas_remaining wei
            args sub_99560187[arg1].field_1024 - (sub_99560187[arg1].field_1024 * Mask(224, 0, ext_call.return_data[0]) / 100), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b826)
    call 0xb545507080b0f63df02ff9bd9302c2bb2447b826.0x4dc936c0 with:
         gas gas_remaining wei
        args sub_99560187[arg1].field_256, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
