contract main {




// =====================  Runtime code  =====================


#
#  - sub_25681238(?)
#  - ClaimTokens(address arg1, uint256 arg2)
#  - sub_55aaef8f(?)
#
const GetContractBalance = eth.balance(this.address)


address getEthereumNodesAddress;
address stor1;
uint256 percent;
uint256 sub_e2afe3bb;
uint256 stor4;
uint256 sub_93002f02;
mapping of uint8 stor6;
mapping of address cashbackcode;
mapping of uint256 sub_666a7370;
array of uint256 sub_11a3311c;
mapping of uint256 sub_374d7e3a;
mapping of struct getSafe;
mapping of uint256 sub_99613956;
mapping of uint256 sub_6a37f573;
mapping of uint256 sub_0d826c0b;
array of struct contractSymbol;
array of address getTotalAffiliate;
mapping of uint256 sub_bb142c2d;
mapping of uint256 sub_67da21dd;
mapping of uint256 sub_d76ca047;
mapping of uint256 sub_910592de;

function GetTotalAffiliate(address arg1) {
    return uint256(getTotalAffiliate[address(arg1)])
}

function sub_0d826c0b(?) {
    return sub_0d826c0b[arg1]
}

function sub_11a3311c(?) {
    require arg2 < sub_11a3311c[arg1]
    return sub_11a3311c[arg1][arg2]
}

function ContractSymbol(address arg1) {
    return contractSymbol[arg1][0 len contractSymbol[arg1].length].field_0
}

function GetEthereumNodes() {
    return getEthereumNodesAddress
}

function sub_374d7e3a(?) {
    return sub_374d7e3a[address(arg1)]
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

function sub_666a7370(?) {
    return sub_666a7370[arg1]
}

function sub_67da21dd(?) {
    return sub_67da21dd[arg1][arg2]
}

function sub_6a37f573(?) {
    return sub_6a37f573[arg1]
}

function afflist(address arg1, uint256 arg2) {
    require arg2 < uint256(getTotalAffiliate[arg1])
    return address(getTotalAffiliate[arg1][arg2])
}

function percent() {
    return percent
}

function sub_910592de(?) {
    return sub_910592de[arg1][arg2]
}

function sub_93002f02(?) {
    return sub_93002f02
}

function sub_99613956(?) {
    return sub_99613956[arg1]
}

function sub_bb142c2d(?) {
    return sub_bb142c2d[arg1][arg2]
}

function sub_d76ca047(?) {
    return sub_d76ca047[arg1][arg2]
}

function GetUserSafesLength(address arg1) {
    return sub_11a3311c[address(arg1)]
}

function sub_e2afe3bb(?) {
    return sub_e2afe3bb
}

function sub_a0493521(?) {
    require msg.sender == getEthereumNodesAddress
    sub_99613956[address(arg1)] = arg2
}

function sub_79883bba(?) {
    require msg.sender == getEthereumNodesAddress
    require arg1 >= 180
    sub_e2afe3bb = 24 * 3600 * arg1
}

function sub_fc1a92a0(?) {
    require msg.sender == getEthereumNodesAddress
    require arg1 >= 3
    require arg1 <= 12
    percent = arg1
}

function _fallback() payable {
    require msg.value > 0
    require msg.value + sub_374d7e3a[0] >= sub_374d7e3a[0]
    sub_374d7e3a[0] += msg.value
}

function CashbackCode(address arg1) {
    require arg1 != msg.sender
    if not cashbackcode[msg.sender]:
        cashbackcode[msg.sender] = arg1
        emit 0x3bf019f5: arg1, msg.sender
}

function WithdrawEth(uint256 arg1) {
    require msg.sender == getEthereumNodesAddress
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_11e02620(?) {
    require msg.sender == getEthereumNodesAddress
    stor6[address(arg1)] = uint8(arg2)
    contractSymbol[address(arg1)][].field_0 = Array(len=arg4.length, data=arg4[all])
    sub_99613956[address(arg1)] = arg3
    if not stor1:
        stor1 = arg1
    if stor1 == arg1:
        if not arg2:
            stor6[address(arg1)] = 1
    emit 0x8ec4d528: arg2, arg3, Array(len=arg4.length, data=arg4[all]), arg1
}

function sub_98c7aba2(?) {
    require arg1
    s = 0
    idx = 1
    s = 0
    while idx < stor4:
        mem[0] = idx
        mem[32] = 11
        if getSafe[idx].field_768 != msg.sender:
            s = sha3(idx, 11)
            idx = idx + 1
            s = s
            continue 
        if getSafe[idx].field_1024 != arg1:
            s = sha3(idx, 11)
            idx = idx + 1
            s = s
            continue 
        s = sha3(idx, 11)
        idx = idx + 1
        s = s + getSafe[idx].field_256
        continue 
    return s
}

function sub_d429ec51(?) {
    require msg.sender == getEthereumNodesAddress
    require sub_374d7e3a[address(arg1)] > 0
    require sub_374d7e3a[address(arg1)] <= sub_666a7370[address(arg1)]
    sub_666a7370[address(arg1)] -= sub_374d7e3a[address(arg1)]
    sub_374d7e3a[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= sub_374d7e3a[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_374d7e3a[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function WithdrawAffiliate(address arg1, address arg2) {
    require arg2
    require sub_d76ca047[address(arg1)][address(arg2)] > 0
    require sub_d76ca047[msg.sender][address(arg2)] <= sub_666a7370[address(arg2)]
    sub_666a7370[address(arg2)] -= sub_d76ca047[msg.sender][address(arg2)]
    require sub_d76ca047[msg.sender][address(arg2)] + sub_0d826c0b[address(arg2)] >= sub_0d826c0b[address(arg2)]
    sub_0d826c0b[address(arg2)] += sub_d76ca047[msg.sender][address(arg2)]
    mem[128] = contractSymbol[address(arg2)].field_0
    idx = 128
    s = 0
    while contractSymbol[address(arg2)].length + 96 > idx:
        mem[idx + 32] = contractSymbol[address(arg2)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    sub_d76ca047[msg.sender][address(arg2)] = 0
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= sub_d76ca047[msg.sender][address(arg2)]
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_d76ca047[msg.sender][address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x772c23bb: Array(len=contractSymbol[address(arg2)].length, data=mem[128 len contractSymbol[address(arg2)].length]), sub_d76ca047[msg.sender][address(arg2)], block.timestamp, msg.sender, arg2
}

function sub_8e9e2795(?) {
    require msg.sender == getEthereumNodesAddress
    s = 0
    idx = 1
    s = 0
    while idx < stor4:
        mem[0] = idx
        mem[32] = 11
        if not getSafe[idx].field_0:
            s = sha3(idx, 11)
            idx = idx + 1
            s = s
            continue 
        require getSafe[idx].field_1536 + sub_0d826c0b[stor11[idx].field_1024] >= sub_0d826c0b[stor11[idx].field_1024]
        sub_0d826c0b[stor11[idx].field_1024] += getSafe[idx].field_1536
        require getSafe[idx].field_1536 + sub_67da21dd[stor11[idx].field_768][stor11[idx].field_1024] >= sub_67da21dd[stor11[idx].field_768][stor11[idx].field_1024]
        sub_67da21dd[msg.sender][stor11[idx].field_1024] = getSafe[idx].field_1536 + sub_67da21dd[stor11[idx].field_768][stor11[idx].field_1024]
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
        getSafe[idx].field_2048 = block.timestamp
        if 0 >= getSafe[idx].field_1792:
            if not getSafe[idx].field_256:
                getSafe[idx].field_2816 = 0
            else:
                require 72 * getSafe[idx].field_256 / getSafe[idx].field_256 == 72
                getSafe[idx].field_2816 = 72 * getSafe[idx].field_256 / 100
            getSafe[idx].field_2560 = 2 * 10^16 * 3600
        else:
            if not getSafe[idx].field_256:
                getSafe[idx].field_2816 = 0
            else:
                require 88 * getSafe[idx].field_256 / getSafe[idx].field_256 == 88
                getSafe[idx].field_2816 = 88 * getSafe[idx].field_256 / 100
            getSafe[idx].field_2560 = 88 * 10^18
        require getSafe[idx].field_1536 <= sub_666a7370[stor11[idx].field_1024]
        mem[0] = getSafe[idx].field_1024
        mem[32] = 8
        sub_666a7370[stor11[idx].field_1024] -= getSafe[idx].field_1536
        getSafe[idx].field_1536 = 0
        s = sha3(idx, 11)
        idx = idx + 1
        s = s + 1
        continue 
    emit 0xaeb4f573: s
}

function sub_e61021e8(?) {
    require arg1
    require arg2 > 0
    require arg2 <= sub_99613956[address(arg1)]
    require stor6[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg2:
        if not arg2:
            if not cashbackcode[msg.sender]:
                if not arg2:
                    cashbackcode[msg.sender] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                    require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor4].field_0 = stor4
                    getSafe[stor4].field_256 = arg2
                    getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor4].field_768 = msg.sender
                    getSafe[stor4].field_1024 = arg1
                    getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor4].field_1536 = 0
                    getSafe[stor4].field_1792 = 0
                    getSafe[stor4].field_2048 = block.timestamp
                    getSafe[stor4].field_2304 = percent
                    getSafe[stor4].field_2560 = 0
                    getSafe[stor4].field_2816 = 0
                    getSafe[stor4].field_3072 = 0
                    getSafe[stor4].field_3328 = getEthereumNodesAddress
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += arg2
                    stor4++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _7290 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7290 + 544]
                    _7418 = mem[ceil32(return_data.size) + _7290 + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7290 + 544])] = mem[ceil32(return_data.size) + _7290 + 576 len ceil32(mem[ceil32(return_data.size) + _7290 + 544])]
                    if not _7418 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7418 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7418) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7418) + (2 * ceil32(return_data.size)) + -(_7418 % 32) + 704 len _7418 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7418) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[msg.sender] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                    require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor4].field_0 = stor4
                    getSafe[stor4].field_256 = arg2
                    getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor4].field_768 = msg.sender
                    getSafe[stor4].field_1024 = arg1
                    getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor4].field_1536 = 72 * arg2 / 100
                    getSafe[stor4].field_1792 = 0
                    getSafe[stor4].field_2048 = block.timestamp
                    getSafe[stor4].field_2304 = percent
                    getSafe[stor4].field_2560 = 0
                    getSafe[stor4].field_2816 = 0
                    getSafe[stor4].field_3072 = 0
                    getSafe[stor4].field_3328 = getEthereumNodesAddress
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += arg2
                    stor4++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _7289 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7289 + 544]
                    _7415 = mem[ceil32(return_data.size) + _7289 + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7289 + 544])] = mem[ceil32(return_data.size) + _7289 + 576 len ceil32(mem[ceil32(return_data.size) + _7289 + 544])]
                    if not _7415 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7415 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7415) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7415) + (2 * ceil32(return_data.size)) + -(_7415 % 32) + 704 len _7415 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7415) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 0 <= arg2
                if not arg2:
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                        require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor4].field_0 = stor4
                        getSafe[stor4].field_256 = arg2
                        getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor4].field_768 = msg.sender
                        getSafe[stor4].field_1024 = arg1
                        getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor4].field_1536 = arg2
                        getSafe[stor4].field_1792 = 0
                        getSafe[stor4].field_2048 = block.timestamp
                        getSafe[stor4].field_2304 = percent
                        getSafe[stor4].field_2560 = 0
                        getSafe[stor4].field_2816 = 0
                        getSafe[stor4].field_3072 = 0
                        getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                        require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7288 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7288 + 544]
                        _7412 = mem[ceil32(return_data.size) + _7288 + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7288 + 544])] = mem[ceil32(return_data.size) + _7288 + 576 len ceil32(mem[ceil32(return_data.size) + _7288 + 544])]
                        if not _7412 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7412 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7412) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7412) + (2 * ceil32(return_data.size)) + -(_7412 % 32) + 704 len _7412 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7412) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2
                            getSafe[stor4].field_1792 = 0
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7287 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7287 + 544]
                            _7409 = mem[ceil32(return_data.size) + _7287 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7287 + 544])] = mem[ceil32(return_data.size) + _7287 + 576 len ceil32(mem[ceil32(return_data.size) + _7287 + 544])]
                            if not _7409 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7409 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7409) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7409) + (2 * ceil32(return_data.size)) + -(_7409 % 32) + 704 len _7409 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7409) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require -(12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2
                            getSafe[stor4].field_1792 = 0
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7286 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7286 + 544]
                            _7406 = mem[ceil32(return_data.size) + _7286 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7286 + 544])] = mem[ceil32(return_data.size) + _7286 + 576 len ceil32(mem[ceil32(return_data.size) + _7286 + 544])]
                            if not _7406 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7406 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7406) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7406) + (2 * ceil32(return_data.size)) + -(_7406 % 32) + 704 len _7406 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7406) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require 16 * arg2 / arg2 == 16
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                        require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor4].field_0 = stor4
                        getSafe[stor4].field_256 = arg2
                        getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor4].field_768 = msg.sender
                        getSafe[stor4].field_1024 = arg1
                        getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor4].field_1536 = arg2
                        getSafe[stor4].field_1792 = 16 * arg2 / 100
                        getSafe[stor4].field_2048 = block.timestamp
                        getSafe[stor4].field_2304 = percent
                        getSafe[stor4].field_2560 = 0
                        getSafe[stor4].field_2816 = 0
                        getSafe[stor4].field_3072 = 0
                        getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                        require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7285 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7285 + 544]
                        _7403 = mem[ceil32(return_data.size) + _7285 + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7285 + 544])] = mem[ceil32(return_data.size) + _7285 + 576 len ceil32(mem[ceil32(return_data.size) + _7285 + 544])]
                        if not _7403 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7403 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7403) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7403) + (2 * ceil32(return_data.size)) + -(_7403 % 32) + 704 len _7403 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7403) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2
                            getSafe[stor4].field_1792 = 16 * arg2 / 100
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7284 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7284 + 544]
                            _7400 = mem[ceil32(return_data.size) + _7284 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7284 + 544])] = mem[ceil32(return_data.size) + _7284 + 576 len ceil32(mem[ceil32(return_data.size) + _7284 + 544])]
                            if not _7400 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7400 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7400) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7400) + (2 * ceil32(return_data.size)) + -(_7400 % 32) + 704 len _7400 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7400) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require -(12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2
                            getSafe[stor4].field_1792 = 16 * arg2 / 100
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7283 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7283 + 544]
                            _7397 = mem[ceil32(return_data.size) + _7283 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7283 + 544])] = mem[ceil32(return_data.size) + _7283 + 576 len ceil32(mem[ceil32(return_data.size) + _7283 + 544])]
                            if not _7397 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7397 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7397) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7397) + (2 * ceil32(return_data.size)) + -(_7397 % 32) + 704 len _7397 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7397) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            require 28 * arg2 / arg2 == 28
            if not cashbackcode[msg.sender]:
                if not arg2:
                    cashbackcode[msg.sender] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require (28 * arg2 / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                    require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor4].field_0 = stor4
                    getSafe[stor4].field_256 = arg2
                    getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor4].field_768 = msg.sender
                    getSafe[stor4].field_1024 = arg1
                    getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor4].field_1536 = 0
                    getSafe[stor4].field_1792 = 0
                    getSafe[stor4].field_2048 = block.timestamp
                    getSafe[stor4].field_2304 = percent
                    getSafe[stor4].field_2560 = 0
                    getSafe[stor4].field_2816 = 0
                    getSafe[stor4].field_3072 = 0
                    getSafe[stor4].field_3328 = getEthereumNodesAddress
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += arg2
                    stor4++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _7282 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7282 + 544]
                    _7394 = mem[ceil32(return_data.size) + _7282 + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7282 + 544])] = mem[ceil32(return_data.size) + _7282 + 576 len ceil32(mem[ceil32(return_data.size) + _7282 + 544])]
                    if not _7394 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7394 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7394) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7394) + (2 * ceil32(return_data.size)) + -(_7394 % 32) + 704 len _7394 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7394) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[msg.sender] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require (28 * arg2 / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                    require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor4].field_0 = stor4
                    getSafe[stor4].field_256 = arg2
                    getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor4].field_768 = msg.sender
                    getSafe[stor4].field_1024 = arg1
                    getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor4].field_1536 = 72 * arg2 / 100
                    getSafe[stor4].field_1792 = 0
                    getSafe[stor4].field_2048 = block.timestamp
                    getSafe[stor4].field_2304 = percent
                    getSafe[stor4].field_2560 = 0
                    getSafe[stor4].field_2816 = 0
                    getSafe[stor4].field_3072 = 0
                    getSafe[stor4].field_3328 = getEthereumNodesAddress
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += arg2
                    stor4++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _7281 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7281 + 544]
                    _7391 = mem[ceil32(return_data.size) + _7281 + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7281 + 544])] = mem[ceil32(return_data.size) + _7281 + 576 len ceil32(mem[ceil32(return_data.size) + _7281 + 544])]
                    if not _7391 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7391 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7391) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7391) + (2 * ceil32(return_data.size)) + -(_7391 % 32) + 704 len _7391 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7391) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 0 <= arg2
                if not arg2:
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                        require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor4].field_0 = stor4
                        getSafe[stor4].field_256 = arg2
                        getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor4].field_768 = msg.sender
                        getSafe[stor4].field_1024 = arg1
                        getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor4].field_1536 = arg2
                        getSafe[stor4].field_1792 = 0
                        getSafe[stor4].field_2048 = block.timestamp
                        getSafe[stor4].field_2304 = percent
                        getSafe[stor4].field_2560 = 0
                        getSafe[stor4].field_2816 = 0
                        getSafe[stor4].field_3072 = 0
                        getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                        require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7280 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7280 + 544]
                        _7388 = mem[ceil32(return_data.size) + _7280 + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7280 + 544])] = mem[ceil32(return_data.size) + _7280 + 576 len ceil32(mem[ceil32(return_data.size) + _7280 + 544])]
                        if not _7388 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7388 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7388) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7388) + (2 * ceil32(return_data.size)) + -(_7388 % 32) + 704 len _7388 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7388) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2
                            getSafe[stor4].field_1792 = 0
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7279 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7279 + 544]
                            _7385 = mem[ceil32(return_data.size) + _7279 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7279 + 544])] = mem[ceil32(return_data.size) + _7279 + 576 len ceil32(mem[ceil32(return_data.size) + _7279 + 544])]
                            if not _7385 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7385 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7385) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7385) + (2 * ceil32(return_data.size)) + -(_7385 % 32) + 704 len _7385 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7385) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require -(12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2
                            getSafe[stor4].field_1792 = 0
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7278 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7278 + 544]
                            _7382 = mem[ceil32(return_data.size) + _7278 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7278 + 544])] = mem[ceil32(return_data.size) + _7278 + 576 len ceil32(mem[ceil32(return_data.size) + _7278 + 544])]
                            if not _7382 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7382 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7382) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7382) + (2 * ceil32(return_data.size)) + -(_7382 % 32) + 704 len _7382 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7382) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require 16 * arg2 / arg2 == 16
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                        require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor4].field_0 = stor4
                        getSafe[stor4].field_256 = arg2
                        getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor4].field_768 = msg.sender
                        getSafe[stor4].field_1024 = arg1
                        getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor4].field_1536 = arg2
                        getSafe[stor4].field_1792 = 16 * arg2 / 100
                        getSafe[stor4].field_2048 = block.timestamp
                        getSafe[stor4].field_2304 = percent
                        getSafe[stor4].field_2560 = 0
                        getSafe[stor4].field_2816 = 0
                        getSafe[stor4].field_3072 = 0
                        getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                        require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7277 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7277 + 544]
                        _7379 = mem[ceil32(return_data.size) + _7277 + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7277 + 544])] = mem[ceil32(return_data.size) + _7277 + 576 len ceil32(mem[ceil32(return_data.size) + _7277 + 544])]
                        if not _7379 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7379 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7379) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7379) + (2 * ceil32(return_data.size)) + -(_7379 % 32) + 704 len _7379 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7379) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2
                            getSafe[stor4].field_1792 = 16 * arg2 / 100
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7276 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7276 + 544]
                            _7376 = mem[ceil32(return_data.size) + _7276 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7276 + 544])] = mem[ceil32(return_data.size) + _7276 + 576 len ceil32(mem[ceil32(return_data.size) + _7276 + 544])]
                            if not _7376 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7376 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7376) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7376) + (2 * ceil32(return_data.size)) + -(_7376 % 32) + 704 len _7376 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7376) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require -(12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2
                            getSafe[stor4].field_1792 = 16 * arg2 / 100
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7275 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7275 + 544]
                            _7373 = mem[ceil32(return_data.size) + _7275 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7275 + 544])] = mem[ceil32(return_data.size) + _7275 + 576 len ceil32(mem[ceil32(return_data.size) + _7275 + 544])]
                            if not _7373 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7373 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7373) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7373) + (2 * ceil32(return_data.size)) + -(_7373 % 32) + 704 len _7373 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7373) + ceil32(return_data.size) + 160], msg.sender, arg1
    else:
        require 12 * arg2 / arg2 == 12
        if not arg2:
            if not cashbackcode[msg.sender]:
                if not arg2:
                    cashbackcode[msg.sender] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                    require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor4].field_0 = stor4
                    getSafe[stor4].field_256 = arg2
                    getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor4].field_768 = msg.sender
                    getSafe[stor4].field_1024 = arg1
                    getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor4].field_1536 = 0
                    getSafe[stor4].field_1792 = 0
                    getSafe[stor4].field_2048 = block.timestamp
                    getSafe[stor4].field_2304 = percent
                    getSafe[stor4].field_2560 = 0
                    getSafe[stor4].field_2816 = 0
                    getSafe[stor4].field_3072 = 0
                    getSafe[stor4].field_3328 = getEthereumNodesAddress
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += arg2
                    stor4++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _7274 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7274 + 544]
                    _7370 = mem[ceil32(return_data.size) + _7274 + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7274 + 544])] = mem[ceil32(return_data.size) + _7274 + 576 len ceil32(mem[ceil32(return_data.size) + _7274 + 544])]
                    if not _7370 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7370 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7370) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7370) + (2 * ceil32(return_data.size)) + -(_7370 % 32) + 704 len _7370 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7370) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[msg.sender] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                    require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor4].field_0 = stor4
                    getSafe[stor4].field_256 = arg2
                    getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor4].field_768 = msg.sender
                    getSafe[stor4].field_1024 = arg1
                    getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor4].field_1536 = 72 * arg2 / 100
                    getSafe[stor4].field_1792 = 0
                    getSafe[stor4].field_2048 = block.timestamp
                    getSafe[stor4].field_2304 = percent
                    getSafe[stor4].field_2560 = 0
                    getSafe[stor4].field_2816 = 0
                    getSafe[stor4].field_3072 = 0
                    getSafe[stor4].field_3328 = getEthereumNodesAddress
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += arg2
                    stor4++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _7273 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7273 + 544]
                    _7367 = mem[ceil32(return_data.size) + _7273 + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7273 + 544])] = mem[ceil32(return_data.size) + _7273 + 576 len ceil32(mem[ceil32(return_data.size) + _7273 + 544])]
                    if not _7367 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7367 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7367) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7367) + (2 * ceil32(return_data.size)) + -(_7367 % 32) + 704 len _7367 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7367) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)]:
                        require (12 * arg2 / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require (12 * arg2 / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                        require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor4].field_0 = stor4
                        getSafe[stor4].field_256 = arg2
                        getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor4].field_768 = msg.sender
                        getSafe[stor4].field_1024 = arg1
                        getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor4].field_1792 = 0
                        getSafe[stor4].field_2048 = block.timestamp
                        getSafe[stor4].field_2304 = percent
                        getSafe[stor4].field_2560 = 0
                        getSafe[stor4].field_2816 = 0
                        getSafe[stor4].field_3072 = 0
                        getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                        require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7272 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7272 + 544]
                        _7364 = mem[ceil32(return_data.size) + _7272 + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7272 + 544])] = mem[ceil32(return_data.size) + _7272 + 576 len ceil32(mem[ceil32(return_data.size) + _7272 + 544])]
                        if not _7364 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7364 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7364) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7364) + (2 * ceil32(return_data.size)) + -(_7364 % 32) + 704 len _7364 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7364) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require (12 * arg2 / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor4].field_1792 = 0
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7271 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7271 + 544]
                            _7361 = mem[ceil32(return_data.size) + _7271 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7271 + 544])] = mem[ceil32(return_data.size) + _7271 + 576 len ceil32(mem[ceil32(return_data.size) + _7271 + 544])]
                            if not _7361 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7361 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7361) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7361) + (2 * ceil32(return_data.size)) + -(_7361 % 32) + 704 len _7361 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7361) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor4].field_1792 = 0
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7270 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7270 + 544]
                            _7358 = mem[ceil32(return_data.size) + _7270 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7270 + 544])] = mem[ceil32(return_data.size) + _7270 + 576 len ceil32(mem[ceil32(return_data.size) + _7270 + 544])]
                            if not _7358 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7358 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7358) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7358) + (2 * ceil32(return_data.size)) + -(_7358 % 32) + 704 len _7358 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7358) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require 16 * arg2 / arg2 == 16
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)]:
                        require (12 * arg2 / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require (12 * arg2 / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                        require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor4].field_0 = stor4
                        getSafe[stor4].field_256 = arg2
                        getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor4].field_768 = msg.sender
                        getSafe[stor4].field_1024 = arg1
                        getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor4].field_1792 = 16 * arg2 / 100
                        getSafe[stor4].field_2048 = block.timestamp
                        getSafe[stor4].field_2304 = percent
                        getSafe[stor4].field_2560 = 0
                        getSafe[stor4].field_2816 = 0
                        getSafe[stor4].field_3072 = 0
                        getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                        require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7269 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7269 + 544]
                        _7355 = mem[ceil32(return_data.size) + _7269 + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7269 + 544])] = mem[ceil32(return_data.size) + _7269 + 576 len ceil32(mem[ceil32(return_data.size) + _7269 + 544])]
                        if not _7355 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7355 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7355) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7355) + (2 * ceil32(return_data.size)) + -(_7355 % 32) + 704 len _7355 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7355) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require (12 * arg2 / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor4].field_1792 = 16 * arg2 / 100
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7268 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7268 + 544]
                            _7352 = mem[ceil32(return_data.size) + _7268 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7268 + 544])] = mem[ceil32(return_data.size) + _7268 + 576 len ceil32(mem[ceil32(return_data.size) + _7268 + 544])]
                            if not _7352 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7352 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7352) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7352) + (2 * ceil32(return_data.size)) + -(_7352 % 32) + 704 len _7352 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7352) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor4].field_1792 = 16 * arg2 / 100
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7267 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7267 + 544]
                            _7349 = mem[ceil32(return_data.size) + _7267 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7267 + 544])] = mem[ceil32(return_data.size) + _7267 + 576 len ceil32(mem[ceil32(return_data.size) + _7267 + 544])]
                            if not _7349 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7349 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7349) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7349) + (2 * ceil32(return_data.size)) + -(_7349 % 32) + 704 len _7349 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7349) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            require 28 * arg2 / arg2 == 28
            if not cashbackcode[msg.sender]:
                if not arg2:
                    cashbackcode[msg.sender] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require (28 * arg2 / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                    require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor4].field_0 = stor4
                    getSafe[stor4].field_256 = arg2
                    getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor4].field_768 = msg.sender
                    getSafe[stor4].field_1024 = arg1
                    getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor4].field_1536 = 0
                    getSafe[stor4].field_1792 = 0
                    getSafe[stor4].field_2048 = block.timestamp
                    getSafe[stor4].field_2304 = percent
                    getSafe[stor4].field_2560 = 0
                    getSafe[stor4].field_2816 = 0
                    getSafe[stor4].field_3072 = 0
                    getSafe[stor4].field_3328 = getEthereumNodesAddress
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += arg2
                    stor4++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _7266 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7266 + 544]
                    _7346 = mem[ceil32(return_data.size) + _7266 + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7266 + 544])] = mem[ceil32(return_data.size) + _7266 + 576 len ceil32(mem[ceil32(return_data.size) + _7266 + 544])]
                    if not _7346 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7346 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7346) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7346) + (2 * ceil32(return_data.size)) + -(_7346 % 32) + 704 len _7346 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7346) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[msg.sender] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require (28 * arg2 / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                    require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor4].field_0 = stor4
                    getSafe[stor4].field_256 = arg2
                    getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor4].field_768 = msg.sender
                    getSafe[stor4].field_1024 = arg1
                    getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor4].field_1536 = 72 * arg2 / 100
                    getSafe[stor4].field_1792 = 0
                    getSafe[stor4].field_2048 = block.timestamp
                    getSafe[stor4].field_2304 = percent
                    getSafe[stor4].field_2560 = 0
                    getSafe[stor4].field_2816 = 0
                    getSafe[stor4].field_3072 = 0
                    getSafe[stor4].field_3328 = getEthereumNodesAddress
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += arg2
                    stor4++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _7265 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7265 + 544]
                    _7343 = mem[ceil32(return_data.size) + _7265 + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7265 + 544])] = mem[ceil32(return_data.size) + _7265 + 576 len ceil32(mem[ceil32(return_data.size) + _7265 + 544])]
                    if not _7343 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7343 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7343) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7343) + (2 * ceil32(return_data.size)) + -(_7343 % 32) + 704 len _7343 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7343) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)]:
                        require (12 * arg2 / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require (12 * arg2 / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                        require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor4].field_0 = stor4
                        getSafe[stor4].field_256 = arg2
                        getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor4].field_768 = msg.sender
                        getSafe[stor4].field_1024 = arg1
                        getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor4].field_1792 = 0
                        getSafe[stor4].field_2048 = block.timestamp
                        getSafe[stor4].field_2304 = percent
                        getSafe[stor4].field_2560 = 0
                        getSafe[stor4].field_2816 = 0
                        getSafe[stor4].field_3072 = 0
                        getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                        require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7264 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7264 + 544]
                        _7340 = mem[ceil32(return_data.size) + _7264 + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7264 + 544])] = mem[ceil32(return_data.size) + _7264 + 576 len ceil32(mem[ceil32(return_data.size) + _7264 + 544])]
                        if not _7340 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7340 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7340) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7340) + (2 * ceil32(return_data.size)) + -(_7340 % 32) + 704 len _7340 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7340) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require (12 * arg2 / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor4].field_1792 = 0
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7263 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7263 + 544]
                            _7337 = mem[ceil32(return_data.size) + _7263 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7263 + 544])] = mem[ceil32(return_data.size) + _7263 + 576 len ceil32(mem[ceil32(return_data.size) + _7263 + 544])]
                            if not _7337 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7337 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7337) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7337) + (2 * ceil32(return_data.size)) + -(_7337 % 32) + 704 len _7337 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7337) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor4].field_1792 = 0
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7262 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7262 + 544]
                            _7334 = mem[ceil32(return_data.size) + _7262 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7262 + 544])] = mem[ceil32(return_data.size) + _7262 + 576 len ceil32(mem[ceil32(return_data.size) + _7262 + 544])]
                            if not _7334 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7334 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7334) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7334) + (2 * ceil32(return_data.size)) + -(_7334 % 32) + 704 len _7334 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7334) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require 16 * arg2 / arg2 == 16
                    require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)]:
                        require (12 * arg2 / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require (12 * arg2 / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                        require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor4].field_0 = stor4
                        getSafe[stor4].field_256 = arg2
                        getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor4].field_768 = msg.sender
                        getSafe[stor4].field_1024 = arg1
                        getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor4].field_1792 = 16 * arg2 / 100
                        getSafe[stor4].field_2048 = block.timestamp
                        getSafe[stor4].field_2304 = percent
                        getSafe[stor4].field_2560 = 0
                        getSafe[stor4].field_2816 = 0
                        getSafe[stor4].field_3072 = 0
                        getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                        require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        stor4++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _7261 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7261 + 544]
                        _7331 = mem[ceil32(return_data.size) + _7261 + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7261 + 544])] = mem[ceil32(return_data.size) + _7261 + 576 len ceil32(mem[ceil32(return_data.size) + _7261 + 544])]
                        if not _7331 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7331 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7331) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7331) + (2 * ceil32(return_data.size)) + -(_7331 % 32) + 704 len _7331 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7331) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require (12 * arg2 / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor4].field_1792 = 16 * arg2 / 100
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7260 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7260 + 544]
                            _7328 = mem[ceil32(return_data.size) + _7260 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7260 + 544])] = mem[ceil32(return_data.size) + _7260 + 576 len ceil32(mem[ceil32(return_data.size) + _7260 + 544])]
                            if not _7328 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7328 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7328) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7328) + (2 * ceil32(return_data.size)) + -(_7328 % 32) + 704 len _7328 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7328) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) + sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor4
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
                            require return_data.size >= mem[mem[544] + 544] + mem[544] + 32 and mem[mem[544] + 544] <= 4294967296
                            mem[512] = cashbackcode[address(msg.sender)]
                            getSafe[stor4].field_0 = stor4
                            getSafe[stor4].field_256 = arg2
                            getSafe[stor4].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor4].field_768 = msg.sender
                            getSafe[stor4].field_1024 = arg1
                            getSafe[stor4][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor4].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor4].field_1792 = 16 * arg2 / 100
                            getSafe[stor4].field_2048 = block.timestamp
                            getSafe[stor4].field_2304 = percent
                            getSafe[stor4].field_2560 = 0
                            getSafe[stor4].field_2816 = 0
                            getSafe[stor4].field_3072 = 0
                            getSafe[stor4].field_3328 = cashbackcode[address(msg.sender)]
                            require arg2 + sub_bb142c2d[address(msg.sender)][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require arg2 + sub_6a37f573[address(arg1)] >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require arg2 + sub_666a7370[address(arg1)] >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            stor4++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _7259 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] + mem[ceil32(return_data.size) + 544] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 544] + 544] <= 4294967296
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[ceil32(return_data.size) + _7259 + 544]
                            _7325 = mem[ceil32(return_data.size) + _7259 + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[ceil32(return_data.size) + _7259 + 544])] = mem[ceil32(return_data.size) + _7259 + 576 len ceil32(mem[ceil32(return_data.size) + _7259 + 544])]
                            if not _7325 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7325 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7325) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7325) + (2 * ceil32(return_data.size)) + -(_7325 % 32) + 704 len _7325 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7325) + ceil32(return_data.size) + 160], msg.sender, arg1
}



}
