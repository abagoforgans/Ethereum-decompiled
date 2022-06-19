contract main {




// =====================  Runtime code  =====================


#
#  - sub_483b812c(?)
#  - getRegistration()
#  - sub_8da09647(?)
#  - sub_de2582e3(?)
#
address stor0;
address owner;
array of uint256 songTitle;
array of uint256 hash;
array of uint256 digitalSignature;
array of uint256 professionalName;
array of uint256 duration;
array of uint256 version;
mapping of uint256 sub_c73ff844;

function songTitle() {
    return songTitle[0 len songTitle.length]
}

function hash() {
    return hash[0 len hash.length]
}

function getOwnerAddress() {
    return owner
}

function duration() {
    return duration[0 len duration.length]
}

function professionalName() {
    return professionalName[0 len professionalName.length]
}

function version() {
    return version[0 len version.length]
}

function owner() {
    return owner
}

function digitalSignature() {
    return digitalSignature[0 len digitalSignature.length]
}

function sub_c73ff844(?) {
    return sub_c73ff844[arg1[all]]
}

function _fallback() payable {
    revert
}

function sub_b885f70e(?) {
    require arg1
    signer = erecover(arg2, arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == arg1)
}

function sub_6ce206cf(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor0
    require arg2
    require arg3 > 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 12
    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][address(arg2)]) = arg3
    return 1
}

function sub_cdf1854f(?) {
    mem[128 len arg1.length] = arg1[all]
    require arg2 + 1 >= arg2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 11
    require uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) <= arg2 + 1
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 11
    require arg2 < uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    mem[ceil32(arg1.length) + 128] = uint256(stor[(3 * arg2) + ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))) + 1])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_8ba075ad(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 160] = code.data[10222 len 160]
    mem[ceil32(arg1.length) + 288 len 160] = code.data[10222 len 160]
    mem[64] = ceil32(arg1.length) + 480
    mem[ceil32(arg1.length) + 448] = 96
    idx = 0
    while idx < 1:
        _22 = mem[64]
        _23 = mem[96]
        t = 128
        u = mem[64]
        s = mem[96]
        while s >= 32:
            mem[u] = mem[t]
            mem[64] = mem[64] + 32
            mem[ceil32(arg1.length) + 448] = 96
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[96])] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])])
        mem[_23 + _22] = 11
        require idx < uint256(stor[sha3(mem[mem[64] len _23 + _22 + -mem[64] + 32])])
        mem[0] = sha3(mem[mem[64] len _23 + _22 + -mem[64] + 32])
        require idx < 5
        mem[(32 * idx) + ceil32(arg1.length) + 128] = address(stor[(3 * idx) + sha3(mem[0])])
        _48 = mem[64]
        _49 = mem[96]
        t = 128
        u = mem[64]
        s = mem[96]
        while s >= 32:
            mem[u] = mem[t]
            mem[64] = mem[64] + 32
            mem[ceil32(arg1.length) + 448] = 96
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[96])] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])])
        mem[_49 + _48] = 11
        require t < uint256(stor[sha3(mem[mem[64] len _49 + _48 + -mem[64] + 32])])
        mem[0] = sha3(mem[mem[64] len _49 + _48 + -mem[64] + 32])
        require t < 5
        mem[(32 * t) + ceil32(arg1.length) + 288] = uint256(stor[(3 * t) + sha3(mem[0]) + 1])
        mem[64] = mem[64] + 32
        mem[ceil32(arg1.length) + 448] = 96
        t = t + 1
        continue 
    mem[mem[64] len 160] = mem[ceil32(arg1.length) + 128 len 160]
    mem[mem[64] + 160 len 160] = mem[ceil32(arg1.length) + 288 len 160]
    return memory
      from mem[64]
       len 320
}



}
