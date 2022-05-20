contract main {




// =====================  Runtime code  =====================


address AAddress;
address BAddress;
address CAddress;
address DAddress;

function D() {
    return DAddress
}

function B() {
    return BAddress
}

function C() {
    return CAddress
}

function A() {
    return AAddress
}

function sub_a64177fb(?) {
    require msg.sender == DAddress
    DAddress = arg1
}

function sub_f95a0ad2(?) {
    require msg.sender == AAddress
    AAddress = arg1
}

function setC(address arg1) {
    require msg.sender == CAddress
    CAddress = arg1
}

function setB(address arg1) {
    require msg.sender == BAddress
    BAddress = arg1
}

function _fallback() payable {
    if not msg.value:
        call AAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 64 * msg.value / msg.value == 64
        call AAddress with:
           value 64 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        call BAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 12 * msg.value / msg.value == 12
        call BAddress with:
           value 12 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        call CAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 12 * msg.value / msg.value == 12
        call CAddress with:
           value 12 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        call DAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 12 * msg.value / msg.value == 12
        call DAddress with:
           value 12 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
