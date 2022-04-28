contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 0
    stor3 = 30
    require not msg.value
    stor0 = msg.sender
    return code.data[104 len 1592]
}



// =====================  Runtime code  =====================


address stor0;
uint32 stor1;
uint32 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor3;

function setMax(uint256 arg1) {
    require msg.sender == stor0
    stor3 = arg1
}

function sub_39927f0f(?) {
    require msg.sender == stor0
    address(stor1.field_0) = arg1
    uint32(stor1.field_160) = arg2
}

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_0763162d(?) {
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).cashOutTank(uint32 rg1) with:
         gas gas_remaining - 710 wei
        args uint32(stor1.field_160)
    require ext_call.success
}

function transfer(address arg1) {
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0)._transfer(uint32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args uint32(stor1.field_0), arg1
    require ext_call.success
}

function _fallback() payable {
    stor2++
    emit LogFallback(stor2, eth.balance(this.address));
    if stor2 < 30:
        require ext_code.size(address(stor1.field_0))
        call address(stor1.field_0).cashOutTank(uint32 rg1) with:
             gas gas_remaining - 710 wei
            args uint32(stor1.field_160)
        require ext_call.success
}



}
