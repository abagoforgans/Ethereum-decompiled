contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = 0x8c7996622bb0bafe6cda08f7a575f72b076d8da
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor3 = 0xa5e53e662ca8d66323462a1c6ea57b357898357c20f58fed35e5a86323a27561
    stor4 = 0xe001ecf9650aa0797ee042bfe2de1a92938aac7cdac666255162dd76d7bdd89a
    return code.data[184 len 6434]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - sub_d4e80f98(?)
#  - sub_e9b0f1b2(?)
#
address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
mapping of struct sub_4daf7571;
mapping of struct stor6;
uint256 stor4057;
uint256 stor4057;
uint256 stor4057;

function sub_4daf7571(?) payable {
    return sub_4daf7571[arg1].field_0, sub_4daf7571[arg1].field_256, sub_4daf7571[arg1].field_512, sub_4daf7571[arg1].field_768
}

function kill() payable {
    if stor1 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert 
}

function sub_36fd3d98(?) payable {
    require 0 < stor2
    require 1 < stor2
    require 2 < stor2
    require 3 < stor2
    return stor[code.data[6402 len 32]], stor4057, stor4057, stor4057
}

function sub_d3d8f699(?) payable {
    if msg.sender == stor1:
        require arg1 >= 0
        require arg1 <= 4
        call stor0.0x4be77648 with:
             gas gas_remaining - 25050 wei
            args stor4, arg1
        require ext_call.success
}

function withdraw(uint256 arg1) payable {
    if stor1 != msg.sender:
        return 0
    if 10^18 * arg1 > eth.balance(this.address) - 2 * 10^18:
        return 0
    call stor1 with:
       value 10^18 * arg1 wei
         gas 0 wei
    return bool(ext_call.success)
}

