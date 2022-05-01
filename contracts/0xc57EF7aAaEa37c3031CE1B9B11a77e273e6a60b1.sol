contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 17
    stor0.length.field_8 = 'AddressValidation' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[276 len 731]
}



// =====================  Runtime code  =====================


array of uint256 name;
mapping of uint256 keyValidations;

function name() {
    return name[0 len name.length]
}

function keyValidations(address arg1) {
    return keyValidations[arg1]
}

function _fallback() payable {
    revert
}

function validateKey(bytes32 arg1) {
    keyValidations[address(msg.sender)] = arg1
    emit ValidateKey(msg.sender, arg1);
}



}
