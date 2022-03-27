contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    require ext_code.size(0x6c8f2a135f6ed072de4503bd7c4999a1a17f824b)
    call 0x6c8f2a135f6ed072de4503bd7c4999a1a17f824b.0xa2eb203a with:
       value eth.balance(this.address) wei
         gas gas_remaining - 9050 wei
        args 0, 0, 192, 5, 200000, 0, block.number + 1 >> 512, 0
    require ext_call.success
    return code.data[279 len 79]
}



// =====================  Runtime code  =====================


uint256 executed;

function executed() {
    return executed
}

function _fallback() {
    executed = block.number
}



}
