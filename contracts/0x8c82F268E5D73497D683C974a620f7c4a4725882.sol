contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function _fallback() payable {
    stor0 = 10^15
    stor12 = 2
    stor16 = 2
    stor20 = 2
    stor14 = 0
    stor18 = 1
    stor19 = 0
    stor17 = 1
    stor15 = 0
    stor13 = 1
    stor9 = 0
    stor11 = 0
    return code.data[87 len 5442]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of address stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint8 stor4;
address stor5;
uint256 stor7;
uint8 stor8;
uint256 num_players;
uint256 sub_6563079b;
uint256 stor11; offset 1
uint256 reward;
uint256 sub_fd77fdfb;
uint256 sub_cb8a9a5f;
uint256 winner;
uint256 sub_fd140e76;
uint256 sub_0de78f53;
address sub_0c2141c4Address;
uint256 stor26;
uint256 sub_52f62631;
uint256 sub_c42dff7e;
uint256 sub_53bfd0e9;
uint256 sub_e8223650;
uint256 sub_b1936aa4;
uint256 sub_6ba04322;
uint256 sub_ea448c55;
uint256 sub_cfb3ec31;
uint256 sub_d8a6203b;
uint256 sub_04b52931;
uint256 sub_6335ec5b;
uint256 sub_9e7bd827;
uint256 sub_c57f10c7;
array of uint8 stor40;
array of uint256 stor41;
uint128 sub_ffa82af2;
array of uint256 sub_603277c5;

function sub_04b52931(?) payable {
    return sub_04b52931
}

function sub_0c2141c4(?) payable {
    return address(sub_0c2141c4Address)
}

function sub_0de78f53(?) payable {
    return sub_0de78f53
}

function reward() payable {
    return reward
}

function num_players() payable {
    return num_players
}

function sub_52f62631(?) payable {
    return sub_52f62631
}

function sub_53bfd0e9(?) payable {
    return sub_53bfd0e9
}

function sub_603277c5(?) payable {
    return uint256(sub_603277c5[0 len sub_603277c5.length].field_0)
}

function sub_6335ec5b(?) payable {
    return sub_6335ec5b
}

function sub_6563079b(?) payable {
    return sub_6563079b
}

function sub_6ba04322(?) payable {
    return sub_6ba04322
}

function sub_9e7bd827(?) payable {
    return sub_9e7bd827
}

function sub_b1936aa4(?) payable {
    return sub_b1936aa4
}

function sub_c42dff7e(?) payable {
    return sub_c42dff7e
}

function sub_c57f10c7(?) payable {
    return sub_c57f10c7
}

function sub_cb8a9a5f(?) payable {
    return sub_cb8a9a5f
}

function sub_cfb3ec31(?) payable {
    return sub_cfb3ec31
}

function sub_d8a6203b(?) payable {
    return sub_d8a6203b
}

function winner() payable {
    return winner
}

function sub_e8223650(?) payable {
    return sub_e8223650
}

function sub_ea448c55(?) payable {
    return sub_ea448c55
}

function sub_ee76be97(?) payable {
    require arg1 < 3
    require arg2 < 3
    return uint256(stor[arg2 + (3 * arg1) + 12].field_0)
}

function sub_fd140e76(?) payable {
    return sub_fd140e76
}

function sub_fd77fdfb(?) payable {
    return sub_fd77fdfb
}

function sub_ffa82af2(?) payable {
    return sub_ffa82af2
}

function _fallback() payable {
  stop
}

function sub_ad5f32c7(?) payable {
    require arg1 < 32
    return (uint256(stor41[0.03125 / arg1]) / 256^(arg1 % 32) << 248)
}

function player(uint256 arg1) payable {
    require arg1 < 2
    return address(stor1[arg1]), stor2[arg1], stor3[arg1], stor4[arg1]
}

function sub_1bb95617(?) payable {
    require arg1 < 10
    return (uint256(stor40[0.03125 / arg1].field_0) / 256^(arg1 % 32) << 248)
}

function sub_986588c1(?) payable {
    sub_52f62631 = sha3(arg1)
    sub_53bfd0e9 = sha3(arg2)
    sub_e8223650 = sha3(arg3)
    sub_b1936aa4 = sha3(0x3770943f442a0bb4e34862653f93e5615dcf7887)
    sub_6ba04322 = sha3('0x3770943f442a0bb4e34862653f93e5', '615dcf7887')
    sub_ea448c55 = sha3('3770943f442a0bb4e34862653f93e561', '5dcf7887')
    sub_cfb3ec31 = sha3(arg4)
    sub_d8a6203b = sha3(arg5[all])
    sub_04b52931 = sha3(arg6[all])
    sub_6335ec5b = sha3(arg2, arg1)
    sub_9e7bd827 = sha3(arg3, arg1)
    sub_c57f10c7 = sha3(arg5[all])
}

function sub_8bd1762b(?) payable {
    if num_players >= 2:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        sub_fd77fdfb = -1
    else:
        if msg.value < stor0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            sub_fd77fdfb = -1
        else:
            reward += msg.value
            require num_players < 2
            uint256(stor1[stor9]) = msg.sender or Mask(96, 160, uint256(stor1[stor9]))
            stor2[stor9] = arg1
            num_players++
            if msg.value - stor0 > 0:
                call msg.sender with:
                   value msg.value - stor0 wei
                     gas 0 wei
                reward = reward - msg.value + stor0
            sub_fd77fdfb = 0
}

function finalize() payable {
    if stor4.length:
        if stor8:
            require stor3.length < 3
            require stor7 < 3
            if 0 == uint256(stor[stor7 + (3 * stor3.length) + 12].field_0):
                call address(stor1.length) with:
                   value reward wei
                     gas 0 wei
                winner = 0
            else:
                require stor3.length < 3
                require stor7 < 3
                if 1 == uint256(stor[stor7 + (3 * stor3.length) + 12].field_0):
                    call stor5 with:
                       value reward wei
                         gas 0 wei
                    winner = 1
                else:
                    call address(stor1.length) with:
                       value stor11 wei
                         gas 0 wei
                    call stor5 with:
                       value stor11 wei
                         gas 0 wei
                    winner = 2
}

function addressHash(address arg1) payable {
    s = 0
    idx = 0
    t = arg1
    while idx < 32:
        require -idx + 31 < 32
        if t % 16 >= 10:
            uint256(stor41[0.03125 / -idx + 31]) = uint8((t % 16) + 87) * 256^(-idx + 31 % 32) or !(255 * 256^(-idx + 31 % 32)) and uint256(stor41[0.03125 / -idx + 31])
        else:
            uint256(stor41[0.03125 / -idx + 31]) = uint8((t % 16) + 48) * 256^(-idx + 31 % 32) or !(255 * 256^(-idx + 31 % 32)) and uint256(stor41[0.03125 / -idx + 31])
        s = t % 16
        idx = idx + 1
        t = t / 16
        continue 
    u = s
    idx = 0
    u = t
    while idx < 8:
        require -idx + 9 < 10
        if u % 16 >= 10:
            uint256(stor40[0.03125 / -idx + 9].field_0) = uint8((u % 16) + 87) * 256^(-idx + 9 % 32) or !(255 * 256^(-idx + 9 % 32)) and uint256(stor40[0.03125 / -idx + 9].field_0)
        else:
            uint256(stor40[0.03125 / -idx + 9].field_0) = uint8((u % 16) + 48) * 256^(-idx + 9 % 32) or !(255 * 256^(-idx + 9 % 32)) and uint256(stor40[0.03125 / -idx + 9].field_0)
        u = u % 16
        idx = idx + 1
        u = u / 16
        continue 
    uint8(stor40.length) = 48
    uint8(stor40.length.field_8) = 120
    stor40.length.field_256 % 1 = 0
    idx = 96
    s = 0
    while 416 > idx + 32:
        mem[idx + 32] = stor40.length / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 416
    s = 0
    while 1440 > idx + 32:
        mem[idx + 32] = stor41.length / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return sha3(uint8(stor40.length), mem[128 len 288], uint8(stor41.length), mem[448 len 992])
}

function sub_4d701ad2(?) payable {
    s = 0
    idx = 0
    s = 930124863
    while idx < 8:
        require -idx + 9 < 10
        if s % 16 >= 10:
            uint256(stor40[0.03125 / -idx + 9].field_0) = uint8((s % 16) + 87) * 256^(-idx + 9 % 32) or !(255 * 256^(-idx + 9 % 32)) and uint256(stor40[0.03125 / -idx + 9].field_0)
        else:
            uint256(stor40[0.03125 / -idx + 9].field_0) = uint8((s % 16) + 48) * 256^(-idx + 9 % 32) or !(255 * 256^(-idx + 9 % 32)) and uint256(stor40[0.03125 / -idx + 9].field_0)
        s = s % 16
        idx = idx + 1
        s = s / 16
        continue 
    uint8(stor40.length) = 120
    uint8(stor40.length.field_8) = 48
    stor40.length.field_256 % 1 = 0
    bool(sub_603277c5.length) = 0
    uint255(sub_603277c5.length.field_1) = 20
    Mask(248, 0, sub_603277c5.length.field_8) = mem[128 len 31]
    idx = 0
    while sub_603277c5.length + 31 / 32 > idx:
        uint256(sub_603277c5[idx].field_0) = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < 10:
        require idx < sub_603277c5.length
        if not bool(sub_603277c5.length):
            sub_603277c5.length = uint8(stor40[uint8(idx)].field_0) * 256^(-idx + 31) or !(255 * 256^(-idx + 31)) and sub_603277c5.length
        else:
            mem[0] = 43
            uint256(stor[code.data[5410 len 32] + (0.03125 / idx)].field_0) = uint8(stor40[uint8(idx)].field_0) * 256^(-(idx % 32) + 31) or !(255 * 256^(-(idx % 32) + 31)) and uint256(stor[code.data[5410 len 32] + (0.03125 / idx)].field_0)
        idx = idx + 1
        continue 
    idx = 768
    s = 0
    while 1088 > idx + 32:
        mem[idx + 32] = stor40.length / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    sub_52f62631 = sha3(uint8(stor40.length), mem[800 len 288])
}

function open(uint256 arg1, uint256 arg2) payable {
    if num_players != 2:
        sub_cb8a9a5f = -1
    if msg.sender == address(stor1.length):
        sub_6563079b = 0
        uint256(stor26) = msg.sender or Mask(96, 160, uint256(stor26))
        sub_fd140e76 = arg1
        sub_0de78f53 = arg2
        sub_52f62631 = sha3(msg.sender, arg1, arg2)
        sub_53bfd0e9 = sha3(msg.sender)
        sub_e8223650 = sha3(msg.sender, arg1)
        sub_b1936aa4 = sha3(msg.sender, 1)
        sub_6ba04322 = sha3(msg.sender, '1')
        require sub_6563079b < 2
        sub_c42dff7e = stor2[stor10]
        if sha3(msg.sender, arg1, arg2) != stor2[stor10]:
            sub_cb8a9a5f = -1
        else:
            require sub_6563079b < 2
            if stor4[stor10]:
                sub_cb8a9a5f = -1
            else:
                require sub_6563079b < 2
                stor3[stor10] = arg1
                stor4[stor10] = 1
                sub_cb8a9a5f = 0
    else:
        if stor5 != msg.sender:
            sub_cb8a9a5f = -1
        else:
            sub_6563079b = 1
            uint256(stor26) = msg.sender or Mask(96, 160, uint256(stor26))
            sub_fd140e76 = arg1
            sub_0de78f53 = arg2
            sub_52f62631 = sha3(msg.sender, arg1, arg2)
            sub_53bfd0e9 = sha3(msg.sender)
            sub_e8223650 = sha3(msg.sender, arg1)
            sub_b1936aa4 = sha3(msg.sender, 1)
            sub_6ba04322 = sha3(msg.sender, '1')
            require sub_6563079b < 2
            sub_c42dff7e = stor2[stor10]
            if sha3(msg.sender, arg1, arg2) != stor2[stor10]:
                sub_cb8a9a5f = -1
            else:
                require sub_6563079b < 2
                if stor4[stor10]:
                    sub_cb8a9a5f = -1
                else:
                    require sub_6563079b < 2
                    stor3[stor10] = arg1
                    stor4[stor10] = 1
                    sub_cb8a9a5f = 0
}

function sub_0c1766c9(?) payable {
    s = 0
    idx = 0
    s = 930124863
    while idx < 8:
        require -idx + 9 < 10
        if s % 16 >= 10:
            uint256(stor40[0.03125 / -idx + 9].field_0) = uint8((s % 16) + 87) * 256^(-idx + 9 % 32) or !(255 * 256^(-idx + 9 % 32)) and uint256(stor40[0.03125 / -idx + 9].field_0)
        else:
            uint256(stor40[0.03125 / -idx + 9].field_0) = uint8((s % 16) + 48) * 256^(-idx + 9 % 32) or !(255 * 256^(-idx + 9 % 32)) and uint256(stor40[0.03125 / -idx + 9].field_0)
        s = s % 16
        idx = idx + 1
        s = s / 16
        continue 
    uint8(stor40.length) = 48
    uint8(stor40.length.field_8) = 120
    stor40.length.field_256 % 1 = 0
    bool(sub_603277c5.length) = 0
    uint255(sub_603277c5.length.field_1) = 20
    Mask(248, 0, sub_603277c5.length.field_8) = mem[128 len 31]
    idx = 0
    while sub_603277c5.length + 31 / 32 > idx:
        uint256(sub_603277c5[idx].field_0) = 0
        idx = idx + 1
        continue 
    require 6 < sub_603277c5.length
    if not bool(sub_603277c5.length):
        uint8(sub_603277c5.length.field_200) = 7
    else:
        uint8(stor[code.data[5410 len 32]].field_200) = 7
    require 0 < sub_603277c5.length
    if not bool(sub_603277c5.length):
        uint8(sub_603277c5.length.field_248) = 1
    else:
        uint8(stor[code.data[5410 len 32]].field_248) = 1
    require 1 < sub_603277c5.length
    if not bool(sub_603277c5.length):
        uint8(sub_603277c5.length.field_240) = 2
    else:
        uint8(stor[code.data[5410 len 32]].field_240) = 2
    require 2 < sub_603277c5.length
    if not bool(sub_603277c5.length):
        uint8(sub_603277c5.length.field_232) = 3
    else:
        uint8(stor[code.data[5410 len 32]].field_232) = 3
    require 3 < sub_603277c5.length
    if not bool(sub_603277c5.length):
        uint8(sub_603277c5.length.field_224) = 4
    else:
        uint8(stor[code.data[5410 len 32]].field_224) = 4
    require 4 < sub_603277c5.length
    if not bool(sub_603277c5.length):
        uint8(sub_603277c5.length.field_216) = 5
    else:
        uint8(stor[code.data[5410 len 32]].field_216) = 5
    require 5 < sub_603277c5.length
    if not bool(sub_603277c5.length):
        uint8(sub_603277c5.length.field_208) = 6
    else:
        uint8(stor[code.data[5410 len 32]].field_208) = 6
}

function sub_3ffe4585(?) payable {
    s = 0
    idx = 0
    t = 0x3770943f442a0bb4e34862653f93e5615dcf7887
    while idx < 32:
        require -idx + 31 < 32
        if t % 16 >= 10:
            uint256(stor41[0.03125 / -idx + 31]) = uint8((t % 16) + 87) * 256^(-idx + 31 % 32) or !(255 * 256^(-idx + 31 % 32)) and uint256(stor41[0.03125 / -idx + 31])
        else:
            uint256(stor41[0.03125 / -idx + 31]) = uint8((t % 16) + 48) * 256^(-idx + 31 % 32) or !(255 * 256^(-idx + 31 % 32)) and uint256(stor41[0.03125 / -idx + 31])
        s = t % 16
        idx = idx + 1
        t = t / 16
        continue 
    u = s
    idx = 0
    u = t
    while idx < 8:
        require -idx + 9 < 10
        if u % 16 >= 10:
            uint256(stor40[0.03125 / -idx + 9].field_0) = uint8((u % 16) + 87) * 256^(-idx + 9 % 32) or !(255 * 256^(-idx + 9 % 32)) and uint256(stor40[0.03125 / -idx + 9].field_0)
        else:
            uint256(stor40[0.03125 / -idx + 9].field_0) = uint8((u % 16) + 48) * 256^(-idx + 9 % 32) or !(255 * 256^(-idx + 9 % 32)) and uint256(stor40[0.03125 / -idx + 9].field_0)
        u = u % 16
        idx = idx + 1
        u = u / 16
        continue 
    uint8(stor40.length) = 48
    uint8(stor40.length.field_8) = 120
    stor40.length.field_256 % 1 = 0
    idx = 96
    s = 0
    while 416 > idx + 32:
        mem[idx + 32] = stor40.length / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 416
    s = 0
    while 1440 > idx + 32:
        mem[idx + 32] = stor41.length / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    sub_e8223650 = sha3(uint8(stor40.length), mem[128 len 288], uint8(stor41.length), mem[448 len 992])
    s = 0
    idx = 0
    t = address(msg.sender)
    while idx < 32:
        require -idx + 31 < 32
        if t % 16 >= 10:
            uint256(stor41[0.03125 / -idx + 31]) = uint8((t % 16) + 87) * 256^(-idx + 31 % 32) or !(255 * 256^(-idx + 31 % 32)) and uint256(stor41[0.03125 / -idx + 31])
        else:
            uint256(stor41[0.03125 / -idx + 31]) = uint8((t % 16) + 48) * 256^(-idx + 31 % 32) or !(255 * 256^(-idx + 31 % 32)) and uint256(stor41[0.03125 / -idx + 31])
        s = t % 16
        idx = idx + 1
        t = t / 16
        continue 
    u = s
    idx = 0
    u = t
    while idx < 8:
        require -idx + 9 < 10
        if u % 16 >= 10:
            uint256(stor40[0.03125 / -idx + 9].field_0) = uint8((u % 16) + 87) * 256^(-idx + 9 % 32) or !(255 * 256^(-idx + 9 % 32)) and uint256(stor40[0.03125 / -idx + 9].field_0)
        else:
            uint256(stor40[0.03125 / -idx + 9].field_0) = uint8((u % 16) + 48) * 256^(-idx + 9 % 32) or !(255 * 256^(-idx + 9 % 32)) and uint256(stor40[0.03125 / -idx + 9].field_0)
        u = u % 16
        idx = idx + 1
        u = u / 16
        continue 
    uint8(stor40.length) = 48
    uint8(stor40.length.field_8) = 120
    stor40.length.field_256 % 1 = 0
    idx = 96
    s = 0
    while 416 > idx + 32:
        mem[idx + 32] = stor40.length / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 416
    s = 0
    while 1440 > idx + 32:
        mem[idx + 32] = stor41.length / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    sub_b1936aa4 = sha3(uint8(stor40.length), mem[128 len 288], uint8(stor41.length), mem[448 len 992])
}



}
