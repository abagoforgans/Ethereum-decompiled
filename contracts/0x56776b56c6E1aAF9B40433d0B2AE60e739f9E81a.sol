contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor1 = msg.sender
    stor2 = block.number
    stor0 = msg.value
    stor3 = msg.sender
    return code.data[73 len 378]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    revert
}

function claim() {
    if stor2 + 100 >= block.number:
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getIn() payable {
    require msg.value >= 2 * stor0
    call stor1 with:
       value eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor2 = block.number
    stor0 = msg.value
    stor3 = msg.sender
}



}
