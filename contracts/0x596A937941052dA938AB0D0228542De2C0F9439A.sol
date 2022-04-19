contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[1463 len 32]
    return code.data[140 len 1323]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_e52caae6;
uint256 sub_2b5aa18b;
array of uint256 sub_c8837caa;

function sub_2b5aa18b(?) {
    return sub_2b5aa18b
}

function owner() {
    return owner
}

function sub_c8837caa(?) {
    return sub_c8837caa[0 len sub_c8837caa.length].field_0
}

function sub_e52caae6(?) {
    return sub_e52caae6
}

function withdraw() {
    if msg.sender == owner:
        if block.timestamp >= sub_e52caae6:
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            selfdestruct(owner)
        sub_2b5aa18b = sub_e52caae6 - block.timestamp
        bool(sub_c8837caa.length) = 0
        sub_c8837caa.length.field_1 = 7
        sub_c8837caa.length.field_8 = 'Fehler!' / 256
        idx = 0
        while sub_c8837caa.length + 31 / 32 > idx:
            sub_c8837caa[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function _fallback() payable {
    revert
}

function deposit() payable {
    bool(sub_c8837caa.length) = 0
    sub_c8837caa.length.field_1 = 25
    sub_c8837caa.length.field_8 = 'Einzahlung wurde gemacht!' / 256
    idx = 0
    while sub_c8837caa.length + 31 / 32 > idx:
        sub_c8837caa[idx].field_0 = 0
        idx = idx + 1
        continue 
}



}
