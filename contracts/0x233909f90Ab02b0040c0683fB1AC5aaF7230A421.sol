contract main {




// =====================  Runtime code  =====================


#
#  - sub_afd74641(?)
#
address sub_ad7eebacAddress;
address uniswapFactoryAddress;

function uniswapFactory() {
    return uniswapFactoryAddress
}

function sub_ad7eebac(?) {
    return sub_ad7eebacAddress
}

function _fallback() payable {
    if msg.value <= 0:
        revert with 0, 'Value must be > 0'
    call sub_ad7eebacAddress with:
       value msg.value wei
         gas gas_remaining wei
    emit DepositReceived(msg.sender, msg.value, this.address);
}

function getExpectedRate(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(uniswapFactoryAddress)
    call uniswapFactoryAddress.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapFactoryAddress)
    call uniswapFactoryAddress.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        return not not address(ext_call.return_data[0]), 0, 0
    if not ext_call.return_data[12 len 20]:
        return not not ext_call.return_data[12 len 20], 0, 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getEthToTokenOutputPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTokenToEthOutputPrice(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not not address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0]
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
    if sub_ad7eebacAddress != msg.sender:
        revert with 0, 'Address must be StablePay'
    require ext_code.size(uniswapFactoryAddress)
    call uniswapFactoryAddress.getExchange(address arg1) with:
         gas gas_remaining wei
        args address(('cd', 4)[10])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Exchange not found for target token'
    require ext_code.size(uniswapFactoryAddress)
    call uniswapFactoryAddress.getExchange(address arg1) with:
         gas gas_remaining wei
        args address(('cd', 4)[10])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getEthToTokenOutputPrice(uint256 arg1) with:
         gas gas_remaining wei
        args ('cd', 4)[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Not enough value'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ethToTokenSwapOutput(uint256 arg1, uint256 arg2) with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args ('cd', 4)[0], block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(('cd', 4)[10]))
    call address(('cd', 4)[10]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ('cd', 4)[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Source transfer invocation was not successful.'
    return 1
}



}
