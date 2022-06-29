contract main {




// =====================  Runtime code  =====================


#
#  - sub_afd74641(?)
#
address sub_ad7eebacAddress;
address proxyAddress;

function sub_ad7eebac(?) {
    return sub_ad7eebacAddress
}

function proxy() {
    return proxyAddress
}

function _fallback() payable {
  stop
}

function getExpectedRate(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0, 'Source token != 0x0.'
    if not arg2:
        revert with 0, 'Targe token != 0x0.'
    require ext_code.size(proxyAddress)
    call proxyAddress.0x809a9e55 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > 0:
        return ext_call.return_data[0] > 0, ext_call.return_data[0], ext_call.return_data[32]
    return ext_call.return_data[32] > 0, ext_call.return_data[0], ext_call.return_data[32]
}

function sub_58f0e19d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 672
    require ('cd', 4)[16] <= test266151307()
    require cd[4] + ('cd', 4)[16] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[16] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + 800 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + 800 >= 768
    require cd[4] + ('cd', 4)[16] + cd[(cd[4] + ('cd', 4)[16] + 4)] + 36 <= calldata.size
    require ('cd', 4)[17] <= test266151307()
    require cd[4] + ('cd', 4)[17] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[17] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 832 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + 832 >= 800
    require cd[4] + ('cd', 4)[17] + cd[(cd[4] + ('cd', 4)[17] + 4)] + 36 <= calldata.size
    require ('cd', 4)[18] <= test266151307()
    require cd[4] + ('cd', 4)[18] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[18] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 864 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + 864 >= 832
    require cd[4] + ('cd', 4)[18] + cd[(cd[4] + ('cd', 4)[18] + 4)] + 36 <= calldata.size
    require ('cd', 4)[19] <= test266151307()
    require cd[4] + ('cd', 4)[19] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[19] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[16] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[17] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[18] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[19] + 4)]) + 896 >= 864
    require cd[4] + ('cd', 4)[19] + cd[(cd[4] + ('cd', 4)[19] + 4)] + 36 <= calldata.size
    if msg.value <= 0:
        revert with 0, 'Msg value must be > 0'
    if ('cd', 4).length <= 0:
        revert with 0, 'Amount must be > 0'
    if ('cd', 4).length != msg.value:
        revert with 0, 'Msg value == source amount'
    if not address(('cd', 4)[11]):
        revert with 0, 'Merchant must be != 0x0.'
    if not address(('cd', 4)[9]):
        revert with 0, 'Source token != 0x0.'
    if not address(('cd', 4)[10]):
        revert with 0, 'Targe token != 0x0.'
    require ext_code.size(proxyAddress)
    call proxyAddress.0x809a9e55 with:
         gas gas_remaining wei
        args address(('cd', 4)[9]), address(('cd', 4)[10]), ('cd', 4).length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 0, ext_call.return_data[4 len 28] <= 0:
        if ext_call.return_data[32] <= 0:
            revert with 0, 'Swap not supported. Verify source/target amount.'
    if eth.balance(this.address) < ('cd', 4).length:
        revert with 0, 'Not enough ether in balance.'
    require ext_code.size(proxyAddress)
    call proxyAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
       value msg.value wei
         gas gas_remaining wei
        args address(('cd', 4)[9]), ('cd', 4).length, address(('cd', 4)[10]), msg.sender, ('cd', 4)[0], ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
