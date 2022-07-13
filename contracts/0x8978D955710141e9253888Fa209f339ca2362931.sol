contract main {




// =====================  Runtime code  =====================


const _fallback = sha3(sha3(sha3(Mask(160, 96, '404-method-not-found') >> 96)))


address stor0;
address sub_a12fa955Address;
uint256 sub_70ad1a44;
uint256 sub_c83ce46a;
uint256 betMin;
uint256 sub_174add0e;
uint256 sub_05c0608c;
uint256 sub_69167ea2;
uint256 sub_07eb5117;
uint256 sub_2944c810;

function sub_05c0608c(?) {
    return sub_05c0608c
}

function sub_07eb5117(?) {
    return sub_07eb5117
}

function sub_174add0e(?) {
    return sub_174add0e
}

function sub_2944c810(?) {
    return sub_2944c810
}

function sub_69167ea2(?) {
    return sub_69167ea2
}

function sub_70ad1a44(?) {
    return sub_70ad1a44
}

function sub_a12fa955(?) {
    return sub_a12fa955Address
}

function betMin() {
    return betMin
}

function sub_c83ce46a(?) {
    return sub_c83ce46a
}

function sub_4b26b137(?) {
    require calldata.size - 4 >= 64
    if arg1 < sub_05c0608c:
        return 0
    if arg2 < sub_05c0608c:
        return 0
    return 1
}

function sub_e41dea66(?) {
    require calldata.size - 4 >= 288
    require msg.sender == stor0
    sub_a12fa955Address = arg1
    if arg3 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_rollMax has to be large than _rollMin'
    sub_70ad1a44 = arg2
    sub_c83ce46a = arg3
    if arg5 <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_betMax has to be large than _betMin'
    betMin = arg4
    sub_174add0e = arg5
    sub_05c0608c = arg6
    sub_69167ea2 = arg7
    sub_07eb5117 = arg8
    sub_2944c810 = arg9
}

function sub_0f9b9468(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(sub_a12fa955Address)
    staticcall sub_a12fa955Address with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), sub_70ad1a44, sub_c83ce46a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, ext_call.return_data[4 len 28]
}

function sub_606f1646(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length < 6
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 >= 288 and ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 <= test266151307()
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    require 0 < cd[(cd[4] + ('cd', 4)[4] + 4)]
    require ('cd', 4)[1] <= cd[36]
    require ('cd', 4)[1] + cd[68] >= cd[68]
    require ('cd', 4)[1] + cd[100] >= cd[100]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[36] - ('cd', 4)[1]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] = ('cd', 4)[1] + cd[68]
    return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), 
           mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + -cd[(cd[4] + ('cd', 4)[4] + 4)] + 32],
           ('cd', 4)[1] + cd[100]
}

function rate(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require 1 <= arg2
    if not arg1:
        require arg2 - 1 > 0
        require arg2 - 1
        require sub_2944c810 > 0
        require sub_2944c810
        if not 0 / arg2 - 1 / 1000 / sub_2944c810:
            return 0
        require sub_2944c810 * 0 / arg2 - 1 / 1000 / sub_2944c810 / 0 / arg2 - 1 / 1000 / sub_2944c810 == sub_2944c810
        return (sub_2944c810 * 0 / arg2 - 1 / 1000 / sub_2944c810)
    require 985 * arg1 / arg1 == 985
    if not 985 * arg1:
        require arg2 - 1 > 0
        require arg2 - 1
        require sub_2944c810 > 0
        require sub_2944c810
        if not 0 / arg2 - 1 / 1000 / sub_2944c810:
            return 0
        require sub_2944c810 * 0 / arg2 - 1 / 1000 / sub_2944c810 / 0 / arg2 - 1 / 1000 / sub_2944c810 == sub_2944c810
        return (sub_2944c810 * 0 / arg2 - 1 / 1000 / sub_2944c810)
    require 98500 * arg1 / 985 * arg1 == 100
    require arg2 - 1 > 0
    require arg2 - 1
    require sub_2944c810 > 0
    require sub_2944c810
    if not 98500 * arg1 / arg2 - 1 / 1000 / sub_2944c810:
        return 0
    require sub_2944c810 * 98500 * arg1 / arg2 - 1 / 1000 / sub_2944c810 / 98500 * arg1 / arg2 - 1 / 1000 / sub_2944c810 == sub_2944c810
    return (sub_2944c810 * 98500 * arg1 / arg2 - 1 / 1000 / sub_2944c810)
}

