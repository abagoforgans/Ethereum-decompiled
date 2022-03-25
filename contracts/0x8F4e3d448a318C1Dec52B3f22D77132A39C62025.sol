contract main {


// =======================  Init code  ======================


const _fallback = code.data[17 len 251]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function withdraw(address arg1) {
    require arg1 != 0
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function send(address arg1) payable {
    require arg1 != 0
    create contract with callvalue wei
                    code: code.data[218 len 33], arg1
    require create.new_address
    require address(create.new_address)
}



}
