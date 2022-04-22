contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 3183]




// =====================  Runtime code  =====================


array of uint256 sub_1d1a841c;
array of uint256 sub_24b67cff;
array of uint256 sub_aff67482;
array of uint256 sub_35a7618f;

function sub_1d1a841c(?) {
    return sub_1d1a841c[0 len sub_1d1a841c.length]
}

function sub_24b67cff(?) {
    return sub_24b67cff[0 len sub_24b67cff.length]
}

function sub_35a7618f(?) {
    return sub_35a7618f[0 len sub_35a7618f.length]
}

function sub_aff67482(?) {
    return sub_aff67482[0 len sub_aff67482.length]
}

function _fallback() payable {
    revert
}

function sub_ac396655(?) {
    sub_1d1a841c[] = Array(len=arg1.length, data=arg1[all])
    emit Result(Array(len=arg1.length, data=arg1[all]));
}

function sub_0e8de272(?) {
    sub_1d1a841c[] = Array(len=arg1.length, data=arg1[all])
    sub_24b67cff[] = Array(len=arg2.length, data=arg2[all])
    emit Result(Array(len=arg1.length, data=arg1[all]));
}

function sub_fc8b3c01(?) {
    sub_1d1a841c[] = Array(len=arg1.length, data=arg1[all])
    sub_24b67cff[] = Array(len=arg2.length, data=arg2[all])
    sub_aff67482[] = Array(len=arg3.length, data=arg3[all])
    emit Result(Array(len=arg1.length, data=arg1[all]));
}

function sub_9911df52(?) {
    sub_1d1a841c[] = Array(len=arg1.length, data=arg1[all])
    sub_24b67cff[] = Array(len=arg2.length, data=arg2[all])
    sub_aff67482[] = Array(len=arg3.length, data=arg3[all])
    sub_35a7618f[] = Array(len=arg4.length, data=arg4[all])
    emit Result(Array(len=arg1.length, data=arg1[all]));
}

function sub_8ee4b28f(?) {
    require ext_code.size(0x4aa4fbd6495345702abef20626994e4df7c2e221)
    call 0x4aa4fbd6495345702abef20626994e4df7c2e221.getQueryAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xeaa2a6f7 with:
         gas gas_remaining - 710 wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), msg.sender, arg3
    require ext_call.success
}

function query() {
    require ext_code.size(0x4aa4fbd6495345702abef20626994e4df7c2e221)
    call 0x4aa4fbd6495345702abef20626994e4df7c2e221.getQueryAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xeaa2a6f7 with:
         gas gas_remaining - 710 wei
        args 0x37ddc70477fa4300bc1db7445925349e1f58bb40, 128, msg.sender, 0, 7, 'eth,btc' % 72057594037927936
    require ext_call.success
}



}
