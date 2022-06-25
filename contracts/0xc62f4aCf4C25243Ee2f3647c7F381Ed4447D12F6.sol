contract main {




// =====================  Runtime code  =====================


#
#  - ClaimTokens(address arg1, uint256 arg2)
#  - sub_55aaef8f(?)
#  - sub_97727a3b(?)
#
const GetContractBalance = eth.balance(this.address)


address getEthereumNodesAddress;
address stor1;
address stor2;
uint256 percent;
uint256 sub_e2afe3bb;
uint256 stor5;
uint256 sub_93002f02;
mapping of uint8 stor7;
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
array of address sub_1c019a52;

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

function sub_1c019a52(?) {
    require arg1 < sub_1c019a52.length
    return sub_1c019a52[arg1]
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
    return bool(stor7[arg1])
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
    require sub_374d7e3a[0] + msg.value >= sub_374d7e3a[0]
    sub_374d7e3a[0] += msg.value
}

function CashbackCode(address arg1) {
    require arg1 != msg.sender
    if not cashbackcode[address(msg.sender)]:
        cashbackcode[address(msg.sender)] = arg1
        emit 0x3bf019f5: arg1, msg.sender
}

function WithdrawEth(uint256 arg1) {
    require msg.sender == getEthereumNodesAddress
    require arg1 > 0
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_11e02620(?) {
    require msg.sender == getEthereumNodesAddress
    stor7[address(arg1)] = uint8(arg2)
    contractSymbol[address(arg1)][].field_0 = Array(len=arg4.length, data=arg4[all])
    sub_99613956[address(arg1)] = arg3
    if arg1 == stor2:
        if not arg2:
            stor7[address(arg1)] = 1
    emit 0xf10649bf: arg2, arg3, arg1
}

function sub_98c7aba2(?) {
    require arg1
    s = 0
    idx = 1
    s = 0
    while idx < stor5:
        mem[0] = idx
        mem[32] = 12
        if getSafe[idx].field_768 != msg.sender:
            s = sha3(idx, 12)
            idx = idx + 1
            s = s
            continue 
        if getSafe[idx].field_1024 != arg1:
            s = sha3(idx, 12)
            idx = idx + 1
            s = s
            continue 
        s = sha3(idx, 12)
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
    require arg1 == msg.sender
    require sub_d76ca047[address(arg1)][address(arg2)] > 0
    require sub_d76ca047[address(msg.sender)][address(arg2)] <= sub_666a7370[address(arg2)]
    sub_666a7370[address(arg2)] -= sub_d76ca047[address(msg.sender)][address(arg2)]
    require sub_0d826c0b[address(arg2)] + sub_d76ca047[address(msg.sender)][address(arg2)] >= sub_0d826c0b[address(arg2)]
    sub_0d826c0b[address(arg2)] += sub_d76ca047[address(msg.sender)][address(arg2)]
    mem[128] = contractSymbol[address(arg2)].field_0
    idx = 128
    s = 0
    while contractSymbol[address(arg2)].length + 96 > idx:
        mem[idx + 32] = contractSymbol[address(arg2)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
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
    emit 0x959346e7: Array(len=contractSymbol[address(arg2)].length, data=mem[128 len contractSymbol[address(arg2)].length]), sub_d76ca047[address(msg.sender)][address(arg2)], block.timestamp, msg.sender, arg2
}

function sub_650db56d(?) {
    require msg.sender == getEthereumNodesAddress
    s = 0
    idx = 1
    s = 0
    while idx < stor5:
        mem[0] = idx
        mem[32] = 12
        if not getSafe[idx].field_0:
            s = sha3(idx, 12)
            idx = idx + 1
            s = s
            continue 
        if arg1:
            if getSafe[idx].field_1024 != stor1:
                if arg1:
                    s = sha3(idx, 12)
                    idx = idx + 1
                    s = s
                    continue 
        require sub_0d826c0b[stor12[idx].field_1024] + getSafe[idx].field_1536 >= sub_0d826c0b[stor12[idx].field_1024]
        sub_0d826c0b[stor12[idx].field_1024] += getSafe[idx].field_1536
        require sub_67da21dd[stor12[idx].field_768][stor12[idx].field_1024] + getSafe[idx].field_1536 >= sub_67da21dd[stor12[idx].field_768][stor12[idx].field_1024]
        sub_67da21dd[address(msg.sender)][stor12[idx].field_1024] = sub_67da21dd[stor12[idx].field_768][stor12[idx].field_1024] + getSafe[idx].field_1536
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
        require getSafe[idx].field_1792 + 88 >= 88
        require 16 <= getSafe[idx].field_1792 + 88
        getSafe[idx].field_2560 = getSafe[idx].field_1792 + 72
        if not getSafe[idx].field_256:
            getSafe[idx].field_2816 = 0
        else:
            require getSafe[idx].field_256
            require getSafe[idx].field_256 * getSafe[idx].field_2560 / getSafe[idx].field_256 == getSafe[idx].field_2560
            getSafe[idx].field_2816 = getSafe[idx].field_256 * getSafe[idx].field_2560 / 100
        mem[0] = getSafe[idx].field_1024
        mem[32] = 9
        sub_666a7370[stor12[idx].field_1024] = 0
        sub_93002f02--
        s = sha3(idx, 12)
        idx = idx + 1
        s = s + 1
        continue 
    emit 0xaeb4f573: s
}

function sub_e61021e8(?) {
    require arg1
    require arg2 > 0
    require arg2 <= sub_99613956[address(arg1)]
    require stor7[address(arg1)]
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
                    cashbackcode[address(msg.sender)] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                    mem[96] = stor5
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
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor5].field_0 = stor5
                    getSafe[stor5].field_256 = arg2
                    getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor5].field_768 = msg.sender
                    getSafe[stor5].field_1024 = arg1
                    getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor5].field_1536 = 0
                    getSafe[stor5].field_1792 = 0
                    getSafe[stor5].field_2048 = block.timestamp
                    getSafe[stor5].field_2304 = percent
                    getSafe[stor5].field_2560 = 0
                    getSafe[stor5].field_2816 = 0
                    getSafe[stor5].field_3072 = 0
                    getSafe[stor5].field_3328 = getEthereumNodesAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    sub_666a7370[address(arg1)] += arg2
                    stor5++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7274 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7274 + ceil32(return_data.size) + 544]
                    _7402 = mem[_7274 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7274 + ceil32(return_data.size) + 544])] = mem[_7274 + ceil32(return_data.size) + 576 len ceil32(mem[_7274 + ceil32(return_data.size) + 544])]
                    if not _7402 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7402 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7402) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7402) + (2 * ceil32(return_data.size)) + -(_7402 % 32) + 704 len _7402 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7402) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                    mem[96] = stor5
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
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor5].field_0 = stor5
                    getSafe[stor5].field_256 = arg2
                    getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor5].field_768 = msg.sender
                    getSafe[stor5].field_1024 = arg1
                    getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor5].field_1536 = 72 * arg2 / 100
                    getSafe[stor5].field_1792 = 0
                    getSafe[stor5].field_2048 = block.timestamp
                    getSafe[stor5].field_2304 = percent
                    getSafe[stor5].field_2560 = 0
                    getSafe[stor5].field_2816 = 0
                    getSafe[stor5].field_3072 = 0
                    getSafe[stor5].field_3328 = getEthereumNodesAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    sub_666a7370[address(arg1)] += arg2
                    stor5++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7273 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7273 + ceil32(return_data.size) + 544]
                    _7399 = mem[_7273 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7273 + ceil32(return_data.size) + 544])] = mem[_7273 + ceil32(return_data.size) + 576 len ceil32(mem[_7273 + ceil32(return_data.size) + 544])]
                    if not _7399 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7399 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7399) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7399) + (2 * ceil32(return_data.size)) + -(_7399 % 32) + 704 len _7399 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7399) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 0 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                        address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                        mem[96] = stor5
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
                        getSafe[stor5].field_0 = stor5
                        getSafe[stor5].field_256 = arg2
                        getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor5].field_768 = msg.sender
                        getSafe[stor5].field_1024 = arg1
                        getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor5].field_1536 = arg2
                        getSafe[stor5].field_1792 = 0
                        getSafe[stor5].field_2048 = block.timestamp
                        getSafe[stor5].field_2304 = percent
                        getSafe[stor5].field_2560 = 0
                        getSafe[stor5].field_2816 = 0
                        getSafe[stor5].field_3072 = 0
                        getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        sub_666a7370[address(arg1)] += arg2
                        stor5++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7272 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7272 + ceil32(return_data.size) + 544]
                        _7396 = mem[_7272 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7272 + ceil32(return_data.size) + 544])] = mem[_7272 + ceil32(return_data.size) + 576 len ceil32(mem[_7272 + ceil32(return_data.size) + 544])]
                        if not _7396 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7396 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7396) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7396) + (2 * ceil32(return_data.size)) + -(_7396 % 32) + 704 len _7396 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7396) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2
                            getSafe[stor5].field_1792 = 0
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7271 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7271 + ceil32(return_data.size) + 544]
                            _7393 = mem[_7271 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7271 + ceil32(return_data.size) + 544])] = mem[_7271 + ceil32(return_data.size) + 576 len ceil32(mem[_7271 + ceil32(return_data.size) + 544])]
                            if not _7393 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7393 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7393) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7393) + (2 * ceil32(return_data.size)) + -(_7393 % 32) + 704 len _7393 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7393) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_374d7e3a[address(arg1)] - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2
                            getSafe[stor5].field_1792 = 0
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7270 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7270 + ceil32(return_data.size) + 544]
                            _7390 = mem[_7270 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7270 + ceil32(return_data.size) + 544])] = mem[_7270 + ceil32(return_data.size) + 576 len ceil32(mem[_7270 + ceil32(return_data.size) + 544])]
                            if not _7390 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7390 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7390) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7390) + (2 * ceil32(return_data.size)) + -(_7390 % 32) + 704 len _7390 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7390) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                        address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                        mem[96] = stor5
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
                        getSafe[stor5].field_0 = stor5
                        getSafe[stor5].field_256 = arg2
                        getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor5].field_768 = msg.sender
                        getSafe[stor5].field_1024 = arg1
                        getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor5].field_1536 = arg2
                        getSafe[stor5].field_1792 = 16 * arg2 / 100
                        getSafe[stor5].field_2048 = block.timestamp
                        getSafe[stor5].field_2304 = percent
                        getSafe[stor5].field_2560 = 0
                        getSafe[stor5].field_2816 = 0
                        getSafe[stor5].field_3072 = 0
                        getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        sub_666a7370[address(arg1)] += arg2
                        stor5++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7269 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7269 + ceil32(return_data.size) + 544]
                        _7387 = mem[_7269 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7269 + ceil32(return_data.size) + 544])] = mem[_7269 + ceil32(return_data.size) + 576 len ceil32(mem[_7269 + ceil32(return_data.size) + 544])]
                        if not _7387 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7387 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7387) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7387) + (2 * ceil32(return_data.size)) + -(_7387 % 32) + 704 len _7387 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7387) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2
                            getSafe[stor5].field_1792 = 16 * arg2 / 100
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7268 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7268 + ceil32(return_data.size) + 544]
                            _7384 = mem[_7268 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7268 + ceil32(return_data.size) + 544])] = mem[_7268 + ceil32(return_data.size) + 576 len ceil32(mem[_7268 + ceil32(return_data.size) + 544])]
                            if not _7384 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7384 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7384) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7384) + (2 * ceil32(return_data.size)) + -(_7384 % 32) + 704 len _7384 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7384) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_374d7e3a[address(arg1)] - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2
                            getSafe[stor5].field_1792 = 16 * arg2 / 100
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7267 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7267 + ceil32(return_data.size) + 544]
                            _7381 = mem[_7267 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7267 + ceil32(return_data.size) + 544])] = mem[_7267 + ceil32(return_data.size) + 576 len ceil32(mem[_7267 + ceil32(return_data.size) + 544])]
                            if not _7381 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7381 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7381) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7381) + (2 * ceil32(return_data.size)) + -(_7381 % 32) + 704 len _7381 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7381) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            require arg2
            require 28 * arg2 / arg2 == 28
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] + (28 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                    sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                    mem[96] = stor5
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
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor5].field_0 = stor5
                    getSafe[stor5].field_256 = arg2
                    getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor5].field_768 = msg.sender
                    getSafe[stor5].field_1024 = arg1
                    getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor5].field_1536 = 0
                    getSafe[stor5].field_1792 = 0
                    getSafe[stor5].field_2048 = block.timestamp
                    getSafe[stor5].field_2304 = percent
                    getSafe[stor5].field_2560 = 0
                    getSafe[stor5].field_2816 = 0
                    getSafe[stor5].field_3072 = 0
                    getSafe[stor5].field_3328 = getEthereumNodesAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    sub_666a7370[address(arg1)] += arg2
                    stor5++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7266 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7266 + ceil32(return_data.size) + 544]
                    _7378 = mem[_7266 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7266 + ceil32(return_data.size) + 544])] = mem[_7266 + ceil32(return_data.size) + 576 len ceil32(mem[_7266 + ceil32(return_data.size) + 544])]
                    if not _7378 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7378 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7378) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7378) + (2 * ceil32(return_data.size)) + -(_7378 % 32) + 704 len _7378 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7378) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] + (28 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                    sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                    mem[96] = stor5
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
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor5].field_0 = stor5
                    getSafe[stor5].field_256 = arg2
                    getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor5].field_768 = msg.sender
                    getSafe[stor5].field_1024 = arg1
                    getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor5].field_1536 = 72 * arg2 / 100
                    getSafe[stor5].field_1792 = 0
                    getSafe[stor5].field_2048 = block.timestamp
                    getSafe[stor5].field_2304 = percent
                    getSafe[stor5].field_2560 = 0
                    getSafe[stor5].field_2816 = 0
                    getSafe[stor5].field_3072 = 0
                    getSafe[stor5].field_3328 = getEthereumNodesAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    sub_666a7370[address(arg1)] += arg2
                    stor5++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7265 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7265 + ceil32(return_data.size) + 544]
                    _7375 = mem[_7265 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7265 + ceil32(return_data.size) + 544])] = mem[_7265 + ceil32(return_data.size) + 576 len ceil32(mem[_7265 + ceil32(return_data.size) + 544])]
                    if not _7375 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7375 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7375) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7375) + (2 * ceil32(return_data.size)) + -(_7375 % 32) + 704 len _7375 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7375) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 0 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                        address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                        mem[96] = stor5
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
                        getSafe[stor5].field_0 = stor5
                        getSafe[stor5].field_256 = arg2
                        getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor5].field_768 = msg.sender
                        getSafe[stor5].field_1024 = arg1
                        getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor5].field_1536 = arg2
                        getSafe[stor5].field_1792 = 0
                        getSafe[stor5].field_2048 = block.timestamp
                        getSafe[stor5].field_2304 = percent
                        getSafe[stor5].field_2560 = 0
                        getSafe[stor5].field_2816 = 0
                        getSafe[stor5].field_3072 = 0
                        getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        sub_666a7370[address(arg1)] += arg2
                        stor5++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7264 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7264 + ceil32(return_data.size) + 544]
                        _7372 = mem[_7264 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7264 + ceil32(return_data.size) + 544])] = mem[_7264 + ceil32(return_data.size) + 576 len ceil32(mem[_7264 + ceil32(return_data.size) + 544])]
                        if not _7372 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7372 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7372) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7372) + (2 * ceil32(return_data.size)) + -(_7372 % 32) + 704 len _7372 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7372) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2
                            getSafe[stor5].field_1792 = 0
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7263 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7263 + ceil32(return_data.size) + 544]
                            _7369 = mem[_7263 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7263 + ceil32(return_data.size) + 544])] = mem[_7263 + ceil32(return_data.size) + 576 len ceil32(mem[_7263 + ceil32(return_data.size) + 544])]
                            if not _7369 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7369 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7369) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7369) + (2 * ceil32(return_data.size)) + -(_7369 % 32) + 704 len _7369 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7369) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_374d7e3a[address(arg1)] - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2
                            getSafe[stor5].field_1792 = 0
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7262 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7262 + ceil32(return_data.size) + 544]
                            _7366 = mem[_7262 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7262 + ceil32(return_data.size) + 544])] = mem[_7262 + ceil32(return_data.size) + 576 len ceil32(mem[_7262 + ceil32(return_data.size) + 544])]
                            if not _7366 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7366 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7366) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7366) + (2 * ceil32(return_data.size)) + -(_7366 % 32) + 704 len _7366 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7366) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                        address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                        mem[96] = stor5
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
                        getSafe[stor5].field_0 = stor5
                        getSafe[stor5].field_256 = arg2
                        getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor5].field_768 = msg.sender
                        getSafe[stor5].field_1024 = arg1
                        getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor5].field_1536 = arg2
                        getSafe[stor5].field_1792 = 16 * arg2 / 100
                        getSafe[stor5].field_2048 = block.timestamp
                        getSafe[stor5].field_2304 = percent
                        getSafe[stor5].field_2560 = 0
                        getSafe[stor5].field_2816 = 0
                        getSafe[stor5].field_3072 = 0
                        getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        sub_666a7370[address(arg1)] += arg2
                        stor5++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7261 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7261 + ceil32(return_data.size) + 544]
                        _7363 = mem[_7261 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7261 + ceil32(return_data.size) + 544])] = mem[_7261 + ceil32(return_data.size) + 576 len ceil32(mem[_7261 + ceil32(return_data.size) + 544])]
                        if not _7363 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7363 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7363) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7363) + (2 * ceil32(return_data.size)) + -(_7363 % 32) + 704 len _7363 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7363) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2
                            getSafe[stor5].field_1792 = 16 * arg2 / 100
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7260 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7260 + ceil32(return_data.size) + 544]
                            _7360 = mem[_7260 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7260 + ceil32(return_data.size) + 544])] = mem[_7260 + ceil32(return_data.size) + 576 len ceil32(mem[_7260 + ceil32(return_data.size) + 544])]
                            if not _7360 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7360 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7360) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7360) + (2 * ceil32(return_data.size)) + -(_7360 % 32) + 704 len _7360 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7360) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_374d7e3a[address(arg1)] - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2
                            getSafe[stor5].field_1792 = 16 * arg2 / 100
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7259 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7259 + ceil32(return_data.size) + 544]
                            _7357 = mem[_7259 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7259 + ceil32(return_data.size) + 544])] = mem[_7259 + ceil32(return_data.size) + 576 len ceil32(mem[_7259 + ceil32(return_data.size) + 544])]
                            if not _7357 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7357 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7357) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7357) + (2 * ceil32(return_data.size)) + -(_7357 % 32) + 704 len _7357 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7357) + ceil32(return_data.size) + 160], msg.sender, arg1
    else:
        require arg2
        require 12 * arg2 / arg2 == 12
        if not arg2:
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                    mem[96] = stor5
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
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor5].field_0 = stor5
                    getSafe[stor5].field_256 = arg2
                    getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor5].field_768 = msg.sender
                    getSafe[stor5].field_1024 = arg1
                    getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor5].field_1536 = 0
                    getSafe[stor5].field_1792 = 0
                    getSafe[stor5].field_2048 = block.timestamp
                    getSafe[stor5].field_2304 = percent
                    getSafe[stor5].field_2560 = 0
                    getSafe[stor5].field_2816 = 0
                    getSafe[stor5].field_3072 = 0
                    getSafe[stor5].field_3328 = getEthereumNodesAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    sub_666a7370[address(arg1)] += arg2
                    stor5++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7258 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7258 + ceil32(return_data.size) + 544]
                    _7354 = mem[_7258 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7258 + ceil32(return_data.size) + 544])] = mem[_7258 + ceil32(return_data.size) + 576 len ceil32(mem[_7258 + ceil32(return_data.size) + 544])]
                    if not _7354 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7354 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7354) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7354) + (2 * ceil32(return_data.size)) + -(_7354 % 32) + 704 len _7354 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7354) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                    mem[96] = stor5
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
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor5].field_0 = stor5
                    getSafe[stor5].field_256 = arg2
                    getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor5].field_768 = msg.sender
                    getSafe[stor5].field_1024 = arg1
                    getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor5].field_1536 = 72 * arg2 / 100
                    getSafe[stor5].field_1792 = 0
                    getSafe[stor5].field_2048 = block.timestamp
                    getSafe[stor5].field_2304 = percent
                    getSafe[stor5].field_2560 = 0
                    getSafe[stor5].field_2816 = 0
                    getSafe[stor5].field_3072 = 0
                    getSafe[stor5].field_3328 = getEthereumNodesAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    sub_666a7370[address(arg1)] += arg2
                    stor5++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7257 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7257 + ceil32(return_data.size) + 544]
                    _7351 = mem[_7257 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7257 + ceil32(return_data.size) + 544])] = mem[_7257 + ceil32(return_data.size) + 576 len ceil32(mem[_7257 + ceil32(return_data.size) + 544])]
                    if not _7351 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7351 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7351) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7351) + (2 * ceil32(return_data.size)) + -(_7351 % 32) + 704 len _7351 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7351) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                        address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                        mem[96] = stor5
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
                        getSafe[stor5].field_0 = stor5
                        getSafe[stor5].field_256 = arg2
                        getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor5].field_768 = msg.sender
                        getSafe[stor5].field_1024 = arg1
                        getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor5].field_1792 = 0
                        getSafe[stor5].field_2048 = block.timestamp
                        getSafe[stor5].field_2304 = percent
                        getSafe[stor5].field_2560 = 0
                        getSafe[stor5].field_2816 = 0
                        getSafe[stor5].field_3072 = 0
                        getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        sub_666a7370[address(arg1)] += arg2
                        stor5++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7256 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7256 + ceil32(return_data.size) + 544]
                        _7348 = mem[_7256 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7256 + ceil32(return_data.size) + 544])] = mem[_7256 + ceil32(return_data.size) + 576 len ceil32(mem[_7256 + ceil32(return_data.size) + 544])]
                        if not _7348 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7348 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7348) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7348) + (2 * ceil32(return_data.size)) + -(_7348 % 32) + 704 len _7348 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7348) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor5].field_1792 = 0
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7255 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7255 + ceil32(return_data.size) + 544]
                            _7345 = mem[_7255 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7255 + ceil32(return_data.size) + 544])] = mem[_7255 + ceil32(return_data.size) + 576 len ceil32(mem[_7255 + ceil32(return_data.size) + 544])]
                            if not _7345 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7345 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7345) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7345) + (2 * ceil32(return_data.size)) + -(_7345 % 32) + 704 len _7345 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7345) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100)
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor5].field_1792 = 0
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7254 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7254 + ceil32(return_data.size) + 544]
                            _7342 = mem[_7254 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7254 + ceil32(return_data.size) + 544])] = mem[_7254 + ceil32(return_data.size) + 576 len ceil32(mem[_7254 + ceil32(return_data.size) + 544])]
                            if not _7342 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7342 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7342) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7342) + (2 * ceil32(return_data.size)) + -(_7342 % 32) + 704 len _7342 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7342) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                        address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                        mem[96] = stor5
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
                        getSafe[stor5].field_0 = stor5
                        getSafe[stor5].field_256 = arg2
                        getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor5].field_768 = msg.sender
                        getSafe[stor5].field_1024 = arg1
                        getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor5].field_1792 = 16 * arg2 / 100
                        getSafe[stor5].field_2048 = block.timestamp
                        getSafe[stor5].field_2304 = percent
                        getSafe[stor5].field_2560 = 0
                        getSafe[stor5].field_2816 = 0
                        getSafe[stor5].field_3072 = 0
                        getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        sub_666a7370[address(arg1)] += arg2
                        stor5++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7253 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7253 + ceil32(return_data.size) + 544]
                        _7339 = mem[_7253 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7253 + ceil32(return_data.size) + 544])] = mem[_7253 + ceil32(return_data.size) + 576 len ceil32(mem[_7253 + ceil32(return_data.size) + 544])]
                        if not _7339 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7339 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7339) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7339) + (2 * ceil32(return_data.size)) + -(_7339 % 32) + 704 len _7339 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7339) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor5].field_1792 = 16 * arg2 / 100
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7252 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7252 + ceil32(return_data.size) + 544]
                            _7336 = mem[_7252 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7252 + ceil32(return_data.size) + 544])] = mem[_7252 + ceil32(return_data.size) + 576 len ceil32(mem[_7252 + ceil32(return_data.size) + 544])]
                            if not _7336 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7336 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7336) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7336) + (2 * ceil32(return_data.size)) + -(_7336 % 32) + 704 len _7336 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7336) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100)
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor5].field_1792 = 16 * arg2 / 100
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7251 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7251 + ceil32(return_data.size) + 544]
                            _7333 = mem[_7251 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7251 + ceil32(return_data.size) + 544])] = mem[_7251 + ceil32(return_data.size) + 576 len ceil32(mem[_7251 + ceil32(return_data.size) + 544])]
                            if not _7333 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7333 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7333) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7333) + (2 * ceil32(return_data.size)) + -(_7333 % 32) + 704 len _7333 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7333) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            require arg2
            require 28 * arg2 / arg2 == 28
            if not cashbackcode[address(msg.sender)]:
                if not arg2:
                    cashbackcode[address(msg.sender)] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] + (28 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                    sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                    mem[96] = stor5
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
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor5].field_0 = stor5
                    getSafe[stor5].field_256 = arg2
                    getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor5].field_768 = msg.sender
                    getSafe[stor5].field_1024 = arg1
                    getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor5].field_1536 = 0
                    getSafe[stor5].field_1792 = 0
                    getSafe[stor5].field_2048 = block.timestamp
                    getSafe[stor5].field_2304 = percent
                    getSafe[stor5].field_2560 = 0
                    getSafe[stor5].field_2816 = 0
                    getSafe[stor5].field_3072 = 0
                    getSafe[stor5].field_3328 = getEthereumNodesAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    sub_666a7370[address(arg1)] += arg2
                    stor5++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7250 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7250 + ceil32(return_data.size) + 544]
                    _7330 = mem[_7250 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7250 + ceil32(return_data.size) + 544])] = mem[_7250 + ceil32(return_data.size) + 576 len ceil32(mem[_7250 + ceil32(return_data.size) + 544])]
                    if not _7330 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7330 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7330) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7330) + (2 * ceil32(return_data.size)) + -(_7330 % 32) + 704 len _7330 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7330) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 72 * arg2 / arg2 == 72
                    cashbackcode[address(msg.sender)] = getEthereumNodesAddress
                    emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                    require sub_374d7e3a[address(arg1)] + (28 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                    sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                    uint256(getTotalAffiliate[stor0])++
                    address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                    mem[96] = stor5
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
                    mem[512] = getEthereumNodesAddress
                    getSafe[stor5].field_0 = stor5
                    getSafe[stor5].field_256 = arg2
                    getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                    getSafe[stor5].field_768 = msg.sender
                    getSafe[stor5].field_1024 = arg1
                    getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor5].field_1536 = 72 * arg2 / 100
                    getSafe[stor5].field_1792 = 0
                    getSafe[stor5].field_2048 = block.timestamp
                    getSafe[stor5].field_2304 = percent
                    getSafe[stor5].field_2560 = 0
                    getSafe[stor5].field_2816 = 0
                    getSafe[stor5].field_3072 = 0
                    getSafe[stor5].field_3328 = getEthereumNodesAddress
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                    require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += arg2
                    require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                    mem[0] = arg1
                    mem[32] = 9
                    sub_666a7370[address(arg1)] += arg2
                    stor5++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _7249 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_7249 + ceil32(return_data.size) + 544]
                    _7327 = mem[_7249 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7249 + ceil32(return_data.size) + 544])] = mem[_7249 + ceil32(return_data.size) + 576 len ceil32(mem[_7249 + ceil32(return_data.size) + 544])]
                    if not _7327 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7327 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_7327) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7327) + (2 * ceil32(return_data.size)) + -(_7327 % 32) + 704 len _7327 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7327) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require 12 * arg2 / 100 <= arg2
                if not arg2:
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                        address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                        mem[96] = stor5
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
                        getSafe[stor5].field_0 = stor5
                        getSafe[stor5].field_256 = arg2
                        getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor5].field_768 = msg.sender
                        getSafe[stor5].field_1024 = arg1
                        getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor5].field_1792 = 0
                        getSafe[stor5].field_2048 = block.timestamp
                        getSafe[stor5].field_2304 = percent
                        getSafe[stor5].field_2560 = 0
                        getSafe[stor5].field_2816 = 0
                        getSafe[stor5].field_3072 = 0
                        getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        sub_666a7370[address(arg1)] += arg2
                        stor5++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7248 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7248 + ceil32(return_data.size) + 544]
                        _7324 = mem[_7248 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7248 + ceil32(return_data.size) + 544])] = mem[_7248 + ceil32(return_data.size) + 576 len ceil32(mem[_7248 + ceil32(return_data.size) + 544])]
                        if not _7324 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7324 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7324) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7324) + (2 * ceil32(return_data.size)) + -(_7324 % 32) + 704 len _7324 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7324) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor5].field_1792 = 0
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7247 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7247 + ceil32(return_data.size) + 544]
                            _7321 = mem[_7247 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7247 + ceil32(return_data.size) + 544])] = mem[_7247 + ceil32(return_data.size) + 576 len ceil32(mem[_7247 + ceil32(return_data.size) + 544])]
                            if not _7321 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7321 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7321) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7321) + (2 * ceil32(return_data.size)) + -(_7321 % 32) + 704 len _7321 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7321) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100)
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor5].field_1792 = 0
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7246 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7246 + ceil32(return_data.size) + 544]
                            _7318 = mem[_7246 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7246 + ceil32(return_data.size) + 544])] = mem[_7246 + ceil32(return_data.size) + 576 len ceil32(mem[_7246 + ceil32(return_data.size) + 544])]
                            if not _7318 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7318 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7318) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7318) + (2 * ceil32(return_data.size)) + -(_7318 % 32) + 704 len _7318 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7318) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    if sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] >= arg2:
                        require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                        address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                        mem[96] = stor5
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
                        getSafe[stor5].field_0 = stor5
                        getSafe[stor5].field_256 = arg2
                        getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                        getSafe[stor5].field_768 = msg.sender
                        getSafe[stor5].field_1024 = arg1
                        getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor5].field_1792 = 16 * arg2 / 100
                        getSafe[stor5].field_2048 = block.timestamp
                        getSafe[stor5].field_2304 = percent
                        getSafe[stor5].field_2560 = 0
                        getSafe[stor5].field_2816 = 0
                        getSafe[stor5].field_3072 = 0
                        getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 9
                        sub_666a7370[address(arg1)] += arg2
                        stor5++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _7245 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_7245 + ceil32(return_data.size) + 544]
                        _7315 = mem[_7245 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7245 + ceil32(return_data.size) + 544])] = mem[_7245 + ceil32(return_data.size) + 576 len ceil32(mem[_7245 + ceil32(return_data.size) + 544])]
                        if not _7315 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7315 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_7315) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7315) + (2 * ceil32(return_data.size)) + -(_7315 % 32) + 704 len _7315 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7315) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor5].field_1792 = 16 * arg2 / 100
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7244 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7244 + ceil32(return_data.size) + 544]
                            _7312 = mem[_7244 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7244 + ceil32(return_data.size) + 544])] = mem[_7244 + ceil32(return_data.size) + 576 len ceil32(mem[_7244 + ceil32(return_data.size) + 544])]
                            if not _7312 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7312 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7312) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7312) + (2 * ceil32(return_data.size)) + -(_7312 % 32) + 704 len _7312 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7312) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)]
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor8[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor8[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor8[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor8[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor8[address(msg.sender)]][address(arg1)] / 100)
                            uint256(getTotalAffiliate[stor8[address(msg.sender)]])++
                            address(getTotalAffiliate[stor8[address(msg.sender)]][uint256(getTotalAffiliate[stor8[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor5
                            mem[96] = stor5
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
                            getSafe[stor5].field_0 = stor5
                            getSafe[stor5].field_256 = arg2
                            getSafe[stor5].field_512 = block.timestamp + sub_e2afe3bb
                            getSafe[stor5].field_768 = msg.sender
                            getSafe[stor5].field_1024 = arg1
                            getSafe[stor5][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                            getSafe[stor5].field_1536 = arg2 - (12 * arg2 / 100)
                            getSafe[stor5].field_1792 = 16 * arg2 / 100
                            getSafe[stor5].field_2048 = block.timestamp
                            getSafe[stor5].field_2304 = percent
                            getSafe[stor5].field_2560 = 0
                            getSafe[stor5].field_2816 = 0
                            getSafe[stor5].field_3072 = 0
                            getSafe[stor5].field_3328 = cashbackcode[address(msg.sender)]
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            mem[0] = arg1
                            mem[32] = 9
                            sub_666a7370[address(arg1)] += arg2
                            stor5++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _7243 = mem[ceil32(return_data.size) + 544]
                            require mem[ceil32(return_data.size) + 544] <= 4294967296
                            require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 576] = arg2
                            mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_e2afe3bb
                            mem[(2 * ceil32(return_data.size)) + 544] = 96
                            mem[(2 * ceil32(return_data.size)) + 640] = mem[_7243 + ceil32(return_data.size) + 544]
                            _7309 = mem[_7243 + ceil32(return_data.size) + 544]
                            mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_7243 + ceil32(return_data.size) + 544])] = mem[_7243 + ceil32(return_data.size) + 576 len ceil32(mem[_7243 + ceil32(return_data.size) + 544])]
                            if not _7309 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _7309 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_7309) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_7309) + (2 * ceil32(return_data.size)) + -(_7309 % 32) + 704 len _7309 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_7309) + ceil32(return_data.size) + 160], msg.sender, arg1
}



}
