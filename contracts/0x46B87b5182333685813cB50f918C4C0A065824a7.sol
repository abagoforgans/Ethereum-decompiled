contract main {




// =====================  Runtime code  =====================


#
#  - ClaimTokens(address arg1, uint256 arg2)
#
address sub_e69c65efAddress;
address stor1;
uint256 percent;
uint256 stor3;
uint256 totalUser;
uint256 sub_e2afe3bb;
mapping of uint8 stor6;
mapping of uint256 sub_99613956;
mapping of address cashbackcode;
mapping of uint256 tokenBalance;
mapping of uint256 sub_6a37f573;
mapping of uint256 sub_0d826c0b;
array of uint256 sub_2c0a3cd2;
mapping of struct getSafe;
mapping of uint256 sub_a54f12e4;
mapping of uint256 sub_bb142c2d;
mapping of uint256 sub_d76ca047;
mapping of uint256 sub_910592de;
array of address sub_1c019a52;

function sub_0d826c0b(?) {
    return sub_0d826c0b[arg1]
}

function sub_1c019a52(?) {
    require arg1 < sub_1c019a52.length
    return sub_1c019a52[arg1]
}

function sub_2c0a3cd2(?) {
    return sub_2c0a3cd2[address(arg1)]
}

function GetSafe(uint256 arg1) {
    mem[128] = getSafe[arg1][5].field_0
    idx = 128
    s = 0
    while getSafe[arg1][5].length + 96 > idx:
        mem[idx + 32] = getSafe[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return getSafe[arg1].field_0, 
           getSafe[arg1].field_768,
           getSafe[arg1].field_1024,
           getSafe[arg1].field_256,
           getSafe[arg1].field_512,
           Array(len=getSafe[arg1][5].length, data=mem[128 len getSafe[arg1][5].length]),
           getSafe[arg1].field_1536,
           getSafe[arg1].field_2048,
           getSafe[arg1].field_2304,
           getSafe[arg1].field_2560,
           getSafe[arg1].field_2816,
           getSafe[arg1].field_3328
}

function contractaddress(address arg1) {
    return bool(stor6[arg1])
}

function cashbackcode(address arg1) {
    return cashbackcode[arg1]
}

function sub_6a37f573(?) {
    return sub_6a37f573[arg1]
}

function percent() {
    return percent
}

function sub_910592de(?) {
    return sub_910592de[arg1][arg2]
}

function sub_99613956(?) {
    return sub_99613956[arg1]
}

function sub_a54f12e4(?) {
    return sub_a54f12e4[address(arg1)]
}

function TokenBalance(address arg1) {
    return tokenBalance[arg1]
}

function sub_bb142c2d(?) {
    return sub_bb142c2d[arg1][arg2]
}

function sub_d76ca047(?) {
    return sub_d76ca047[arg1][arg2]
}

function TotalUser() {
    return totalUser
}

function sub_e2afe3bb(?) {
    return sub_e2afe3bb
}

function sub_e69c65ef(?) {
    return sub_e69c65efAddress
}

function sub_fb0b892a(?) {
    require arg2 < sub_2c0a3cd2[arg1]
    return sub_2c0a3cd2[arg1][arg2]
}

function sub_a0493521(?) {
    require msg.sender == sub_e69c65efAddress
    sub_99613956[address(arg1)] = arg2
}

function sub_fc1a92a0(?) {
    require msg.sender == sub_e69c65efAddress
    require arg1 <= 12
    percent = arg1
}

function sub_79883bba(?) {
    require msg.sender == sub_e69c65efAddress
    require arg1 >= 180
    sub_e2afe3bb = 24 * 3600 * arg1
}

function _fallback() payable {
    require msg.value > 0
    require sub_a54f12e4[0] + msg.value >= sub_a54f12e4[0]
    sub_a54f12e4[0] += msg.value
}

function sub_4c3970de(?) {
    require msg.sender == sub_e69c65efAddress
    stor6[address(arg1)] = uint8(arg2)
    sub_99613956[address(arg1)] = arg3
    emit 0xf10649bf: arg2, arg3, arg1
}

function CashbackCode(address arg1) {
    require arg1 != msg.sender
    if not cashbackcode[address(msg.sender)]:
        cashbackcode[address(msg.sender)] = arg1
        emit 0x3bf019f5: arg1, msg.sender
}

function WithdrawEth(uint256 arg1) {
    require msg.sender == sub_e69c65efAddress
    require arg1 > 0
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_539a67bf(?) {
    require msg.sender == sub_e69c65efAddress
    require sub_a54f12e4[address(arg1)] > 0
    sub_a54f12e4[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= sub_a54f12e4[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_a54f12e4[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function WithdrawAffiliate(address arg1, address arg2) {
    require arg2
    require arg1 == msg.sender
    sub_d76ca047[address(msg.sender)][address(arg2)] = 0
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= sub_d76ca047[address(msg.sender)][address(arg2)]
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_d76ca047[address(msg.sender)][address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_650db56d(?) {
    require msg.sender == sub_e69c65efAddress
    s = 0
    idx = 1
    s = 0
    while idx < stor3:
        mem[0] = idx
        mem[32] = 13
        if not getSafe[idx].field_0:
            s = sha3(idx, 13)
            idx = idx + 1
            s = s
            continue 
        if arg1:
            if getSafe[idx].field_1024 != stor1:
                if arg1:
                    s = sha3(idx, 13)
                    idx = idx + 1
                    s = s
                    continue 
        require ext_code.size(getSafe[idx].field_1024)
        call getSafe[idx].field_1024.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= getSafe[idx].field_1536
        mem[100] = getSafe[idx].field_768
        mem[132] = getSafe[idx].field_1536
        require ext_code.size(getSafe[idx].field_1024)
        call getSafe[idx].field_1024.0xa9059cbb with:
             gas gas_remaining wei
            args getSafe[idx].field_768, getSafe[idx].field_1536
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        getSafe[idx].field_3072 = getSafe[idx].field_1536
        getSafe[idx].field_1536 = 0
        getSafe[idx].field_2048 = block.timestamp
        if not getSafe[idx].field_256:
            getSafe[idx].field_2816 = 0
        else:
            require getSafe[idx].field_256
            require 88 * getSafe[idx].field_256 / getSafe[idx].field_256 == 88
            getSafe[idx].field_2816 = 88 * getSafe[idx].field_256 / 100
        getSafe[idx].field_2560 = 880000 * 10^18
        require sub_0d826c0b[stor13[idx].field_1024] + getSafe[idx].field_1536 >= sub_0d826c0b[stor13[idx].field_1024]
        sub_0d826c0b[stor13[idx].field_1024] += getSafe[idx].field_1536
        mem[0] = getSafe[idx].field_1024
        mem[32] = 9
        tokenBalance[stor13[idx].field_1024] = 0
        totalUser--
        s = sha3(idx, 13)
        idx = idx + 1
        s = s + 1
        continue 
    emit 0xaeb4f573: s
}

function sub_ec369480(?) {
    require msg.sender == sub_e69c65efAddress
    require arg1
    require arg2
    require getSafe[arg2].field_0
    require getSafe[arg2].field_1024 == arg1
    mem[96] = getSafe[arg2][5].length
    mem[128] = getSafe[arg2][5].field_0
    idx = 128
    s = 0
    while getSafe[arg2][5].length + 96 > idx:
        mem[idx + 32] = getSafe[arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if getSafe[arg2].field_512 < block.timestamp:
        require ext_code.size(getSafe[arg2].field_1024)
        call getSafe[arg2].field_1024.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= getSafe[arg2].field_1536
        require ext_code.size(getSafe[arg2].field_1024)
        call getSafe[arg2].field_1024.0xa9059cbb with:
             gas gas_remaining wei
            args getSafe[arg2].field_768, getSafe[arg2].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require getSafe[arg2].field_1536 <= tokenBalance[stor13[arg2].field_1024]
        tokenBalance[stor13[arg2].field_1024] -= getSafe[arg2].field_1536
        require sub_0d826c0b[address(arg1)] + getSafe[arg2].field_1536 >= sub_0d826c0b[address(arg1)]
        sub_0d826c0b[address(arg1)] += getSafe[arg2].field_1536
        getSafe[arg2].field_3072 = getSafe[arg2].field_1536
        getSafe[arg2].field_1536 = 0
        getSafe[arg2].field_2048 = block.timestamp
        if not getSafe[arg2].field_256:
            getSafe[arg2].field_2816 = 0
            getSafe[arg2].field_2560 = 880000 * 10^18
        else:
            require getSafe[arg2].field_256
            require 88 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 88
            getSafe[arg2].field_2816 = 88 * getSafe[arg2].field_256 / 100
            getSafe[arg2].field_2560 = 880000 * 10^18
            var56001 = ceil32(getSafe[arg2][5].length)
        emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[128 len getSafe[arg2][5].length]), getSafe[arg2].field_1536, block.timestamp, msg.sender, getSafe[arg2].field_1024
    else:
        require getSafe[arg2].field_2048 <= block.timestamp
        if not getSafe[arg2].field_256:
            if 0 > getSafe[arg2].field_256 / 10:
                if getSafe[arg2].field_256 / 10 <= getSafe[arg2].field_1536:
                    getSafe[arg2].field_3072 = getSafe[arg2].field_256 / 10
                    require sub_0d826c0b[address(arg1)] + (getSafe[arg2].field_256 / 10) >= sub_0d826c0b[address(arg1)]
                    sub_0d826c0b[address(arg1)] += getSafe[arg2].field_256 / 10
                    require getSafe[arg2].field_256 / 10 <= getSafe[arg2].field_1536
                    require getSafe[arg2].field_0
                    require getSafe[arg2].field_1024 == arg1
                    mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                    idx = ceil32(getSafe[arg2][5].length) + 160
                    s = 0
                    while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                        mem[idx + 32] = getSafe[arg2][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    getSafe[arg2].field_1536 -= getSafe[arg2].field_256 / 10
                    getSafe[arg2].field_2048 = block.timestamp
                    if not getSafe[arg2].field_256:
                        if not getSafe[arg2].field_256:
                            require 0 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1792 >= 0
                            require 0 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                            require 0 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1792 >= 0
                            require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                    else:
                        require getSafe[arg2].field_256
                        require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                        if not getSafe[arg2].field_256:
                            require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                            require getSafe[arg2].field_1792 >= 0
                            require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                            require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                            require getSafe[arg2].field_1792 >= 0
                            require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                    require getSafe[arg2].field_256 / 10 <= tokenBalance[stor13[arg2].field_1024]
                    tokenBalance[stor13[arg2].field_1024] -= getSafe[arg2].field_256 / 10
                    require ext_code.size(getSafe[arg2].field_1024)
                    call getSafe[arg2].field_1024.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= getSafe[arg2].field_256 / 10
                    require ext_code.size(getSafe[arg2].field_1024)
                    call getSafe[arg2].field_1024.0xa9059cbb with:
                         gas gas_remaining wei
                        args getSafe[arg2].field_768, getSafe[arg2].field_256 / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = getSafe[arg2].field_256 / 10
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                    emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length]), getSafe[arg2].field_256 / 10, block.timestamp, msg.sender, getSafe[arg2].field_1024
                else:
                    getSafe[arg2].field_3072 = getSafe[arg2].field_1536
                    require sub_0d826c0b[address(arg1)] + getSafe[arg2].field_1536 >= sub_0d826c0b[address(arg1)]
                    sub_0d826c0b[address(arg1)] += getSafe[arg2].field_1536
                    require getSafe[arg2].field_1536 <= getSafe[arg2].field_1536
                    require getSafe[arg2].field_0
                    require getSafe[arg2].field_1024 == arg1
                    mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                    idx = ceil32(getSafe[arg2][5].length) + 160
                    s = 0
                    while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                        mem[idx + 32] = getSafe[arg2][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    getSafe[arg2].field_1536 = 0
                    getSafe[arg2].field_2048 = block.timestamp
                    if not getSafe[arg2].field_256:
                        if not getSafe[arg2].field_256:
                            require 0 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                            require 0 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                            require 0 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                            require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                    else:
                        require getSafe[arg2].field_256
                        require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                        if not getSafe[arg2].field_256:
                            require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                            require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                            require getSafe[arg2].field_1792 >= 0
                            require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                            require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                            require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                            require getSafe[arg2].field_1792 >= 0
                            require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                    require getSafe[arg2].field_1536 <= tokenBalance[stor13[arg2].field_1024]
                    tokenBalance[stor13[arg2].field_1024] -= getSafe[arg2].field_1536
                    require ext_code.size(getSafe[arg2].field_1024)
                    call getSafe[arg2].field_1024.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= getSafe[arg2].field_1536
                    require ext_code.size(getSafe[arg2].field_1024)
                    call getSafe[arg2].field_1024.0xa9059cbb with:
                         gas gas_remaining wei
                        args getSafe[arg2].field_768, getSafe[arg2].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = getSafe[arg2].field_1536
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                    emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length]), getSafe[arg2].field_1536, block.timestamp, msg.sender, getSafe[arg2].field_1024
            else:
                if 0 > getSafe[arg2].field_1536:
                    getSafe[arg2].field_3072 = getSafe[arg2].field_1536
                    require sub_0d826c0b[address(arg1)] + getSafe[arg2].field_1536 >= sub_0d826c0b[address(arg1)]
                    sub_0d826c0b[address(arg1)] += getSafe[arg2].field_1536
                    require getSafe[arg2].field_1536 <= getSafe[arg2].field_1536
                    require getSafe[arg2].field_0
                    require getSafe[arg2].field_1024 == arg1
                    mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                    idx = ceil32(getSafe[arg2][5].length) + 160
                    s = 0
                    while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                        mem[idx + 32] = getSafe[arg2][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    getSafe[arg2].field_1536 = 0
                    getSafe[arg2].field_2048 = block.timestamp
                    if not getSafe[arg2].field_256:
                        if not getSafe[arg2].field_256:
                            require 0 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                            require 0 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                            require 0 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                            require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                    else:
                        require getSafe[arg2].field_256
                        require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                        if not getSafe[arg2].field_256:
                            require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                            require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                            require getSafe[arg2].field_1792 >= 0
                            require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                            require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                            require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                            require getSafe[arg2].field_1792 >= 0
                            require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                    require getSafe[arg2].field_1536 <= tokenBalance[stor13[arg2].field_1024]
                    tokenBalance[stor13[arg2].field_1024] -= getSafe[arg2].field_1536
                    require ext_code.size(getSafe[arg2].field_1024)
                    call getSafe[arg2].field_1024.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= getSafe[arg2].field_1536
                    require ext_code.size(getSafe[arg2].field_1024)
                    call getSafe[arg2].field_1024.0xa9059cbb with:
                         gas gas_remaining wei
                        args getSafe[arg2].field_768, getSafe[arg2].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = getSafe[arg2].field_1536
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                    emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length]), getSafe[arg2].field_1536, block.timestamp, msg.sender, getSafe[arg2].field_1024
                else:
                    getSafe[arg2].field_3072 = 0
                    require sub_0d826c0b[address(arg1)] >= sub_0d826c0b[address(arg1)]
                    require 0 <= getSafe[arg2].field_1536
                    require getSafe[arg2].field_0
                    require getSafe[arg2].field_1024 == arg1
                    mem[64] = (2 * ceil32(getSafe[arg2][5].length)) + 160
                    mem[ceil32(getSafe[arg2][5].length) + 128] = getSafe[arg2][5].length
                    mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                    idx = ceil32(getSafe[arg2][5].length) + 160
                    s = 0
                    while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                        mem[idx + 32] = getSafe[arg2][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    getSafe[arg2].field_2048 = block.timestamp
                    if not getSafe[arg2].field_256:
                        if not getSafe[arg2].field_256:
                            require 0 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1536 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1792 >= 0
                            require 0 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                            require 0 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1536 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1792 >= 0
                            require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                    else:
                        require getSafe[arg2].field_256
                        require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                        if not getSafe[arg2].field_256:
                            require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1536 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                            require getSafe[arg2].field_1792 >= 0
                            require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                            require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                            require getSafe[arg2].field_1536 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                            require getSafe[arg2].field_1792 >= 0
                            require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                            require getSafe[arg2].field_256 > 0
                            require getSafe[arg2].field_256
                            if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 0
                            else:
                                require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                    require 0 <= tokenBalance[stor13[arg2].field_1024]
                    mem[0] = getSafe[arg2].field_1024
                    mem[32] = 9
                    require ext_code.size(getSafe[arg2].field_1024)
                    call getSafe[arg2].field_1024.0x70a08231 with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 0
                    require ext_code.size(getSafe[arg2].field_1024)
                    call getSafe[arg2].field_1024.0xa9059cbb with:
                         gas gas_remaining wei
                        args getSafe[arg2].field_768, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = 0
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                    mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                    if not getSafe[arg2][5].length % 32:
                        emit 0x959346e7: 96, 0, block.timestamp, getSafe[arg2][5].length, mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length], msg.sender, getSafe[arg2].field_1024
                    else:
                        mem[floor32(getSafe[arg2][5].length) + (2 * ceil32(getSafe[arg2][5].length)) + 288] = mem[floor32(getSafe[arg2][5].length) + (2 * ceil32(getSafe[arg2][5].length)) + -getSafe[arg2][5].length % 32 + 320 len getSafe[arg2][5].length % 32]
                        emit 0x959346e7: 96, 0, block.timestamp, getSafe[arg2][5].length, mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len floor32(getSafe[arg2][5].length) + 32], msg.sender, getSafe[arg2].field_1024
        else:
            require getSafe[arg2].field_256
            require getSafe[arg2].field_256 * getSafe[arg2].field_2304 / getSafe[arg2].field_256 == getSafe[arg2].field_2304
            if getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100:
                require getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100
                require (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100 == block.timestamp - getSafe[arg2].field_2048
                if (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600 <= getSafe[arg2].field_256 / 10:
                    if (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600 <= getSafe[arg2].field_1536:
                        getSafe[arg2].field_3072 = (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600
                        require sub_0d826c0b[address(arg1)] + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) >= sub_0d826c0b[address(arg1)]
                        sub_0d826c0b[address(arg1)] += (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600
                        require (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600 <= getSafe[arg2].field_1536
                        require getSafe[arg2].field_0
                        require getSafe[arg2].field_1024 == arg1
                        mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                        idx = ceil32(getSafe[arg2][5].length) + 160
                        s = 0
                        while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                            mem[idx + 32] = getSafe[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        getSafe[arg2].field_1536 -= (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600
                        getSafe[arg2].field_2048 = block.timestamp
                        if not getSafe[arg2].field_256:
                            if not getSafe[arg2].field_256:
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                            if not getSafe[arg2].field_256:
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + ((block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        require (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600 <= tokenBalance[stor13[arg2].field_1024]
                        tokenBalance[stor13[arg2].field_1024] -= (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args getSafe[arg2].field_768, (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                        emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length]), (block.timestamp * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) - (getSafe[arg2].field_2048 * getSafe[arg2].field_256 * getSafe[arg2].field_2304 / 100) / 720 * 24 * 3600, block.timestamp, msg.sender, getSafe[arg2].field_1024
                    else:
                        getSafe[arg2].field_3072 = getSafe[arg2].field_1536
                        require sub_0d826c0b[address(arg1)] + getSafe[arg2].field_1536 >= sub_0d826c0b[address(arg1)]
                        sub_0d826c0b[address(arg1)] += getSafe[arg2].field_1536
                        require getSafe[arg2].field_1536 <= getSafe[arg2].field_1536
                        require getSafe[arg2].field_0
                        require getSafe[arg2].field_1024 == arg1
                        mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                        idx = ceil32(getSafe[arg2][5].length) + 160
                        s = 0
                        while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                            mem[idx + 32] = getSafe[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        getSafe[arg2].field_1536 = 0
                        getSafe[arg2].field_2048 = block.timestamp
                        if not getSafe[arg2].field_256:
                            if not getSafe[arg2].field_256:
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                            if not getSafe[arg2].field_256:
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        require getSafe[arg2].field_1536 <= tokenBalance[stor13[arg2].field_1024]
                        tokenBalance[stor13[arg2].field_1024] -= getSafe[arg2].field_1536
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= getSafe[arg2].field_1536
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args getSafe[arg2].field_768, getSafe[arg2].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = getSafe[arg2].field_1536
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                        emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length]), getSafe[arg2].field_1536, block.timestamp, msg.sender, getSafe[arg2].field_1024
                else:
                    if getSafe[arg2].field_256 / 10 <= getSafe[arg2].field_1536:
                        getSafe[arg2].field_3072 = getSafe[arg2].field_256 / 10
                        require sub_0d826c0b[address(arg1)] + (getSafe[arg2].field_256 / 10) >= sub_0d826c0b[address(arg1)]
                        sub_0d826c0b[address(arg1)] += getSafe[arg2].field_256 / 10
                        require getSafe[arg2].field_256 / 10 <= getSafe[arg2].field_1536
                        require getSafe[arg2].field_0
                        require getSafe[arg2].field_1024 == arg1
                        mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                        idx = ceil32(getSafe[arg2][5].length) + 160
                        s = 0
                        while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                            mem[idx + 32] = getSafe[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        getSafe[arg2].field_1536 -= getSafe[arg2].field_256 / 10
                        getSafe[arg2].field_2048 = block.timestamp
                        if not getSafe[arg2].field_256:
                            if not getSafe[arg2].field_256:
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                            if not getSafe[arg2].field_256:
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        require getSafe[arg2].field_256 / 10 <= tokenBalance[stor13[arg2].field_1024]
                        tokenBalance[stor13[arg2].field_1024] -= getSafe[arg2].field_256 / 10
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= getSafe[arg2].field_256 / 10
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args getSafe[arg2].field_768, getSafe[arg2].field_256 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = getSafe[arg2].field_256 / 10
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                        emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length]), getSafe[arg2].field_256 / 10, block.timestamp, msg.sender, getSafe[arg2].field_1024
                    else:
                        getSafe[arg2].field_3072 = getSafe[arg2].field_1536
                        require sub_0d826c0b[address(arg1)] + getSafe[arg2].field_1536 >= sub_0d826c0b[address(arg1)]
                        sub_0d826c0b[address(arg1)] += getSafe[arg2].field_1536
                        require getSafe[arg2].field_1536 <= getSafe[arg2].field_1536
                        require getSafe[arg2].field_0
                        require getSafe[arg2].field_1024 == arg1
                        mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                        idx = ceil32(getSafe[arg2][5].length) + 160
                        s = 0
                        while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                            mem[idx + 32] = getSafe[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        getSafe[arg2].field_1536 = 0
                        getSafe[arg2].field_2048 = block.timestamp
                        if not getSafe[arg2].field_256:
                            if not getSafe[arg2].field_256:
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                            if not getSafe[arg2].field_256:
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        require getSafe[arg2].field_1536 <= tokenBalance[stor13[arg2].field_1024]
                        tokenBalance[stor13[arg2].field_1024] -= getSafe[arg2].field_1536
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= getSafe[arg2].field_1536
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args getSafe[arg2].field_768, getSafe[arg2].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = getSafe[arg2].field_1536
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                        emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length]), getSafe[arg2].field_1536, block.timestamp, msg.sender, getSafe[arg2].field_1024
            else:
                if 0 > getSafe[arg2].field_256 / 10:
                    if getSafe[arg2].field_256 / 10 <= getSafe[arg2].field_1536:
                        getSafe[arg2].field_3072 = getSafe[arg2].field_256 / 10
                        require sub_0d826c0b[address(arg1)] + (getSafe[arg2].field_256 / 10) >= sub_0d826c0b[address(arg1)]
                        sub_0d826c0b[address(arg1)] += getSafe[arg2].field_256 / 10
                        require getSafe[arg2].field_256 / 10 <= getSafe[arg2].field_1536
                        require getSafe[arg2].field_0
                        require getSafe[arg2].field_1024 == arg1
                        mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                        idx = ceil32(getSafe[arg2][5].length) + 160
                        s = 0
                        while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                            mem[idx + 32] = getSafe[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        getSafe[arg2].field_1536 -= getSafe[arg2].field_256 / 10
                        getSafe[arg2].field_2048 = block.timestamp
                        if not getSafe[arg2].field_256:
                            if not getSafe[arg2].field_256:
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                            if not getSafe[arg2].field_256:
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 - (getSafe[arg2].field_256 / 10) <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + (getSafe[arg2].field_256 / 10) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        require getSafe[arg2].field_256 / 10 <= tokenBalance[stor13[arg2].field_1024]
                        tokenBalance[stor13[arg2].field_1024] -= getSafe[arg2].field_256 / 10
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= getSafe[arg2].field_256 / 10
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args getSafe[arg2].field_768, getSafe[arg2].field_256 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = getSafe[arg2].field_256 / 10
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                        emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length]), getSafe[arg2].field_256 / 10, block.timestamp, msg.sender, getSafe[arg2].field_1024
                    else:
                        getSafe[arg2].field_3072 = getSafe[arg2].field_1536
                        require sub_0d826c0b[address(arg1)] + getSafe[arg2].field_1536 >= sub_0d826c0b[address(arg1)]
                        sub_0d826c0b[address(arg1)] += getSafe[arg2].field_1536
                        require getSafe[arg2].field_1536 <= getSafe[arg2].field_1536
                        require getSafe[arg2].field_0
                        require getSafe[arg2].field_1024 == arg1
                        mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                        idx = ceil32(getSafe[arg2][5].length) + 160
                        s = 0
                        while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                            mem[idx + 32] = getSafe[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        getSafe[arg2].field_1536 = 0
                        getSafe[arg2].field_2048 = block.timestamp
                        if not getSafe[arg2].field_256:
                            if not getSafe[arg2].field_256:
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                            if not getSafe[arg2].field_256:
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        require getSafe[arg2].field_1536 <= tokenBalance[stor13[arg2].field_1024]
                        tokenBalance[stor13[arg2].field_1024] -= getSafe[arg2].field_1536
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= getSafe[arg2].field_1536
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args getSafe[arg2].field_768, getSafe[arg2].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = getSafe[arg2].field_1536
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                        emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length]), getSafe[arg2].field_1536, block.timestamp, msg.sender, getSafe[arg2].field_1024
                else:
                    if 0 > getSafe[arg2].field_1536:
                        getSafe[arg2].field_3072 = getSafe[arg2].field_1536
                        require sub_0d826c0b[address(arg1)] + getSafe[arg2].field_1536 >= sub_0d826c0b[address(arg1)]
                        sub_0d826c0b[address(arg1)] += getSafe[arg2].field_1536
                        require getSafe[arg2].field_1536 <= getSafe[arg2].field_1536
                        require getSafe[arg2].field_0
                        require getSafe[arg2].field_1024 == arg1
                        mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                        idx = ceil32(getSafe[arg2][5].length) + 160
                        s = 0
                        while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                            mem[idx + 32] = getSafe[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        getSafe[arg2].field_1536 = 0
                        getSafe[arg2].field_2048 = block.timestamp
                        if not getSafe[arg2].field_256:
                            if not getSafe[arg2].field_256:
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_256 + getSafe[arg2].field_1792 >= getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                            if not getSafe[arg2].field_256:
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        require getSafe[arg2].field_1536 <= tokenBalance[stor13[arg2].field_1024]
                        tokenBalance[stor13[arg2].field_1024] -= getSafe[arg2].field_1536
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= getSafe[arg2].field_1536
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args getSafe[arg2].field_768, getSafe[arg2].field_1536
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = getSafe[arg2].field_1536
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                        emit 0x959346e7: Array(len=getSafe[arg2][5].length, data=mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length]), getSafe[arg2].field_1536, block.timestamp, msg.sender, getSafe[arg2].field_1024
                    else:
                        getSafe[arg2].field_3072 = 0
                        require sub_0d826c0b[address(arg1)] >= sub_0d826c0b[address(arg1)]
                        require 0 <= getSafe[arg2].field_1536
                        require getSafe[arg2].field_0
                        require getSafe[arg2].field_1024 == arg1
                        mem[64] = (2 * ceil32(getSafe[arg2][5].length)) + 160
                        mem[ceil32(getSafe[arg2][5].length) + 128] = getSafe[arg2][5].length
                        mem[ceil32(getSafe[arg2][5].length) + 160] = getSafe[arg2][5].field_0
                        idx = ceil32(getSafe[arg2][5].length) + 160
                        s = 0
                        while ceil32(getSafe[arg2][5].length) + getSafe[arg2][5].length + 128 > idx:
                            mem[idx + 32] = getSafe[arg2][s + 5].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        getSafe[arg2].field_2048 = block.timestamp
                        if not getSafe[arg2].field_256:
                            if not getSafe[arg2].field_256:
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 0 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        else:
                            require getSafe[arg2].field_256
                            require 12 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 12
                            if not getSafe[arg2].field_256:
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 0 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 / getSafe[arg2].field_256
                            else:
                                require getSafe[arg2].field_256
                                require 16 * getSafe[arg2].field_256 / getSafe[arg2].field_256 == 16
                                require 12 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256
                                require getSafe[arg2].field_1536 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100)
                                require getSafe[arg2].field_1792 >= 0
                                require 16 * getSafe[arg2].field_256 / 100 <= getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792
                                require getSafe[arg2].field_256 > 0
                                require getSafe[arg2].field_256
                                if not getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256:
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 0
                                else:
                                    require getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                                    require 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 / getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256 == 100 * 10^18
                                    getSafe[arg2].field_2816 = getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100)
                                    getSafe[arg2].field_2560 = 100 * 10^18 * getSafe[arg2].field_256 - (12 * getSafe[arg2].field_256 / 100) - getSafe[arg2].field_1536 + getSafe[arg2].field_1792 - (16 * getSafe[arg2].field_256 / 100) / getSafe[arg2].field_256
                        require 0 <= tokenBalance[stor13[arg2].field_1024]
                        mem[0] = getSafe[arg2].field_1024
                        mem[32] = 9
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0x70a08231 with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 0
                        require ext_code.size(getSafe[arg2].field_1024)
                        call getSafe[arg2].field_1024.0xa9059cbb with:
                             gas gas_remaining wei
                            args getSafe[arg2].field_768, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 192] = 0
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 224] = block.timestamp
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 160] = 96
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 256] = getSafe[arg2][5].length
                        mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len ceil32(getSafe[arg2][5].length)] = mem[ceil32(getSafe[arg2][5].length) + 160 len ceil32(getSafe[arg2][5].length)]
                        if not getSafe[arg2][5].length % 32:
                            emit 0x959346e7: 96, 0, block.timestamp, getSafe[arg2][5].length, mem[ceil32(getSafe[arg2][5].length) + 160 len getSafe[arg2][5].length], msg.sender, getSafe[arg2].field_1024
                        else:
                            mem[floor32(getSafe[arg2][5].length) + (2 * ceil32(getSafe[arg2][5].length)) + 288] = mem[floor32(getSafe[arg2][5].length) + (2 * ceil32(getSafe[arg2][5].length)) + -getSafe[arg2][5].length % 32 + 320 len getSafe[arg2][5].length % 32]
                            emit 0x959346e7: 96, 0, block.timestamp, getSafe[arg2][5].length, mem[(2 * ceil32(getSafe[arg2][5].length)) + 288 len floor32(getSafe[arg2][5].length) + 32], msg.sender, getSafe[arg2].field_1024
}

function sub_e61021e8(?) {
    require arg1
    require arg2 > 0
    require arg2 <= sub_99613956[address(arg1)]
    require stor6[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg2:
        if not arg2:
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = sub_e69c65efAddress
                    emit 0x3bf019f5: sub_e69c65efAddress, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_2c0a3cd2[address(msg.sender)]++
                    sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                    mem[96] = stor3
                    mem[128] = arg2
                    mem[160] = block.timestamp + sub_e2afe3bb
                    mem[192] = msg.sender
                    mem[224] = arg1
                    mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[544] <= 4294967296
                    require mem[544] + 32 <= return_data.size
                    require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                    mem[256] = mem[544] + 544
                    mem[288] = 0
                    mem[320] = 0
                    mem[352] = block.timestamp
                    mem[384] = percent
                    mem[416] = 0
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = sub_e69c65efAddress
                    getSafe[stor3].field_0 = stor3
                    getSafe[stor3].field_256 = arg2
                    getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor3].field_768 = msg.sender
                    getSafe[stor3].field_1024 = arg1
                    getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor3].field_1536 = 0
                    getSafe[stor3].field_1792 = 0
                    getSafe[stor3].field_2048 = block.timestamp
                    getSafe[stor3].field_2304 = percent
                    getSafe[stor3].field_2560 = 0
                    getSafe[stor3].field_2816 = 0
                    getSafe[stor3].field_3072 = 0
                    getSafe[stor3].field_3328 = sub_e69c65efAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    tokenBalance[address(arg1)] += arg2
                    stor3++
                    totalUser++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7206 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7206 + ceil32(return_data.size) + 544]
                    _7334 = mem[_7206 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7206 + ceil32(return_data.size) + 544])] = mem[_7206 + ceil32(return_data.size) + 576 len ceil32(mem[_7206 + ceil32(return_data.size) + 544])]
                    if not _7334 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7334 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7334) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7334) + (2 * ceil32(return_data.size)) + -(_7334 % 32) + 704 len _7334 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7334) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = sub_e69c65efAddress
                    emit 0x3bf019f5: sub_e69c65efAddress, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_2c0a3cd2[address(msg.sender)]++
                    sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                    mem[96] = stor3
                    mem[128] = arg2
                    mem[160] = block.timestamp + sub_e2afe3bb
                    mem[192] = msg.sender
                    mem[224] = arg1
                    mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[544] <= 4294967296
                    require mem[544] + 32 <= return_data.size
                    require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                    mem[256] = mem[544] + 544
                    mem[288] = 72 * arg2 / 100
                    mem[320] = 0
                    mem[352] = block.timestamp
                    mem[384] = percent
                    mem[416] = 0
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = sub_e69c65efAddress
                    getSafe[stor3].field_0 = stor3
                    getSafe[stor3].field_256 = arg2
                    getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor3].field_768 = msg.sender
                    getSafe[stor3].field_1024 = arg1
                    getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor3].field_1536 = 72 * arg2 / 100
                    getSafe[stor3].field_1792 = 0
                    getSafe[stor3].field_2048 = block.timestamp
                    getSafe[stor3].field_2304 = percent
                    getSafe[stor3].field_2560 = 0
                    getSafe[stor3].field_2816 = 0
                    getSafe[stor3].field_3072 = 0
                    getSafe[stor3].field_3328 = sub_e69c65efAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    tokenBalance[address(arg1)] += arg2
                    stor3++
                    totalUser++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7205 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7205 + ceil32(return_data.size) + 544]
                    _7331 = mem[_7205 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7205 + ceil32(return_data.size) + 544])] = mem[_7205 + ceil32(return_data.size) + 576 len ceil32(mem[_7205 + ceil32(return_data.size) + 544])]
                    if not _7331 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7331 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7331) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7331) + (2 * ceil32(return_data.size)) + -(_7331 % 32) + 704 len _7331 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7331) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 0 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_2c0a3cd2[address(msg.sender)]++
                        sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                        mem[96] = stor3
                        mem[128] = arg2
                        mem[160] = block.timestamp + sub_e2afe3bb
                        mem[192] = msg.sender
                        mem[224] = arg1
                        mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[544] <= 4294967296
                        require mem[544] + 32 <= return_data.size
                        require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                        mem[256] = mem[544] + 544
                        mem[288] = arg2
                        mem[320] = 0
                        mem[352] = block.timestamp
                        mem[384] = percent
                        mem[416] = 0
                        mem[448] = 0
                        mem[480] = 0
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor3].field_0 = stor3
                        getSafe[stor3].field_256 = arg2
                        getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor3].field_768 = msg.sender
                        getSafe[stor3].field_1024 = arg1
                        getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor3].field_1536 = arg2
                        getSafe[stor3].field_1792 = 0
                        getSafe[stor3].field_2048 = block.timestamp
                        getSafe[stor3].field_2304 = percent
                        getSafe[stor3].field_2560 = 0
                        getSafe[stor3].field_2816 = 0
                        getSafe[stor3].field_3072 = 0
                        getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        tokenBalance[address(arg1)] += arg2
                        stor3++
                        totalUser++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7204 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7204 + ceil32(return_data.size) + 544]
                        _7328 = mem[_7204 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7204 + ceil32(return_data.size) + 544])] = mem[_7204 + ceil32(return_data.size) + 576 len ceil32(mem[_7204 + ceil32(return_data.size) + 544])]
                        if not _7328 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7328 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7328) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7328) + (2 * ceil32(return_data.size)) + -(_7328 % 32) + 704 len _7328 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7328) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2
                            mem[320] = 0
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2
                            getSafe[stor3].field_1792 = 0
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7203 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7203 + ceil32(return_data.size) + 544]
                            _7325 = mem[_7203 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7203 + ceil32(return_data.size) + 544])] = mem[_7203 + ceil32(return_data.size) + 576 len ceil32(mem[_7203 + ceil32(return_data.size) + 544])]
                            if not _7325 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7325 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7325) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7325) + (2 * ceil32(return_data.size)) + -(_7325 % 32) + 704 len _7325 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7325) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_a54f12e4[address(arg1)] - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] -= 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2
                            mem[320] = 0
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2
                            getSafe[stor3].field_1792 = 0
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7202 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7202 + ceil32(return_data.size) + 544]
                            _7322 = mem[_7202 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7202 + ceil32(return_data.size) + 544])] = mem[_7202 + ceil32(return_data.size) + 576 len ceil32(mem[_7202 + ceil32(return_data.size) + 544])]
                            if not _7322 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7322 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7322) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7322) + (2 * ceil32(return_data.size)) + -(_7322 % 32) + 704 len _7322 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7322) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_2c0a3cd2[address(msg.sender)]++
                        sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                        mem[96] = stor3
                        mem[128] = arg2
                        mem[160] = block.timestamp + sub_e2afe3bb
                        mem[192] = msg.sender
                        mem[224] = arg1
                        mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[544] <= 4294967296
                        require mem[544] + 32 <= return_data.size
                        require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                        mem[256] = mem[544] + 544
                        mem[288] = arg2
                        mem[320] = 16 * arg2 / 100
                        mem[352] = block.timestamp
                        mem[384] = percent
                        mem[416] = 0
                        mem[448] = 0
                        mem[480] = 0
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor3].field_0 = stor3
                        getSafe[stor3].field_256 = arg2
                        getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor3].field_768 = msg.sender
                        getSafe[stor3].field_1024 = arg1
                        getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor3].field_1536 = arg2
                        getSafe[stor3].field_1792 = 16 * arg2 / 100
                        getSafe[stor3].field_2048 = block.timestamp
                        getSafe[stor3].field_2304 = percent
                        getSafe[stor3].field_2560 = 0
                        getSafe[stor3].field_2816 = 0
                        getSafe[stor3].field_3072 = 0
                        getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        tokenBalance[address(arg1)] += arg2
                        stor3++
                        totalUser++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7201 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7201 + ceil32(return_data.size) + 544]
                        _7319 = mem[_7201 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7201 + ceil32(return_data.size) + 544])] = mem[_7201 + ceil32(return_data.size) + 576 len ceil32(mem[_7201 + ceil32(return_data.size) + 544])]
                        if not _7319 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7319 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7319) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7319) + (2 * ceil32(return_data.size)) + -(_7319 % 32) + 704 len _7319 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7319) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2
                            mem[320] = 16 * arg2 / 100
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2
                            getSafe[stor3].field_1792 = 16 * arg2 / 100
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7200 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7200 + ceil32(return_data.size) + 544]
                            _7316 = mem[_7200 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7200 + ceil32(return_data.size) + 544])] = mem[_7200 + ceil32(return_data.size) + 576 len ceil32(mem[_7200 + ceil32(return_data.size) + 544])]
                            if not _7316 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7316 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7316) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7316) + (2 * ceil32(return_data.size)) + -(_7316 % 32) + 704 len _7316 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7316) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_a54f12e4[address(arg1)] - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] -= 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2
                            mem[320] = 16 * arg2 / 100
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2
                            getSafe[stor3].field_1792 = 16 * arg2 / 100
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7199 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7199 + ceil32(return_data.size) + 544]
                            _7313 = mem[_7199 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7199 + ceil32(return_data.size) + 544])] = mem[_7199 + ceil32(return_data.size) + 576 len ceil32(mem[_7199 + ceil32(return_data.size) + 544])]
                            if not _7313 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7313 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7313) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7313) + (2 * ceil32(return_data.size)) + -(_7313 % 32) + 704 len _7313 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7313) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            require arg2
            require 28 * arg2 / arg2 == 28
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = sub_e69c65efAddress
                    emit 0x3bf019f5: sub_e69c65efAddress, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_2c0a3cd2[address(msg.sender)]++
                    sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                    mem[96] = stor3
                    mem[128] = arg2
                    mem[160] = block.timestamp + sub_e2afe3bb
                    mem[192] = msg.sender
                    mem[224] = arg1
                    mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[544] <= 4294967296
                    require mem[544] + 32 <= return_data.size
                    require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                    mem[256] = mem[544] + 544
                    mem[288] = 0
                    mem[320] = 0
                    mem[352] = block.timestamp
                    mem[384] = percent
                    mem[416] = 0
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = sub_e69c65efAddress
                    getSafe[stor3].field_0 = stor3
                    getSafe[stor3].field_256 = arg2
                    getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor3].field_768 = msg.sender
                    getSafe[stor3].field_1024 = arg1
                    getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor3].field_1536 = 0
                    getSafe[stor3].field_1792 = 0
                    getSafe[stor3].field_2048 = block.timestamp
                    getSafe[stor3].field_2304 = percent
                    getSafe[stor3].field_2560 = 0
                    getSafe[stor3].field_2816 = 0
                    getSafe[stor3].field_3072 = 0
                    getSafe[stor3].field_3328 = sub_e69c65efAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    tokenBalance[address(arg1)] += arg2
                    stor3++
                    totalUser++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7198 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7198 + ceil32(return_data.size) + 544]
                    _7310 = mem[_7198 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7198 + ceil32(return_data.size) + 544])] = mem[_7198 + ceil32(return_data.size) + 576 len ceil32(mem[_7198 + ceil32(return_data.size) + 544])]
                    if not _7310 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7310 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7310) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7310) + (2 * ceil32(return_data.size)) + -(_7310 % 32) + 704 len _7310 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7310) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = sub_e69c65efAddress
                    emit 0x3bf019f5: sub_e69c65efAddress, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_2c0a3cd2[address(msg.sender)]++
                    sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                    mem[96] = stor3
                    mem[128] = arg2
                    mem[160] = block.timestamp + sub_e2afe3bb
                    mem[192] = msg.sender
                    mem[224] = arg1
                    mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[544] <= 4294967296
                    require mem[544] + 32 <= return_data.size
                    require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                    mem[256] = mem[544] + 544
                    mem[288] = 72 * arg2 / 100
                    mem[320] = 0
                    mem[352] = block.timestamp
                    mem[384] = percent
                    mem[416] = 0
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = sub_e69c65efAddress
                    getSafe[stor3].field_0 = stor3
                    getSafe[stor3].field_256 = arg2
                    getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor3].field_768 = msg.sender
                    getSafe[stor3].field_1024 = arg1
                    getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor3].field_1536 = 72 * arg2 / 100
                    getSafe[stor3].field_1792 = 0
                    getSafe[stor3].field_2048 = block.timestamp
                    getSafe[stor3].field_2304 = percent
                    getSafe[stor3].field_2560 = 0
                    getSafe[stor3].field_2816 = 0
                    getSafe[stor3].field_3072 = 0
                    getSafe[stor3].field_3328 = sub_e69c65efAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    tokenBalance[address(arg1)] += arg2
                    stor3++
                    totalUser++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7197 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7197 + ceil32(return_data.size) + 544]
                    _7307 = mem[_7197 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7197 + ceil32(return_data.size) + 544])] = mem[_7197 + ceil32(return_data.size) + 576 len ceil32(mem[_7197 + ceil32(return_data.size) + 544])]
                    if not _7307 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7307 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7307) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7307) + (2 * ceil32(return_data.size)) + -(_7307 % 32) + 704 len _7307 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7307) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 0 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_2c0a3cd2[address(msg.sender)]++
                        sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                        mem[96] = stor3
                        mem[128] = arg2
                        mem[160] = block.timestamp + sub_e2afe3bb
                        mem[192] = msg.sender
                        mem[224] = arg1
                        mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[544] <= 4294967296
                        require mem[544] + 32 <= return_data.size
                        require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                        mem[256] = mem[544] + 544
                        mem[288] = arg2
                        mem[320] = 0
                        mem[352] = block.timestamp
                        mem[384] = percent
                        mem[416] = 0
                        mem[448] = 0
                        mem[480] = 0
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor3].field_0 = stor3
                        getSafe[stor3].field_256 = arg2
                        getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor3].field_768 = msg.sender
                        getSafe[stor3].field_1024 = arg1
                        getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor3].field_1536 = arg2
                        getSafe[stor3].field_1792 = 0
                        getSafe[stor3].field_2048 = block.timestamp
                        getSafe[stor3].field_2304 = percent
                        getSafe[stor3].field_2560 = 0
                        getSafe[stor3].field_2816 = 0
                        getSafe[stor3].field_3072 = 0
                        getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        tokenBalance[address(arg1)] += arg2
                        stor3++
                        totalUser++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7196 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7196 + ceil32(return_data.size) + 544]
                        _7304 = mem[_7196 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7196 + ceil32(return_data.size) + 544])] = mem[_7196 + ceil32(return_data.size) + 576 len ceil32(mem[_7196 + ceil32(return_data.size) + 544])]
                        if not _7304 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7304 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7304) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7304) + (2 * ceil32(return_data.size)) + -(_7304 % 32) + 704 len _7304 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7304) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2
                            mem[320] = 0
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2
                            getSafe[stor3].field_1792 = 0
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7195 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7195 + ceil32(return_data.size) + 544]
                            _7301 = mem[_7195 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7195 + ceil32(return_data.size) + 544])] = mem[_7195 + ceil32(return_data.size) + 576 len ceil32(mem[_7195 + ceil32(return_data.size) + 544])]
                            if not _7301 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7301 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7301) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7301) + (2 * ceil32(return_data.size)) + -(_7301 % 32) + 704 len _7301 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7301) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_a54f12e4[address(arg1)] - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] -= 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2
                            mem[320] = 0
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2
                            getSafe[stor3].field_1792 = 0
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7194 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7194 + ceil32(return_data.size) + 544]
                            _7298 = mem[_7194 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7194 + ceil32(return_data.size) + 544])] = mem[_7194 + ceil32(return_data.size) + 576 len ceil32(mem[_7194 + ceil32(return_data.size) + 544])]
                            if not _7298 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7298 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7298) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7298) + (2 * ceil32(return_data.size)) + -(_7298 % 32) + 704 len _7298 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7298) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_2c0a3cd2[address(msg.sender)]++
                        sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                        mem[96] = stor3
                        mem[128] = arg2
                        mem[160] = block.timestamp + sub_e2afe3bb
                        mem[192] = msg.sender
                        mem[224] = arg1
                        mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[544] <= 4294967296
                        require mem[544] + 32 <= return_data.size
                        require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                        mem[256] = mem[544] + 544
                        mem[288] = arg2
                        mem[320] = 16 * arg2 / 100
                        mem[352] = block.timestamp
                        mem[384] = percent
                        mem[416] = 0
                        mem[448] = 0
                        mem[480] = 0
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor3].field_0 = stor3
                        getSafe[stor3].field_256 = arg2
                        getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor3].field_768 = msg.sender
                        getSafe[stor3].field_1024 = arg1
                        getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor3].field_1536 = arg2
                        getSafe[stor3].field_1792 = 16 * arg2 / 100
                        getSafe[stor3].field_2048 = block.timestamp
                        getSafe[stor3].field_2304 = percent
                        getSafe[stor3].field_2560 = 0
                        getSafe[stor3].field_2816 = 0
                        getSafe[stor3].field_3072 = 0
                        getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        tokenBalance[address(arg1)] += arg2
                        stor3++
                        totalUser++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7193 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7193 + ceil32(return_data.size) + 544]
                        _7295 = mem[_7193 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7193 + ceil32(return_data.size) + 544])] = mem[_7193 + ceil32(return_data.size) + 576 len ceil32(mem[_7193 + ceil32(return_data.size) + 544])]
                        if not _7295 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7295 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7295) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7295) + (2 * ceil32(return_data.size)) + -(_7295 % 32) + 704 len _7295 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7295) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2
                            mem[320] = 16 * arg2 / 100
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2
                            getSafe[stor3].field_1792 = 16 * arg2 / 100
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7192 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7192 + ceil32(return_data.size) + 544]
                            _7292 = mem[_7192 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7192 + ceil32(return_data.size) + 544])] = mem[_7192 + ceil32(return_data.size) + 576 len ceil32(mem[_7192 + ceil32(return_data.size) + 544])]
                            if not _7292 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7292 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7292) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7292) + (2 * ceil32(return_data.size)) + -(_7292 % 32) + 704 len _7292 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7292) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_a54f12e4[address(arg1)] - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] -= 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2
                            mem[320] = 16 * arg2 / 100
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2
                            getSafe[stor3].field_1792 = 16 * arg2 / 100
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7191 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7191 + ceil32(return_data.size) + 544]
                            _7289 = mem[_7191 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7191 + ceil32(return_data.size) + 544])] = mem[_7191 + ceil32(return_data.size) + 576 len ceil32(mem[_7191 + ceil32(return_data.size) + 544])]
                            if not _7289 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7289 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7289) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7289) + (2 * ceil32(return_data.size)) + -(_7289 % 32) + 704 len _7289 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7289) + ceil32(return_data.size) + 160], msg.sender, arg1
    else:
        require arg2
        require 12 * arg2 / arg2 == 12
        if not arg2:
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = sub_e69c65efAddress
                    emit 0x3bf019f5: sub_e69c65efAddress, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_2c0a3cd2[address(msg.sender)]++
                    sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                    mem[96] = stor3
                    mem[128] = arg2
                    mem[160] = block.timestamp + sub_e2afe3bb
                    mem[192] = msg.sender
                    mem[224] = arg1
                    mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[544] <= 4294967296
                    require mem[544] + 32 <= return_data.size
                    require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                    mem[256] = mem[544] + 544
                    mem[288] = 0
                    mem[320] = 0
                    mem[352] = block.timestamp
                    mem[384] = percent
                    mem[416] = 0
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = sub_e69c65efAddress
                    getSafe[stor3].field_0 = stor3
                    getSafe[stor3].field_256 = arg2
                    getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor3].field_768 = msg.sender
                    getSafe[stor3].field_1024 = arg1
                    getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor3].field_1536 = 0
                    getSafe[stor3].field_1792 = 0
                    getSafe[stor3].field_2048 = block.timestamp
                    getSafe[stor3].field_2304 = percent
                    getSafe[stor3].field_2560 = 0
                    getSafe[stor3].field_2816 = 0
                    getSafe[stor3].field_3072 = 0
                    getSafe[stor3].field_3328 = sub_e69c65efAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    tokenBalance[address(arg1)] += arg2
                    stor3++
                    totalUser++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7190 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7190 + ceil32(return_data.size) + 544]
                    _7286 = mem[_7190 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7190 + ceil32(return_data.size) + 544])] = mem[_7190 + ceil32(return_data.size) + 576 len ceil32(mem[_7190 + ceil32(return_data.size) + 544])]
                    if not _7286 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7286 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7286) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7286) + (2 * ceil32(return_data.size)) + -(_7286 % 32) + 704 len _7286 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7286) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = sub_e69c65efAddress
                    emit 0x3bf019f5: sub_e69c65efAddress, msg.sender
                    require sub_a54f12e4[address(arg1)] >= sub_a54f12e4[address(arg1)]
                    sub_2c0a3cd2[address(msg.sender)]++
                    sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                    mem[96] = stor3
                    mem[128] = arg2
                    mem[160] = block.timestamp + sub_e2afe3bb
                    mem[192] = msg.sender
                    mem[224] = arg1
                    mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[544] <= 4294967296
                    require mem[544] + 32 <= return_data.size
                    require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                    mem[256] = mem[544] + 544
                    mem[288] = 72 * arg2 / 100
                    mem[320] = 0
                    mem[352] = block.timestamp
                    mem[384] = percent
                    mem[416] = 0
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = sub_e69c65efAddress
                    getSafe[stor3].field_0 = stor3
                    getSafe[stor3].field_256 = arg2
                    getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor3].field_768 = msg.sender
                    getSafe[stor3].field_1024 = arg1
                    getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor3].field_1536 = 72 * arg2 / 100
                    getSafe[stor3].field_1792 = 0
                    getSafe[stor3].field_2048 = block.timestamp
                    getSafe[stor3].field_2304 = percent
                    getSafe[stor3].field_2560 = 0
                    getSafe[stor3].field_2816 = 0
                    getSafe[stor3].field_3072 = 0
                    getSafe[stor3].field_3328 = sub_e69c65efAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    tokenBalance[address(arg1)] += arg2
                    stor3++
                    totalUser++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7189 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7189 + ceil32(return_data.size) + 544]
                    _7283 = mem[_7189 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7189 + ceil32(return_data.size) + 544])] = mem[_7189 + ceil32(return_data.size) + 576 len ceil32(mem[_7189 + ceil32(return_data.size) + 544])]
                    if not _7283 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7283 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7283) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7283) + (2 * ceil32(return_data.size)) + -(_7283 % 32) + 704 len _7283 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7283) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        sub_2c0a3cd2[address(msg.sender)]++
                        sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                        mem[96] = stor3
                        mem[128] = arg2
                        mem[160] = block.timestamp + sub_e2afe3bb
                        mem[192] = msg.sender
                        mem[224] = arg1
                        mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[544] <= 4294967296
                        require mem[544] + 32 <= return_data.size
                        require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                        mem[256] = mem[544] + 544
                        mem[288] = arg2 - (12 * arg2 / 100)
                        mem[320] = 0
                        mem[352] = block.timestamp
                        mem[384] = percent
                        mem[416] = 0
                        mem[448] = 0
                        mem[480] = 0
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor3].field_0 = stor3
                        getSafe[stor3].field_256 = arg2
                        getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor3].field_768 = msg.sender
                        getSafe[stor3].field_1024 = arg1
                        getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor3].field_1792 = 0
                        getSafe[stor3].field_2048 = block.timestamp
                        getSafe[stor3].field_2304 = percent
                        getSafe[stor3].field_2560 = 0
                        getSafe[stor3].field_2816 = 0
                        getSafe[stor3].field_3072 = 0
                        getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        tokenBalance[address(arg1)] += arg2
                        stor3++
                        totalUser++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7188 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7188 + ceil32(return_data.size) + 544]
                        _7280 = mem[_7188 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7188 + ceil32(return_data.size) + 544])] = mem[_7188 + ceil32(return_data.size) + 576 len ceil32(mem[_7188 + ceil32(return_data.size) + 544])]
                        if not _7280 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7280 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7280) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7280) + (2 * ceil32(return_data.size)) + -(_7280 % 32) + 704 len _7280 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7280) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2 - (12 * arg2 / 100)
                            mem[320] = 0
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor3].field_1792 = 0
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7187 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7187 + ceil32(return_data.size) + 544]
                            _7277 = mem[_7187 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7187 + ceil32(return_data.size) + 544])] = mem[_7187 + ceil32(return_data.size) + 576 len ceil32(mem[_7187 + ceil32(return_data.size) + 544])]
                            if not _7277 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7277 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7277) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7277) + (2 * ceil32(return_data.size)) + -(_7277 % 32) + 704 len _7277 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7277) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] = sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100)
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2 - (12 * arg2 / 100)
                            mem[320] = 0
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor3].field_1792 = 0
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7186 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7186 + ceil32(return_data.size) + 544]
                            _7274 = mem[_7186 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7186 + ceil32(return_data.size) + 544])] = mem[_7186 + ceil32(return_data.size) + 576 len ceil32(mem[_7186 + ceil32(return_data.size) + 544])]
                            if not _7274 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7274 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7274) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7274) + (2 * ceil32(return_data.size)) + -(_7274 % 32) + 704 len _7274 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7274) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        sub_2c0a3cd2[address(msg.sender)]++
                        sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                        mem[96] = stor3
                        mem[128] = arg2
                        mem[160] = block.timestamp + sub_e2afe3bb
                        mem[192] = msg.sender
                        mem[224] = arg1
                        mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[544] <= 4294967296
                        require mem[544] + 32 <= return_data.size
                        require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                        mem[256] = mem[544] + 544
                        mem[288] = arg2 - (12 * arg2 / 100)
                        mem[320] = 16 * arg2 / 100
                        mem[352] = block.timestamp
                        mem[384] = percent
                        mem[416] = 0
                        mem[448] = 0
                        mem[480] = 0
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor3].field_0 = stor3
                        getSafe[stor3].field_256 = arg2
                        getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor3].field_768 = msg.sender
                        getSafe[stor3].field_1024 = arg1
                        getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor3].field_1792 = 16 * arg2 / 100
                        getSafe[stor3].field_2048 = block.timestamp
                        getSafe[stor3].field_2304 = percent
                        getSafe[stor3].field_2560 = 0
                        getSafe[stor3].field_2816 = 0
                        getSafe[stor3].field_3072 = 0
                        getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        tokenBalance[address(arg1)] += arg2
                        stor3++
                        totalUser++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7185 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7185 + ceil32(return_data.size) + 544]
                        _7271 = mem[_7185 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7185 + ceil32(return_data.size) + 544])] = mem[_7185 + ceil32(return_data.size) + 576 len ceil32(mem[_7185 + ceil32(return_data.size) + 544])]
                        if not _7271 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7271 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7271) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7271) + (2 * ceil32(return_data.size)) + -(_7271 % 32) + 704 len _7271 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7271) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2 - (12 * arg2 / 100)
                            mem[320] = 16 * arg2 / 100
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor3].field_1792 = 16 * arg2 / 100
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7184 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7184 + ceil32(return_data.size) + 544]
                            _7268 = mem[_7184 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7184 + ceil32(return_data.size) + 544])] = mem[_7184 + ceil32(return_data.size) + 576 len ceil32(mem[_7184 + ceil32(return_data.size) + 544])]
                            if not _7268 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7268 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7268) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7268) + (2 * ceil32(return_data.size)) + -(_7268 % 32) + 704 len _7268 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7268) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] = sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100)
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2 - (12 * arg2 / 100)
                            mem[320] = 16 * arg2 / 100
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor3].field_1792 = 16 * arg2 / 100
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7183 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7183 + ceil32(return_data.size) + 544]
                            _7265 = mem[_7183 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7183 + ceil32(return_data.size) + 544])] = mem[_7183 + ceil32(return_data.size) + 576 len ceil32(mem[_7183 + ceil32(return_data.size) + 544])]
                            if not _7265 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7265 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7265) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7265) + (2 * ceil32(return_data.size)) + -(_7265 % 32) + 704 len _7265 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7265) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            require arg2
            require 28 * arg2 / arg2 == 28
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = sub_e69c65efAddress
                    emit 0x3bf019f5: sub_e69c65efAddress, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_2c0a3cd2[address(msg.sender)]++
                    sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                    mem[96] = stor3
                    mem[128] = arg2
                    mem[160] = block.timestamp + sub_e2afe3bb
                    mem[192] = msg.sender
                    mem[224] = arg1
                    mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[544] <= 4294967296
                    require mem[544] + 32 <= return_data.size
                    require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                    mem[256] = mem[544] + 544
                    mem[288] = 0
                    mem[320] = 0
                    mem[352] = block.timestamp
                    mem[384] = percent
                    mem[416] = 0
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = sub_e69c65efAddress
                    getSafe[stor3].field_0 = stor3
                    getSafe[stor3].field_256 = arg2
                    getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor3].field_768 = msg.sender
                    getSafe[stor3].field_1024 = arg1
                    getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor3].field_1536 = 0
                    getSafe[stor3].field_1792 = 0
                    getSafe[stor3].field_2048 = block.timestamp
                    getSafe[stor3].field_2304 = percent
                    getSafe[stor3].field_2560 = 0
                    getSafe[stor3].field_2816 = 0
                    getSafe[stor3].field_3072 = 0
                    getSafe[stor3].field_3328 = sub_e69c65efAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    tokenBalance[address(arg1)] += arg2
                    stor3++
                    totalUser++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7182 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7182 + ceil32(return_data.size) + 544]
                    _7262 = mem[_7182 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7182 + ceil32(return_data.size) + 544])] = mem[_7182 + ceil32(return_data.size) + 576 len ceil32(mem[_7182 + ceil32(return_data.size) + 544])]
                    if not _7262 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7262 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7262) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7262) + (2 * ceil32(return_data.size)) + -(_7262 % 32) + 704 len _7262 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7262) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = sub_e69c65efAddress
                    emit 0x3bf019f5: sub_e69c65efAddress, msg.sender
                    require sub_a54f12e4[address(arg1)] + (28 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                    sub_a54f12e4[address(arg1)] += 28 * arg2 / 100
                    sub_2c0a3cd2[address(msg.sender)]++
                    sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                    mem[96] = stor3
                    mem[128] = arg2
                    mem[160] = block.timestamp + sub_e2afe3bb
                    mem[192] = msg.sender
                    mem[224] = arg1
                    mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[544] <= 4294967296
                    require mem[544] + 32 <= return_data.size
                    require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                    mem[256] = mem[544] + 544
                    mem[288] = 72 * arg2 / 100
                    mem[320] = 0
                    mem[352] = block.timestamp
                    mem[384] = percent
                    mem[416] = 0
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = sub_e69c65efAddress
                    getSafe[stor3].field_0 = stor3
                    getSafe[stor3].field_256 = arg2
                    getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor3].field_768 = msg.sender
                    getSafe[stor3].field_1024 = arg1
                    getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor3].field_1536 = 72 * arg2 / 100
                    getSafe[stor3].field_1792 = 0
                    getSafe[stor3].field_2048 = block.timestamp
                    getSafe[stor3].field_2304 = percent
                    getSafe[stor3].field_2560 = 0
                    getSafe[stor3].field_2816 = 0
                    getSafe[stor3].field_3072 = 0
                    getSafe[stor3].field_3328 = sub_e69c65efAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    tokenBalance[address(arg1)] += arg2
                    stor3++
                    totalUser++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7181 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7181 + ceil32(return_data.size) + 544]
                    _7259 = mem[_7181 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7181 + ceil32(return_data.size) + 544])] = mem[_7181 + ceil32(return_data.size) + 576 len ceil32(mem[_7181 + ceil32(return_data.size) + 544])]
                    if not _7259 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7259 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7259) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7259) + (2 * ceil32(return_data.size)) + -(_7259 % 32) + 704 len _7259 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7259) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        sub_2c0a3cd2[address(msg.sender)]++
                        sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                        mem[96] = stor3
                        mem[128] = arg2
                        mem[160] = block.timestamp + sub_e2afe3bb
                        mem[192] = msg.sender
                        mem[224] = arg1
                        mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[544] <= 4294967296
                        require mem[544] + 32 <= return_data.size
                        require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                        mem[256] = mem[544] + 544
                        mem[288] = arg2 - (12 * arg2 / 100)
                        mem[320] = 0
                        mem[352] = block.timestamp
                        mem[384] = percent
                        mem[416] = 0
                        mem[448] = 0
                        mem[480] = 0
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor3].field_0 = stor3
                        getSafe[stor3].field_256 = arg2
                        getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor3].field_768 = msg.sender
                        getSafe[stor3].field_1024 = arg1
                        getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor3].field_1792 = 0
                        getSafe[stor3].field_2048 = block.timestamp
                        getSafe[stor3].field_2304 = percent
                        getSafe[stor3].field_2560 = 0
                        getSafe[stor3].field_2816 = 0
                        getSafe[stor3].field_3072 = 0
                        getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        tokenBalance[address(arg1)] += arg2
                        stor3++
                        totalUser++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7180 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7180 + ceil32(return_data.size) + 544]
                        _7256 = mem[_7180 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7180 + ceil32(return_data.size) + 544])] = mem[_7180 + ceil32(return_data.size) + 576 len ceil32(mem[_7180 + ceil32(return_data.size) + 544])]
                        if not _7256 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7256 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7256) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7256) + (2 * ceil32(return_data.size)) + -(_7256 % 32) + 704 len _7256 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7256) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2 - (12 * arg2 / 100)
                            mem[320] = 0
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor3].field_1792 = 0
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7179 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7179 + ceil32(return_data.size) + 544]
                            _7253 = mem[_7179 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7179 + ceil32(return_data.size) + 544])] = mem[_7179 + ceil32(return_data.size) + 576 len ceil32(mem[_7179 + ceil32(return_data.size) + 544])]
                            if not _7253 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7253 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7253) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7253) + (2 * ceil32(return_data.size)) + -(_7253 % 32) + 704 len _7253 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7253) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] = sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100)
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2 - (12 * arg2 / 100)
                            mem[320] = 0
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor3].field_1792 = 0
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7178 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7178 + ceil32(return_data.size) + 544]
                            _7250 = mem[_7178 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7178 + ceil32(return_data.size) + 544])] = mem[_7178 + ceil32(return_data.size) + 576 len ceil32(mem[_7178 + ceil32(return_data.size) + 544])]
                            if not _7250 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7250 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7250) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7250) + (2 * ceil32(return_data.size)) + -(_7250 % 32) + 704 len _7250 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7250) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        sub_2c0a3cd2[address(msg.sender)]++
                        sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                        mem[96] = stor3
                        mem[128] = arg2
                        mem[160] = block.timestamp + sub_e2afe3bb
                        mem[192] = msg.sender
                        mem[224] = arg1
                        mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[544] <= 4294967296
                        require mem[544] + 32 <= return_data.size
                        require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                        mem[256] = mem[544] + 544
                        mem[288] = arg2 - (12 * arg2 / 100)
                        mem[320] = 16 * arg2 / 100
                        mem[352] = block.timestamp
                        mem[384] = percent
                        mem[416] = 0
                        mem[448] = 0
                        mem[480] = 0
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor3].field_0 = stor3
                        getSafe[stor3].field_256 = arg2
                        getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor3].field_768 = msg.sender
                        getSafe[stor3].field_1024 = arg1
                        getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor3].field_1792 = 16 * arg2 / 100
                        getSafe[stor3].field_2048 = block.timestamp
                        getSafe[stor3].field_2304 = percent
                        getSafe[stor3].field_2560 = 0
                        getSafe[stor3].field_2816 = 0
                        getSafe[stor3].field_3072 = 0
                        getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        tokenBalance[address(arg1)] += arg2
                        stor3++
                        totalUser++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7177 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7177 + ceil32(return_data.size) + 544]
                        _7247 = mem[_7177 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7177 + ceil32(return_data.size) + 544])] = mem[_7177 + ceil32(return_data.size) + 576 len ceil32(mem[_7177 + ceil32(return_data.size) + 544])]
                        if not _7247 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7247 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7247) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7247) + (2 * ceil32(return_data.size)) + -(_7247 % 32) + 704 len _7247 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7247) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] += 12 * arg2 / 100
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2 - (12 * arg2 / 100)
                            mem[320] = 16 * arg2 / 100
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor3].field_1792 = 16 * arg2 / 100
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7176 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7176 + ceil32(return_data.size) + 544]
                            _7244 = mem[_7176 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7176 + ceil32(return_data.size) + 544])] = mem[_7176 + ceil32(return_data.size) + 576 len ceil32(mem[_7176 + ceil32(return_data.size) + 544])]
                            if not _7244 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7244 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7244) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7244) + (2 * ceil32(return_data.size)) + -(_7244 % 32) + 704 len _7244 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7244) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_a54f12e4[address(arg1)]
                            sub_a54f12e4[address(arg1)] = sub_a54f12e4[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100)
                            sub_2c0a3cd2[address(msg.sender)]++
                            sub_2c0a3cd2[address(msg.sender)][sub_2c0a3cd2[address(msg.sender)]] = stor3
                            mem[96] = stor3
                            mem[128] = arg2
                            mem[160] = block.timestamp + sub_e2afe3bb
                            mem[192] = msg.sender
                            mem[224] = arg1
                            mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[544] <= 4294967296
                            require mem[544] + 32 <= return_data.size
                            require mem[mem[544] + 544] <= 4294967296 and mem[544] + mem[mem[544] + 544] + 32 <= return_data.size
                            mem[256] = mem[544] + 544
                            mem[288] = arg2 - (12 * arg2 / 100)
                            mem[320] = 16 * arg2 / 100
                            mem[352] = block.timestamp
                            mem[384] = percent
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor3].field_0 = stor3
                            getSafe[stor3].field_256 = arg2
                            getSafe[stor3].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor3].field_768 = msg.sender
                            getSafe[stor3].field_1024 = arg1
                            getSafe[stor3][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor3].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor3].field_1792 = 16 * arg2 / 100
                            getSafe[stor3].field_2048 = block.timestamp
                            getSafe[stor3].field_2304 = percent
                            getSafe[stor3].field_2560 = 0
                            getSafe[stor3].field_2816 = 0
                            getSafe[stor3].field_3072 = 0
                            getSafe[stor3].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require tokenBalance[address(arg1)] + arg2 >= tokenBalance[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            tokenBalance[address(arg1)] += arg2
                            stor3++
                            totalUser++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7175 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7175 + ceil32(return_data.size) + 544]
                            _7241 = mem[_7175 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7175 + ceil32(return_data.size) + 544])] = mem[_7175 + ceil32(return_data.size) + 576 len ceil32(mem[_7175 + ceil32(return_data.size) + 544])]
                            if not _7241 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7241 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7241) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7241) + (2 * ceil32(return_data.size)) + -(_7241 % 32) + 704 len _7241 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7241) + ceil32(return_data.size) + 160], msg.sender, arg1
}



}
