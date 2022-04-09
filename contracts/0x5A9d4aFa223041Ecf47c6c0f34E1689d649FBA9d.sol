contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() {
    uint8(stor0.field_160) = 0
    address(stor0.field_0) = msg.sender
    return code.data[132 len 2069]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint256 sub_958e35cf;
mapping of uint256 sub_ef9e5743;

function owner() {
    return owner
}

function sub_958e35cf(?) {
    return sub_958e35cf[address(arg1)]
}

function sub_ef9e5743(?) {
    return sub_ef9e5743[Mask(80, 176, arg1)]
}

function terminate() {
    require msg.sender == owner
    selfdestruct(owner)
}

function run() {
    require msg.sender == owner
    stor0 = 0
}

function pause() {
    require msg.sender == owner
    stor0 = 1
}

function _fallback() payable {
    require stor0 <= 1
    require not stor0
    sub_958e35cf[address(msg.sender)] += msg.value
    emit 0xe1fdb0a5: msg.value, msg.sender, 0
}

function sub_4fa51a39(?) payable {
    require stor0 <= 1
    require not stor0
    sub_ef9e5743[Mask(80, 176, arg1)] += msg.value
    emit 0xe1fdb0a5: msg.value, msg.sender, Mask(80, 176, arg1)
    return 1
}

function flush() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit 0xe1fdb0a5: eth.balance(this.address), owner, 0
    return 1
}



}