function sub_e9895338(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length < 6
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 >= 288 and ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 <= test266151307()
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[320 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 320] = 0
    require sub_69167ea2
    if ('cd', 4)[1] % sub_69167ea2:
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = 701
    else:
        require sub_07eb5117
        if ('cd', 4)[1] % sub_07eb5117:
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = 702
        else:
            require 0 < cd[(cd[4] + ('cd', 4)[4] + 4)]
            if mem[320 len 1] < betMin:
                mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = 703
            else:
                if mem[320 len 1] <= sub_174add0e:
                    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = 0
                else:
                    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = 703
    return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), 
           mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])]
}

function sub_9fff7673(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length < 6
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 >= 288 and ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 <= test266151307()
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[320 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 320] = 0
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require ceil32(('cd', 36).length) + 352 >= 320 and ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(('cd', 36).length) + 352 <= test266151307()
    mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require ext_code.size(sub_a12fa955Address)
    staticcall sub_a12fa955Address with:
            gas gas_remaining wei
           args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]), sub_70ad1a44, sub_c83ce46a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < cd[(cd[4] + ('cd', 4)[4] + 4)]
    require ('cd', 4)[1] <= cd[68]
    require ('cd', 4)[1] + cd[100] >= cd[100]
    if 0, ext_call.return_data[4 len 28] >= mem[320 len 1]:
        require ('cd', 4)[1] + cd[132] >= cd[132]
        return cd[68] - ('cd', 4)[1], ('cd', 4)[1] + cd[100], ('cd', 4)[1] + cd[132]
    require 1 <= mem[320 len 1]
    if not ('cd', 4)[1]:
        require mem[320 len 1] - 1 > 0
        require mem[320 len 1] - 1
        require sub_2944c810 > 0
        require sub_2944c810
        if not 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810:
            require 0 <= ('cd', 4)[1] + cd[100]
            require ('cd', 4)[1] + cd[132] >= cd[132]
            return cd[68] - ('cd', 4)[1], ('cd', 4)[1] + cd[100], ('cd', 4)[1] + cd[132]
        require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
        require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 >= 0
        require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 <= ('cd', 4)[1] + cd[100]
        require ('cd', 4)[1] + cd[132] >= cd[132]
        return (sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810) + cd[68] - ('cd', 4)[1], 
               ('cd', 4)[1] + cd[100] - (sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810),
               ('cd', 4)[1] + cd[132]
    require 985 * ('cd', 4)[1] / ('cd', 4)[1] == 985
    if not 985 * ('cd', 4)[1]:
        require mem[320 len 1] - 1 > 0
        require mem[320 len 1] - 1
        require sub_2944c810 > 0
        require sub_2944c810
        if not 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810:
            require 0 <= ('cd', 4)[1] + cd[100]
            require ('cd', 4)[1] + cd[132] >= cd[132]
            return cd[68] - ('cd', 4)[1], ('cd', 4)[1] + cd[100], ('cd', 4)[1] + cd[132]
        require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
        require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 >= 0
        require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 <= ('cd', 4)[1] + cd[100]
        require ('cd', 4)[1] + cd[132] >= cd[132]
        return (sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810) + cd[68] - ('cd', 4)[1], 
               ('cd', 4)[1] + cd[100] - (sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810),
               ('cd', 4)[1] + cd[132]
    require 98500 * ('cd', 4)[1] / 985 * ('cd', 4)[1] == 100
    require mem[320 len 1] - 1 > 0
    require mem[320 len 1] - 1
    require sub_2944c810 > 0
    require sub_2944c810
    if not 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810:
        require 0 <= ('cd', 4)[1] + cd[100]
        require ('cd', 4)[1] + cd[132] >= cd[132]
        return cd[68] - ('cd', 4)[1], ('cd', 4)[1] + cd[100], ('cd', 4)[1] + cd[132]
    require sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
    require sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 >= 0
    require sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 <= ('cd', 4)[1] + cd[100]
    require ('cd', 4)[1] + cd[132] >= cd[132]
    return (sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810) + cd[68] - ('cd', 4)[1], 
           ('cd', 4)[1] + cd[100] - (sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810),
           ('cd', 4)[1] + cd[132]
}

