contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 100
    return code.data[38 len 276]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function sub_b5578da8(?) {
    call arg1 with:
       value stor0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor0 = 0
}

function gamble() payable {
    stor0 += msg.value
    if not block.hash(block.number - 1) % 4:
        call msg.sender with:
           value stor0 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor0 = 0
}



}
