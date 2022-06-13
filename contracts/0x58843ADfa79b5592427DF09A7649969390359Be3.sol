contract main {




// =====================  Runtime code  =====================


address stor0;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function ping(bool arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require eth.balance(0x28cc60c7c651f3e81e4b85b7a66366df0809870f) > 2 * 10^17
    require Mask(4, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) + 256, 31)
    require Mask(4, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) - 256 != 15
    if eth.balance(0x28cc60c7c651f3e81e4b85b7a66366df0809870f) < 3 * 10^17:
        call 0x28cc60c7c651f3e81e4b85b7a66366df0809870f with:
           value -eth.balance(0x28cc60c7c651f3e81e4b85b7a66366df0809870f) + 3 * 10^17 wei
             gas gas_remaining wei
        require ext_call.success
    require ext_code.size(0x28cc60c7c651f3e81e4b85b7a66366df0809870f)
    if Mask(4, -(('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('blockhash', ('add', -1, 'number'))), 0) - 256 < 8:
        call 0x28cc60c7c651f3e81e4b85b7a66366df0809870f.Set_your_game_number(string arg1) with:
           value 10^17 wei
             gas gas_remaining wei
            args 'L'
    else:
        call 0x28cc60c7c651f3e81e4b85b7a66366df0809870f.Set_your_game_number(string arg1) with:
           value 10^17 wei
             gas gas_remaining wei
            args 'H'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) < eth.balance(this.address)
    if not arg1:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
