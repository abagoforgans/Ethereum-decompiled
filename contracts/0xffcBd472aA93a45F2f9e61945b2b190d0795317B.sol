contract main {




// =====================  Runtime code  =====================


function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function get() {
    call 0x07ef0bbc495cb74040c2d2d6151448ecfe969271 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
