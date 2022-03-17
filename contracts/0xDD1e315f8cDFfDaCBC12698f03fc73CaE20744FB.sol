contract main {


// =======================  Init code  ======================


function _fallback() payable {
    mem[96] = 0xc8ce03c373f0f5ab923057f41cb806fd241cc92aa30a0271a5c3b4a2d10c4a76
    mem[128] = 0x85aaecb93414795c8c83422085e993d1b04c9c4f0ebd564110d606b6849f90c2
    mem[160] = 0xf30f7eecec3445664b22fea76efbfebac1b6a2194bdaf0dd94918c70ee8a682e
    mem[192] = 0xf0c2c0ad41530719df66c5a17e2b2c7d814485290adf5efc8f93767bfbb207d8
    mem[224] = 0xa7d4a5bb733ae8fe4c6a378349c2244abce268c980c2af78c677ed47cdd63877
    mem[256] = 0x244d1c16d73d0d909106782e13d99b76edf54e88e96a6cdfd1735fdf0a93abd7
    mem[288] = 0x497d6c8091b31b4178836c2a893210fcced44a395987dd409f3519114f97d2c
    mem[320] = 0x1c139bf4c2ed4c34c8dbe318360f58aa24b86d7abbe04dbc7ed48f5d1e8f853a
    mem[352] = 0x63a9dee11a1ddf161bf75ce1fd7cb94d76750053a91cd916c8446d11c658cba3
    mem[384] = 0x2103b8ec2baa33e193ff4e299ac508ab51fd86976b441742075196056eb88a16
    mem[416] = 0x892ed19827e37d6aa183f0295241df81ac5a1abd9ef042f4fdf6a742aad114a2
    mem[448] = 0xd2f56ec1ac18bc1217cf0a5354fa6095907eed2dc29aa391eb1e29ebd3a2c9d7
    mem[480] = 0x43a66853c2ba68f51bb07488c4c7892f8366aaa197ef1a16a676c6c7b0a58b4
    mem[512] = 0xd0db35226ace60376c18ee7ec26b58204db41d49c10d7b63e5dbc5aff446086e
    mem[544] = 0x71827e086d4ad8cb3d1a92c3e4f01996ad2f7b6c5e6a720dd4c3f6182a8af57a
    mem[576] = 0x3f705dc9ae681e0e7012d6508b3ae0d7b90c45cbce703ae7ab759fd649ad2c9b
    idx = 0
    s = 0
    s = 0
    while idx < 32:
        s = 0
        while s < 16:
            require (64 * s) + idx < 512
            stor[0.03125 / (64 * s) + idx] = uint8(mem[(32 * s) + 96] / 16 xor -(2 * idx + 1) + 64) * 256^((64 * s) + idx % 32) or !(255 * 256^((64 * s) + idx % 32)) and stor[0.03125 / (64 * s) + idx]
            require s < 16
            mem[(32 * s) + 96] = mem[(32 * s) + 96] % 16 xor -(2 * idx + 1) + 64
            s = s + 1
            continue 
        idx = idx + 1
        s = 16
        s = 16 xor -(2 * idx + 1) + 64
        continue 
    return code.data[1308 len 3415]
}



// =====================  Runtime code  =====================


#
#  - check(bytes arg1)
#
function sub_f69eebfe(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224 len 16352] = 0
    mem[ceil32(arg1.length) + 16576] = 0
    mem[ceil32(arg1.length) + 16608 len 992] = 0
    mem[ceil32(arg1.length) + 17600] = 0
    mem[ceil32(arg1.length) + 17632 len 16352] = 0
    require 30 < arg1.length
    require 29 < arg1.length
    require uint16((Mask(8, 248, mem[157]) >> 244) + mem[158 len 1]) == 1
    require 32 < arg1.length
    require 31 < arg1.length
    require 147 < arg1.length
    _16 = mem[275]
    require 146 < arg1.length
    _18 = mem[274]
    require 145 < arg1.length
    _20 = mem[273]
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 3 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 2 < arg1.length
    s = 0
    idx = 0
    while idx < 8:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 4 < arg1.length
        s = (16 * s) + mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 132 len 1]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 0:
        require (uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + idx + 12 < arg1.length
        require idx < 0
        mem[(32 * idx) + ceil32(arg1.length) + 160] = Mask(8, 248, mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + idx + 140])
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + 13 < arg1.length
    _56 = mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + 141]
    require (uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + 12 < arg1.length
    _60 = mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + 140]
    if uint8((Mask(8, 248, mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + 140]) >> 244) + mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + 141 len 1]) != 258:
        require uint8((Mask(8, 248, mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + 140]) >> 244) + mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + 141 len 1]) == 16
    idx = 0
    while idx < uint8((Mask(8, 248, _60) >> 244) + (Mask(8, 248, _56) >> 248)):
        require (uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + idx + 13 < arg1.length
        require idx < mem[ceil32(arg1.length) + 160]
        mem[(32 * idx) + ceil32(arg1.length) + 192] = Mask(8, 248, mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + idx + 141])
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _60) >> 244) + (Mask(8, 248, _56) >> 248)) + 14 < arg1.length
    require (uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _60) >> 244) + (Mask(8, 248, _56) >> 248)) + 13 < arg1.length
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _60) >> 244) + (Mask(8, 248, _56) >> 248)) + idx + 15 < arg1.length
        require idx < 512
        mem[(32 * idx) + ceil32(arg1.length) + 192] = Mask(8, 248, mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _60) >> 244) + (Mask(8, 248, _56) >> 248)) + idx + 143])
        idx = idx + 1
        continue 
    idx = 0
    while idx < 32:
        require (uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _60) >> 244) + (Mask(8, 248, _56) >> 248)) + idx + 527 < arg1.length
        require idx < 32
        mem[(32 * idx) + ceil32(arg1.length) + 16576] = Mask(8, 248, mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _60) >> 244) + (Mask(8, 248, _56) >> 248)) + idx + 655])
        idx = idx + 1
        continue 
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _60) >> 244) + (Mask(8, 248, _56) >> 248)) + idx + 559 < arg1.length
        require idx < 512
        mem[(32 * idx) + ceil32(arg1.length) + 17600] = Mask(8, 248, mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _60) >> 244) + (Mask(8, 248, _56) >> 248)) + idx + 687])
        require Mask(8, 248, mem[(uint16((Mask(8, 248, _20) >> 240) + (Mask(4, 248, _18) >> 244) + (Mask(8, 248, _16) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _60) >> 244) + (Mask(8, 248, _56) >> 248)) + idx + 687]) == stor[0.03125 / idx] / 256^(idx % 32) << 248
        idx = idx + 1
        continue 
}

