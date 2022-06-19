contract main {




// =====================  Runtime code  =====================


#
#  - sub_1630a99a(?)
#  - sub_26dfad24(?)
#  - sub_5661f208(?)
#  - sub_5dc3733f(?)
#  - sub_80a956b4(?)
#  - sub_a08b43fd(?)
#  - sub_afde9bd2(?)
#  - sub_e9960fb8(?)
#  - sub_fff19b38(?)
#
const name = Array(len=33, data='CryptoClockTower.art ClockToken-', '1', Mask(8, -256, 'CryptoClockTower.art ClockToken-', '1') << 256)

const approve(address arg1, uint256 arg2) = 0

const totalSupply = 365

const transferFrom(address arg1, address arg2, uint256 arg3) = 0

const decimals = 0

const symbol = 'CLOCK-1'

const transfer(address arg1, uint256 arg2) = 0

const allowance(address arg1, address arg2) = 0


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
uint256 sub_5e614f2f;
uint256 sub_0d88ca0d;
uint256 sub_ee35b0bf;
uint256 sub_d94f93f3;
uint256 sub_abb4e5bd;
uint256 sub_807a8a28;
uint256 sub_1f7ca3dc;
uint256 sub_5b1a59da;
uint256 sub_2014ad2e;
uint256 sub_0c2d4424;
uint16 sub_e8dae5d8;
uint16 sub_fbb693d0; offset 16
uint16 sub_d30073c1; offset 32
uint16 sub_ed22a27d; offset 48
uint16 sub_14aa7b38; offset 64
uint16 sub_54b51575; offset 80
uint16 sub_0d599ce3; offset 96
mapping of uint256 sub_fc71ffe0;
mapping of uint256 stor13;
mapping of address sub_8d9d5733;
mapping of uint256 sub_dafab4f7;
mapping of uint256 sub_3e0b298b;
mapping of address stor17;
mapping of uint256 sub_ad0ea755;
mapping of uint256 stor19;

function sub_0c2d4424(?) {
    return sub_0c2d4424
}

function sub_0d599ce3(?) {
    return sub_0d599ce3
}

function sub_0d88ca0d(?) {
    return sub_0d88ca0d
}

function sub_14aa7b38(?) {
    return sub_14aa7b38
}

function sub_1f7ca3dc(?) {
    return sub_1f7ca3dc
}

function sub_2014ad2e(?) {
    return sub_2014ad2e
}

function sub_2e1d34f8(?) {
    return bool(uint8(stor0.field_168))
}

function sub_3e0b298b(?) {
    return sub_3e0b298b[arg1]
}

function sub_54b51575(?) {
    return sub_54b51575
}

function sub_5b1a59da(?) {
    return sub_5b1a59da
}

function sub_5e614f2f(?) {
    return sub_5e614f2f
}

function sub_71ac334e(?) {
    return bool(uint8(stor0.field_160))
}

function sub_807a8a28(?) {
    return sub_807a8a28
}

function sub_8d9d5733(?) {
    return sub_8d9d5733[arg1]
}

function owner() {
    return owner
}

function sub_97d46a04(?) {
    return sub_dafab4f7[arg1]
}

function sub_abb4e5bd(?) {
    return sub_abb4e5bd
}

function sub_ad0ea755(?) {
    return sub_ad0ea755[address(arg1)]
}

function sub_b8f9712d(?) {
    return sub_ad0ea755[arg1]
}

function sub_d30073c1(?) {
    return sub_d30073c1
}

function sub_d94f93f3(?) {
    return sub_d94f93f3
}

function sub_dafab4f7(?) {
    return sub_dafab4f7[arg1]
}

function sub_e8dae5d8(?) {
    return sub_e8dae5d8
}

function sub_ed22a27d(?) {
    return sub_ed22a27d
}

function sub_ee35b0bf(?) {
    return sub_ee35b0bf
}

function sub_fbb693d0(?) {
    return sub_fbb693d0
}

function sub_fc71ffe0(?) {
    return sub_fc71ffe0[arg1]
}

function sub_75e02587(?) {
    return (sub_0c2d4424 > 0)
}

function _fallback() payable {
    require uint8(stor0.field_160)
}

function sub_0873f441(?) {
    require msg.sender == owner
    sub_5e614f2f = arg1
}

function sub_1bc93625(?) {
    require msg.sender == owner
    sub_0d599ce3 = arg1
}

function sub_20ede987(?) {
    require msg.sender == owner
    sub_14aa7b38 = arg1
}

function sub_436a7637(?) {
    require msg.sender == owner
    sub_2014ad2e = arg1
}

function sub_54f297cf(?) {
    require msg.sender == owner
    sub_abb4e5bd = arg1
}

function sub_592c9328(?) {
    require msg.sender == owner
    sub_ee35b0bf = arg1
}

function sub_65b4da00(?) {
    require msg.sender == owner
    sub_d94f93f3 = arg1
}

function sub_6a9928c2(?) {
    require msg.sender == owner
    sub_54b51575 = arg1
}

function sub_6aef4c8b(?) {
    require msg.sender == owner
    sub_fbb693d0 = arg1
}

function sub_86341c49(?) {
    require msg.sender == owner
    sub_807a8a28 = arg1
}

function sub_9c2d46ad(?) {
    require msg.sender == owner
    sub_ed22a27d = arg1
}

function sub_b60c9688(?) {
    require msg.sender == owner
    sub_e8dae5d8 = arg1
}

function sub_e628acf0(?) {
    require msg.sender == owner
    sub_d30073c1 = arg1
}

function sub_da7fca59(?) {
    require msg.sender == owner
    require arg1 >= 1
    sub_0d88ca0d = arg1
}

function sub_281df5ae(?) {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    emit 0x7cc050c7: arg1
}

function sub_b47ed5fc(?) {
    require msg.sender == owner
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
    emit 0x616525ce: arg1
}

function sub_4f215778(?) payable {
    require uint8(stor0.field_160)
    emit 0xa19c8a3b: Array(len=arg1.length, data=arg1[all]), msg.value, msg.sender
}

function sub_88edf6aa(?) {
    require sub_ee35b0bf
    if block.number + sub_d94f93f3 % sub_ee35b0bf <= sub_ee35b0bf * sub_e8dae5d8 / 100:
        return 0
    return 1
}

function sub_4e848e1c(?) {
    if not stor19[arg1][0]:
        if not stor19[arg1][1]:
            if stor19[0][1] != arg1:
                return 0
    return stor19[arg1][arg2]
}

function sub_7e310081(?) {
    if not stor13[arg1][0]:
        if not stor13[arg1][1]:
            if stor13[0][1] != arg1:
                return 0
    return stor13[arg1][arg2]
}

function sub_fa08c977(?) {
    if block.number >= sub_5e614f2f:
        if sub_fc71ffe0[address(stor0.field_0)]:
            return 1
        else:
            return 0
    else:
        return 0
}

function sub_f571cc64(?) {
    if not uint256(stor17[address(arg1)][0]):
        if not uint256(stor17[address(arg1)][1]):
            if uint256(stor17[0][1]) != arg1:
                return 0
    return address(stor17[address(arg1)][arg2])
}

function sub_13c27230(?) {
    require msg.sender == owner
    require arg1 <= block.number
    if arg1:
        sub_0c2d4424 = arg1
        emit 0xb8fb4463: arg1
    else:
        sub_0c2d4424 = block.number
        emit 0xb8fb4463: block.number
}

function ownerWithdrawEth(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5ba662e5(?) {
    if sub_8d9d5733[arg1] <= 0:
        return 0
    if sub_fc71ffe0[stor14[arg1]] < 1:
        return 0
    if not stor13[arg1][0]:
        if not stor13[arg1][1]:
            if stor13[0][1] != arg1:
                return 0
    require arg1 + sub_3e0b298b[arg1] >= arg1
    return (arg1 + sub_3e0b298b[arg1])
}

function sub_a1ad73e8(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getTokenStatus(uint256 arg1) {
    if not sub_8d9d5733[arg1]:
        return 0
    if not stor13[arg1][0]:
        if not stor13[arg1][1]:
            if stor13[0][1] != arg1:
                return 4
    require arg1 + sub_3e0b298b[arg1] >= arg1
    if sub_0c2d4424 > 0:
        require 0 <= sub_0c2d4424
        if arg1 + sub_3e0b298b[arg1] >= sub_0c2d4424:
            return 1
    require 0 <= block.number
    if arg1 + sub_3e0b298b[arg1] >= block.number:
        return 1
    require arg1 + sub_3e0b298b[arg1] >= arg1
    if sub_0c2d4424 <= 0:
        require sub_2014ad2e <= block.number
        if arg1 + sub_3e0b298b[arg1] < block.number - sub_2014ad2e:
            return 3
    else:
        require sub_2014ad2e <= sub_0c2d4424
        if arg1 + sub_3e0b298b[arg1] < sub_0c2d4424 - sub_2014ad2e:
            require sub_2014ad2e <= block.number
            if arg1 + sub_3e0b298b[arg1] < block.number - sub_2014ad2e:
                return 3
    return 2
}

function withdrawEth() {
    require not uint8(stor0.field_168)
    require sub_ad0ea755[address(msg.sender)] > 0
    if not uint256(stor17[address(msg.sender)][0]):
        if not uint256(stor17[address(msg.sender)][1]):
            require uint256(stor17[0][1]) == msg.sender
    if msg.sender:
        if uint256(stor17[address(msg.sender)][0]):
            uint256(stor17[uint256(stor17[address(msg.sender)][1])][0]) = uint256(stor17[address(msg.sender)][0])
            uint256(stor17[uint256(stor17[address(msg.sender)][0])][1]) = uint256(stor17[address(msg.sender)][1])
            uint256(stor17[address(msg.sender)][0]) = 0
            uint256(stor17[address(msg.sender)][1]) = 0
        else:
            if uint256(stor17[address(msg.sender)][1]):
                uint256(stor17[uint256(stor17[address(msg.sender)][1])][0]) = uint256(stor17[address(msg.sender)][0])
                uint256(stor17[uint256(stor17[address(msg.sender)][0])][1]) = uint256(stor17[address(msg.sender)][1])
                uint256(stor17[address(msg.sender)][0]) = 0
                uint256(stor17[address(msg.sender)][1]) = 0
            else:
                if uint256(stor17[0][1]) == msg.sender:
                    uint256(stor17[uint256(stor17[address(msg.sender)][1])][0]) = uint256(stor17[address(msg.sender)][0])
                    uint256(stor17[uint256(stor17[address(msg.sender)][0])][1]) = uint256(stor17[address(msg.sender)][1])
                    uint256(stor17[address(msg.sender)][0]) = 0
                    uint256(stor17[address(msg.sender)][1]) = 0
    sub_ad0ea755[address(msg.sender)] = 0
    call msg.sender with:
       value sub_ad0ea755[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa3ba2f2c: sub_ad0ea755[address(msg.sender)], msg.sender
    return 1
}

function sub_9b3aba01(?) {
    if not stor13[arg2][0]:
        if not stor13[arg2][1]:
            require stor13[0][1] == arg2
    mem[0] = 1
    mem[32] = sha3(arg2, 13)
    idx = stor[sha3(mem[0 len 64])]
    s = stor13[arg2][False]
    while idx:
        if not arg1:
            require idx + sub_3e0b298b[idx] >= idx
            if sub_0c2d4424 <= 0:
                require sub_2014ad2e <= block.number
                if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
                    if sub_dafab4f7[idx] > 0:
                        return idx
            else:
                require sub_2014ad2e <= sub_0c2d4424
                if idx + sub_3e0b298b[idx] >= sub_0c2d4424 - sub_2014ad2e:
                    if sub_dafab4f7[idx] > 0:
                        return idx
                else:
                    require sub_2014ad2e <= block.number
                    if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
                        if sub_dafab4f7[idx] > 0:
                            return idx
        else:
            if sub_8d9d5733[idx] == arg1:
                require idx + sub_3e0b298b[idx] >= idx
                if sub_0c2d4424 <= 0:
                    require sub_2014ad2e <= block.number
                    if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
                        if sub_dafab4f7[idx] > 0:
                            return idx
                else:
                    require sub_2014ad2e <= sub_0c2d4424
                    if idx + sub_3e0b298b[idx] >= sub_0c2d4424 - sub_2014ad2e:
                        if sub_dafab4f7[idx] > 0:
                            return idx
                    else:
                        require sub_2014ad2e <= block.number
                        if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
                            if sub_dafab4f7[idx] > 0:
                                return idx
        if not stor13[idx][0]:
            if not stor13[idx][1]:
                mem[0] = 1
                mem[32] = sha3(0, 13)
                if stor13[0][1] != idx:
                    idx = 0
                    s = 0
                    continue 
        mem[0] = 1
        mem[32] = sha3(idx, 13)
        idx = stor13[idx][1]
        s = stor13[idx][0]
        continue 
    return 0
}

function balanceOf(address arg1) {
    if arg1 == owner:
        if not stor13[0][0]:
            if not stor13[0][1]:
                if stor13[0][1]:
                    require sub_fc71ffe0[address(stor0.field_0)] >= sub_fc71ffe0[address(stor0.field_0)]
                    return sub_fc71ffe0[address(stor0.field_0)]
        mem[0] = 1
        mem[32] = sha3(0, 13)
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while idx:
            require idx + sub_3e0b298b[idx] >= idx
            if sub_0c2d4424 > 0:
                require sub_2014ad2e <= sub_0c2d4424
                if idx + sub_3e0b298b[idx] >= sub_0c2d4424 - sub_2014ad2e:
                    require sub_fc71ffe0[address(stor0.field_0)] + uint16(s) >= sub_fc71ffe0[address(stor0.field_0)]
                    return (sub_fc71ffe0[address(stor0.field_0)] + uint16(s))
            require sub_2014ad2e <= block.number
            if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
                require sub_fc71ffe0[address(stor0.field_0)] + uint16(s) >= sub_fc71ffe0[address(stor0.field_0)]
                return (sub_fc71ffe0[address(stor0.field_0)] + uint16(s))
            if not stor13[idx][0]:
                if not stor13[idx][1]:
                    mem[0] = 1
                    mem[32] = sha3(0, 13)
                    if stor13[0][1] != idx:
                        idx = 0
                        s = s + 1
                        continue 
            mem[0] = 1
            mem[32] = sha3(idx, 13)
            idx = stor13[idx][1]
            s = s + 1
            continue 
        require sub_fc71ffe0[address(stor0.field_0)] + uint16(s) >= sub_fc71ffe0[address(stor0.field_0)]
        return (sub_fc71ffe0[address(stor0.field_0)] + uint16(s))
    if not sub_fc71ffe0[address(arg1)]:
        return 0
    if not stor13[0][0]:
        if not stor13[0][1]:
            if stor13[0][1]:
                require 0 <= sub_fc71ffe0[address(arg1)]
                return sub_fc71ffe0[address(arg1)]
    mem[0] = 1
    mem[32] = sha3(0, 13)
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while idx:
        if arg1:
            if sub_8d9d5733[idx] != arg1:
                if not stor13[idx][0]:
                    if not stor13[idx][1]:
                        mem[0] = 1
                        mem[32] = sha3(0, 13)
                        if stor13[0][1] != idx:
                            idx = 0
                            s = s
                            continue 
                mem[0] = 1
                mem[32] = sha3(idx, 13)
                idx = stor13[idx][1]
                s = s
                continue 
        require idx + sub_3e0b298b[idx] >= idx
        if sub_0c2d4424 > 0:
            require sub_2014ad2e <= sub_0c2d4424
            if idx + sub_3e0b298b[idx] >= sub_0c2d4424 - sub_2014ad2e:
                require uint16(s) <= sub_fc71ffe0[address(arg1)]
                return (sub_fc71ffe0[address(arg1)] - uint16(s))
        require sub_2014ad2e <= block.number
        if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
            require uint16(s) <= sub_fc71ffe0[address(arg1)]
            return (sub_fc71ffe0[address(arg1)] - uint16(s))
        if not stor13[idx][0]:
            if not stor13[idx][1]:
                mem[0] = 1
                mem[32] = sha3(0, 13)
                if stor13[0][1] != idx:
                    idx = 0
                    s = s + 1
                    continue 
        mem[0] = 1
        mem[32] = sha3(idx, 13)
        idx = stor13[idx][1]
        s = s + 1
        continue 
    require uint16(s) <= sub_fc71ffe0[address(arg1)]
    return (sub_fc71ffe0[address(arg1)] - uint16(s))
}

function sub_0e90511d(?) {
    if sub_fc71ffe0[address(stor0.field_0)] <= 20:
        return 0
    if block.number >= sub_5e614f2f:
        if sub_fc71ffe0[address(stor0.field_0)]:
            return 0
    if not stor13[0][0]:
        if not stor13[0][1]:
            require not stor13[0][1]
    mem[0] = 1
    mem[32] = sha3(0, 13)
    idx = stor[sha3(mem[0 len 64])]
    s = stor13[0][False]
    while idx:
        require idx + sub_3e0b298b[idx] >= idx
        if sub_0c2d4424 <= 0:
            require sub_2014ad2e <= block.number
            if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
                if sub_dafab4f7[idx] > 0:
                    if idx > 0:
                        return 0
                    if sub_1f7ca3dc <= sub_5b1a59da:
                        if sub_5b1a59da:
                            require sub_5b1a59da
                            require 10 * sub_5b1a59da / sub_5b1a59da == 10
                            if 10 * sub_5b1a59da:
                                return (10 * sub_5b1a59da)
                    else:
                        if sub_1f7ca3dc:
                            require sub_1f7ca3dc
                            require 10 * sub_1f7ca3dc / sub_1f7ca3dc == 10
                            if 10 * sub_1f7ca3dc:
                                return (10 * sub_1f7ca3dc)
                    return 1
        else:
            require sub_2014ad2e <= sub_0c2d4424
            if idx + sub_3e0b298b[idx] >= sub_0c2d4424 - sub_2014ad2e:
                if sub_dafab4f7[idx] > 0:
                    if idx > 0:
                        return 0
                    if sub_1f7ca3dc <= sub_5b1a59da:
                        if sub_5b1a59da:
                            require sub_5b1a59da
                            require 10 * sub_5b1a59da / sub_5b1a59da == 10
                            if 10 * sub_5b1a59da:
                                return (10 * sub_5b1a59da)
                    else:
                        if sub_1f7ca3dc:
                            require sub_1f7ca3dc
                            require 10 * sub_1f7ca3dc / sub_1f7ca3dc == 10
                            if 10 * sub_1f7ca3dc:
                                return (10 * sub_1f7ca3dc)
                    return 1
            else:
                require sub_2014ad2e <= block.number
                if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
                    if sub_dafab4f7[idx] > 0:
                        if idx > 0:
                            return 0
                        if sub_1f7ca3dc <= sub_5b1a59da:
                            if sub_5b1a59da:
                                require sub_5b1a59da
                                require 10 * sub_5b1a59da / sub_5b1a59da == 10
                                if 10 * sub_5b1a59da:
                                    return (10 * sub_5b1a59da)
                        else:
                            if sub_1f7ca3dc:
                                require sub_1f7ca3dc
                                require 10 * sub_1f7ca3dc / sub_1f7ca3dc == 10
                                if 10 * sub_1f7ca3dc:
                                    return (10 * sub_1f7ca3dc)
                        return 1
        if not stor13[idx][0]:
            if not stor13[idx][1]:
                mem[0] = 1
                mem[32] = sha3(0, 13)
                if stor13[0][1] != idx:
                    idx = 0
                    s = 0
                    continue 
        mem[0] = 1
        mem[32] = sha3(idx, 13)
        idx = stor13[idx][1]
        s = stor13[idx][0]
        continue 
    if sub_1f7ca3dc <= sub_5b1a59da:
        if sub_5b1a59da:
            require sub_5b1a59da
            require 10 * sub_5b1a59da / sub_5b1a59da == 10
            if 10 * sub_5b1a59da:
                return (10 * sub_5b1a59da)
    else:
        if sub_1f7ca3dc:
            require sub_1f7ca3dc
            require 10 * sub_1f7ca3dc / sub_1f7ca3dc == 10
            if 10 * sub_1f7ca3dc:
                return (10 * sub_1f7ca3dc)
    return 1
}

function sub_9bf37688(?) {
    if stor13[arg2][0]:
        mem[0] = 1
        mem[32] = sha3(arg2, 13)
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while idx:
            if arg1:
                if sub_8d9d5733[idx] != arg1:
                    if not stor13[idx][0]:
                        if not stor13[idx][1]:
                            mem[0] = 1
                            mem[32] = sha3(0, 13)
                            if stor13[0][1] != idx:
                                idx = 0
                                s = s
                                continue 
                    mem[0] = 1
                    mem[32] = sha3(idx, 13)
                    idx = stor13[idx][1]
                    s = s
                    continue 
            require idx + sub_3e0b298b[idx] >= idx
            if sub_0c2d4424 > 0:
                require sub_2014ad2e <= sub_0c2d4424
                if idx + sub_3e0b298b[idx] >= sub_0c2d4424 - sub_2014ad2e:
                    return idx
            require sub_2014ad2e <= block.number
            if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
                return idx
            if not stor13[idx][0]:
                if not stor13[idx][1]:
                    mem[0] = 1
                    mem[32] = sha3(0, 13)
                    if stor13[0][1] != idx:
                        idx = 0
                        s = s + 1
                        continue 
            mem[0] = 1
            mem[32] = sha3(idx, 13)
            idx = stor13[idx][1]
            s = s + 1
            continue 
    else:
        if stor13[arg2][1]:
            mem[0] = 1
            mem[32] = sha3(arg2, 13)
            idx = stor[sha3(mem[0 len 64])]
            s = 0
            while idx:
                if arg1:
                    if sub_8d9d5733[idx] != arg1:
                        if not stor13[idx][0]:
                            if not stor13[idx][1]:
                                mem[0] = 1
                                mem[32] = sha3(0, 13)
                                if stor13[0][1] != idx:
                                    idx = 0
                                    s = s
                                    continue 
                        mem[0] = 1
                        mem[32] = sha3(idx, 13)
                        idx = stor13[idx][1]
                        s = s
                        continue 
                require idx + sub_3e0b298b[idx] >= idx
                if sub_0c2d4424 > 0:
                    require sub_2014ad2e <= sub_0c2d4424
                    if idx + sub_3e0b298b[idx] >= sub_0c2d4424 - sub_2014ad2e:
                        return idx
                require sub_2014ad2e <= block.number
                if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
                    return idx
                if not stor13[idx][0]:
                    if not stor13[idx][1]:
                        mem[0] = 1
                        mem[32] = sha3(0, 13)
                        if stor13[0][1] != idx:
                            idx = 0
                            s = s + 1
                            continue 
                mem[0] = 1
                mem[32] = sha3(idx, 13)
                idx = stor13[idx][1]
                s = s + 1
                continue 
        else:
            if stor13[0][1] == arg2:
                mem[0] = 1
                mem[32] = sha3(arg2, 13)
                idx = stor[sha3(mem[0 len 64])]
                s = 0
                while idx:
                    if arg1:
                        if sub_8d9d5733[idx] != arg1:
                            if not stor13[idx][0]:
                                if not stor13[idx][1]:
                                    mem[0] = 1
                                    mem[32] = sha3(0, 13)
                                    if stor13[0][1] != idx:
                                        idx = 0
                                        s = s
                                        continue 
                            mem[0] = 1
                            mem[32] = sha3(idx, 13)
                            idx = stor13[idx][1]
                            s = s
                            continue 
                    require idx + sub_3e0b298b[idx] >= idx
                    if sub_0c2d4424 > 0:
                        require sub_2014ad2e <= sub_0c2d4424
                        if idx + sub_3e0b298b[idx] >= sub_0c2d4424 - sub_2014ad2e:
                            return idx
                    require sub_2014ad2e <= block.number
                    if idx + sub_3e0b298b[idx] >= block.number - sub_2014ad2e:
                        return idx
                    if not stor13[idx][0]:
                        if not stor13[idx][1]:
                            mem[0] = 1
                            mem[32] = sha3(0, 13)
                            if stor13[0][1] != idx:
                                idx = 0
                                s = s + 1
                                continue 
                    mem[0] = 1
                    mem[32] = sha3(idx, 13)
                    idx = stor13[idx][1]
                    s = s + 1
                    continue 
    return 0
}

function sub_8f942690(?) payable {
    mem[64] = 96
    require not msg.value
    require not uint8(stor0.field_168)
    require owner != msg.sender
    require sub_fc71ffe0[address(msg.sender)] >= 1
    if arg2:
        require sub_8d9d5733[arg2] == msg.sender
        require arg2 + sub_3e0b298b[arg2] >= arg2
        if sub_0c2d4424 <= 0:
            require sub_2014ad2e <= block.number
            require arg2 + sub_3e0b298b[arg2] >= block.number - sub_2014ad2e
        else:
            require sub_2014ad2e <= sub_0c2d4424
            if arg2 + sub_3e0b298b[arg2] < sub_0c2d4424 - sub_2014ad2e:
                require sub_2014ad2e <= block.number
                require arg2 + sub_3e0b298b[arg2] >= block.number - sub_2014ad2e
        if not stor13[arg2][0]:
            if not stor13[arg2][1]:
                require stor13[0][1] == arg2
        sub_dafab4f7[arg2] = arg1
        emit 0x3af45b6a: arg2, arg1, msg.sender
        return 1
    if stor13[0][0]:
        require var55001
        if msg.sender:
            if sub_8d9d5733[var55001] != msg.sender:
                if not stor13[var55001][0]:
                    if not stor13[var55001][1]:
                        mem[0] = 1
                        mem[32] = sha3(0, 13)
                        if stor13[0][1] != var55001:
                            var55001 = 0
                            var55003 = var55003
                            continue 
                mem[0] = 1
                mem[32] = sha3(var55001, 13)
                var55001 = stor13[var55001][1]
                var55003 = var55003
                continue 
        require var55001 + sub_3e0b298b[var55001] >= var55001
        if sub_0c2d4424 > 0:
            require sub_2014ad2e <= sub_0c2d4424
            if var55001 + sub_3e0b298b[var55001] >= sub_0c2d4424 - sub_2014ad2e:
                require var55001 > 0
                sub_dafab4f7[var55001] = arg1
                emit 0x3af45b6a: var55001, arg1, msg.sender
                return 1
        require sub_2014ad2e <= block.number
        if var55001 + sub_3e0b298b[var55001] >= block.number - sub_2014ad2e:
            require var55001 > 0
            sub_dafab4f7[var55001] = arg1
            emit 0x3af45b6a: var55001, arg1, msg.sender
            return 1
        if not stor13[var55001][0]:
            if not stor13[var55001][1]:
                mem[0] = 1
                mem[32] = sha3(0, 13)
                if stor13[0][1] != var55001:
                    var55001 = 0
                    var55003 = var55003 + 1
                    continue 
        mem[0] = 1
        mem[32] = sha3(var55001, 13)
        var55001 = stor13[var55001][1]
        var55003 = var55003 + 1
        continue 
    if stor13[0][1]:
        require var56001
        if msg.sender:
            if sub_8d9d5733[var56001] != msg.sender:
                if not stor13[var56001][0]:
                    if not stor13[var56001][1]:
                        mem[0] = 1
                        mem[32] = sha3(0, 13)
                        if stor13[0][1] != var56001:
                            var56001 = 0
                            var56003 = var56003
                            continue 
                mem[0] = 1
                mem[32] = sha3(var56001, 13)
                var56001 = stor13[var56001][1]
                var56003 = var56003
                continue 
        require var56001 + sub_3e0b298b[var56001] >= var56001
        if sub_0c2d4424 > 0:
            require sub_2014ad2e <= sub_0c2d4424
            if var56001 + sub_3e0b298b[var56001] >= sub_0c2d4424 - sub_2014ad2e:
                require var56001 > 0
                sub_dafab4f7[var56001] = arg1
                emit 0x3af45b6a: var56001, arg1, msg.sender
                return 1
        require sub_2014ad2e <= block.number
        if var56001 + sub_3e0b298b[var56001] >= block.number - sub_2014ad2e:
            require var56001 > 0
            sub_dafab4f7[var56001] = arg1
            emit 0x3af45b6a: var56001, arg1, msg.sender
            return 1
        if not stor13[var56001][0]:
            if not stor13[var56001][1]:
                mem[0] = 1
                mem[32] = sha3(0, 13)
                if stor13[0][1] != var56001:
                    var56001 = 0
                    var56003 = var56003 + 1
                    continue 
        mem[0] = 1
        mem[32] = sha3(var56001, 13)
        var56001 = stor13[var56001][1]
        var56003 = var56003 + 1
        continue 
    require not stor13[0][1]
    require var57001
    if msg.sender:
        if sub_8d9d5733[var57001] != msg.sender:
            if not stor13[var57001][0]:
                if not stor13[var57001][1]:
                    mem[0] = 1
                    mem[32] = sha3(0, 13)
                    if stor13[0][1] != var57001:
                        var57001 = 0
                        var57003 = var57003
                        continue 
            mem[0] = 1
            mem[32] = sha3(var57001, 13)
            var57001 = stor13[var57001][1]
            var57003 = var57003
            continue 
    require var57001 + sub_3e0b298b[var57001] >= var57001
    if sub_0c2d4424 > 0:
        require sub_2014ad2e <= sub_0c2d4424
        if var57001 + sub_3e0b298b[var57001] >= sub_0c2d4424 - sub_2014ad2e:
            require var57001 > 0
            sub_dafab4f7[var57001] = arg1
            emit 0x3af45b6a: var57001, arg1, msg.sender
            return 1
    require sub_2014ad2e <= block.number
    if var57001 + sub_3e0b298b[var57001] >= block.number - sub_2014ad2e:
        require var57001 > 0
        sub_dafab4f7[var57001] = arg1
        emit 0x3af45b6a: var57001, arg1, msg.sender
        return 1
    if not stor13[var57001][0]:
        if not stor13[var57001][1]:
            mem[0] = 1
            mem[32] = sha3(0, 13)
            if stor13[0][1] != var57001:
                var57001 = 0
                var57003 = var57003 + 1
                continue 
    mem[0] = 1
    mem[32] = sha3(var57001, 13)
    var57001 = stor13[var57001][1]
    var57003 = var57003 + 1
    continue 
}

function getCurrentAuctionPrice() {
    if block.number < sub_5e614f2f:
        return 0
    if not sub_fc71ffe0[address(stor0.field_0)]:
        return 0
    if sub_1f7ca3dc <= sub_5b1a59da:
        if not sub_5b1a59da:
            require sub_5e614f2f <= block.number
            require sub_0d88ca0d
            if block.number - sub_5e614f2f / sub_0d88ca0d <= 240:
                require sub_0d88ca0d
                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                    require 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                    if 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                        return (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1))
                else:
                    require (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                    if (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                        return ((0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000))
        else:
            require sub_5b1a59da
            require 10 * sub_5b1a59da / sub_5b1a59da == 10
            require sub_5e614f2f <= block.number
            require sub_0d88ca0d
            if block.number - sub_5e614f2f / sub_0d88ca0d <= 240:
                require sub_0d88ca0d
                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                    require 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                    if 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                        return (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1))
                else:
                    require (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                    if (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                        return ((10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000))
    else:
        if not sub_1f7ca3dc:
            require sub_5e614f2f <= block.number
            require sub_0d88ca0d
            if block.number - sub_5e614f2f / sub_0d88ca0d <= 240:
                require sub_0d88ca0d
                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                    require 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                    if 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                        return (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1))
                else:
                    require (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                    if (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                        return ((0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000))
        else:
            require sub_1f7ca3dc
            require 10 * sub_1f7ca3dc / sub_1f7ca3dc == 10
            require sub_5e614f2f <= block.number
            require sub_0d88ca0d
            if block.number - sub_5e614f2f / sub_0d88ca0d <= 240:
                require sub_0d88ca0d
                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                    require 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                    if 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                        return (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1))
                else:
                    require (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                    if (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                        return ((10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000))
    return sub_807a8a28
}

function getDiscoveredPrice() {
    if block.number >= sub_5e614f2f:
        if sub_fc71ffe0[address(stor0.field_0)]:
            if block.number < sub_5e614f2f:
                if 0 <= sub_5b1a59da:
                    return 0
            else:
                if not sub_fc71ffe0[address(stor0.field_0)]:
                    if 0 <= sub_5b1a59da:
                        return 0
                else:
                    if sub_1f7ca3dc <= sub_5b1a59da:
                        if not sub_5b1a59da:
                            require sub_5e614f2f <= block.number
                            require sub_0d88ca0d
                            if block.number - sub_5e614f2f / sub_0d88ca0d > 240:
                                if sub_807a8a28 <= sub_5b1a59da:
                                    return sub_807a8a28
                            else:
                                require sub_0d88ca0d
                                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                                    require 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                                        if 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) <= sub_5b1a59da:
                                            return (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1))
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            return sub_807a8a28
                                else:
                                    require (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                                        if (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) <= sub_5b1a59da:
                                            return ((0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000))
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            return sub_807a8a28
                        else:
                            require sub_5b1a59da
                            require 10 * sub_5b1a59da / sub_5b1a59da == 10
                            require sub_5e614f2f <= block.number
                            require sub_0d88ca0d
                            if block.number - sub_5e614f2f / sub_0d88ca0d > 240:
                                if sub_807a8a28 <= sub_5b1a59da:
                                    return sub_807a8a28
                            else:
                                require sub_0d88ca0d
                                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                                    require 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                                        if 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) <= sub_5b1a59da:
                                            return (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1))
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            return sub_807a8a28
                                else:
                                    require (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                                        if (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) <= sub_5b1a59da:
                                            return ((10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000))
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            return sub_807a8a28
                    else:
                        if not sub_1f7ca3dc:
                            require sub_5e614f2f <= block.number
                            require sub_0d88ca0d
                            if block.number - sub_5e614f2f / sub_0d88ca0d > 240:
                                if sub_807a8a28 <= sub_5b1a59da:
                                    return sub_807a8a28
                            else:
                                require sub_0d88ca0d
                                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                                    require 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                                        if 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) <= sub_5b1a59da:
                                            return (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1))
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            return sub_807a8a28
                                else:
                                    require (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                                        if (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) <= sub_5b1a59da:
                                            return ((0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000))
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            return sub_807a8a28
                        else:
                            require sub_1f7ca3dc
                            require 10 * sub_1f7ca3dc / sub_1f7ca3dc == 10
                            require sub_5e614f2f <= block.number
                            require sub_0d88ca0d
                            if block.number - sub_5e614f2f / sub_0d88ca0d > 240:
                                if sub_807a8a28 <= sub_5b1a59da:
                                    return sub_807a8a28
                            else:
                                require sub_0d88ca0d
                                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                                    require 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                                        if 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) <= sub_5b1a59da:
                                            return (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1))
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            return sub_807a8a28
                                else:
                                    require (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                                        if (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) <= sub_5b1a59da:
                                            return ((10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000))
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            return sub_807a8a28
    return sub_5b1a59da
}

function getFeeAmount() {
    if block.number >= sub_5e614f2f:
        if sub_fc71ffe0[address(stor0.field_0)]:
            if block.number < sub_5e614f2f:
                if 0 <= sub_5b1a59da:
                    return 0
            else:
                if not sub_fc71ffe0[address(stor0.field_0)]:
                    if 0 <= sub_5b1a59da:
                        return 0
                else:
                    if sub_1f7ca3dc <= sub_5b1a59da:
                        if not sub_5b1a59da:
                            require sub_5e614f2f <= block.number
                            require sub_0d88ca0d
                            if block.number - sub_5e614f2f / sub_0d88ca0d > 240:
                                if sub_807a8a28 <= sub_5b1a59da:
                                    if not sub_807a8a28:
                                        return 0
                                    require sub_807a8a28
                                    require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                    return (sub_807a8a28 * sub_ed22a27d / 1000)
                            else:
                                require sub_0d88ca0d
                                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                                    require 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                                        if 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) <= sub_5b1a59da:
                                            if not 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1):
                                                return 0
                                            require 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                            require 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d / 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) == sub_ed22a27d
                                            return (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d / 1000)
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            if not sub_807a8a28:
                                                return 0
                                            require sub_807a8a28
                                            require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                            return (sub_807a8a28 * sub_ed22a27d / 1000)
                                else:
                                    require (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                                        if (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) <= sub_5b1a59da:
                                            if not (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000):
                                                return 0
                                            require (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000)
                                            require (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000 * sub_ed22a27d) / (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) == sub_ed22a27d
                                            return ((0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000 * sub_ed22a27d) / 1000)
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            if not sub_807a8a28:
                                                return 0
                                            require sub_807a8a28
                                            require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                            return (sub_807a8a28 * sub_ed22a27d / 1000)
                        else:
                            require sub_5b1a59da
                            require 10 * sub_5b1a59da / sub_5b1a59da == 10
                            require sub_5e614f2f <= block.number
                            require sub_0d88ca0d
                            if block.number - sub_5e614f2f / sub_0d88ca0d > 240:
                                if sub_807a8a28 <= sub_5b1a59da:
                                    if not sub_807a8a28:
                                        return 0
                                    require sub_807a8a28
                                    require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                    return (sub_807a8a28 * sub_ed22a27d / 1000)
                            else:
                                require sub_0d88ca0d
                                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                                    require 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                                        if 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) <= sub_5b1a59da:
                                            if not 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1):
                                                return 0
                                            require 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                            require 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d / 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) == sub_ed22a27d
                                            return (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d / 1000)
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            if not sub_807a8a28:
                                                return 0
                                            require sub_807a8a28
                                            require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                            return (sub_807a8a28 * sub_ed22a27d / 1000)
                                else:
                                    require (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                                        if (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) <= sub_5b1a59da:
                                            if not (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000):
                                                return 0
                                            require (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000)
                                            require (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000 * sub_ed22a27d) / (10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) == sub_ed22a27d
                                            return ((10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d) + ((1000 * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_5b1a59da / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000 * sub_ed22a27d) / 1000)
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            if not sub_807a8a28:
                                                return 0
                                            require sub_807a8a28
                                            require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                            return (sub_807a8a28 * sub_ed22a27d / 1000)
                    else:
                        if not sub_1f7ca3dc:
                            require sub_5e614f2f <= block.number
                            require sub_0d88ca0d
                            if block.number - sub_5e614f2f / sub_0d88ca0d > 240:
                                if sub_807a8a28 <= sub_5b1a59da:
                                    if not sub_807a8a28:
                                        return 0
                                    require sub_807a8a28
                                    require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                    return (sub_807a8a28 * sub_ed22a27d / 1000)
                            else:
                                require sub_0d88ca0d
                                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                                    require 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                                        if 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) <= sub_5b1a59da:
                                            if not 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1):
                                                return 0
                                            require 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                            require 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d / 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) == sub_ed22a27d
                                            return (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d / 1000)
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            if not sub_807a8a28:
                                                return 0
                                            require sub_807a8a28
                                            require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                            return (sub_807a8a28 * sub_ed22a27d / 1000)
                                else:
                                    require (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                                        if (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) <= sub_5b1a59da:
                                            if not (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000):
                                                return 0
                                            require (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000)
                                            require (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000 * sub_ed22a27d) / (0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) == sub_ed22a27d
                                            return ((0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d) + ((1000 * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 0 / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000 * sub_ed22a27d) / 1000)
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            if not sub_807a8a28:
                                                return 0
                                            require sub_807a8a28
                                            require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                            return (sub_807a8a28 * sub_ed22a27d / 1000)
                        else:
                            require sub_1f7ca3dc
                            require 10 * sub_1f7ca3dc / sub_1f7ca3dc == 10
                            require sub_5e614f2f <= block.number
                            require sub_0d88ca0d
                            if block.number - sub_5e614f2f / sub_0d88ca0d > 240:
                                if sub_807a8a28 <= sub_5b1a59da:
                                    if not sub_807a8a28:
                                        return 0
                                    require sub_807a8a28
                                    require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                    return (sub_807a8a28 * sub_ed22a27d / 1000)
                            else:
                                require sub_0d88ca0d
                                require 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                if ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d) - (1000 * block.number - sub_5e614f2f / sub_0d88ca0d) >= 1000:
                                    require 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) >= sub_807a8a28:
                                        if 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) <= sub_5b1a59da:
                                            if not 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1):
                                                return 0
                                            require 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                            require 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d / 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) == sub_ed22a27d
                                            return (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d / 1000)
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            if not sub_807a8a28:
                                                return 0
                                            require sub_807a8a28
                                            require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                            return (sub_807a8a28 * sub_ed22a27d / 1000)
                                else:
                                    require (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)
                                    if (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) >= sub_807a8a28:
                                        if (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) <= sub_5b1a59da:
                                            if not (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000):
                                                return 0
                                            require (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000)
                                            require (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000 * sub_ed22a27d) / (10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000) == sub_ed22a27d
                                            return ((10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1) * sub_ed22a27d) + ((1000 * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) - ((1000 * block.number) - (1000 * sub_5e614f2f) / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) + (1000 * block.number - sub_5e614f2f / sub_0d88ca0d * 10 * sub_1f7ca3dc / 2^((block.number - sub_5e614f2f / sub_0d88ca0d) + 1)) / 1000 * sub_ed22a27d) / 1000)
                                    else:
                                        if sub_807a8a28 <= sub_5b1a59da:
                                            if not sub_807a8a28:
                                                return 0
                                            require sub_807a8a28
                                            require sub_807a8a28 * sub_ed22a27d / sub_807a8a28 == sub_ed22a27d
                                            return (sub_807a8a28 * sub_ed22a27d / 1000)
    if not sub_5b1a59da:
        return 0
    require sub_5b1a59da
    require sub_5b1a59da * sub_ed22a27d / sub_5b1a59da == sub_ed22a27d
    return (sub_5b1a59da * sub_ed22a27d / 1000)
}



}
