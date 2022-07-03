contract main {




// =====================  Runtime code  =====================


mapping of address relayedBy;

function relayedBy(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return address(relayedBy[arg1])
}

function signer() {
    return address(stor[sha3('marmo.wallet.signer')].field_0)
}

function _fallback() payable {
  stop
}

function relayedAt(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function isCanceled(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(bool(uint256(relayedBy[arg1])) >> 255)
}

function init(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor[sha3('marmo.wallet.signer')].field_0):
        revert with 0, 'Signer already defined'
    address(stor[sha3('marmo.wallet.signer')].field_0) = arg1
    Mask(96, 0, stor[sha3('marmo.wallet.signer')].field_160) = 0
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function cancel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0, 'Only wallet can cancel txs'
    if not uint256(relayedBy[arg1]):
        emit Canceled(arg1);
        uint256(relayedBy[arg1]) = 0x8000000000000000000000000000000000000000000000000000000000000000
    if address(relayedBy[arg1]):
        revert with 0, 'Intent already relayed'
    if Mask(256, -255, uint256(relayedBy[arg1])):
        revert with 0, 'Intent was canceled'
    revert with 0, 'Unknown error'
}

function sub_ed3d9e17(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96 len arg2.length] = arg2[all]
    if uint256(relayedBy[this.address][arg1][sha3(arg2[all])]):
        if address(relayedBy[this.address][arg1][sha3(arg2[all])]):
            revert with 0, 'Intent already relayed'
        if Mask(256, -255, uint256(relayedBy[this.address][arg1][sha3(arg2[all])])):
            revert with 0, 'Intent was canceled'
        revert with 0, 'Unknown error'
    if 0x9431bab00000000000000000000000039bd955c9 == address(stor[sha3('marmo.wallet.signer')].field_0):
        revert with 0, 'Signer is not a valid address'
    if msg.sender == address(stor[sha3('marmo.wallet.signer')].field_0):
        uint256(relayedBy[this.address][arg1][sha3(arg2[all])]) = block.number
        mem[296 len arg2.length] = arg2[all]
        emit Relayed(address(arg1), Array(len=arg2.length, data=arg2[all]), sha3(this.address, arg1, sha3(arg2[all])));
        mem[296] = arg2.length
        mem[328 len arg2.length] = arg2[all]
        mem[arg2.length + 328] = 0
        mem[ceil32(arg2.length) + 328 len floor32(ceil32(arg2.length) + 96)] = sha3(this.address, arg1, sha3(arg2[all])), 64, mem[296 len arg2.length], 0, mem[arg2.length + 328 len floor32(ceil32(arg2.length) + 96) + -arg2.length - 96]
        delegate arg1 with:
           funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
             gas gas_remaining wei
            args Mask(224, 0, sha3(this.address, arg1, sha3(arg2[all]))), 64, mem[296 len arg2.length], 0, mem[arg2.length + 328 len floor32(ceil32(arg2.length) + 96) + -arg2.length - 96], mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 96) + 328 len ceil32(arg2.length) + -floor32(ceil32(arg2.length) + 96) + 96]
        if not return_data.size:
            if not delegate.return_code:
                revert with this.address, arg1, sha3(arg2[all])
            return 32, 72, sha3(arg2[all]), Mask(192, 64, ceil32(arg2.length) + 96) >> 64 >> 256, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[232 len arg3.length] = arg3[all]
    mem[arg3.length + 232] = 0
    if mem[296 len 1] < 27:
        signer = erecover(sha3(this.address, arg1, sha3(arg2[all])), mem[296 len 1] + 27 << 248, mem[232], mem[264]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(stor[sha3('marmo.wallet.signer')].field_0) != address(signer):
            revert with 0, 'Invalid signature'
        uint256(relayedBy[this.address][arg1][sha3(arg2[all])]) = block.number
        mem[ceil32(arg3.length) + 360 len arg2.length] = arg2[all]
        emit Relayed(address(arg1), Array(len=arg2.length, data=arg2[all]), sha3(this.address, arg1, sha3(arg2[all])));
        mem[ceil32(arg3.length) + 360] = arg2.length
        mem[ceil32(arg3.length) + 392 len arg2.length] = arg2[all]
        mem[ceil32(arg3.length) + arg2.length + 392] = 0
        mem[ceil32(arg3.length) + ceil32(arg2.length) + 392 len floor32(ceil32(arg2.length) + 96)] = sha3(this.address, arg1, sha3(arg2[all])), 64, mem[ceil32(arg3.length) + 360 len arg2.length], 0, mem[ceil32(arg3.length) + arg2.length + 392 len floor32(ceil32(arg2.length) + 96) + -arg2.length - 96]
        delegate arg1 with:
           funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
             gas gas_remaining wei
            args Mask(224, 0, sha3(this.address, arg1, sha3(arg2[all]))), 64, mem[ceil32(arg3.length) + 360 len arg2.length], 0, mem[ceil32(arg3.length) + arg2.length + 392 len floor32(ceil32(arg2.length) + 96) + -arg2.length - 96], mem[ceil32(arg3.length) + ceil32(arg2.length) + floor32(ceil32(arg2.length) + 96) + 392 len ceil32(arg2.length) + -floor32(ceil32(arg2.length) + 96) + 96]
        if not return_data.size:
            if not delegate.return_code:
                revert with this.address, arg1, sha3(arg2[all])
            return 32, 72, sha3(arg2[all]), Mask(192, 64, arg3.length) >> 64 >> 256, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    signer = erecover(sha3(this.address, arg1, sha3(arg2[all])), mem[265] << 248, mem[232], mem[264]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(stor[sha3('marmo.wallet.signer')].field_0) != address(signer):
        revert with 0, 'Invalid signature'
    uint256(relayedBy[this.address][arg1][sha3(arg2[all])]) = block.number
    mem[ceil32(arg3.length) + 360 len arg2.length] = arg2[all]
    emit Relayed(address(arg1), Array(len=arg2.length, data=arg2[all]), sha3(this.address, arg1, sha3(arg2[all])));
    mem[ceil32(arg3.length) + 360] = arg2.length
    mem[ceil32(arg3.length) + 392 len arg2.length] = arg2[all]
    mem[ceil32(arg3.length) + arg2.length + 392] = 0
    mem[ceil32(arg3.length) + ceil32(arg2.length) + 392 len floor32(ceil32(arg2.length) + 96)] = sha3(this.address, arg1, sha3(arg2[all])), 64, mem[ceil32(arg3.length) + 360 len arg2.length], 0, mem[ceil32(arg3.length) + arg2.length + 392 len floor32(ceil32(arg2.length) + 96) + -arg2.length - 96]
    delegate arg1 with:
       funct (Mask(32, 224, sha3(this.address, arg1, sha3(arg2[all]))) >> 224)
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg2.length) + arg2.length + 28, 0, 0), mem[ceil32(arg3.length) + arg2.length + 424 len (2 * ceil32(arg2.length)) + -arg2.length + 64]
    if return_data.size:
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if not delegate.return_code:
        revert with this.address, arg1, sha3(arg2[all])
    mem[ceil32(arg3.length) + ceil32(arg2.length) + 392] = 32
    mem[ceil32(arg3.length) + ceil32(arg2.length) + 424] = 72
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg3.length) + arg2.length + 424 len ceil32(arg2.length) + -arg2.length + 32],
           this.address, arg1, sha3(arg2[all]), Mask(192, 64, arg3.length) >> 64 >> 256,
           0
}



}
