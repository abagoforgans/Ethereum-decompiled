contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1235]




// =====================  Runtime code  =====================


function end(address arg1) payable {
    require ext_code.size(arg1)
    call arg1.0xdd54291b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x4172d080 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require 0 / ext_call.return_data[0] <= msg.value
    call arg1 with:
       value 0 / ext_call.return_data[0] wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xd1759141 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc57c5f60 with:
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
        args msg.sender, eth.balance(ext_call.return_data[0]), 96, 0
    require ext_call.success
    require not eth.balance(arg1)
    require not eth.balance(ext_call.return_data[0])
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}



}
