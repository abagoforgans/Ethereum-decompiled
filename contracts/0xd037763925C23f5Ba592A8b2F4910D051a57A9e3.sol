contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4d539562(?) {
    call 0xa169df5ed3363cfc4c92ac96c6c5f2a42fccbf85 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferTokens(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xa169df5ed3363cfc4c92ac96c6c5f2a42fccbf85, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_8beb2149(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.getCurrentRoundInfo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    require return_data.size + 480 > 511
    require bool(ceil32(return_data.size) + 704 <= test266151307())
    require 224 <= return_data.size
    require return_data.size + 480 > 767
    require bool(ceil32(return_data.size) + 864 <= test266151307())
    require 416 <= return_data.size
    emit 0x18008edb: ext_call.return_data[96] - block.timestamp, ext_call.return_data[96] - block.timestamp - arg3, address(ext_call.return_data[224])
    if address(ext_call.return_data[224]) != 0xa169df5ed3363cfc4c92ac96c6c5f2a42fccbf85:
        if address(ext_call.return_data[224]) != 0xd27d2afdd35650629c63d4d702eb5f5d2d893642:
    if arg3 + block.timestamp <= ext_call.return_data[96]:
    require arg2 != ext_call.return_data[32]
}

function sub_b1e29c40(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.getCurrentRoundInfo() with:
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
    emit 0x18008edb: ext_call.return_data[96] - block.timestamp, ext_call.return_data[96] - block.timestamp - arg3, address(ext_call.return_data[224])
    if address(ext_call.return_data[224]) != 0xa169df5ed3363cfc4c92ac96c6c5f2a42fccbf85:
        if address(ext_call.return_data[224]) != 0xd27d2afdd35650629c63d4d702eb5f5d2d893642:
    if arg3 + block.timestamp <= ext_call.return_data[96]:
    require arg2 != ext_call.return_data[32]
}



}
