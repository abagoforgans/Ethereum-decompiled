contract main {




// =====================  Runtime code  =====================


const sub_93a3abdd(?) = 1

const sub_baef2347(?) = Array(len=274, data=0x62272d2d2d2d2d424547494e205055424c4943204b45592d2d2d2d2d0a4d4947664d413047435371475349623344514542415155414134474e4144434269514b426751445150716a716e7769776e344b7861704b6f7a794d43794666640a61573337577862337266557a4f74476c7578764e556a75776d4a736a4d594f66474939432f726e78566933522f6b5a616667366a6343596c4d6f715a79614a580a706f47486768716a382f494452684a6b486e4c324c376242316b374c67476f7a574159653834746456796134547a31793650476f714a4a6a6d2b7a504d477a470a594b4e70764236596b2f416b4341343972514944415141420a2d2d2d2d2d454e44205055424c4943204b45592d2d2d2d2d00, mem[402 len 14] >> 1792, Mask(144, -2048, mem[402 len 14]) << 2048)


function _fallback() payable {
    revert
}

function desc(uint256 arg1) {
    if not arg1:
        return 0
    s = 0
    idx = arg1
    while idx > 0:
        if bool(idx - (10 * idx / 10)) == 1:
            s = 10 * idx / 10
            idx = idx / 10
            continue 
        else:
            return 0
    return 1
}

function sub_a6a1d96e(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x40bb5585: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 128, msg.sender
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
        emit 0x40bb5585: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128, msg.sender
    return 1
}



}
