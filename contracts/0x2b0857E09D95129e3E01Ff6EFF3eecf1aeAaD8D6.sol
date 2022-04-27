contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor2 = msg.sender
    stor0 = 0xef8a560fa19f26982c27c78101545b8fe3018237
    stor1 = stor0
    return code.data[277 len 2228]
}



// =====================  Runtime code  =====================


address sub_87e9e77fAddress;
uint32 sub_84371231; offset 160
address sub_1e67f681Address;
address owner;

function sub_1e67f681(?) {
    return sub_1e67f681Address
}

function sub_84371231(?) {
    return sub_84371231
}

function sub_87e9e77f(?) {
    return sub_87e9e77fAddress
}

function owner() {
    return owner
}

function sendEtherToOwner() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_1b78dea8(?) {
    require msg.sender == owner
    require ext_code.size(sub_1e67f681Address)
    call sub_1e67f681Address.0x83773de8 with:
         gas gas_remaining - 710 wei
        args arg1 << 224, arg2
    require ext_call.success
}

function sub_951c665d(?) {
    require msg.sender == owner
    require ext_code.size(sub_1e67f681Address)
    call sub_1e67f681Address.0x68999d76 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function _fallback() payable {
    if gas_remaining > 300000:
        require ext_code.size(sub_1e67f681Address)
        call sub_1e67f681Address.0x8301fb2e with:
             gas gas_remaining - 710 wei
            args sub_84371231
        require ext_call.success
}

function sub_c65825f1(?) {
    require msg.sender == owner
    sub_84371231 = arg1
    require ext_code.size(sub_1e67f681Address)
    call sub_1e67f681Address.0x8301fb2e with:
         gas gas_remaining - 710 wei
        args sub_84371231
    require ext_call.success
}



}
