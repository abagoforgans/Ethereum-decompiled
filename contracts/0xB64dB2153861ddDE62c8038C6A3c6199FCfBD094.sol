contract main {




// =====================  Runtime code  =====================


const FACTORY_ADDRESS = 0x5a15566417e6c1c9546523066500bddbc53f88c7

const TUB_ADDRESS = 0x448a5065aebb8e423f0896e6c5d525c040f59af3


function _fallback() payable {
    revert
}

function sub_22cae9a2(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    call arg2.cancel(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sell(bytes32 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg3)
    call arg3.0x4db4f981 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function give(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.0xbaa8529c with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_18c6926e(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg4)
    staticcall arg4.authority() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).permit(address arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args address(arg3), address(arg4), Mask(32, 224, sha3('execute(address,bytes)'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg3)
    call arg3.0x4db4f981 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d3ee6581(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(0x5a15566417e6c1c9546523066500bddbc53f88c7)
    call 0x5a15566417e6c1c9546523066500bddbc53f88c7.newGuard() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.setAuthority(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).permit(address arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args address(arg3), address(arg4), Mask(32, 224, sha3('execute(address,bytes)'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg3)
    call arg3.0x4db4f981 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
