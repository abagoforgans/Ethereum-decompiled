contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = 5
    stor4 = 1000
    require not msg.value
    stor1 = msg.sender
    stor2 = msg.sender
    stor0 = msg.sender
    return code.data[235 len 2274]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    revert
}

function sub_b8570e0d(?) {
    require msg.sender == stor2
    require arg1
    stor0 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    require arg1
    stor2 = arg1
}

function setFee(uint256 arg1) {
    require msg.sender == stor2
    require arg1 >= 0
    require arg1 < 100
    stor3 = arg1
}

function sub_e27fb76c(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor2
    require arg1
    require arg2.length > 0
    require arg3
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if mem[(32 * idx) + 140 len 20]:
            require idx < arg2.length
            mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + 164] = this.address
            require ext_code.size(arg1)
            call arg1.0xdd62ed3e with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg2.length) + 132], address(this.address)
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            require stor4
            require ext_call.return_data[0] * stor3 / stor4 > 0
            require ext_call.return_data[0] - (ext_call.return_data[0] * stor3 / stor4) > 0
            require idx < arg2.length
            mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + 164] = arg3
            mem[(32 * arg2.length) + 196] = ext_call.return_data[0] - (ext_call.return_data[0] * stor3 / stor4)
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg2.length) + 132], address(arg3), ext_call.return_data[0] - (ext_call.return_data[0] * stor3 / stor4)
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            require idx < arg2.length
            mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg2.length) + 164] = stor0
            mem[(32 * arg2.length) + 196] = ext_call.return_data[0] * stor3 / stor4
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg2.length) + 132], stor0, ext_call.return_data[0] * stor3 / stor4
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        idx = idx + 1
        continue 
}



}
