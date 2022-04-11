contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 0xe18e9ce082b1609ebfae090c6e5cbb65edac5855
    return code.data[184 len 2240]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address stor2;
address exchangeAddress;
address daoAddress;

function daoAddress() {
    return daoAddress
}

function owner() {
    return owner
}

function exchangeAddress() {
    return exchangeAddress
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function setDAO(address arg1) {
    require msg.sender == owner
    daoAddress = arg1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function setExchange(address arg1) {
    require msg.sender == owner
    exchangeAddress = arg1
}

function mint(address arg1, uint256 arg2) {
    if exchangeAddress != msg.sender:
        require msg.sender == daoAddress
    require ext_code.size(stor2)
    call stor2.0xf0dda65c with:
         gas gas_remaining - 710 wei
        args address(this.address), arg2
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xd9ddafb3 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}



}
