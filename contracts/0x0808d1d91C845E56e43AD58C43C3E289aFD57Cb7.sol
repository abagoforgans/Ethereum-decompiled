contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender
    stor3 = block.timestamp
    stor2 = code.data[650 len 20]
    stor4 = code.data[670 len 32]
    stor5 = code.data[702 len 32]
    return code.data[116 len 522]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor5;
uint8 state;

function getState() {
    return state
}

function state() {
    return state
}

function _fallback() payable {
    revert 
}

function abort() {
    require not state
    emit aborted()
    state = 3
    return 3
}

function sub_047854d9(?) {
    require not state
    stor1 = msg.sender
    emit 0x78d20fa2 
    state = 4
    return 4
}

function sub_6c88c36c(?) {
    require 4 == state
    emit 0x17e8425f 
    state = 2
    call stor0 with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return state
}



}
