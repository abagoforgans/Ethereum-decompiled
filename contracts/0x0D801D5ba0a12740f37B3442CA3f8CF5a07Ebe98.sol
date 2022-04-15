contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 3520]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address _mainAddress;

function sub_4d112847(?) {
    return bool(uint8(stor0.field_160))
}

function _mainAddress() {
    return _mainAddress
}

function sub_d75f0da7(?) {
    require msg.sender == _mainAddress
    return bool(uint8(stor0.field_160))
}

function _fallback() payable {
    revert
}

function sub_03777734(?) {
    require msg.sender == _mainAddress
    _mainAddress = arg1
}

function setDisabled(bool arg1) {
    require msg.sender == _mainAddress
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function makeWallet() {
    require msg.sender == _mainAddress
    create contract with 0 wei
                    code: code.data[1237 len 2240], address(this.address)
    require create.new_address
    emit LogNewWallet(address(create.new_address));
    return address(create.new_address)
}



}
