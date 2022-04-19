contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[1282 len 32]
    return code.data[167 len 1115]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_e52caae6;
uint8 stor2;
uint256 sub_fa498ba9;

function owner() {
    return owner
}

function sub_e52caae6(?) {
    return sub_e52caae6
}

function sub_e56d9716(?) {
    return bool(stor2)
}

function sub_fa498ba9(?) {
    return sub_fa498ba9
}

function withdraw() payable {
    if owner != msg.sender:
        return 0
    if block.timestamp < sub_e52caae6:
        return 0
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    selfdestruct(owner)
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_2de09d8a(?) {
    sub_fa498ba9 = block.timestamp
}

function check() {
    if block.timestamp < sub_e52caae6:
        stor2 = 0
    else:
        stor2 = 1
    return 0
}



}
