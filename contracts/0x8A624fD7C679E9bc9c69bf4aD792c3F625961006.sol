contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 1459]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function destroy() {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function Multisend() {
    stor1 = 0xfaf378dd7c26ebcfae80f4675fadb3f9d9dfc152
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function isActive() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    return (ext_call.return_data[0] > 0)
}

function tokensAvailable() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sendTokensSingleValue(address[] arg1, uint256 arg2) {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        if address(cd[((32 * idx) + arg1 + 36)]):
            mem[100] = this.address
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] < arg2:
                mem[96] = arg2
                emit FailedTransfer(arg2, address(cd[((32 * idx) + arg1 + 36)]));
            else:
                mem[100] = address(cd[((32 * idx) + arg1 + 36)])
                mem[132] = arg2
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg1 + 36)]), arg2
                require ext_call.success
                mem[96] = arg2
                emit TransferredToken(arg2, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function sendTokens(address[] arg1, uint256[] arg2) {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require owner == msg.sender
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require idx < arg2.length
        if address(cd[((32 * idx) + arg1 + 36)]):
            mem[100] = this.address
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                mem[96] = cd[((32 * idx) + arg2 + 36)]
                emit FailedTransfer(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
            else:
                mem[100] = address(cd[((32 * idx) + arg1 + 36)])
                mem[132] = cd[((32 * idx) + arg2 + 36)]
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]
                require ext_call.success
                mem[96] = cd[((32 * idx) + arg2 + 36)]
                emit TransferredToken(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        s = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
}



}
