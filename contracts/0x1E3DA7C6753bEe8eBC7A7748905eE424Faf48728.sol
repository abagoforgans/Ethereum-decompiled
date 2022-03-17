contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3307]




// =====================  Runtime code  =====================


#
#  - _fallback()
#
array of uint256 stor0;
uint8 stor1;
uint8 stor1; offset 8
array of uint256 stor2;
uint8 stor18;
uint256 stor18;
uint256 stor18; offset 4
uint256 stor18;
uint8 stor19;
uint256 stor19;
uint256 stor19; offset 4
uint256 stor19;
uint8 stor20;
uint256 stor20;
uint256 stor20; offset 4
uint8 stor21;
uint8 stor21; offset 192
uint8 stor21; offset 200
uint8 stor21; offset 208
uint8 stor21; offset 216
uint256 stor21;
uint256 stor21; offset 4
uint256 stor22;
uint8 stor23;
uint8 stor23; offset 8
uint16 stor23;
uint256 stor24;
array of uint256 stor25;
array of uint256 stor26;
array of uint256 stor42;
array of uint256 stor80167465652159884487584418398737133515478493586045375474096367959472086682926;
array of uint256 stor97789825912453899259273410636466998099043528421815129078110847000656284369545;

function init() payable {
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
            require idx + (64 * s) < 512
            stor2[0.03125 / idx + (64 * s)] = uint8(mem[(32 * s) + 96] / 16 xor -(2 * idx + 1) + 64) * 256^(idx + (64 * s) % 32) or !(255 * 256^(idx + (64 * s) % 32)) and stor2[0.03125 / idx + (64 * s)]
            require s < 16
            mem[(32 * s) + 96] = mem[(32 * s) + 96] % 16 xor -(2 * idx + 1) + 64
            s = s + 1
            continue 
        idx = idx + 1
        s = 16
        s = 16 xor -(2 * idx + 1) + 64
        continue 
}

