contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1587]




// =====================  Runtime code  =====================


mapping of uint256 nonce;
mapping of uint8 stor1;

function getNonce(address arg1) {
    return nonce[address(arg1)]
}

function whitelist(address arg1, address arg2) {
    return bool(stor1[arg1][arg2])
}

function _fallback() payable {
    revert
}

function getAddress(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    if arg1.length < 36:
        return 0
    mem[ceil32(arg1.length) + 128] = mem[144 len 20]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function addToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(msg.sender), 1)
        stor1[address(msg.sender)][mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeFromWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(msg.sender), 1)
        stor1[address(msg.sender)][mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function relayMetaTx(uint8 arg1, bytes32 arg2, bytes32 arg3, address arg4, bytes arg5, address arg6) {
    mem[128 len arg5.length] = arg5[all]
    if not arg6:
        if arg5.length < 36:
            mem[ceil32(arg5.length) + 128] = 0x1900000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + 129] = 0
            mem[ceil32(arg5.length) + 130] = address(this.address)
            mem[ceil32(arg5.length) + 150] = address(arg6)
            mem[ceil32(arg5.length) + 202] = address(arg4)
            mem[ceil32(arg5.length) + 222 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
            mem[ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 254 len arg5.length % 32] = mem[floor32(arg5.length) + -(arg5.length % 32) + 160 len arg5.length % 32]
            _104 = sha3(0, 0, this.address, arg6, nonce, arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg5.length) + floor32(arg5.length) + 222 len arg5.length % 32])
            mem[ceil32(arg5.length) + 160] = sha3(0, 0, this.address, arg6, nonce, arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg5.length) + floor32(arg5.length) + 222 len arg5.length % 32])
            mem[ceil32(arg5.length) + 192] = arg1
            mem[ceil32(arg5.length) + 224] = arg2
            mem[ceil32(arg5.length) + 256] = arg3
            signer = erecover(_104, arg1 << 248, arg2, arg3) 
            mem[ceil32(arg5.length) + 128] = signer
            require erecover.result
            require not address(signer)
            nonce++
        else:
            _5 = mem[132]
            mem[0] = mem[144 len 20]
            mem[ceil32(arg5.length) + 128] = 0x1900000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + 129] = 0
            mem[ceil32(arg5.length) + 130] = address(this.address)
            mem[ceil32(arg5.length) + 150] = address(arg6)
            mem[ceil32(arg5.length) + 202] = address(arg4)
            mem[ceil32(arg5.length) + 222 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
            mem[ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 254 len arg5.length % 32] = mem[floor32(arg5.length) + -(arg5.length % 32) + 160 len arg5.length % 32]
            _95 = sha3(0, 0, this.address, arg6, nonce[mem[0]], arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg5.length) + floor32(arg5.length) + 222 len arg5.length % 32])
            mem[ceil32(arg5.length) + 160] = sha3(0, 0, this.address, arg6, nonce[mem[0]], arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg5.length) + floor32(arg5.length) + 222 len arg5.length % 32])
            mem[ceil32(arg5.length) + 192] = arg1
            mem[ceil32(arg5.length) + 224] = arg2
            mem[ceil32(arg5.length) + 256] = arg3
            signer = erecover(_95, arg1 << 248, arg2, arg3) 
            mem[ceil32(arg5.length) + 128] = signer
            require erecover.result
            require address(signer) == address(_5)
            nonce[address(_5)]++
    else:
        require stor1[address(arg6)][address(msg.sender)]
        if arg5.length < 36:
            mem[ceil32(arg5.length) + 128] = 0x1900000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + 129] = 0
            mem[ceil32(arg5.length) + 130] = address(this.address)
            mem[ceil32(arg5.length) + 150] = address(arg6)
            mem[ceil32(arg5.length) + 202] = address(arg4)
            mem[ceil32(arg5.length) + 222 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
            mem[ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 254 len arg5.length % 32] = mem[floor32(arg5.length) + -(arg5.length % 32) + 160 len arg5.length % 32]
            _122 = sha3(0, 0, this.address, arg6, nonce, arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg5.length) + floor32(arg5.length) + 222 len arg5.length % 32])
            mem[ceil32(arg5.length) + 160] = sha3(0, 0, this.address, arg6, nonce, arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg5.length) + floor32(arg5.length) + 222 len arg5.length % 32])
            mem[ceil32(arg5.length) + 192] = arg1
            mem[ceil32(arg5.length) + 224] = arg2
            mem[ceil32(arg5.length) + 256] = arg3
            signer = erecover(_122, arg1 << 248, arg2, arg3) 
            mem[ceil32(arg5.length) + 128] = signer
            require erecover.result
            require not address(signer)
            nonce++
        else:
            _7 = mem[132]
            mem[0] = mem[144 len 20]
            mem[ceil32(arg5.length) + 128] = 0x1900000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg5.length) + 129] = 0
            mem[ceil32(arg5.length) + 130] = address(this.address)
            mem[ceil32(arg5.length) + 150] = address(arg6)
            mem[ceil32(arg5.length) + 202] = address(arg4)
            mem[ceil32(arg5.length) + 222 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
            mem[ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 254 len arg5.length % 32] = mem[floor32(arg5.length) + -(arg5.length % 32) + 160 len arg5.length % 32]
            _113 = sha3(0, 0, this.address, arg6, nonce[mem[0]], arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg5.length) + floor32(arg5.length) + 222 len arg5.length % 32])
            mem[ceil32(arg5.length) + 160] = sha3(0, 0, this.address, arg6, nonce[mem[0]], arg4, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg5.length) + floor32(arg5.length) + 222 len arg5.length % 32])
            mem[ceil32(arg5.length) + 192] = arg1
            mem[ceil32(arg5.length) + 224] = arg2
            mem[ceil32(arg5.length) + 256] = arg3
            signer = erecover(_113, arg1 << 248, arg2, arg3) 
            mem[ceil32(arg5.length) + 128] = signer
            require erecover.result
            require address(signer) == address(_7)
            nonce[address(_7)]++
    mem[ceil32(arg5.length) + 160 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        call arg4.mem[ceil32(arg5.length) + 160 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg5.length) + 164 len arg5.length - 4]
    else:
        mem[floor32(arg5.length) + ceil32(arg5.length) + 160] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 192 len arg5.length % 32]
        call arg4.mem[ceil32(arg5.length) + 160 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg5.length) + 164 len floor32(arg5.length) + 28]
    require ext_call.success
}



}