function sub_b4f76e92(?) payable {
    if 0 == sha3(msg.sender):
        if bool(uint8(stor6['buyCardUid'].field_168)) != 1:
            return ''
        if address(stor6['buyCardUid'].field_8) != msg.sender:
            return ''
        mem[928] = stor6['buyCardUid'][1].field_0
        idx = 928
        s = 0
        while stor6['buyCardUid'][1].length + 896 > idx:
            mem[idx + 32] = stor6['buyCardUid'][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6['buyCardUid'][1].length, data=mem[928 len stor6['buyCardUid'][1].length])
    if uint128(sha3(msg.sender)) != 0:
        if uint64(sha3(msg.sender)) != 0:
            if uint32(sha3(msg.sender)) != 0:
                if uint16(sha3(msg.sender)) != 0:
                    if uint8(sha3(msg.sender)) != 0:
                        if bool(uint8(stor6['buyCardUid'][sha3(msg.sender)].field_168)) != 1:
                            return ''
                        if address(stor6['buyCardUid'][sha3(msg.sender)].field_8) != msg.sender:
                            return ''
                        mem[1952] = stor6['buyCardUid'][sha3(msg.sender)][1].field_0
                        idx = 1952
                        s = 0
                        while stor6['buyCardUid'][sha3(msg.sender)][1].length + 1920 > idx:
                            mem[idx + 32] = stor6['buyCardUid'][sha3(msg.sender)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor6['buyCardUid'][sha3(msg.sender)][1].length, data=mem[1952 len stor6['buyCardUid'][sha3(msg.sender)][1].length]), 
                    if bool(uint8(stor6['buyCardUid'][0][0.00390625 / sha3(msg.sender)].field_168)) != 1:
                        return ''
                    if address(stor6['buyCardUid'][0][0.00390625 / sha3(msg.sender)].field_8) != msg.sender:
                        return ''
                    mem[1920] = stor6['buyCardUid'][0][0.00390625 / sha3(msg.sender)][1].field_0
                    idx = 1920
                    s = 0
                    while stor6['buyCardUid'][0][0.00390625 / sha3(msg.sender)][1].length + 1888 > idx:
                        mem[idx + 32] = stor6['buyCardUid'][0][0.00390625 / sha3(msg.sender)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor6['buyCardUid'][0][0.00390625 / sha3(msg.sender)][1].length, data=mem[1920 len stor6['buyCardUid'][0][0.00390625 / sha3(msg.sender)][1].length]), 
                if Mask(8, 16, sha3(msg.sender)) >> 16 != 0:
                    if bool(uint8(stor6['buyCardUid'][0][Mask(240, 16, sha3(msg.sender)) >> 16].field_168)) != 1:
                        return ''
                    if address(stor6['buyCardUid'][0][Mask(240, 16, sha3(msg.sender)) >> 16].field_8) != msg.sender:
                        return ''
                    mem[1888] = stor6['buyCardUid'][0][Mask(240, 16, sha3(msg.sender)) >> 16][1].field_0
                    idx = 1888
                    s = 0
                    while stor6['buyCardUid'][0][Mask(240, 16, sha3(msg.sender)) >> 16][1].length + 1856 > idx:
                        mem[idx + 32] = stor6['buyCardUid'][0][Mask(240, 16, sha3(msg.sender)) >> 16][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor6['buyCardUid'][0][Mask(240, 16, sha3(msg.sender)) >> 16][1].length, data=mem[1888 len stor6['buyCardUid'][0][Mask(240, 16, sha3(msg.sender)) >> 16][1].length]), 
                if bool(uint8(stor6['buyCardUid'][0][Mask(232, 24, sha3(msg.sender)) >> 24].field_168)) != 1:
                    return ''
                if address(stor6['buyCardUid'][0][Mask(232, 24, sha3(msg.sender)) >> 24].field_8) != msg.sender:
                    return ''
                mem[1856] = stor6['buyCardUid'][0][Mask(232, 24, sha3(msg.sender)) >> 24][1].field_0
                idx = 1856
                s = 0
                while stor6['buyCardUid'][0][Mask(232, 24, sha3(msg.sender)) >> 24][1].length + 1824 > idx:
                    mem[idx + 32] = stor6['buyCardUid'][0][Mask(232, 24, sha3(msg.sender)) >> 24][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6['buyCardUid'][0][Mask(232, 24, sha3(msg.sender)) >> 24][1].length, data=mem[1856 len stor6['buyCardUid'][0][Mask(232, 24, sha3(msg.sender)) >> 24][1].length]), 
            if Mask(16, 32, sha3(msg.sender)) >> 32 != 0:
                if Mask(8, 32, sha3(msg.sender)) >> 32 != 0:
                    if bool(uint8(stor6['buyCardUid'][0][Mask(224, 32, sha3(msg.sender)) >> 32].field_168)) != 1:
                        return ''
                    if address(stor6['buyCardUid'][0][Mask(224, 32, sha3(msg.sender)) >> 32].field_8) != msg.sender:
                        return ''
                    mem[1824] = stor6['buyCardUid'][0][Mask(224, 32, sha3(msg.sender)) >> 32][1].field_0
                    idx = 1824
                    s = 0
                    while stor6['buyCardUid'][0][Mask(224, 32, sha3(msg.sender)) >> 32][1].length + 1792 > idx:
                        mem[idx + 32] = stor6['buyCardUid'][0][Mask(224, 32, sha3(msg.sender)) >> 32][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor6['buyCardUid'][0][Mask(224, 32, sha3(msg.sender)) >> 32][1].length, data=mem[1824 len stor6['buyCardUid'][0][Mask(224, 32, sha3(msg.sender)) >> 32][1].length]), 
                if bool(uint8(stor6['buyCardUid'][0][Mask(216, 40, sha3(msg.sender)) >> 40].field_168)) != 1:
                    return ''
                if address(stor6['buyCardUid'][0][Mask(216, 40, sha3(msg.sender)) >> 40].field_8) != msg.sender:
                    return ''
                mem[1792] = stor6['buyCardUid'][0][Mask(216, 40, sha3(msg.sender)) >> 40][1].field_0
                idx = 1792
                s = 0
                while stor6['buyCardUid'][0][Mask(216, 40, sha3(msg.sender)) >> 40][1].length + 1760 > idx:
                    mem[idx + 32] = stor6['buyCardUid'][0][Mask(216, 40, sha3(msg.sender)) >> 40][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6['buyCardUid'][0][Mask(216, 40, sha3(msg.sender)) >> 40][1].length, data=mem[1792 len stor6['buyCardUid'][0][Mask(216, 40, sha3(msg.sender)) >> 40][1].length]), 
            if Mask(8, 48, sha3(msg.sender)) >> 48 != 0:
                if bool(uint8(stor6['buyCardUid'][0][Mask(208, 48, sha3(msg.sender)) >> 48].field_168)) != 1:
                    return ''
                if address(stor6['buyCardUid'][0][Mask(208, 48, sha3(msg.sender)) >> 48].field_8) != msg.sender:
                    return ''
                mem[1760] = stor6['buyCardUid'][0][Mask(208, 48, sha3(msg.sender)) >> 48][1].field_0
                idx = 1760
                s = 0
                while stor6['buyCardUid'][0][Mask(208, 48, sha3(msg.sender)) >> 48][1].length + 1728 > idx:
                    mem[idx + 32] = stor6['buyCardUid'][0][Mask(208, 48, sha3(msg.sender)) >> 48][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6['buyCardUid'][0][Mask(208, 48, sha3(msg.sender)) >> 48][1].length, data=mem[1760 len stor6['buyCardUid'][0][Mask(208, 48, sha3(msg.sender)) >> 48][1].length]), 
            if bool(uint8(stor6['buyCardUid'][0][Mask(200, 56, sha3(msg.sender)) >> 56].field_168)) != 1:
                return ''
            if address(stor6['buyCardUid'][0][Mask(200, 56, sha3(msg.sender)) >> 56].field_8) != msg.sender:
                return ''
            mem[1728] = stor6['buyCardUid'][0][Mask(200, 56, sha3(msg.sender)) >> 56][1].field_0
            idx = 1728
            s = 0
            while stor6['buyCardUid'][0][Mask(200, 56, sha3(msg.sender)) >> 56][1].length + 1696 > idx:
                mem[idx + 32] = stor6['buyCardUid'][0][Mask(200, 56, sha3(msg.sender)) >> 56][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor6['buyCardUid'][0][Mask(200, 56, sha3(msg.sender)) >> 56][1].length, data=mem[1728 len stor6['buyCardUid'][0][Mask(200, 56, sha3(msg.sender)) >> 56][1].length]), 
        if Mask(32, 64, sha3(msg.sender)) >> 64 != 0:
            if Mask(16, 64, sha3(msg.sender)) >> 64 != 0:
                if Mask(8, 64, sha3(msg.sender)) >> 64 != 0:
                    if bool(uint8(stor6['buyCardUid'][0][Mask(192, 64, sha3(msg.sender)) >> 64].field_168)) != 1:
                        return ''
                    if address(stor6['buyCardUid'][0][Mask(192, 64, sha3(msg.sender)) >> 64].field_8) != msg.sender:
                        return ''
                    mem[1696] = stor6['buyCardUid'][0][Mask(192, 64, sha3(msg.sender)) >> 64][1].field_0
                    idx = 1696
                    s = 0
                    while stor6['buyCardUid'][0][Mask(192, 64, sha3(msg.sender)) >> 64][1].length + 1664 > idx:
                        mem[idx + 32] = stor6['buyCardUid'][0][Mask(192, 64, sha3(msg.sender)) >> 64][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor6['buyCardUid'][0][Mask(192, 64, sha3(msg.sender)) >> 64][1].length, data=mem[1696 len stor6['buyCardUid'][0][Mask(192, 64, sha3(msg.sender)) >> 64][1].length]), 
                if bool(uint8(stor6['buyCardUid'][0][Mask(184, 72, sha3(msg.sender)) >> 72].field_168)) != 1:
                    return ''
                if address(stor6['buyCardUid'][0][Mask(184, 72, sha3(msg.sender)) >> 72].field_8) != msg.sender:
                    return ''
                mem[1664] = stor6['buyCardUid'][0][Mask(184, 72, sha3(msg.sender)) >> 72][1].field_0
                idx = 1664
                s = 0
                while stor6['buyCardUid'][0][Mask(184, 72, sha3(msg.sender)) >> 72][1].length + 1632 > idx:
                    mem[idx + 32] = stor6['buyCardUid'][0][Mask(184, 72, sha3(msg.sender)) >> 72][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6['buyCardUid'][0][Mask(184, 72, sha3(msg.sender)) >> 72][1].length, data=mem[1664 len stor6['buyCardUid'][0][Mask(184, 72, sha3(msg.sender)) >> 72][1].length]), 
            if Mask(8, 80, sha3(msg.sender)) >> 80 != 0:
                if bool(uint8(stor6['buyCardUid'][0][Mask(176, 80, sha3(msg.sender)) >> 80].field_168)) != 1:
                    return ''
                if address(stor6['buyCardUid'][0][Mask(176, 80, sha3(msg.sender)) >> 80].field_8) != msg.sender:
                    return ''
                mem[1632] = stor6['buyCardUid'][0][Mask(176, 80, sha3(msg.sender)) >> 80][1].field_0
                idx = 1632
                s = 0
                while stor6['buyCardUid'][0][Mask(176, 80, sha3(msg.sender)) >> 80][1].length + 1600 > idx:
                    mem[idx + 32] = stor6['buyCardUid'][0][Mask(176, 80, sha3(msg.sender)) >> 80][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6['buyCardUid'][0][Mask(176, 80, sha3(msg.sender)) >> 80][1].length, data=mem[1632 len stor6['buyCardUid'][0][Mask(176, 80, sha3(msg.sender)) >> 80][1].length]), 
            if bool(uint8(stor6['buyCardUid'][0][Mask(168, 88, sha3(msg.sender)) >> 88].field_168)) != 1:
                return ''
            if address(stor6['buyCardUid'][0][Mask(168, 88, sha3(msg.sender)) >> 88].field_8) != msg.sender:
                return ''
            mem[1600] = stor6['buyCardUid'][0][Mask(168, 88, sha3(msg.sender)) >> 88][1].field_0
            idx = 1600
            s = 0
            while stor6['buyCardUid'][0][Mask(168, 88, sha3(msg.sender)) >> 88][1].length + 1568 > idx:
                mem[idx + 32] = stor6['buyCardUid'][0][Mask(168, 88, sha3(msg.sender)) >> 88][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor6['buyCardUid'][0][Mask(168, 88, sha3(msg.sender)) >> 88][1].length, data=mem[1600 len stor6['buyCardUid'][0][Mask(168, 88, sha3(msg.sender)) >> 88][1].length]), 
        if Mask(16, 96, sha3(msg.sender)) >> 96 != 0:
            if Mask(8, 96, sha3(msg.sender)) >> 96 != 0:
                if bool(uint8(stor6['buyCardUid'][0][Mask(160, 96, sha3(msg.sender)) >> 96].field_168)) != 1:
                    return ''
                if address(stor6['buyCardUid'][0][Mask(160, 96, sha3(msg.sender)) >> 96].field_8) != msg.sender:
                    return ''
                mem[1568] = stor6['buyCardUid'][0][Mask(160, 96, sha3(msg.sender)) >> 96][1].field_0
                idx = 1568
                s = 0
                while stor6['buyCardUid'][0][Mask(160, 96, sha3(msg.sender)) >> 96][1].length + 1536 > idx:
                    mem[idx + 32] = stor6['buyCardUid'][0][Mask(160, 96, sha3(msg.sender)) >> 96][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6['buyCardUid'][0][Mask(160, 96, sha3(msg.sender)) >> 96][1].length, data=mem[1568 len stor6['buyCardUid'][0][Mask(160, 96, sha3(msg.sender)) >> 96][1].length]), 
            if bool(uint8(stor6['buyCardUid'][0][Mask(152, 104, sha3(msg.sender)) >> 104].field_168)) != 1:
                return ''
            if address(stor6['buyCardUid'][0][Mask(152, 104, sha3(msg.sender)) >> 104].field_8) != msg.sender:
                return ''
            mem[1536] = stor6['buyCardUid'][0][Mask(152, 104, sha3(msg.sender)) >> 104][1].field_0
            idx = 1536
            s = 0
            while stor6['buyCardUid'][0][Mask(152, 104, sha3(msg.sender)) >> 104][1].length + 1504 > idx:
                mem[idx + 32] = stor6['buyCardUid'][0][Mask(152, 104, sha3(msg.sender)) >> 104][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor6['buyCardUid'][0][Mask(152, 104, sha3(msg.sender)) >> 104][1].length, data=mem[1536 len stor6['buyCardUid'][0][Mask(152, 104, sha3(msg.sender)) >> 104][1].length]), 
        if Mask(8, 112, sha3(msg.sender)) >> 112 != 0:
            if bool(uint8(stor6['buyCardUid'][0][Mask(144, 112, sha3(msg.sender)) >> 112].field_168)) != 1:
                return ''
            if address(stor6['buyCardUid'][0][Mask(144, 112, sha3(msg.sender)) >> 112].field_8) != msg.sender:
                return ''
            mem[1504] = stor6['buyCardUid'][0][Mask(144, 112, sha3(msg.sender)) >> 112][1].field_0
            idx = 1504
            s = 0
            while stor6['buyCardUid'][0][Mask(144, 112, sha3(msg.sender)) >> 112][1].length + 1472 > idx:
                mem[idx + 32] = stor6['buyCardUid'][0][Mask(144, 112, sha3(msg.sender)) >> 112][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor6['buyCardUid'][0][Mask(144, 112, sha3(msg.sender)) >> 112][1].length, data=mem[1504 len stor6['buyCardUid'][0][Mask(144, 112, sha3(msg.sender)) >> 112][1].length]), 
        if bool(uint8(stor6['buyCardUid'][0][Mask(136, 120, sha3(msg.sender)) >> 120].field_168)) != 1:
            return ''
        if address(stor6['buyCardUid'][0][Mask(136, 120, sha3(msg.sender)) >> 120].field_8) != msg.sender:
            return ''
        mem[1472] = stor6['buyCardUid'][0][Mask(136, 120, sha3(msg.sender)) >> 120][1].field_0
        idx = 1472
        s = 0
        while stor6['buyCardUid'][0][Mask(136, 120, sha3(msg.sender)) >> 120][1].length + 1440 > idx:
            mem[idx + 32] = stor6['buyCardUid'][0][Mask(136, 120, sha3(msg.sender)) >> 120][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6['buyCardUid'][0][Mask(136, 120, sha3(msg.sender)) >> 120][1].length, data=mem[1472 len stor6['buyCardUid'][0][Mask(136, 120, sha3(msg.sender)) >> 120][1].length]), 
    if Mask(64, 128, sha3(msg.sender)) >> 128 != 0:
        if Mask(32, 128, sha3(msg.sender)) >> 128 != 0:
            if Mask(16, 128, sha3(msg.sender)) >> 128 != 0:
                if Mask(8, 128, sha3(msg.sender)) >> 128 != 0:
                    if bool(uint8(stor6['buyCardUid'][0][Mask(128, 128, sha3(msg.sender)) >> 128].field_168)) != 1:
                        return ''
                    if address(stor6['buyCardUid'][0][Mask(128, 128, sha3(msg.sender)) >> 128].field_8) != msg.sender:
                        return ''
                    mem[1440] = stor6['buyCardUid'][0][Mask(128, 128, sha3(msg.sender)) >> 128][1].field_0
                    idx = 1440
                    s = 0
                    while stor6['buyCardUid'][0][Mask(128, 128, sha3(msg.sender)) >> 128][1].length + 1408 > idx:
                        mem[idx + 32] = stor6['buyCardUid'][0][Mask(128, 128, sha3(msg.sender)) >> 128][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor6['buyCardUid'][0][Mask(128, 128, sha3(msg.sender)) >> 128][1].length, data=mem[1440 len stor6['buyCardUid'][0][Mask(128, 128, sha3(msg.sender)) >> 128][1].length]), 
                if bool(uint8(stor6['buyCardUid'][0][Mask(120, 136, sha3(msg.sender)) >> 136].field_168)) != 1:
                    return ''
                if address(stor6['buyCardUid'][0][Mask(120, 136, sha3(msg.sender)) >> 136].field_8) != msg.sender:
                    return ''
                mem[1408] = stor6['buyCardUid'][0][Mask(120, 136, sha3(msg.sender)) >> 136][1].field_0
                idx = 1408
                s = 0
                while stor6['buyCardUid'][0][Mask(120, 136, sha3(msg.sender)) >> 136][1].length + 1376 > idx:
                    mem[idx + 32] = stor6['buyCardUid'][0][Mask(120, 136, sha3(msg.sender)) >> 136][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6['buyCardUid'][0][Mask(120, 136, sha3(msg.sender)) >> 136][1].length, data=mem[1408 len stor6['buyCardUid'][0][Mask(120, 136, sha3(msg.sender)) >> 136][1].length]), 
            if Mask(8, 144, sha3(msg.sender)) >> 144 != 0:
                if bool(uint8(stor6['buyCardUid'][0][Mask(112, 144, sha3(msg.sender)) >> 144].field_168)) != 1:
                    return ''
                if address(stor6['buyCardUid'][0][Mask(112, 144, sha3(msg.sender)) >> 144].field_8) != msg.sender:
                    return ''
                mem[1376] = stor6['buyCardUid'][0][Mask(112, 144, sha3(msg.sender)) >> 144][1].field_0
                idx = 1376
                s = 0
                while stor6['buyCardUid'][0][Mask(112, 144, sha3(msg.sender)) >> 144][1].length + 1344 > idx:
                    mem[idx + 32] = stor6['buyCardUid'][0][Mask(112, 144, sha3(msg.sender)) >> 144][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6['buyCardUid'][0][Mask(112, 144, sha3(msg.sender)) >> 144][1].length, data=mem[1376 len stor6['buyCardUid'][0][Mask(112, 144, sha3(msg.sender)) >> 144][1].length]), 
            if bool(uint8(stor6['buyCardUid'][0][Mask(104, 152, sha3(msg.sender)) >> 152].field_168)) != 1:
                return ''
            if address(stor6['buyCardUid'][0][Mask(104, 152, sha3(msg.sender)) >> 152].field_8) != msg.sender:
                return ''
            mem[1344] = stor6['buyCardUid'][0][Mask(104, 152, sha3(msg.sender)) >> 152][1].field_0
            idx = 1344
            s = 0
            while stor6['buyCardUid'][0][Mask(104, 152, sha3(msg.sender)) >> 152][1].length + 1312 > idx:
                mem[idx + 32] = stor6['buyCardUid'][0][Mask(104, 152, sha3(msg.sender)) >> 152][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor6['buyCardUid'][0][Mask(104, 152, sha3(msg.sender)) >> 152][1].length, data=mem[1344 len stor6['buyCardUid'][0][Mask(104, 152, sha3(msg.sender)) >> 152][1].length]), 
        if Mask(16, 160, sha3(msg.sender)) >> 160 != 0:
            if Mask(8, 160, sha3(msg.sender)) >> 160 != 0:
                if bool(uint8(stor6['buyCardUid'][0][Mask(96, 160, sha3(msg.sender)) >> 160].field_168)) != 1:
                    return ''
                if address(stor6['buyCardUid'][0][Mask(96, 160, sha3(msg.sender)) >> 160].field_8) != msg.sender:
                    return ''
                mem[1312] = stor6['buyCardUid'][0][Mask(96, 160, sha3(msg.sender)) >> 160][1].field_0
                idx = 1312
                s = 0
                while stor6['buyCardUid'][0][Mask(96, 160, sha3(msg.sender)) >> 160][1].length + 1280 > idx:
                    mem[idx + 32] = stor6['buyCardUid'][0][Mask(96, 160, sha3(msg.sender)) >> 160][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6['buyCardUid'][0][Mask(96, 160, sha3(msg.sender)) >> 160][1].length, data=mem[1312 len stor6['buyCardUid'][0][Mask(96, 160, sha3(msg.sender)) >> 160][1].length]), 
            if bool(uint8(stor6['buyCardUid'][0][Mask(88, 168, sha3(msg.sender)) >> 168].field_168)) != 1:
                return ''
            if address(stor6['buyCardUid'][0][Mask(88, 168, sha3(msg.sender)) >> 168].field_8) != msg.sender:
                return ''
            mem[1280] = stor6['buyCardUid'][0][Mask(88, 168, sha3(msg.sender)) >> 168][1].field_0
            idx = 1280
            s = 0
            while stor6['buyCardUid'][0][Mask(88, 168, sha3(msg.sender)) >> 168][1].length + 1248 > idx:
                mem[idx + 32] = stor6['buyCardUid'][0][Mask(88, 168, sha3(msg.sender)) >> 168][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor6['buyCardUid'][0][Mask(88, 168, sha3(msg.sender)) >> 168][1].length, data=mem[1280 len stor6['buyCardUid'][0][Mask(88, 168, sha3(msg.sender)) >> 168][1].length]), 
        if Mask(8, 176, sha3(msg.sender)) >> 176 != 0:
            if bool(uint8(stor6['buyCardUid'][0][Mask(80, 176, sha3(msg.sender)) >> 176].field_168)) != 1:
                return ''
            if address(stor6['buyCardUid'][0][Mask(80, 176, sha3(msg.sender)) >> 176].field_8) != msg.sender:
                return ''
            mem[1248] = stor6['buyCardUid'][0][Mask(80, 176, sha3(msg.sender)) >> 176][1].field_0
            idx = 1248
            s = 0
            while stor6['buyCardUid'][0][Mask(80, 176, sha3(msg.sender)) >> 176][1].length + 1216 > idx:
                mem[idx + 32] = stor6['buyCardUid'][0][Mask(80, 176, sha3(msg.sender)) >> 176][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor6['buyCardUid'][0][Mask(80, 176, sha3(msg.sender)) >> 176][1].length, data=mem[1248 len stor6['buyCardUid'][0][Mask(80, 176, sha3(msg.sender)) >> 176][1].length]), 
        if bool(uint8(stor6['buyCardUid'][0][Mask(72, 184, sha3(msg.sender)) >> 184].field_168)) != 1:
            return ''
        if address(stor6['buyCardUid'][0][Mask(72, 184, sha3(msg.sender)) >> 184].field_8) != msg.sender:
            return ''
        mem[1216] = stor6['buyCardUid'][0][Mask(72, 184, sha3(msg.sender)) >> 184][1].field_0
        idx = 1216
        s = 0
        while stor6['buyCardUid'][0][Mask(72, 184, sha3(msg.sender)) >> 184][1].length + 1184 > idx:
            mem[idx + 32] = stor6['buyCardUid'][0][Mask(72, 184, sha3(msg.sender)) >> 184][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6['buyCardUid'][0][Mask(72, 184, sha3(msg.sender)) >> 184][1].length, data=mem[1216 len stor6['buyCardUid'][0][Mask(72, 184, sha3(msg.sender)) >> 184][1].length]), 
    if Mask(32, 192, sha3(msg.sender)) >> 192 != 0:
        if Mask(16, 192, sha3(msg.sender)) >> 192 != 0:
            if Mask(8, 192, sha3(msg.sender)) >> 192 != 0:
                if bool(uint8(stor6['buyCardUid'][0][Mask(64, 192, sha3(msg.sender)) >> 192].field_168)) != 1:
                    return ''
                if address(stor6['buyCardUid'][0][Mask(64, 192, sha3(msg.sender)) >> 192].field_8) != msg.sender:
                    return ''
                mem[1184] = stor6['buyCardUid'][0][Mask(64, 192, sha3(msg.sender)) >> 192][1].field_0
                idx = 1184
                s = 0
                while stor6['buyCardUid'][0][Mask(64, 192, sha3(msg.sender)) >> 192][1].length + 1152 > idx:
                    mem[idx + 32] = stor6['buyCardUid'][0][Mask(64, 192, sha3(msg.sender)) >> 192][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6['buyCardUid'][0][Mask(64, 192, sha3(msg.sender)) >> 192][1].length, data=mem[1184 len stor6['buyCardUid'][0][Mask(64, 192, sha3(msg.sender)) >> 192][1].length]), 
            if bool(uint8(stor6['buyCardUid'][0][Mask(56, 200, sha3(msg.sender)) >> 200].field_168)) != 1:
                return ''
            if address(stor6['buyCardUid'][0][Mask(56, 200, sha3(msg.sender)) >> 200].field_8) != msg.sender:
                return ''
            mem[1152] = stor6['buyCardUid'][0][Mask(56, 200, sha3(msg.sender)) >> 200][1].field_0
            idx = 1152
            s = 0
            while stor6['buyCardUid'][0][Mask(56, 200, sha3(msg.sender)) >> 200][1].length + 1120 > idx:
                mem[idx + 32] = stor6['buyCardUid'][0][Mask(56, 200, sha3(msg.sender)) >> 200][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor6['buyCardUid'][0][Mask(56, 200, sha3(msg.sender)) >> 200][1].length, data=mem[1152 len stor6['buyCardUid'][0][Mask(56, 200, sha3(msg.sender)) >> 200][1].length]), 
        if Mask(8, 208, sha3(msg.sender)) >> 208 != 0:
            if bool(uint8(stor6['buyCardUid'][0][Mask(48, 208, sha3(msg.sender)) >> 208].field_168)) != 1:
                return ''
            if address(stor6['buyCardUid'][0][Mask(48, 208, sha3(msg.sender)) >> 208].field_8) != msg.sender:
                return ''
            mem[1120] = stor6['buyCardUid'][0][Mask(48, 208, sha3(msg.sender)) >> 208][1].field_0
            idx = 1120
            s = 0
            while stor6['buyCardUid'][0][Mask(48, 208, sha3(msg.sender)) >> 208][1].length + 1088 > idx:
                mem[idx + 32] = stor6['buyCardUid'][0][Mask(48, 208, sha3(msg.sender)) >> 208][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor6['buyCardUid'][0][Mask(48, 208, sha3(msg.sender)) >> 208][1].length, data=mem[1120 len stor6['buyCardUid'][0][Mask(48, 208, sha3(msg.sender)) >> 208][1].length]), 
        if bool(uint8(stor6['buyCardUid'][0][Mask(40, 216, sha3(msg.sender)) >> 216].field_168)) != 1:
            return ''
        if address(stor6['buyCardUid'][0][Mask(40, 216, sha3(msg.sender)) >> 216].field_8) != msg.sender:
            return ''
        mem[1088] = stor6['buyCardUid'][0][Mask(40, 216, sha3(msg.sender)) >> 216][1].field_0
        idx = 1088
        s = 0
        while stor6['buyCardUid'][0][Mask(40, 216, sha3(msg.sender)) >> 216][1].length + 1056 > idx:
            mem[idx + 32] = stor6['buyCardUid'][0][Mask(40, 216, sha3(msg.sender)) >> 216][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6['buyCardUid'][0][Mask(40, 216, sha3(msg.sender)) >> 216][1].length, data=mem[1088 len stor6['buyCardUid'][0][Mask(40, 216, sha3(msg.sender)) >> 216][1].length]), 
    if Mask(16, 224, sha3(msg.sender)) >> 224 != 0:
        if Mask(8, 224, sha3(msg.sender)) >> 224 != 0:
            if bool(uint8(stor6['buyCardUid'][0][Mask(32, 224, sha3(msg.sender)) >> 224].field_168)) != 1:
                return ''
            if address(stor6['buyCardUid'][0][Mask(32, 224, sha3(msg.sender)) >> 224].field_8) != msg.sender:
                return ''
            mem[1056] = stor6['buyCardUid'][0][Mask(32, 224, sha3(msg.sender)) >> 224][1].field_0
            idx = 1056
            s = 0
            while stor6['buyCardUid'][0][Mask(32, 224, sha3(msg.sender)) >> 224][1].length + 1024 > idx:
                mem[idx + 32] = stor6['buyCardUid'][0][Mask(32, 224, sha3(msg.sender)) >> 224][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor6['buyCardUid'][0][Mask(32, 224, sha3(msg.sender)) >> 224][1].length, data=mem[1056 len stor6['buyCardUid'][0][Mask(32, 224, sha3(msg.sender)) >> 224][1].length]), 
        if bool(uint8(stor6['buyCardUid'][0][Mask(24, 232, sha3(msg.sender)) >> 232].field_168)) != 1:
            return ''
        if address(stor6['buyCardUid'][0][Mask(24, 232, sha3(msg.sender)) >> 232].field_8) != msg.sender:
            return ''
        mem[1024] = stor6['buyCardUid'][0][Mask(24, 232, sha3(msg.sender)) >> 232][1].field_0
        idx = 1024
        s = 0
        while stor6['buyCardUid'][0][Mask(24, 232, sha3(msg.sender)) >> 232][1].length + 992 > idx:
            mem[idx + 32] = stor6['buyCardUid'][0][Mask(24, 232, sha3(msg.sender)) >> 232][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6['buyCardUid'][0][Mask(24, 232, sha3(msg.sender)) >> 232][1].length, data=mem[1024 len stor6['buyCardUid'][0][Mask(24, 232, sha3(msg.sender)) >> 232][1].length]), 
    if Mask(8, 240, sha3(msg.sender)) >> 240 != 0:
        if bool(uint8(stor6['buyCardUid'][0][Mask(16, 240, sha3(msg.sender)) >> 240].field_168)) != 1:
            return ''
        if address(stor6['buyCardUid'][0][Mask(16, 240, sha3(msg.sender)) >> 240].field_8) != msg.sender:
            return ''
        mem[992] = stor6['buyCardUid'][0][Mask(16, 240, sha3(msg.sender)) >> 240][1].field_0
        idx = 992
        s = 0
        while stor6['buyCardUid'][0][Mask(16, 240, sha3(msg.sender)) >> 240][1].length + 960 > idx:
            mem[idx + 32] = stor6['buyCardUid'][0][Mask(16, 240, sha3(msg.sender)) >> 240][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6['buyCardUid'][0][Mask(16, 240, sha3(msg.sender)) >> 240][1].length, data=mem[992 len stor6['buyCardUid'][0][Mask(16, 240, sha3(msg.sender)) >> 240][1].length]), 
    if bool(uint8(stor6['buyCardUid'][0][Mask(8, 248, sha3(msg.sender)) >> 248].field_168)) != 1:
        return ''
    if address(stor6['buyCardUid'][0][Mask(8, 248, sha3(msg.sender)) >> 248].field_8) != msg.sender:
        return ''
    mem[960] = stor6['buyCardUid'][0][Mask(8, 248, sha3(msg.sender)) >> 248][1].field_0
    idx = 960
    s = 0
    while stor6['buyCardUid'][0][Mask(8, 248, sha3(msg.sender)) >> 248][1].length + 928 > idx:
        mem[idx + 32] = stor6['buyCardUid'][0][Mask(8, 248, sha3(msg.sender)) >> 248][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor6['buyCardUid'][0][Mask(8, 248, sha3(msg.sender)) >> 248][1].length, data=mem[960 len stor6['buyCardUid'][0][Mask(8, 248, sha3(msg.sender)) >> 248][1].length]), 
}



}
