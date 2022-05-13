contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 442]
}



// =====================  Runtime code  =====================


address sub_b1d131bfAddress;

function sub_b1d131bf(?) {
    return sub_b1d131bfAddress
}

function _fallback() payable {
  stop
}

function withdraw() payable {
    call sub_b1d131bfAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_78207b52(?) payable {
    require sub_b1d131bfAddress == msg.sender
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg4[all]
    require ext_call.success
    require eth.balance(this.address) > eth.balance(this.address) + (35000 * block.gasprice) + arg3
}



}
