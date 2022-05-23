contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7b19f160(?) {
    require ext_code.size(0xa62142888aba8370742be823c1782d17a0389da1)
    staticcall 0xa62142888aba8370742be823c1782d17a0389da1.getCurrentRoundInfo() with:
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
    require address(ext_call.return_data[224]) == 0xe1a441341d06c75b9c7bf9ac904f9e6908013dd0
}

function sub_c67b7cba(?) {
    require ext_code.size(0xa62142888aba8370742be823c1782d17a0389da1)
    staticcall 0xa62142888aba8370742be823c1782d17a0389da1.getCurrentRoundInfo() with:
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
    require address(ext_call.return_data[224]) != 0xe1a441341d06c75b9c7bf9ac904f9e6908013dd0
}



}
