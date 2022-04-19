contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor3 = 5 * 10^6
    require not msg.value
    stor0 = code.data[723 len 20]
    stor2 = msg.sender
    return code.data[117 len 594]
}



// =====================  Runtime code  =====================


address sharesTokenAddress;
uint256 tokenFree;
address stor2;
uint256 stor3;

function sharesTokenAddress() {
    return sharesTokenAddress
}

function tokenFree() {
    return tokenFree
}

function _fallback() payable {
    revert
}

function multiSend(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor2 == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_17)
        mem[(32 * arg1.length) + 164] = stor3
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_17), stor3
        require ext_call.success
        idx = idx + 1
        continue 
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    tokenFree = ext_call.return_data[0]
}



}
