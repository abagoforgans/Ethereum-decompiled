contract main {




// =====================  Runtime code  =====================


address owner;
address sub_50e2c87fAddress;
mapping of uint8 stor2;

function sub_50e2c87f(?) {
    return sub_50e2c87fAddress
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'Non-owner sender'
    selfdestruct(sub_50e2c87fAddress)
}

function _fallback() payable {
  stop
}

function sub_1b0d8d5f(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Non-owner sender'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if mem[(32 * idx) + 128]:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            stor2[mem[(32 * idx) + 128]] = 1
        idx = idx + 1
        continue 
    emit PayOut(arg1, sub_50e2c87fAddress, -1);
    call sub_50e2c87fAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimPayment(uint256 arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if stor2[arg2]:
        revert with 0, 'Reused nonce'
    mem[ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg3.length) + 192] = arg2
    mem[ceil32(arg3.length) + 224] = address(this.address)
    mem[ceil32(arg3.length) + 128] = 84
    if arg3.length != 65:
        revert with 0, 'Malformed sig'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != owner:
        revert with 0, 'Non-owner signature'
    if arg2:
        stor2[arg2] = 1
    else:
        if arg1 != 1:
            revert with 0, 'Req. 1 WEI amt for 0 nonce'
    emit PayOut(arg1, msg.sender, arg2);
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
