contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() {
    stor1 = msg.sender
    stor0 = 0
    return code.data[64 len 490]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;

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

function sub_dba8b651(?) {
    require stor1 == msg.sender
    call stor1 with:
       value stor0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor0 = 0
}

function gamble() payable {
    if msg.value <= 0:
        require stor1 == msg.sender
    stor0 += msg.value
    if not block.hash(block.number - 1) % 4:
        call msg.sender with:
           value stor0 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor0 = 0
}



}
