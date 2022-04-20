contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1079 len 20]
    stor2 = code.data[1111 len 20]
    stor3 = code.data[1131 len 32]
    stor4 = 0
    stor5 = code.data[1175 len 20]
    return code.data[166 len 901]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function funder() {
    return stor2, stor3, stor4
}

function sub_c0c5e212(?) {
    require stor0 == msg.sender
    stor3 = arg1
}

function changeOwner(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function changeManager(address arg1) {
    require stor0 == msg.sender
    stor1 = arg1
}

function transferBalance(address arg1) {
    require stor0 == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if stor4 >= stor3:
        call stor1 with:
           value (msg.value - (5 * msg.value / 100) / 3) + (5 * msg.value / 100) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor4 += msg.value - (5 * msg.value / 100) / 3
        call stor2 with:
           value msg.value - (5 * msg.value / 100) / 3 wei
             gas 2300 * is_zero(value) wei
        call stor5 with:
           value msg.value - (5 * msg.value / 100) / 3 wei
             gas 2300 * is_zero(value) wei
    else:
        call stor1 with:
           value (msg.value - (5 * msg.value / 100) - (50 * msg.value / 100) / 3) + (5 * msg.value / 100) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor4 = (msg.value - (5 * msg.value / 100) - (50 * msg.value / 100) / 3) + (50 * msg.value / 100) + stor4
        call stor2 with:
           value (msg.value - (5 * msg.value / 100) - (50 * msg.value / 100) / 3) + (50 * msg.value / 100) wei
             gas 2300 * is_zero(value) wei
        call stor5 with:
           value msg.value - (5 * msg.value / 100) - (50 * msg.value / 100) / 3 wei
             gas 2300 * is_zero(value) wei
}



}