function sub_5d3c1903(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length < 6
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 >= 288 and ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 <= test266151307()
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[320 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 320] = 0
    require 0 < cd[(cd[4] + ('cd', 4)[4] + 4)]
    _6 = mem[320]
    require ('cd', 4)[1] <= cd[36]
    require ('cd', 4)[1] + cd[68] >= cd[68]
    require 1 <= mem[320 len 1]
    if not ('cd', 4)[1]:
        require mem[320 len 1] - 1 > 0
        require mem[320 len 1] - 1
        require sub_2944c810 > 0
        require sub_2944c810
        if not 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810:
            require 0 <= ('cd', 4)[1] + cd[68]
            require ('cd', 4)[1] + cd[100] >= cd[100]
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[36] - ('cd', 4)[1]
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] = ('cd', 4)[1] + cd[68]
        else:
            require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
            require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 >= 0
            require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 <= ('cd', 4)[1] + cd[68]
            require ('cd', 4)[1] + cd[100] >= cd[100]
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = (sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810) + cd[36] - ('cd', 4)[1]
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] = ('cd', 4)[1] + cd[68] - (sub_2944c810 * 0 / (Mask(8, 248, _6) >> 248) - 1 / 1000 / sub_2944c810)
    else:
        require 985 * ('cd', 4)[1] / ('cd', 4)[1] == 985
        if not 985 * ('cd', 4)[1]:
            require mem[320 len 1] - 1 > 0
            require mem[320 len 1] - 1
            require sub_2944c810 > 0
            require sub_2944c810
            if not 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                require 0 <= ('cd', 4)[1] + cd[68]
                require ('cd', 4)[1] + cd[100] >= cd[100]
                mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[36] - ('cd', 4)[1]
                mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] = ('cd', 4)[1] + cd[68]
            else:
                require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
                require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 >= 0
                require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 <= ('cd', 4)[1] + cd[68]
                require ('cd', 4)[1] + cd[100] >= cd[100]
                mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = (sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810) + cd[36] - ('cd', 4)[1]
                mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] = ('cd', 4)[1] + cd[68] - (sub_2944c810 * 0 / (Mask(8, 248, _6) >> 248) - 1 / 1000 / sub_2944c810)
        else:
            require 98500 * ('cd', 4)[1] / 985 * ('cd', 4)[1] == 100
            require mem[320 len 1] - 1 > 0
            require mem[320 len 1] - 1
            require sub_2944c810 > 0
            require sub_2944c810
            if not 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                require 0 <= ('cd', 4)[1] + cd[68]
                require ('cd', 4)[1] + cd[100] >= cd[100]
                mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[36] - ('cd', 4)[1]
                mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] = ('cd', 4)[1] + cd[68]
            else:
                require sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
                require sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 >= 0
                require sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 <= ('cd', 4)[1] + cd[68]
                require ('cd', 4)[1] + cd[100] >= cd[100]
                mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = (sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810) + cd[36] - ('cd', 4)[1]
                mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 352] = ('cd', 4)[1] + cd[68] - (sub_2944c810 * 98500 * ('cd', 4)[1] / (Mask(8, 248, _6) >> 248) - 1 / 1000 / sub_2944c810)
    return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), 
           mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + -cd[(cd[4] + ('cd', 4)[4] + 4)] + 32],
           ('cd', 4)[1] + cd[100]
}

