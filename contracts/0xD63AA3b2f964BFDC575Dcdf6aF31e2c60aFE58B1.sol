contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 2361]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function build() payable {
    create contract with 0 wei
                    code: code.data[332 len 2029]
    call address(create.new_address).0xf427bd46 with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    require ext_call.success
    return address(create.new_address)
}



}
