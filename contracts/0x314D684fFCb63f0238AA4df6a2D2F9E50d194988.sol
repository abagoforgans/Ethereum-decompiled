contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = code.data[673 len 20]
    stor2 = code.data[693 len 32]
    stor1 = code.data[737 len 20]
    return code.data[108 len 553]
}



// =====================  Runtime code  =====================


address destinationAddress;
address cubicContractAddress;
uint256 unlockedAfter;
uint256 id;

function unlockedAfter() {
    return unlockedAfter
}

function cubicContract() {
    return cubicContractAddress
}

function id() {
    return id
}

function destination() {
    return destinationAddress
}

function deliver() {
    require block.number > unlockedAfter
    require ext_code.size(cubicContractAddress)
    call cubicContractAddress.0x9bcdd9e8 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    selfdestruct(destinationAddress)
}

function _fallback() {
  stop
}

function setId(uint256 arg1) {
    require cubicContractAddress == msg.sender
    id = arg1
}



}
