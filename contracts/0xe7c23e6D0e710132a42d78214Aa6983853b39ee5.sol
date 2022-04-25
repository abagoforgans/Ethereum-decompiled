contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x224e9a55765f52ac07cad18cad2b73e456a7dcf9
    require not msg.value
    stor0 = msg.sender
    return code.data[184 len 5891]
}



// =====================  Runtime code  =====================


address owner;
address payToAddress;

function owner() {
    return owner
}

function payTo() {
    return payToAddress
}

function _fallback() payable {
  stop
}

function setPayTo(address arg1) {
    require msg.sender == owner
    payToAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function makeWallet(uint256 arg1) {
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[1469 len 4379], payToAddress
    require create.new_address
    emit LogNewWallet(address(create.new_address), arg1);
    return address(create.new_address)
}



}
