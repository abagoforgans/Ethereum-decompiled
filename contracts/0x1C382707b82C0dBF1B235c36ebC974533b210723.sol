contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0xb4e62c23f6cb702956f96ff5e3ea48f134dcce01
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[2500 len 20]
    return code.data[278 len 2210]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address tokenAddress;
uint256 sub_7e14ab4a;

function sub_7e14ab4a(?) {
    return sub_7e14ab4a
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function killContract() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function setPause() {
    require owner == msg.sender
    sub_7e14ab4a = 1
}

function unsetPause() {
    require owner == msg.sender
    sub_7e14ab4a = 0
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_14d0c877(?) {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_2aa7147a(?) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg1
    require ext_call.success
    return 0
}

function sendTokens(uint256 arg1, address arg2) {
    require msg.sender == stor1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg1
    require ext_call.success
    return 0
}



}
