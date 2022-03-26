contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
uint8 stor2; offset 160
address stor2;

function _fallback() payable {
    uint8(stor2.field_160) = 0
    mem[96 len -515] = code.data[934 len -515]
    mem[64] = -419
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1 = msg.sender
    address(stor2.field_0) = mem[140 len 20]
    return code.data[419 len 515]
}



// =====================  Runtime code  =====================


address stor1;
uint8 stor2; offset 160
address stor2;

function _fallback() payable {
    revert 
}

function sub_0b926059(?) {
    if msg.sender == address(stor2.field_0):
        uint8(stor2.field_160) = 1
}

function Withdraw() {
    if stor1 != msg.sender:
    if bool(uint8(stor2.field_160)) != 1:
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
