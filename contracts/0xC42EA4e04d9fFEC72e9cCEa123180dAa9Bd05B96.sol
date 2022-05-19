contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address walletAddress;
uint256 fee;

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function keepEth() {
    return bool(uint8(stor1.field_160))
}

function fee() {
    return fee
}

function depositEth() payable {
  stop
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1) {
    require msg.sender == owner
    fee = arg1
}

function setWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
}

function setKeepEth(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEth2Wallet(uint256 arg1) {
    require msg.sender == owner
    require walletAddress
    require arg1 > 0
    call walletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function batchTransfer(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.value >= fee
    require arg1
    require arg2.length > 0
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _25 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _29 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_25)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _29
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_25), _29
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    if not uint8(stor1.field_160):
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
