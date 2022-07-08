contract main {




// =====================  Runtime code  =====================


const getSaiTubAddress = 0x448a5065aebb8e423f0896e6c5d525c040f59af3


function _fallback() payable {
    revert
}

function transferETH(address arg1) payable {
    require calldata.size - 4 >= 32
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe50f1648: address(arg1), eth.balance(this.address)
}

function sub_3053d425(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.give(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x81edd4db: arg1, msg.sender
}

function transferERC20(address arg1) {
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd8f79f5d: address(arg1), msg.sender, ext_call.return_data[0]
}



}
