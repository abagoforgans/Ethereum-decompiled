contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_e97848b0(?) payable {
    require calldata.size - 4 >= 32
    create contract with 0 wei
                    code: code.data[2386 len 3338]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[5724 len 3387]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).ethToToken(address arg1, uint256 arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Debug(string arg1, uint256 arg2):
               ext_call.return_data[0],
               ext_call.return_data[0],
               6,
               'Tokens',
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Approve failed'
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp + 600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) > msg.value:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0x4d37f28d2db99e8d35a6c725a5f1749a085850a3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
