contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[867 len 20]
    return code.data[112 len 743]
}



// =====================  Runtime code  =====================


address _owner;
address sub_99f43abaAddress;

function sub_99f43aba(?) {
    return sub_99f43abaAddress
}

function _owner() {
    return _owner
}

function kill() {
    if _owner != msg.sender:
    selfdestruct(_owner)
}

function changeOwner(address arg1) {
    if _owner == msg.sender:
        _owner = arg1
}

function sub_ab86de6c(?) {
    if _owner == msg.sender:
        sub_99f43abaAddress = arg1
}

function _fallback() payable {
    if msg.value > 0:
        call _owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(sub_99f43abaAddress)
        call sub_99f43abaAddress.0x965b0dd with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.value
        require ext_call.success
}



}
