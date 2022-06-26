contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_a16fc275(?) payable {
    require calldata.size - 4 >= 96
    require 0x625b54f95bcf8e1d9f14cd185bf8244c971772c6 == msg.sender
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), 0xd3c3436c20da947aad9c3ab930ef4b4f4f167292, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
