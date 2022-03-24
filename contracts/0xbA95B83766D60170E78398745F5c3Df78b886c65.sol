contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 640]




// =====================  Runtime code  =====================


const mainDAO = 0x9f27daea7aca0aa0446220b98d028715e3bc803d

const trustee = 0xda4a4626d3e16e094de3225a751aab7128e96526


function _fallback() payable {
  stop
}

function trusteeWithdraw() payable {
    call 0x9f27daea7aca0aa0446220b98d028715e3bc803d.0x18160ddd with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call 0x9f27daea7aca0aa0446220b98d028715e3bc803d.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    call 0xda4a4626d3e16e094de3225a751aab7128e96526 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function withdraw() payable {
    call 0x9f27daea7aca0aa0446220b98d028715e3bc803d.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    call 0x9f27daea7aca0aa0446220b98d028715e3bc803d.0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 0 wei
    require ext_call.success
}



}
