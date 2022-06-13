contract main {




// =====================  Runtime code  =====================


address registrarAddress;
uint256 creationDate;
address owner;
address previousOwner;
uint256 value;
uint8 stor5;

function creationDate() {
    return creationDate
}

function registrar() {
    return registrarAddress
}

function value() {
    return value
}

function previousOwner() {
    return previousOwner
}

function owner() {
    return owner
}

function destroyDeed() {
    require not stor5
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
    selfdestruct(57005)
}

function closeDeed(uint256 arg1) {
    require msg.sender == registrarAddress
    require stor5
    stor5 = 0
    call 0xdead with:
       value (1000 * eth.balance(this.address)) - (arg1 * eth.balance(this.address)) / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit DeedClosed()
    require not stor5
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
    selfdestruct(57005)
}

function _fallback() payable {
    revert
}

function setRegistrar(address arg1) {
    require msg.sender == registrarAddress
    registrarAddress = arg1
}

function setOwner(address arg1) {
    require msg.sender == registrarAddress
    require arg1
    previousOwner = owner
    owner = arg1
    emit OwnerChanged(arg1);
}

function setBalance(uint256 arg1, bool arg2) {
    require msg.sender == registrarAddress
    require stor5
    require value >= arg1
    value = arg1
    call owner with:
       value eth.balance(this.address) - arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        require not arg2
}



}