function sub_3e7de047(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length < 6
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 >= 288 and ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320 <= test266151307()
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[320 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 320] = 0
    require 0 < cd[(cd[4] + ('cd', 4)[4] + 4)]
    require 1 <= mem[320 len 1]
    if cd[36] < sub_05c0608c:
        if not ('cd', 4)[1]:
            require mem[320 len 1] - 1 > 0
            require mem[320 len 1] - 1
            require sub_2944c810 > 0
            require sub_2944c810
            if 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
        else:
            require 985 * ('cd', 4)[1] / ('cd', 4)[1] == 985
            if not 985 * ('cd', 4)[1]:
                require mem[320 len 1] - 1 > 0
                require mem[320 len 1] - 1
                require sub_2944c810 > 0
                require sub_2944c810
                if 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                    require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
            else:
                require 98500 * ('cd', 4)[1] / 985 * ('cd', 4)[1] == 100
                require mem[320 len 1] - 1 > 0
                require mem[320 len 1] - 1
                require sub_2944c810 > 0
                require sub_2944c810
                if 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                    require sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = 0
    else:
        if cd[68] < sub_05c0608c:
            if not ('cd', 4)[1]:
                require mem[320 len 1] - 1 > 0
                require mem[320 len 1] - 1
                require sub_2944c810 > 0
                require sub_2944c810
                if 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                    require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
            else:
                require 985 * ('cd', 4)[1] / ('cd', 4)[1] == 985
                if not 985 * ('cd', 4)[1]:
                    require mem[320 len 1] - 1 > 0
                    require mem[320 len 1] - 1
                    require sub_2944c810 > 0
                    require sub_2944c810
                    if 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                        require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
                else:
                    require 98500 * ('cd', 4)[1] / 985 * ('cd', 4)[1] == 100
                    require mem[320 len 1] - 1 > 0
                    require mem[320 len 1] - 1
                    require sub_2944c810 > 0
                    require sub_2944c810
                    if 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                        require sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = 0
        else:
            if not ('cd', 4)[1]:
                require mem[320 len 1] - 1 > 0
                require mem[320 len 1] - 1
                require sub_2944c810 > 0
                require sub_2944c810
                if not 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                    if cd[36] < ('cd', 4)[1]:
                        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[36] >= ('cd', 4)[1]
                    else:
                        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[68] >= 0
                else:
                    require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
                    if cd[36] < ('cd', 4)[1]:
                        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[36] >= ('cd', 4)[1]
                    else:
                        mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[68] >= sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810
            else:
                require 985 * ('cd', 4)[1] / ('cd', 4)[1] == 985
                if not 985 * ('cd', 4)[1]:
                    require mem[320 len 1] - 1 > 0
                    require mem[320 len 1] - 1
                    require sub_2944c810 > 0
                    require sub_2944c810
                    if not 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                        if cd[36] < ('cd', 4)[1]:
                            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[36] >= ('cd', 4)[1]
                        else:
                            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[68] >= 0
                    else:
                        require sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
                        if cd[36] < ('cd', 4)[1]:
                            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[36] >= ('cd', 4)[1]
                        else:
                            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[68] >= sub_2944c810 * 0 / mem[320 len 1] - 1 / 1000 / sub_2944c810
                else:
                    require 98500 * ('cd', 4)[1] / 985 * ('cd', 4)[1] == 100
                    require mem[320 len 1] - 1 > 0
                    require mem[320 len 1] - 1
                    require sub_2944c810 > 0
                    require sub_2944c810
                    if not 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810:
                        if cd[36] < ('cd', 4)[1]:
                            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[36] >= ('cd', 4)[1]
                        else:
                            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[68] >= 0
                    else:
                        require sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 / 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810 == sub_2944c810
                        if cd[36] < ('cd', 4)[1]:
                            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[36] >= ('cd', 4)[1]
                        else:
                            mem[ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 320] = cd[68] >= sub_2944c810 * 98500 * ('cd', 4)[1] / mem[320 len 1] - 1 / 1000 / sub_2944c810
    return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 32, 0, 0), 
           mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])]
}



}
