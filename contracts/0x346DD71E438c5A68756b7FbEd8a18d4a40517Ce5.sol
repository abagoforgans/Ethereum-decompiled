contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function hit() {
    require ext_code.size(0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8)
    staticcall 0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8.0x747dff42 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 448
    require return_data.size + 512 > 543
    require bool(ceil32(return_data.size) + 736 <= test266151307())
    require 224 <= return_data.size
    require return_data.size + 512 > 799
    require bool(ceil32(return_data.size) + 928 <= test266151307())
    require 448 <= return_data.size
    emit 0x46d508ed: address(ext_call.return_data[224])
}



}