function _fallback() payable {
    mem[160 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 160] = 0
    mem[ceil32(calldata.size) + 192] = 0
    mem[ceil32(calldata.size) + 224] = 0
    mem[ceil32(calldata.size) + 256 len 16352] = 0
    mem[ceil32(calldata.size) + 16608] = 0
    mem[ceil32(calldata.size) + 16640 len 992] = 0
    mem[ceil32(calldata.size) + 17632] = 0
    mem[ceil32(calldata.size) + 17664 len 16352] = 0
    require 30 < calldata.size
    require 29 < calldata.size
    require uint16((Mask(8, 248, mem[189]) >> 244) + mem[190 len 1]) == 1
    require 32 < calldata.size
    require 31 < calldata.size
    require 147 < calldata.size
    _17 = mem[307]
    require 146 < calldata.size
    _19 = mem[306]
    require 145 < calldata.size
    _21 = mem[305]
    require (uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + 3 < calldata.size
    require (uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + 2 < calldata.size
    s = 0
    idx = 0
    while idx < 8:
        require (uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + idx + 4 < calldata.size
        s = (16 * s) + mem[(uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + idx + 164 len 1]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 0:
        require (uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + idx + 12 < calldata.size
        require idx < 0
        mem[(32 * idx) + ceil32(calldata.size) + 192] = Mask(8, 248, mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + idx + 172])
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + 13 < calldata.size
    _57 = mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + 173]
    require (uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + 12 < calldata.size
    _61 = mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + 172]
    if uint8((Mask(8, 248, mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + 172]) >> 244) + mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + 173 len 1]) != 258:
        require uint8((Mask(8, 248, mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + 172]) >> 244) + mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + 173 len 1]) == 16
    idx = 0
    while idx < uint8((Mask(8, 248, _61) >> 244) + (Mask(8, 248, _57) >> 248)):
        require (uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + idx + 13 < calldata.size
        require idx < mem[ceil32(calldata.size) + 192]
        mem[(32 * idx) + ceil32(calldata.size) + 224] = Mask(8, 248, mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + idx + 173])
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _61) >> 244) + (Mask(8, 248, _57) >> 248)) + 14 < calldata.size
    require (uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _61) >> 244) + (Mask(8, 248, _57) >> 248)) + 13 < calldata.size
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _61) >> 244) + (Mask(8, 248, _57) >> 248)) + idx + 15 < calldata.size
        require idx < 512
        mem[(32 * idx) + ceil32(calldata.size) + 224] = Mask(8, 248, mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _61) >> 244) + (Mask(8, 248, _57) >> 248)) + idx + 175])
        idx = idx + 1
        continue 
    idx = 0
    while idx < 32:
        require (uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _61) >> 244) + (Mask(8, 248, _57) >> 248)) + idx + 527 < calldata.size
        require idx < 32
        mem[(32 * idx) + ceil32(calldata.size) + 16608] = Mask(8, 248, mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _61) >> 244) + (Mask(8, 248, _57) >> 248)) + idx + 687])
        idx = idx + 1
        continue 
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _61) >> 244) + (Mask(8, 248, _57) >> 248)) + idx + 559 < calldata.size
        require idx < 512
        mem[(32 * idx) + ceil32(calldata.size) + 17632] = Mask(8, 248, mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _61) >> 244) + (Mask(8, 248, _57) >> 248)) + idx + 719])
        require Mask(8, 248, mem[(uint16((Mask(8, 248, _21) >> 240) + (Mask(4, 248, _19) >> 244) + (Mask(8, 248, _17) >> 248)) + 147 % 16777216) + uint8((Mask(8, 248, _61) >> 244) + (Mask(8, 248, _57) >> 248)) + idx + 719]) == stor[0.03125 / idx] / 256^(idx % 32) << 248
        idx = idx + 1
        continue 
}



}
