contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    return code.data[103 len 1058]
}



// =====================  Runtime code  =====================


address _issuerAddress;
uint256 sub_e273602e;

function _issuer() {
    return _issuerAddress
}

function fee() {
    return sub_e273602e
}

function sub_e273602e(?) {
    return sub_e273602e
}

function kill() {
    if _issuerAddress != msg.sender:
    selfdestruct(_issuerAddress)
}

function _fallback() payable {
    revert
}

function withdraw() {
    call _issuerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return 0
}

function sub_d60f8f4d(?) payable {
    mem[128 len arg1.length] = arg1[all]
    sub_e273602e = 100 * msg.value
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0x8b286a9d: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length])
    return sub_e273602e
}



}
