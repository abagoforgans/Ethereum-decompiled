contract main {




// =====================  Runtime code  =====================


const position = 1

const sub_2290a2c6(?) = 0x79705be700000000000000000000000000000000000000000000000000000000

const identifier = 'Max concentration'

const sub_e9ae57e5(?) = 0xe51be6e800000000000000000000000000000000000000000000000000000000


uint256 sub_c93b3750;

function sub_c93b3750(?) {
    return sub_c93b3750
}

function _fallback() payable {
    revert
}

function sub_08a6d790(?) {
    require ext_code.size(msg.sender)
    call msg.sender.hub() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accounting() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).DENOMINATION_ASSET() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xe51be6e800000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        if ext_call.return_data[12 len 20] == arg2:
            return 1
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).calcGav() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x635cbb14 with:
             gas gas_remaining wei
            args arg2
    else:
        if ext_call.return_data[12 len 20] == arg3:
            return 1
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).calcGav() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x635cbb14 with:
             gas gas_remaining wei
            args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    require ext_call.return_data[0]
    return 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= sub_c93b3750
}



}
