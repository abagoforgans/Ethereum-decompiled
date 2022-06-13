contract main {




// =====================  Runtime code  =====================


address sub_f3ad65f4Address;

function sub_f3ad65f4(?) {
    return sub_f3ad65f4Address
}

function _fallback() payable {
  stop
}

function sub_81f3c8ea(?) {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'kyber'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 0x8000000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_56905d50(?) {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'kyber'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'eth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_98689001(?) payable {
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'eth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'kyber'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'eth'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'kyber'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'admin'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
       value msg.value wei
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg1, address(ext_call.return_data[0]), msg.sender, 0x8000000000000000000000000000000000000000000000000000000000000000, ext_call.return_data[32], address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    call sub_f3ad65f4Address.getAddr(string arg1) with:
         gas gas_remaining wei
        args 'admin'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit KyberTrade(address(ext_call.return_data[0]), arg1, address(ext_call.return_data[0]), ext_call.return_data[0], msg.sender, ext_call.return_data[32], address(ext_call.return_data[0]));
    return ext_call.return_data[0]
}



}
