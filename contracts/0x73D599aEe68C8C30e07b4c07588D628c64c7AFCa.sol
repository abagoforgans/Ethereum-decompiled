contract main {


// =======================  Init code  ======================


uint256 stor1;
mapping of uint8 stor2;
array of address stor3;

function _fallback() {
    mem[96 len -1535] = code.data[1986 len -1535]
    mem[64] = -1439
    require mem[mem[128] + 96] <= 10
    require mem[96] <= mem[mem[128] + 96]
    require mem[96]
    idx = 0
    s = 0
    while idx < mem[mem[128] + 96]:
        require idx < mem[mem[128] + 96]
        require mem[(32 * idx) + mem[128] + 140 len 20] > address(s)
        require idx < mem[mem[128] + 96]
        mem[0] = mem[(32 * idx) + mem[128] + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + mem[128] + 140 len 20]] = 1
        require idx < mem[mem[128] + 96]
        idx = idx + 1
        s = mem[(32 * idx) + mem[128] + 128]
        continue 
    stor3.length = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
            stor3[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor1 = mem[96]
    return code.data[451 len 1535]
}



// =====================  Runtime code  =====================


uint256 nonce;
uint256 threshold;
mapping of uint8 stor2;
array of address ownersArr;

function threshold() {
    return threshold
}

function ownersArr(uint256 arg1) {
    require arg1 < ownersArr.length
    return ownersArr[arg1]
}

function nonce() {
    return nonce
}

function _fallback() payable {
  stop
}

function execute(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, address arg4, uint256 arg5, bytes arg6) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg6.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len arg6.length] = arg6[all]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 224] = 0
    require arg2.length == threshold
    require arg2.length == arg3.length
    require arg2.length == arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 256] = 0x1900000000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 330 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + floor32(arg6.length) + -(arg6.length % 32) + 362 len arg6.length % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg6.length) + -(arg6.length % 32) + 256 len arg6.length % 32]
    mem[arg6.length + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 330] = nonce
    _48 = sha3(0, 0, this.address, arg4, arg5, call.data[arg6 + 36 len floor32(arg6.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + floor32(arg6.length) + 330 len (arg6.length % 32) + 32])
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 320
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 256] = 28
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 288] = '\x19Ethereum Signed Message:\n32'
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 320 len 0] = None
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 324 len 28] = Mask(224, 0, '\x19Ethereum Signed Message:\n32')
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 320 len 4] = uint32(arg5)
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 348] = _48
    s = 0
    idx = 0
    s = 0
    while idx < threshold:
        require idx < mem[96]
        _104 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _107 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _111 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        _112 = mem[64]
        mem[64] = mem[64] + 32
        mem[_112 + 32] = sha3(uint32(arg5), Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, _48)
        mem[_112 + 64] = uint8(_104)
        mem[_112 + 96] = _107
        mem[_112 + 128] = _111
        signer = erecover(sha3(uint32(arg5), Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, _48), _104 << 248, _107, _111) 
        mem[_112] = signer
        require erecover.result
        require address(signer) > address(s)
        mem[0] = address(signer)
        mem[32] = 2
        require stor2[address(signer)]
        s = signer
        idx = idx + 1
        s = signer
        continue 
    nonce++
    _101 = mem[64]
    _102 = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
    mem[mem[64] len ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192])]
    if not _102 % 32:
        call arg4.mem[mem[64] len 4] with:
           value arg5 wei
             gas gas_remaining - 34710 wei
            args mem[mem[64] + 4 len _102 - 4]
    else:
        mem[floor32(_102) + mem[64]] = mem[floor32(_102) + mem[64] + -(_102 % 32) + 32 len _102 % 32]
        call arg4.mem[mem[64] len 4] with:
           value arg5 wei
             gas gas_remaining - 34710 wei
            args mem[mem[64] + 4 len floor32(_102) + _101 + -mem[64] + 28]
    require ext_call.success
}



}
