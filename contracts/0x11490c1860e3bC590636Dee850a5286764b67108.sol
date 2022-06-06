contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 9


mapping of uint8 stor0;
array of struct stor1;
uint256 required;
uint256 spendNonce;

function getRequired() {
    return required
}

function getSpendNonce() {
    return spendNonce
}

function _fallback() payable {
    emit Funded(eth.balance(this.address));
}

function generateMessageToSign(address arg1, uint256 arg2) {
    require arg1 != this.address
    return sha3(spendNonce, this.address, arg2, arg1)
}

function getOwners() {
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[128 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 192 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function spend(address arg1, uint256 arg2, uint8[] arg3, bytes32[] arg4, bytes32[] arg5) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require eth.balance(this.address) >= arg2
    require arg3.length == arg4.length
    require arg4.length == arg5.length
    require arg3.length <= stor1.length
    require arg3.length >= required
    require arg1 != this.address
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 28
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = '\x19Ethereum Signed Message:\n32'
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 len 0] = None
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 284] = sha3(spendNonce, this.address, arg2, arg1)
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = arg3.length
    mem[64] = (64 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
    if not arg3.length:
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _123 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _128 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _133 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            _134 = mem[64]
            mem[64] = mem[64] + 32
            mem[_134 + 32] = sha3(uint32(arg2), Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(spendNonce, this.address, arg2, arg1))
            mem[_134 + 64] = uint8(_123 + 27)
            mem[_134 + 96] = _128
            mem[_134 + 128] = _133
            signer = erecover(sha3(uint32(arg2), Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(spendNonce, this.address, arg2, arg1)), _123 + 27 << 248, _128, _133) 
            mem[_134] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
            mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288] = address(signer)
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288 len 32 * arg3.length] = code.data[2700 len 32 * arg3.length]
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _126 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _130 = mem[(32 * idx) + (32 * arg3.length) + 160]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            _138 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            _139 = mem[64]
            mem[64] = mem[64] + 32
            mem[_139 + 32] = sha3(uint32(arg2), Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(spendNonce, this.address, arg2, arg1))
            mem[_139 + 64] = uint8(_126 + 27)
            mem[_139 + 96] = _130
            mem[_139 + 128] = _138
            signer = erecover(sha3(uint32(arg2), Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(spendNonce, this.address, arg2, arg1)), _126 + 27 << 248, _130, _138) 
            mem[_139] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
            mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288] = address(signer)
            idx = idx + 1
            continue 
    require mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] <= stor1.length
    idx = 0
    while idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]:
        require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
        mem[0] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 300 len 20]
        mem[32] = 0
        require stor0[mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 300 len 20]]
        s = 0
        while s < idx:
            require s < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
            require mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 300 len 20] != mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 300 len 20]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    spendNonce++
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Spent(address(arg1), arg2);
}



}