function sub_f69eebfe(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require 30 < arg1.length
    require 29 < arg1.length
    require 1 == uint16((Mask(8, 248, mem[157]) >> 244) + mem[158 len 1])
    require 32 < arg1.length
    require 31 < arg1.length
    uint8(stor1.field_0) = uint8(mem[160 len 1] + (Mask(8, 248, mem[159]) >> 244))
    uint8(stor1.field_8) = 0
    idx = 0
    while idx < 32:
        stor18.field_0 % 16 = 0
        Mask(252, 0, stor18.field_4) = Mask(252, 0, stor18.field_0)
        require idx + 33 < arg1.length
        uint256(stor18.field_0) += mem[idx + 161 len 1]
        stor19.field_0 % 16 = 0
        Mask(252, 0, stor19.field_4) = Mask(252, 0, stor19.field_0)
        require idx + 65 < arg1.length
        uint256(stor19.field_0) += mem[idx + 193 len 1]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 24:
        stor20.field_0 % 16 = 0
        Mask(252, 0, stor20.field_4) = Mask(192, 0, stor20.field_0)
        require idx + 97 < arg1.length
        uint256(stor18.field_0) += mem[idx + 225 len 1]
        stor21.field_0 % 16 = 0
        Mask(252, 0, stor21.field_4) = Mask(192, 0, stor21.field_0)
        require idx + 121 < arg1.length
        uint256(stor19.field_0) += mem[idx + 249 len 1]
        idx = idx + 1
        continue 
    require 147 < arg1.length
    require 146 < arg1.length
    require 145 < arg1.length
    idx = 0
    while idx < uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]):
        require idx + 147 < arg1.length
        require idx < stor0.length
        mem[0] = 0
        stor0[0.03125 / idx] = mem[idx + 275 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor0[0.03125 / idx]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 1 < arg1.length
    require uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216 < arg1.length
    uint8(stor21.field_192) = uint8((Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 128]) >> 244) + mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 129 len 1])
    uint8(stor21.field_200) = 0
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 3 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 2 < arg1.length
    uint8(stor21.field_208) = uint8(mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 131 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 130]) >> 244))
    uint8(stor21.field_216) = 0
    s = 0
    idx = 0
    while idx < 8:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 4 < arg1.length
        s = (16 * s) + mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 132 len 1]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 0:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 12 < arg1.length
        require idx < stor22
        mem[0] = 22
        storD833[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 140 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and storD833[0.03125 / idx]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 13 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 12 < arg1.length
    uint8(stor23.field_0) = uint8(mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 141 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 140]) >> 244))
    uint8(stor23.field_8) = 0
    if uint8(mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 141 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 140]) >> 244)) != 258:
        require 16 == uint16(stor23.field_0)
    idx = 0
    while idx < uint16(stor23.field_0):
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 13 < arg1.length
        require idx < stor24
        mem[0] = 24
        storB13D[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 141 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and storB13D[0.03125 / idx]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + 14 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + 13 < arg1.length
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 15 < arg1.length
        require idx < 512
        stor42[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 143 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor42[0.03125 / idx]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 32:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 527 < arg1.length
        require idx < 32
        stor25[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 655 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor25[0.03125 / idx]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 559 < arg1.length
        require idx < 512
        stor26[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 687 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor26[0.03125 / idx]
        require stor26[0.03125 / idx] / 256^(idx % 32) << 248 == stor2[0.03125 / idx] / 256^(idx % 32) << 248
        idx = idx + 1
        continue 
}

function check(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require 30 < arg1.length
    require 29 < arg1.length
    require 1 == uint16((Mask(8, 248, mem[157]) >> 244) + mem[158 len 1])
    require 32 < arg1.length
    require 31 < arg1.length
    uint8(stor1.field_0) = uint8(mem[160 len 1] + (Mask(8, 248, mem[159]) >> 244))
    uint8(stor1.field_8) = 0
    idx = 0
    while idx < 32:
        stor18.field_0 % 16 = 0
        Mask(252, 0, stor18.field_4) = Mask(252, 0, stor18.field_0)
        require idx + 33 < arg1.length
        uint256(stor18.field_0) += mem[idx + 161 len 1]
        stor19.field_0 % 16 = 0
        Mask(252, 0, stor19.field_4) = Mask(252, 0, stor19.field_0)
        require idx + 65 < arg1.length
        uint256(stor19.field_0) += mem[idx + 193 len 1]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 24:
        stor20.field_0 % 16 = 0
        Mask(252, 0, stor20.field_4) = Mask(192, 0, stor20.field_0)
        require idx + 97 < arg1.length
        uint256(stor18.field_0) += mem[idx + 225 len 1]
        stor21.field_0 % 16 = 0
        Mask(252, 0, stor21.field_4) = Mask(192, 0, stor21.field_0)
        require idx + 121 < arg1.length
        uint256(stor19.field_0) += mem[idx + 249 len 1]
        idx = idx + 1
        continue 
    require 147 < arg1.length
    require 146 < arg1.length
    require 145 < arg1.length
    idx = 0
    while idx < uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]):
        require idx + 147 < arg1.length
        require idx < stor0.length
        mem[0] = 0
        stor0[0.03125 / idx] = mem[idx + 275 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor0[0.03125 / idx]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 1 < arg1.length
    require uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216 < arg1.length
    uint8(stor21.field_192) = uint8((Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 128]) >> 244) + mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 129 len 1])
    uint8(stor21.field_200) = 0
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 3 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 2 < arg1.length
    uint8(stor21.field_208) = uint8(mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 131 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 130]) >> 244))
    uint8(stor21.field_216) = 0
    s = 0
    idx = 0
    while idx < 8:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 4 < arg1.length
        s = (16 * s) + mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 132 len 1]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 0:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 12 < arg1.length
        require idx < stor22
        mem[0] = 22
        storD833[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 140 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and storD833[0.03125 / idx]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 13 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 12 < arg1.length
    uint8(stor23.field_0) = uint8(mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 141 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 140]) >> 244))
    uint8(stor23.field_8) = 0
    if uint8(mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 141 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 140]) >> 244)) != 258:
        require 16 == uint16(stor23.field_0)
    idx = 0
    while idx < uint16(stor23.field_0):
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 13 < arg1.length
        require idx < stor24
        mem[0] = 24
        storB13D[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 141 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and storB13D[0.03125 / idx]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + 14 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + 13 < arg1.length
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 15 < arg1.length
        require idx < 512
        stor42[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 143 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor42[0.03125 / idx]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 32:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 527 < arg1.length
        require idx < 32
        stor25[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 655 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor25[0.03125 / idx]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 559 < arg1.length
        require idx < 512
        stor26[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor23.field_0) + idx + 687 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor26[0.03125 / idx]
        require stor26[0.03125 / idx] / 256^(idx % 32) << 248 == stor2[0.03125 / idx] / 256^(idx % 32) << 248
        idx = idx + 1
        continue 
    return arg1.length
}



}
