contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 10
    require not msg.value
    stor0 = code.data[775 len 20]
    stor1 = code.data[795 len 32]
    return code.data[148 len 615]
}



// =====================  Runtime code  =====================


address stor0;
uint256 index;
uint256 MAX_QUANTITY;

function index() {
    return index
}

function MAX_QUANTITY() {
    return MAX_QUANTITY
}

function _fallback() payable {
    revert
}

function registerDIN() {
    index++
    require ext_code.size(stor0)
    call stor0.0xdbbdf083 with:
         gas gas_remaining - 710 wei
        args index, msg.sender
    require ext_call.success
    return index
}

function registerDINs(uint256 arg1) {
    require arg1 <= MAX_QUANTITY
    idx = 0
    while idx < arg1:
        index++
        mem[96] = 0xdbbdf08300000000000000000000000000000000000000000000000000000000
        mem[100] = index
        mem[132] = msg.sender
        require ext_code.size(stor0)
        call stor0.0xdbbdf083 with:
             gas gas_remaining - 710 wei
            args index, msg.sender
        require ext_call.success
        idx = idx + 1
        continue 
}



}
