contract main {




// =====================  Runtime code  =====================


address sub_5c2d7188Address;
address sub_861abb77Address;

function sub_5c2d7188(?) {
    return sub_5c2d7188Address
}

function sub_861abb77(?) {
    return sub_861abb77Address
}

function _fallback() payable {
  stop
}

function withdrawEther() {
    require ext_code.size(sub_861abb77Address)
    staticcall sub_861abb77Address.getExchange(address arg1) with:
            gas gas_remaining wei
           args sub_5c2d7188Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x2e45786368616e676520666f722074686520746f6b656e206265696e6720626f75676874206973206e6f7420666f756e64206f6e20556e69737761,
                    mem[223 len 5]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 1, block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 'You have not bought any tokens'
    emit 0xd19d895d: ext_call.return_data[0]
    return 1
}

function sub_9ae9f91a(?) {
    require calldata.size - 4 >= 32
    if sub_5c2d7188Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0xfe546f6b656e73206265696e6720626f756768742066726f6d20556e697377617020616e64206265696e6720736f6c642073686f756c6420626520646966666572656e,
                    mem[231 len 29]
    require ext_code.size(sub_861abb77Address)
    staticcall sub_861abb77Address.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x2e45786368616e676520666f722074686520746f6b656e206265696e6720626f75676874206973206e6f7420666f756e64206f6e20556e69737761,
                    mem[223 len 5]
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x74417070726f76696e6720746f6b656e7320666f72207468652065786368616e6765206661696c6564,
                    mem[205 len 23]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).tokenToTokenSwapInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], 1, 1, block.timestamp + 300, sub_5c2d7188Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 'You have not bought any tokens'
    emit 0x7145c016: ext_call.return_data[0]
    return 1
}



}
