contract main {




// =====================  Runtime code  =====================


array of address assets;

function assets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < assets.length
    return assets[arg1]
}

function _fallback() payable {
  stop
}

function getAssetsCount() payable {
    return (assets.length - 1)
}

function sub_967fc2fa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    create contract with 0 wei
                    code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 912 len -arg1.length + ceil32(arg1.length) + 1524]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    assets.length++
    assets[assets.length] = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa9a1cfca: 0, Mask(224, 0, msg.sender), address(create.new_address)
    return 0, uint128(create.new_address) << 96
}



}
