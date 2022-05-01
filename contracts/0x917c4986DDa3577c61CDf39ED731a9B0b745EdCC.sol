contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x1c59acf9aaab23c456c507a0d9d0f91d1e8c7d6
    return code.data[100 len 2057]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;

function owner() {
    return owner
}

function processedTransactions(uint32 arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function transferTokenOwnership() {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function sub_48477f9c(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function bulkTransfer(uint32[] arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    require arg2.length == arg3.length
    require arg2.length == arg1.length
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 156 len 4]
        mem[32] = 2
        if not stor2[mem[(32 * idx) + 156 len 4]]:
            require idx < arg2.length
            require idx < arg3.length
            _31 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228] = _31
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 196], _31
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            require ext_call.success
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 156 len 4]
            mem[32] = 2
            stor2[mem[(32 * idx) + 156 len 4]] = 1
        idx = idx + 1
        continue 
}

function bulkTransferFrom(uint32[] arg1, address arg2, address[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg1.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require owner == msg.sender
    require arg3.length == arg4.length
    require arg3.length == arg1.length
    idx = 0
    while idx < arg3.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 156 len 4]
        mem[32] = 2
        if not stor2[mem[(32 * idx) + 156 len 4]]:
            require idx < arg3.length
            _29 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg4.length
            _31 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg3.length) + 192]
            mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg4.length) + 196] = arg2
            mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg4.length) + 228] = address(_29)
            mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg4.length) + 260] = _31
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(arg2), address(_29), _31
            mem[(32 * arg1.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = ext_call.return_data[0]
            require ext_call.success
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 156 len 4]
            mem[32] = 2
            stor2[mem[(32 * idx) + 156 len 4]] = 1
        idx = idx + 1
        continue 
}



}
