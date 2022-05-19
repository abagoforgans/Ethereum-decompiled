contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0xfd8c2759fcf6e0bb57128d5dfcf1747ae9c7e3a1
    stor2 = 100 * 10^18
    require not msg.value
    stor0 = code.data[844 len 20]
    return code.data[135 len 697]
}



// =====================  Runtime code  =====================


address sub_16fe63afAddress;
address PRESALE_ADDRESS;
uint256 amount;

function sub_16fe63af(?) {
    return sub_16fe63afAddress
}

function Amount() {
    return amount
}

function PRESALE_ADDRESS() {
    return PRESALE_ADDRESS
}

function _fallback() payable {
    revert
}

function change(uint256 arg1) {
    amount = arg1
    return 1
}

function sub_d2a8d388(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = PRESALE_ADDRESS
        mem[(32 * arg1.length) + 164] = address(_15)
        mem[(32 * arg1.length) + 196] = amount
        require ext_code.size(sub_16fe63afAddress)
        call sub_16fe63afAddress.0x23b872dd with:
             gas gas_remaining wei
            args PRESALE_ADDRESS, address(_15), amount
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    return 1
}



}
