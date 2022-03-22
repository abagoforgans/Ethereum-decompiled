contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1442]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function multiply() payable {
    create contract with 0 wei
                    code: code.data[238 len 602], this.address
    create contract with 0 wei
                    code: code.data[840 len 602], address(this.address)
    call address(create.new_address).spread() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(create.new_address).spread() with:
         gas gas_remaining - 25050 wei
}



}
