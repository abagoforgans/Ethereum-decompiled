contract main {




// =====================  Runtime code  =====================


uint256 nonce;
uint256 threshold;
array of address ownersArr;
address stor4;

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

function sub_eb8295da(?) {
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320] = arg4
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352] = arg5
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384] = arg6
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 416] = arg7
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 448] = this.address
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = 256
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 480] = arg1.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 512 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256] = (32 * arg1.length) + 288
    mem[(64 * arg1.length) + (32 * arg3.length) + (32 * arg2.length) + 512] = arg2.length
    mem[(64 * arg1.length) + (32 * arg3.length) + (32 * arg2.length) + 544 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288] = (32 * arg2.length) + (32 * arg1.length) + 320
    mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 544] = arg3.length
    mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 576] = 0x56b16cd500000000000000000000000000000000000000000000000000000000
    mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 580 len floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 31) + 11] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 31) + 11]
    if not (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352 % 32:
        delegate stor4.0x56b16cd5 with:
             gas gas_remaining wei
            args mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 580 len (161 * arg3.length) + (161 * arg2.length) + (161 * arg1.length) + 352]
    else:
        mem[floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + 580] = mem[floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352) + (64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + -((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352 % 32) + 612 len (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352 % 32]
        delegate stor4.0x56b16cd5 with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 31) + 11], mem[(64 * arg3.length) + (64 * arg2.length) + (64 * arg1.length) + floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 31) + 591 len floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352) + -floor32((32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 31) + 21]
    require delegate.return_code
}



}
