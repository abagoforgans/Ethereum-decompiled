contract main {




// =====================  Runtime code  =====================


#
#  - sub_25681238(?)
#  - ClaimTokens(address arg1, uint256 arg2)
#
const GetContractBalance = eth.balance(this.address)


address getEthereumNodesAddress;
address sub_e781495aAddress;
uint256 stor2;
uint256 sub_93002f02;
mapping of uint8 stor4;
mapping of uint256 sub_ee3cd825;
mapping of uint256 sub_1996bc1c;
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
mapping of uint256 sub_87b45598;
mapping of uint256 sub_bb142c2d;
mapping of uint256 sub_67da21dd;
mapping of uint256 sub_d76ca047;
mapping of uint256 sub_910592de;
mapping of uint256 sub_27e6d3c8;

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

function sub_1996bc1c(?) {
    return sub_1996bc1c[arg1]
}

function sub_27e6d3c8(?) {
    return sub_27e6d3c8[arg1][arg2]
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
    return bool(stor4[arg1])
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

function sub_87b45598(?) {
    return sub_87b45598[arg1]
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

function sub_e781495a(?) {
    return sub_e781495aAddress
}

function sub_ee3cd825(?) {
    return sub_ee3cd825[arg1]
}

function sub_e396e971(?) {
    require msg.sender == getEthereumNodesAddress
    sub_87b45598[address(arg1)] = arg2
}

function _fallback() payable {
    if msg.value > 0:
        require sub_374d7e3a[0] + msg.value >= sub_374d7e3a[0]
        sub_374d7e3a[0] += msg.value
}

function CashbackCode(address arg1) {
    require arg1 != msg.sender
    if not cashbackcode[address(msg.sender)]:
        cashbackcode[address(msg.sender)] = arg1
        emit 0x3bf019f5: arg1, msg.sender
}

function WithdrawEth() {
    require msg.sender == getEthereumNodesAddress
    require eth.balance(this.address) > 0
    sub_374d7e3a[0] = 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_98c7aba2(?) {
    require arg1
    s = 0
    idx = 1
    s = 0
    while idx < stor2:
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
    sub_d76ca047[address(msg.sender)][address(arg2)] = 0
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
    emit 0x772c23bb: Array(len=contractSymbol[address(arg2)].length, data=mem[128 len contractSymbol[address(arg2)].length]), sub_d76ca047[address(msg.sender)][address(arg2)], block.timestamp, msg.sender, arg2
}

function sub_baaa7180(?) {
    require arg1
    require arg2
    require getSafe[arg2].field_768 == msg.sender
    require getSafe[arg2].field_1792
    mem[128] = getSafe[arg2][5].field_0
    idx = 128
    s = 0
    while getSafe[arg2][5].length + 96 > idx:
        mem[idx + 32] = getSafe[arg2][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    getSafe[arg2].field_1792 = 0
    getSafe[arg2].field_3488 = 1
    require ext_code.size(getSafe[arg2].field_1024)
    call getSafe[arg2].field_1024.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= getSafe[arg2].field_1792
    require ext_code.size(getSafe[arg2].field_1024)
    call getSafe[arg2].field_1024.0xa9059cbb with:
         gas gas_remaining wei
        args getSafe[arg2].field_768, getSafe[arg2].field_1792
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require getSafe[arg2].field_1792 <= sub_666a7370[stor11[arg2].field_1024]
    sub_666a7370[stor11[arg2].field_1024] -= getSafe[arg2].field_1792
    require sub_0d826c0b[stor11[arg2].field_1024] + getSafe[arg2].field_1792 >= sub_0d826c0b[stor11[arg2].field_1024]
    sub_0d826c0b[stor11[arg2].field_1024] += getSafe[arg2].field_1792
    require sub_67da21dd[stor11[arg2].field_768][stor11[arg2].field_1024] + getSafe[arg2].field_1792 >= sub_67da21dd[stor11[arg2].field_768][stor11[arg2].field_1024]
    sub_67da21dd[address(msg.sender)][stor11[arg2].field_1024] = sub_67da21dd[stor11[arg2].field_768][stor11[arg2].field_1024] + getSafe[arg2].field_1792
    emit 0xe25eb861: Array(len=getSafe[arg2][5].length, data=mem[128 len getSafe[arg2][5].length]), getSafe[arg2].field_1792, block.timestamp, msg.sender, getSafe[arg2].field_1024
}

function sub_8e9e2795(?) {
    require msg.sender == getEthereumNodesAddress
    s = 0
    idx = 1
    s = 0
    while idx < stor2:
        mem[0] = idx
        mem[32] = 11
        if not getSafe[idx].field_0:
            s = sha3(idx, 11)
            idx = idx + 1
            s = s
            continue 
        if getSafe[idx].field_1536 <= 0:
            s = sha3(idx, 11)
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
        require getSafe[idx].field_1536 <= sub_666a7370[stor11[idx].field_1024]
        sub_666a7370[stor11[idx].field_1024] -= getSafe[idx].field_1536
        require sub_0d826c0b[stor11[idx].field_1024] + getSafe[idx].field_1536 >= sub_0d826c0b[stor11[idx].field_1024]
        sub_0d826c0b[stor11[idx].field_1024] += getSafe[idx].field_1536
        require sub_67da21dd[stor11[idx].field_768][stor11[idx].field_1024] + getSafe[idx].field_1536 >= sub_67da21dd[stor11[idx].field_768][stor11[idx].field_1024]
        sub_67da21dd[address(msg.sender)][stor11[idx].field_1024] = sub_67da21dd[stor11[idx].field_768][stor11[idx].field_1024] + getSafe[idx].field_1536
        getSafe[idx].field_3072 = getSafe[idx].field_1536
        getSafe[idx].field_2048 = block.timestamp
        if getSafe[idx].field_1792 <= 0:
            if not getSafe[idx].field_256:
                getSafe[idx].field_2816 = 0
            else:
                require getSafe[idx].field_256
                require 72 * getSafe[idx].field_256 / getSafe[idx].field_256 == 72
                getSafe[idx].field_2816 = 72 * getSafe[idx].field_256 / 100
            getSafe[idx].field_2560 = 2 * 10^16 * 3600
        else:
            if not getSafe[idx].field_256:
                getSafe[idx].field_2816 = 0
            else:
                require getSafe[idx].field_256
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
}

function sub_bcdf8536(?) {
    mem[128 len arg4.length] = arg4[all]
    require msg.sender == getEthereumNodesAddress
    require arg5 >= 3
    require arg5 <= 12
    sub_ee3cd825[address(arg1)] = arg5
    contractSymbol[address(arg1)][].field_0 = Array(len=arg4.length, data=arg4[all])
    sub_99613956[address(arg1)] = arg3
    require arg5 > 0
    require arg5
    if 72 / arg5:
        require 72 / arg5
        require 30 * 72 / arg5 / 72 / arg5 == 30
        sub_1996bc1c[address(arg1)] = 720 * 24 * 3600 * 72 / arg5
        if not sub_e781495aAddress:
            sub_e781495aAddress = arg1
        if arg1 != sub_e781495aAddress:
            stor4[address(arg1)] = uint8(arg2)
        else:
            if arg2:
                stor4[address(arg1)] = uint8(arg2)
            else:
                stor4[address(arg1)] = 1
        emit 0x84e00559: arg2, arg3, Array(len=arg4.length, data=arg4[all]), arg5, 720 * 24 * 3600 * 72 / arg5, arg1
    else:
        sub_1996bc1c[address(arg1)] = 0
        if not sub_e781495aAddress:
            sub_e781495aAddress = arg1
        if arg1 != sub_e781495aAddress:
            stor4[address(arg1)] = uint8(arg2)
            mem[ceil32(arg4.length) + 128] = arg2
            mem[ceil32(arg4.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0x84e00559: arg2, arg3, 160, arg5, 0, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, arg1
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                emit 0x84e00559: arg2, arg3, 160, arg5, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 320 len floor32(arg4.length) + -ceil32(arg4.length) + 32], arg1
        else:
            if arg2:
                stor4[address(arg1)] = uint8(arg2)
            else:
                stor4[address(arg1)] = 1
            mem[ceil32(arg4.length) + 128] = arg2
            mem[ceil32(arg4.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0x84e00559: arg2, arg3, 160, arg5, 0, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, arg1
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                emit 0x84e00559: arg2, arg3, 160, arg5, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 320 len floor32(arg4.length) + -ceil32(arg4.length) + 32], arg1
}

function sub_5db164d5(?) {
    require arg1
    require arg2
    require getSafe[arg2].field_768 == msg.sender
    require getSafe[arg2].field_1792
    getSafe[arg2].field_1792 = 0
    require getSafe[arg2].field_1792
    require 72 * getSafe[arg2].field_1792 / getSafe[arg2].field_1792 == 72
    if not cashbackcode[address(msg.sender)]:
        cashbackcode[address(msg.sender)] = getEthereumNodesAddress
        if not getSafe[arg2].field_1792:
            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
            require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
            emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.0x95d89b41 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[576] <= 4294967296
            require mem[576] + 32 <= return_data.size
            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
            mem[544] = 0
            getSafe[stor2].field_0 = stor2
            getSafe[stor2].field_256 = getSafe[arg2].field_1792
            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
            getSafe[stor2].field_768 = msg.sender
            getSafe[stor2].field_1024 = arg1
            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
            getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
            getSafe[stor2].field_1792 = 0
            getSafe[stor2].field_2048 = block.timestamp
            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
            getSafe[stor2].field_2560 = 0
            getSafe[stor2].field_2816 = 0
            getSafe[stor2].field_3072 = 0
            getSafe[stor2].field_3328 = getEthereumNodesAddress
            getSafe[stor2].field_3488 = 0
            require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
            sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
            sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
            require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
            sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
            require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
            sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
            uint256(getTotalAffiliate[stor0])++
            address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
            sub_11a3311c[address(msg.sender)]++
            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
            stor2++
            sub_93002f02++
            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.0x95d89b41 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _4086 = mem[ceil32(return_data.size) + 576]
            require mem[ceil32(return_data.size) + 576] <= 4294967296
            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
            mem[(2 * ceil32(return_data.size)) + 576] = 96
            mem[(2 * ceil32(return_data.size)) + 672] = mem[_4086 + ceil32(return_data.size) + 576]
            _4142 = mem[_4086 + ceil32(return_data.size) + 576]
            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4086 + ceil32(return_data.size) + 576])] = mem[_4086 + ceil32(return_data.size) + 608 len ceil32(mem[_4086 + ceil32(return_data.size) + 576])]
            if not _4142 % 32:
                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4142 + ceil32(return_data.size) + 128], msg.sender, arg1
            else:
                mem[floor32(_4142) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4142) + (2 * ceil32(return_data.size)) + -(_4142 % 32) + 736 len _4142 % 32]
                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4142) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            require getSafe[arg2].field_1792
            require 28 * getSafe[arg2].field_1792 / getSafe[arg2].field_1792 == 28
            require sub_374d7e3a[address(arg1)] + (28 * getSafe[arg2].field_1792 / 100) >= sub_374d7e3a[address(arg1)]
            sub_374d7e3a[address(arg1)] += 28 * getSafe[arg2].field_1792 / 100
            require sub_910592de[stor0][address(arg1)] + (28 * getSafe[arg2].field_1792 / 100) >= sub_910592de[stor0][address(arg1)]
            sub_910592de[stor0][address(arg1)] += 28 * getSafe[arg2].field_1792 / 100
            emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.0x95d89b41 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[576] <= 4294967296
            require mem[576] + 32 <= return_data.size
            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
            mem[544] = 0
            getSafe[stor2].field_0 = stor2
            getSafe[stor2].field_256 = getSafe[arg2].field_1792
            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
            getSafe[stor2].field_768 = msg.sender
            getSafe[stor2].field_1024 = arg1
            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
            getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
            getSafe[stor2].field_1792 = 0
            getSafe[stor2].field_2048 = block.timestamp
            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
            getSafe[stor2].field_2560 = 0
            getSafe[stor2].field_2816 = 0
            getSafe[stor2].field_3072 = 0
            getSafe[stor2].field_3328 = getEthereumNodesAddress
            getSafe[stor2].field_3488 = 0
            require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
            sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
            sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
            require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
            sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
            require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
            sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
            uint256(getTotalAffiliate[stor0])++
            address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
            sub_11a3311c[address(msg.sender)]++
            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
            stor2++
            sub_93002f02++
            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.0x95d89b41 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _4085 = mem[ceil32(return_data.size) + 576]
            require mem[ceil32(return_data.size) + 576] <= 4294967296
            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
            mem[(2 * ceil32(return_data.size)) + 576] = 96
            mem[(2 * ceil32(return_data.size)) + 672] = mem[_4085 + ceil32(return_data.size) + 576]
            _4139 = mem[_4085 + ceil32(return_data.size) + 576]
            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4085 + ceil32(return_data.size) + 576])] = mem[_4085 + ceil32(return_data.size) + 608 len ceil32(mem[_4085 + ceil32(return_data.size) + 576])]
            if not _4139 % 32:
                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4139 + ceil32(return_data.size) + 128], msg.sender, arg1
            else:
                mem[floor32(_4139) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4139) + (2 * ceil32(return_data.size)) + -(_4139 % 32) + 736 len _4139 % 32]
                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4139) + ceil32(return_data.size) + 160], msg.sender, arg1
    else:
        if not getSafe[arg2].field_1792:
            if not getSafe[arg2].field_1792:
                require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792:
                    require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                    require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                    require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                    mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[576] <= 4294967296
                    require mem[576] + 32 <= return_data.size
                    require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                    mem[544] = 0
                    getSafe[stor2].field_0 = stor2
                    getSafe[stor2].field_256 = getSafe[arg2].field_1792
                    getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                    getSafe[stor2].field_768 = msg.sender
                    getSafe[stor2].field_1024 = arg1
                    getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                    getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                    getSafe[stor2].field_1792 = 0
                    getSafe[stor2].field_2048 = block.timestamp
                    getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                    getSafe[stor2].field_2560 = 0
                    getSafe[stor2].field_2816 = 0
                    getSafe[stor2].field_3072 = 0
                    getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                    getSafe[stor2].field_3488 = 0
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                    require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                    require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                    uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                    address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                    stor2++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _4084 = mem[ceil32(return_data.size) + 576]
                    require mem[ceil32(return_data.size) + 576] <= 4294967296
                    require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                    mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                    mem[(2 * ceil32(return_data.size)) + 576] = 96
                    mem[(2 * ceil32(return_data.size)) + 672] = mem[_4084 + ceil32(return_data.size) + 576]
                    _4136 = mem[_4084 + ceil32(return_data.size) + 576]
                    mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4084 + ceil32(return_data.size) + 576])] = mem[_4084 + ceil32(return_data.size) + 608 len ceil32(mem[_4084 + ceil32(return_data.size) + 576])]
                    if not _4136 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4136 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_4136) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4136) + (2 * ceil32(return_data.size)) + -(_4136 % 32) + 736 len _4136 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4136) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                        require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = getSafe[arg2].field_1792
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                        require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4083 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_4083 + ceil32(return_data.size) + 576]
                        _4133 = mem[_4083 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4083 + ceil32(return_data.size) + 576])] = mem[_4083 + ceil32(return_data.size) + 608 len ceil32(mem[_4083 + ceil32(return_data.size) + 576])]
                        if not _4133 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4133 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4133) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4133) + (2 * ceil32(return_data.size)) + -(_4133 % 32) + 736 len _4133 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4133) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                        require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                        require sub_374d7e3a[address(arg1)] - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] -= 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                        sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = getSafe[arg2].field_1792
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                        require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4082 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_4082 + ceil32(return_data.size) + 576]
                        _4130 = mem[_4082 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4082 + ceil32(return_data.size) + 576])] = mem[_4082 + ceil32(return_data.size) + 608 len ceil32(mem[_4082 + ceil32(return_data.size) + 576])]
                        if not _4130 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4130 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4130) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4130) + (2 * ceil32(return_data.size)) + -(_4130 % 32) + 736 len _4130 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4130) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require getSafe[arg2].field_1792
                require 16 * getSafe[arg2].field_1792 / getSafe[arg2].field_1792 == 16
                require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792:
                    require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                    require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                    require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                    mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[576] <= 4294967296
                    require mem[576] + 32 <= return_data.size
                    require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                    mem[544] = 0
                    getSafe[stor2].field_0 = stor2
                    getSafe[stor2].field_256 = getSafe[arg2].field_1792
                    getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                    getSafe[stor2].field_768 = msg.sender
                    getSafe[stor2].field_1024 = arg1
                    getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                    getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                    getSafe[stor2].field_1792 = 16 * getSafe[arg2].field_1792 / 100
                    getSafe[stor2].field_2048 = block.timestamp
                    getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                    getSafe[stor2].field_2560 = 0
                    getSafe[stor2].field_2816 = 0
                    getSafe[stor2].field_3072 = 0
                    getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                    getSafe[stor2].field_3488 = 0
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                    require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                    require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                    uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                    address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                    stor2++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _4081 = mem[ceil32(return_data.size) + 576]
                    require mem[ceil32(return_data.size) + 576] <= 4294967296
                    require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                    mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                    mem[(2 * ceil32(return_data.size)) + 576] = 96
                    mem[(2 * ceil32(return_data.size)) + 672] = mem[_4081 + ceil32(return_data.size) + 576]
                    _4127 = mem[_4081 + ceil32(return_data.size) + 576]
                    mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4081 + ceil32(return_data.size) + 576])] = mem[_4081 + ceil32(return_data.size) + 608 len ceil32(mem[_4081 + ceil32(return_data.size) + 576])]
                    if not _4127 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4127 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_4127) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4127) + (2 * ceil32(return_data.size)) + -(_4127 % 32) + 736 len _4127 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4127) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                        require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = getSafe[arg2].field_1792
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_1792 = 16 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                        require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4080 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_4080 + ceil32(return_data.size) + 576]
                        _4124 = mem[_4080 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4080 + ceil32(return_data.size) + 576])] = mem[_4080 + ceil32(return_data.size) + 608 len ceil32(mem[_4080 + ceil32(return_data.size) + 576])]
                        if not _4124 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4124 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4124) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4124) + (2 * ceil32(return_data.size)) + -(_4124 % 32) + 736 len _4124 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4124) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                        require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                        require sub_374d7e3a[address(arg1)] - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] -= 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                        sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = getSafe[arg2].field_1792
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_1792 = 16 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                        require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4079 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_4079 + ceil32(return_data.size) + 576]
                        _4121 = mem[_4079 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4079 + ceil32(return_data.size) + 576])] = mem[_4079 + ceil32(return_data.size) + 608 len ceil32(mem[_4079 + ceil32(return_data.size) + 576])]
                        if not _4121 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4121 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4121) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4121) + (2 * ceil32(return_data.size)) + -(_4121 % 32) + 736 len _4121 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4121) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            require getSafe[arg2].field_1792
            require 12 * getSafe[arg2].field_1792 / getSafe[arg2].field_1792 == 12
            if not getSafe[arg2].field_1792:
                require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792:
                    require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * getSafe[arg2].field_1792 / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                    sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * getSafe[arg2].field_1792 / 100
                    require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * getSafe[arg2].field_1792 / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                    sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * getSafe[arg2].field_1792 / 100
                    require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                    mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[576] <= 4294967296
                    require mem[576] + 32 <= return_data.size
                    require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                    mem[544] = 0
                    getSafe[stor2].field_0 = stor2
                    getSafe[stor2].field_256 = getSafe[arg2].field_1792
                    getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                    getSafe[stor2].field_768 = msg.sender
                    getSafe[stor2].field_1024 = arg1
                    getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                    getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                    getSafe[stor2].field_1792 = 0
                    getSafe[stor2].field_2048 = block.timestamp
                    getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                    getSafe[stor2].field_2560 = 0
                    getSafe[stor2].field_2816 = 0
                    getSafe[stor2].field_3072 = 0
                    getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                    getSafe[stor2].field_3488 = 0
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                    require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                    require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                    uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                    address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                    stor2++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _4078 = mem[ceil32(return_data.size) + 576]
                    require mem[ceil32(return_data.size) + 576] <= 4294967296
                    require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                    mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                    mem[(2 * ceil32(return_data.size)) + 576] = 96
                    mem[(2 * ceil32(return_data.size)) + 672] = mem[_4078 + ceil32(return_data.size) + 576]
                    _4118 = mem[_4078 + ceil32(return_data.size) + 576]
                    mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4078 + ceil32(return_data.size) + 576])] = mem[_4078 + ceil32(return_data.size) + 608 len ceil32(mem[_4078 + ceil32(return_data.size) + 576])]
                    if not _4118 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4118 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_4118) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4118) + (2 * ceil32(return_data.size)) + -(_4118 % 32) + 736 len _4118 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4118) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require 0 <= 12 * getSafe[arg2].field_1792 / 100
                        require sub_374d7e3a[address(arg1)] + (12 * getSafe[arg2].field_1792 / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] += 12 * getSafe[arg2].field_1792 / 100
                        require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = getSafe[arg2].field_1792
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                        require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4077 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_4077 + ceil32(return_data.size) + 576]
                        _4115 = mem[_4077 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4077 + ceil32(return_data.size) + 576])] = mem[_4077 + ceil32(return_data.size) + 608 len ceil32(mem[_4077 + ceil32(return_data.size) + 576])]
                        if not _4115 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4115 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4115) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4115) + (2 * ceil32(return_data.size)) + -(_4115 % 32) + 736 len _4115 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4115) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                        require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * getSafe[arg2].field_1792 / 100
                        require sub_374d7e3a[address(arg1)] + (12 * getSafe[arg2].field_1792 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * getSafe[arg2].field_1792 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100)
                        require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                        sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = getSafe[arg2].field_1792
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                        require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4076 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_4076 + ceil32(return_data.size) + 576]
                        _4112 = mem[_4076 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4076 + ceil32(return_data.size) + 576])] = mem[_4076 + ceil32(return_data.size) + 608 len ceil32(mem[_4076 + ceil32(return_data.size) + 576])]
                        if not _4112 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4112 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4112) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4112) + (2 * ceil32(return_data.size)) + -(_4112 % 32) + 736 len _4112 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4112) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require getSafe[arg2].field_1792
                require 16 * getSafe[arg2].field_1792 / getSafe[arg2].field_1792 == 16
                require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792:
                    require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * getSafe[arg2].field_1792 / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                    sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * getSafe[arg2].field_1792 / 100
                    require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * getSafe[arg2].field_1792 / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                    sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * getSafe[arg2].field_1792 / 100
                    require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                    mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[576] <= 4294967296
                    require mem[576] + 32 <= return_data.size
                    require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                    mem[544] = 0
                    getSafe[stor2].field_0 = stor2
                    getSafe[stor2].field_256 = getSafe[arg2].field_1792
                    getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                    getSafe[stor2].field_768 = msg.sender
                    getSafe[stor2].field_1024 = arg1
                    getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                    getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                    getSafe[stor2].field_1792 = 16 * getSafe[arg2].field_1792 / 100
                    getSafe[stor2].field_2048 = block.timestamp
                    getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                    getSafe[stor2].field_2560 = 0
                    getSafe[stor2].field_2816 = 0
                    getSafe[stor2].field_3072 = 0
                    getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                    getSafe[stor2].field_3488 = 0
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                    require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                    sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                    require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                    sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                    uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                    address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                    sub_11a3311c[address(msg.sender)]++
                    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                    stor2++
                    sub_93002f02++
                    mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _4075 = mem[ceil32(return_data.size) + 576]
                    require mem[ceil32(return_data.size) + 576] <= 4294967296
                    require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                    mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                    mem[(2 * ceil32(return_data.size)) + 576] = 96
                    mem[(2 * ceil32(return_data.size)) + 672] = mem[_4075 + ceil32(return_data.size) + 576]
                    _4109 = mem[_4075 + ceil32(return_data.size) + 576]
                    mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4075 + ceil32(return_data.size) + 576])] = mem[_4075 + ceil32(return_data.size) + 608 len ceil32(mem[_4075 + ceil32(return_data.size) + 576])]
                    if not _4109 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4109 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_4109) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4109) + (2 * ceil32(return_data.size)) + -(_4109 % 32) + 736 len _4109 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4109) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require 0 <= 12 * getSafe[arg2].field_1792 / 100
                        require sub_374d7e3a[address(arg1)] + (12 * getSafe[arg2].field_1792 / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] += 12 * getSafe[arg2].field_1792 / 100
                        require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = getSafe[arg2].field_1792
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_1792 = 16 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                        require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4074 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_4074 + ceil32(return_data.size) + 576]
                        _4106 = mem[_4074 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4074 + ceil32(return_data.size) + 576])] = mem[_4074 + ceil32(return_data.size) + 608 len ceil32(mem[_4074 + ceil32(return_data.size) + 576])]
                        if not _4106 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4106 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4106) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4106) + (2 * ceil32(return_data.size)) + -(_4106 % 32) + 736 len _4106 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4106) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                        require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * getSafe[arg2].field_1792 / 100
                        require sub_374d7e3a[address(arg1)] + (12 * getSafe[arg2].field_1792 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * getSafe[arg2].field_1792 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100)
                        require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                        sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = getSafe[arg2].field_1792
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_1792 = 16 * getSafe[arg2].field_1792 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + getSafe[arg2].field_1792 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += getSafe[arg2].field_1792
                        require sub_6a37f573[address(arg1)] + getSafe[arg2].field_1792 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += getSafe[arg2].field_1792
                        require sub_666a7370[address(arg1)] + getSafe[arg2].field_1792 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += getSafe[arg2].field_1792
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4073 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = getSafe[arg2].field_1792
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_4073 + ceil32(return_data.size) + 576]
                        _4103 = mem[_4073 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_4073 + ceil32(return_data.size) + 576])] = mem[_4073 + ceil32(return_data.size) + 608 len ceil32(mem[_4073 + ceil32(return_data.size) + 576])]
                        if not _4103 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _4103 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4103) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_4103) + (2 * ceil32(return_data.size)) + -(_4103 % 32) + 736 len _4103 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_4103) + ceil32(return_data.size) + 160], msg.sender, arg1
}

function sub_e61021e8(?) {
    require arg1
    require arg2 > 0
    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 <= sub_99613956[address(arg1)]
    require stor4[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg2:
        if not cashbackcode[address(msg.sender)]:
            cashbackcode[address(msg.sender)] = getEthereumNodesAddress
            if not arg2:
                require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[576] <= 4294967296
                require mem[576] + 32 <= return_data.size
                require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                mem[544] = 0
                getSafe[stor2].field_0 = stor2
                getSafe[stor2].field_256 = arg2
                getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                getSafe[stor2].field_768 = msg.sender
                getSafe[stor2].field_1024 = arg1
                getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                getSafe[stor2].field_1536 = 0
                getSafe[stor2].field_1792 = 0
                getSafe[stor2].field_2048 = block.timestamp
                getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                getSafe[stor2].field_2560 = 0
                getSafe[stor2].field_2816 = 0
                getSafe[stor2].field_3072 = 0
                getSafe[stor2].field_3328 = getEthereumNodesAddress
                getSafe[stor2].field_3488 = 0
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                sub_6a37f573[address(arg1)] += arg2
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                uint256(getTotalAffiliate[stor0])++
                address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                sub_11a3311c[address(msg.sender)]++
                sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                stor2++
                sub_93002f02++
                mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _8178 = mem[ceil32(return_data.size) + 576]
                require mem[ceil32(return_data.size) + 576] <= 4294967296
                require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 608] = arg2
                mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 576] = 96
                mem[(2 * ceil32(return_data.size)) + 672] = mem[_8178 + ceil32(return_data.size) + 576]
                _8290 = mem[_8178 + ceil32(return_data.size) + 576]
                mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8178 + ceil32(return_data.size) + 576])] = mem[_8178 + ceil32(return_data.size) + 608 len ceil32(mem[_8178 + ceil32(return_data.size) + 576])]
                if not _8290 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8290 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_8290) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8290) + (2 * ceil32(return_data.size)) + -(_8290 % 32) + 736 len _8290 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8290) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require arg2
                require 28 * arg2 / arg2 == 28
                require sub_374d7e3a[address(arg1)] + (28 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                require sub_910592de[stor0][address(arg1)] + (28 * arg2 / 100) >= sub_910592de[stor0][address(arg1)]
                sub_910592de[stor0][address(arg1)] += 28 * arg2 / 100
                emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[576] <= 4294967296
                require mem[576] + 32 <= return_data.size
                require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                mem[544] = 0
                getSafe[stor2].field_0 = stor2
                getSafe[stor2].field_256 = arg2
                getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                getSafe[stor2].field_768 = msg.sender
                getSafe[stor2].field_1024 = arg1
                getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                getSafe[stor2].field_1536 = 0
                getSafe[stor2].field_1792 = 0
                getSafe[stor2].field_2048 = block.timestamp
                getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                getSafe[stor2].field_2560 = 0
                getSafe[stor2].field_2816 = 0
                getSafe[stor2].field_3072 = 0
                getSafe[stor2].field_3328 = getEthereumNodesAddress
                getSafe[stor2].field_3488 = 0
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                sub_6a37f573[address(arg1)] += arg2
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                uint256(getTotalAffiliate[stor0])++
                address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                sub_11a3311c[address(msg.sender)]++
                sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                stor2++
                sub_93002f02++
                mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _8177 = mem[ceil32(return_data.size) + 576]
                require mem[ceil32(return_data.size) + 576] <= 4294967296
                require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 608] = arg2
                mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 576] = 96
                mem[(2 * ceil32(return_data.size)) + 672] = mem[_8177 + ceil32(return_data.size) + 576]
                _8287 = mem[_8177 + ceil32(return_data.size) + 576]
                mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8177 + ceil32(return_data.size) + 576])] = mem[_8177 + ceil32(return_data.size) + 608 len ceil32(mem[_8177 + ceil32(return_data.size) + 576])]
                if not _8287 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8287 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_8287) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8287) + (2 * ceil32(return_data.size)) + -(_8287 % 32) + 736 len _8287 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8287) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            if not arg2:
                if not arg2:
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 0
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _8176 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_8176 + ceil32(return_data.size) + 576]
                        _8284 = mem[_8176 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8176 + ceil32(return_data.size) + 576])] = mem[_8176 + ceil32(return_data.size) + 608 len ceil32(mem[_8176 + ceil32(return_data.size) + 576])]
                        if not _8284 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8284 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_8284) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8284) + (2 * ceil32(return_data.size)) + -(_8284 % 32) + 736 len _8284 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8284) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 0
                            getSafe[stor2].field_1792 = 0
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8175 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8175 + ceil32(return_data.size) + 576]
                            _8281 = mem[_8175 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8175 + ceil32(return_data.size) + 576])] = mem[_8175 + ceil32(return_data.size) + 608 len ceil32(mem[_8175 + ceil32(return_data.size) + 576])]
                            if not _8281 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8281 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8281) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8281) + (2 * ceil32(return_data.size)) + -(_8281 % 32) + 736 len _8281 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8281) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_374d7e3a[address(arg1)] - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                            sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 0
                            getSafe[stor2].field_1792 = 0
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8174 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8174 + ceil32(return_data.size) + 576]
                            _8278 = mem[_8174 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8174 + ceil32(return_data.size) + 576])] = mem[_8174 + ceil32(return_data.size) + 608 len ceil32(mem[_8174 + ceil32(return_data.size) + 576])]
                            if not _8278 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8278 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8278) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8278) + (2 * ceil32(return_data.size)) + -(_8278 % 32) + 736 len _8278 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8278) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 0
                        getSafe[stor2].field_1792 = 16 * arg2 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _8173 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_8173 + ceil32(return_data.size) + 576]
                        _8275 = mem[_8173 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8173 + ceil32(return_data.size) + 576])] = mem[_8173 + ceil32(return_data.size) + 608 len ceil32(mem[_8173 + ceil32(return_data.size) + 576])]
                        if not _8275 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8275 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_8275) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8275) + (2 * ceil32(return_data.size)) + -(_8275 % 32) + 736 len _8275 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8275) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 0
                            getSafe[stor2].field_1792 = 16 * arg2 / 100
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8172 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8172 + ceil32(return_data.size) + 576]
                            _8272 = mem[_8172 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8172 + ceil32(return_data.size) + 576])] = mem[_8172 + ceil32(return_data.size) + 608 len ceil32(mem[_8172 + ceil32(return_data.size) + 576])]
                            if not _8272 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8272 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8272) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8272) + (2 * ceil32(return_data.size)) + -(_8272 % 32) + 736 len _8272 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8272) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_374d7e3a[address(arg1)] - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                            sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 0
                            getSafe[stor2].field_1792 = 16 * arg2 / 100
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8171 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8171 + ceil32(return_data.size) + 576]
                            _8269 = mem[_8171 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8171 + ceil32(return_data.size) + 576])] = mem[_8171 + ceil32(return_data.size) + 608 len ceil32(mem[_8171 + ceil32(return_data.size) + 576])]
                            if not _8269 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8269 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8269) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8269) + (2 * ceil32(return_data.size)) + -(_8269 % 32) + 736 len _8269 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8269) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require arg2
                require 12 * arg2 / arg2 == 12
                if not arg2:
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 0
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _8170 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_8170 + ceil32(return_data.size) + 576]
                        _8266 = mem[_8170 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8170 + ceil32(return_data.size) + 576])] = mem[_8170 + ceil32(return_data.size) + 608 len ceil32(mem[_8170 + ceil32(return_data.size) + 576])]
                        if not _8266 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8266 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_8266) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8266) + (2 * ceil32(return_data.size)) + -(_8266 % 32) + 736 len _8266 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8266) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 0
                            getSafe[stor2].field_1792 = 0
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8169 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8169 + ceil32(return_data.size) + 576]
                            _8263 = mem[_8169 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8169 + ceil32(return_data.size) + 576])] = mem[_8169 + ceil32(return_data.size) + 608 len ceil32(mem[_8169 + ceil32(return_data.size) + 576])]
                            if not _8263 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8263 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8263) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8263) + (2 * ceil32(return_data.size)) + -(_8263 % 32) + 736 len _8263 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8263) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100)
                            require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                            sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 0
                            getSafe[stor2].field_1792 = 0
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8168 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8168 + ceil32(return_data.size) + 576]
                            _8260 = mem[_8168 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8168 + ceil32(return_data.size) + 576])] = mem[_8168 + ceil32(return_data.size) + 608 len ceil32(mem[_8168 + ceil32(return_data.size) + 576])]
                            if not _8260 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8260 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8260) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8260) + (2 * ceil32(return_data.size)) + -(_8260 % 32) + 736 len _8260 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8260) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 0
                        getSafe[stor2].field_1792 = 16 * arg2 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _8167 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_8167 + ceil32(return_data.size) + 576]
                        _8257 = mem[_8167 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8167 + ceil32(return_data.size) + 576])] = mem[_8167 + ceil32(return_data.size) + 608 len ceil32(mem[_8167 + ceil32(return_data.size) + 576])]
                        if not _8257 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8257 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_8257) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8257) + (2 * ceil32(return_data.size)) + -(_8257 % 32) + 736 len _8257 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8257) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 0
                            getSafe[stor2].field_1792 = 16 * arg2 / 100
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8166 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8166 + ceil32(return_data.size) + 576]
                            _8254 = mem[_8166 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8166 + ceil32(return_data.size) + 576])] = mem[_8166 + ceil32(return_data.size) + 608 len ceil32(mem[_8166 + ceil32(return_data.size) + 576])]
                            if not _8254 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8254 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8254) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8254) + (2 * ceil32(return_data.size)) + -(_8254 % 32) + 736 len _8254 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8254) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100)
                            require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                            sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 0
                            getSafe[stor2].field_1792 = 16 * arg2 / 100
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8165 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8165 + ceil32(return_data.size) + 576]
                            _8251 = mem[_8165 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8165 + ceil32(return_data.size) + 576])] = mem[_8165 + ceil32(return_data.size) + 608 len ceil32(mem[_8165 + ceil32(return_data.size) + 576])]
                            if not _8251 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8251 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8251) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8251) + (2 * ceil32(return_data.size)) + -(_8251 % 32) + 736 len _8251 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8251) + ceil32(return_data.size) + 160], msg.sender, arg1
    else:
        require arg2
        require 72 * arg2 / arg2 == 72
        if not cashbackcode[address(msg.sender)]:
            cashbackcode[address(msg.sender)] = getEthereumNodesAddress
            if not arg2:
                require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[576] <= 4294967296
                require mem[576] + 32 <= return_data.size
                require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                mem[544] = 0
                getSafe[stor2].field_0 = stor2
                getSafe[stor2].field_256 = arg2
                getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                getSafe[stor2].field_768 = msg.sender
                getSafe[stor2].field_1024 = arg1
                getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                getSafe[stor2].field_1536 = 72 * arg2 / 100
                getSafe[stor2].field_1792 = 0
                getSafe[stor2].field_2048 = block.timestamp
                getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                getSafe[stor2].field_2560 = 0
                getSafe[stor2].field_2816 = 0
                getSafe[stor2].field_3072 = 0
                getSafe[stor2].field_3328 = getEthereumNodesAddress
                getSafe[stor2].field_3488 = 0
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                sub_6a37f573[address(arg1)] += arg2
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                uint256(getTotalAffiliate[stor0])++
                address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                sub_11a3311c[address(msg.sender)]++
                sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                stor2++
                sub_93002f02++
                mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _8164 = mem[ceil32(return_data.size) + 576]
                require mem[ceil32(return_data.size) + 576] <= 4294967296
                require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 608] = arg2
                mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 576] = 96
                mem[(2 * ceil32(return_data.size)) + 672] = mem[_8164 + ceil32(return_data.size) + 576]
                _8248 = mem[_8164 + ceil32(return_data.size) + 576]
                mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8164 + ceil32(return_data.size) + 576])] = mem[_8164 + ceil32(return_data.size) + 608 len ceil32(mem[_8164 + ceil32(return_data.size) + 576])]
                if not _8248 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8248 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_8248) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8248) + (2 * ceil32(return_data.size)) + -(_8248 % 32) + 736 len _8248 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8248) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require arg2
                require 28 * arg2 / arg2 == 28
                require sub_374d7e3a[address(arg1)] + (28 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                require sub_910592de[stor0][address(arg1)] + (28 * arg2 / 100) >= sub_910592de[stor0][address(arg1)]
                sub_910592de[stor0][address(arg1)] += 28 * arg2 / 100
                emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[576] <= 4294967296
                require mem[576] + 32 <= return_data.size
                require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                mem[544] = 0
                getSafe[stor2].field_0 = stor2
                getSafe[stor2].field_256 = arg2
                getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                getSafe[stor2].field_768 = msg.sender
                getSafe[stor2].field_1024 = arg1
                getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                getSafe[stor2].field_1536 = 72 * arg2 / 100
                getSafe[stor2].field_1792 = 0
                getSafe[stor2].field_2048 = block.timestamp
                getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                getSafe[stor2].field_2560 = 0
                getSafe[stor2].field_2816 = 0
                getSafe[stor2].field_3072 = 0
                getSafe[stor2].field_3328 = getEthereumNodesAddress
                getSafe[stor2].field_3488 = 0
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                sub_6a37f573[address(arg1)] += arg2
                require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                sub_666a7370[address(arg1)] += arg2
                uint256(getTotalAffiliate[stor0])++
                address(getTotalAffiliate[stor0][uint256(getTotalAffiliate[stor0])]) = msg.sender
                sub_11a3311c[address(msg.sender)]++
                sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                stor2++
                sub_93002f02++
                mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _8163 = mem[ceil32(return_data.size) + 576]
                require mem[ceil32(return_data.size) + 576] <= 4294967296
                require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 608] = arg2
                mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 576] = 96
                mem[(2 * ceil32(return_data.size)) + 672] = mem[_8163 + ceil32(return_data.size) + 576]
                _8245 = mem[_8163 + ceil32(return_data.size) + 576]
                mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8163 + ceil32(return_data.size) + 576])] = mem[_8163 + ceil32(return_data.size) + 608 len ceil32(mem[_8163 + ceil32(return_data.size) + 576])]
                if not _8245 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8245 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_8245) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8245) + (2 * ceil32(return_data.size)) + -(_8245 % 32) + 736 len _8245 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8245) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            if not arg2:
                if not arg2:
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * arg2 / 100
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _8162 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_8162 + ceil32(return_data.size) + 576]
                        _8242 = mem[_8162 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8162 + ceil32(return_data.size) + 576])] = mem[_8162 + ceil32(return_data.size) + 608 len ceil32(mem[_8162 + ceil32(return_data.size) + 576])]
                        if not _8242 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8242 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_8242) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8242) + (2 * ceil32(return_data.size)) + -(_8242 % 32) + 736 len _8242 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8242) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 72 * arg2 / 100
                            getSafe[stor2].field_1792 = 0
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8161 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8161 + ceil32(return_data.size) + 576]
                            _8239 = mem[_8161 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8161 + ceil32(return_data.size) + 576])] = mem[_8161 + ceil32(return_data.size) + 608 len ceil32(mem[_8161 + ceil32(return_data.size) + 576])]
                            if not _8239 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8239 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8239) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8239) + (2 * ceil32(return_data.size)) + -(_8239 % 32) + 736 len _8239 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8239) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_374d7e3a[address(arg1)] - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                            sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 72 * arg2 / 100
                            getSafe[stor2].field_1792 = 0
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8160 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8160 + ceil32(return_data.size) + 576]
                            _8236 = mem[_8160 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8160 + ceil32(return_data.size) + 576])] = mem[_8160 + ceil32(return_data.size) + 608 len ceil32(mem[_8160 + ceil32(return_data.size) + 576])]
                            if not _8236 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8236 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8236) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8236) + (2 * ceil32(return_data.size)) + -(_8236 % 32) + 736 len _8236 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8236) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * arg2 / 100
                        getSafe[stor2].field_1792 = 16 * arg2 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _8159 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_8159 + ceil32(return_data.size) + 576]
                        _8233 = mem[_8159 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8159 + ceil32(return_data.size) + 576])] = mem[_8159 + ceil32(return_data.size) + 608 len ceil32(mem[_8159 + ceil32(return_data.size) + 576])]
                        if not _8233 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8233 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_8233) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8233) + (2 * ceil32(return_data.size)) + -(_8233 % 32) + 736 len _8233 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8233) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                            require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 72 * arg2 / 100
                            getSafe[stor2].field_1792 = 16 * arg2 / 100
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8158 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8158 + ceil32(return_data.size) + 576]
                            _8230 = mem[_8158 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8158 + ceil32(return_data.size) + 576])] = mem[_8158 + ceil32(return_data.size) + 608 len ceil32(mem[_8158 + ceil32(return_data.size) + 576])]
                            if not _8230 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8230 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8230) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8230) + (2 * ceil32(return_data.size)) + -(_8230 % 32) + 736 len _8230 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8230) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                            require sub_374d7e3a[address(arg1)] - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] -= 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                            sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 72 * arg2 / 100
                            getSafe[stor2].field_1792 = 16 * arg2 / 100
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8157 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8157 + ceil32(return_data.size) + 576]
                            _8227 = mem[_8157 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8157 + ceil32(return_data.size) + 576])] = mem[_8157 + ceil32(return_data.size) + 608 len ceil32(mem[_8157 + ceil32(return_data.size) + 576])]
                            if not _8227 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8227 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8227) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8227) + (2 * ceil32(return_data.size)) + -(_8227 % 32) + 736 len _8227 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8227) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require arg2
                require 12 * arg2 / arg2 == 12
                if not arg2:
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * arg2 / 100
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _8156 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_8156 + ceil32(return_data.size) + 576]
                        _8224 = mem[_8156 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8156 + ceil32(return_data.size) + 576])] = mem[_8156 + ceil32(return_data.size) + 608 len ceil32(mem[_8156 + ceil32(return_data.size) + 576])]
                        if not _8224 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8224 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_8224) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8224) + (2 * ceil32(return_data.size)) + -(_8224 % 32) + 736 len _8224 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8224) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 72 * arg2 / 100
                            getSafe[stor2].field_1792 = 0
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8155 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8155 + ceil32(return_data.size) + 576]
                            _8221 = mem[_8155 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8155 + ceil32(return_data.size) + 576])] = mem[_8155 + ceil32(return_data.size) + 608 len ceil32(mem[_8155 + ceil32(return_data.size) + 576])]
                            if not _8221 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8221 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8221) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8221) + (2 * ceil32(return_data.size)) + -(_8221 % 32) + 736 len _8221 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8221) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100)
                            require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                            sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 72 * arg2 / 100
                            getSafe[stor2].field_1792 = 0
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8154 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8154 + ceil32(return_data.size) + 576]
                            _8218 = mem[_8154 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8154 + ceil32(return_data.size) + 576])] = mem[_8154 + ceil32(return_data.size) + 608 len ceil32(mem[_8154 + ceil32(return_data.size) + 576])]
                            if not _8218 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8218 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8218) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8218) + (2 * ceil32(return_data.size)) + -(_8218 % 32) + 736 len _8218 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8218) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    require arg2
                    require 16 * arg2 / arg2 == 16
                    require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                    if sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] >= sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                        mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[576] <= 4294967296
                        require mem[576] + 32 <= return_data.size
                        require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                        mem[544] = 0
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                        getSafe[stor2].field_1536 = 72 * arg2 / 100
                        getSafe[stor2].field_1792 = 16 * arg2 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_3488 = 0
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                        require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                        sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                        require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                        sub_6a37f573[address(arg1)] += arg2
                        require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                        sub_666a7370[address(arg1)] += arg2
                        uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                        address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                        sub_11a3311c[address(msg.sender)]++
                        sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                        stor2++
                        sub_93002f02++
                        mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _8153 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_8153 + ceil32(return_data.size) + 576]
                        _8215 = mem[_8153 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8153 + ceil32(return_data.size) + 576])] = mem[_8153 + ceil32(return_data.size) + 608 len ceil32(mem[_8153 + ceil32(return_data.size) + 576])]
                        if not _8215 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8215 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_8215) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8215) + (2 * ceil32(return_data.size)) + -(_8215 % 32) + 736 len _8215 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8215) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        if not sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]:
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            require 0 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                            require sub_910592de[stor0][address(arg1)] >= sub_910592de[stor0][address(arg1)]
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 72 * arg2 / 100
                            getSafe[stor2].field_1792 = 16 * arg2 / 100
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8152 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8152 + ceil32(return_data.size) + 576]
                            _8212 = mem[_8152 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8152 + ceil32(return_data.size) + 576])] = mem[_8152 + ceil32(return_data.size) + 608 len ceil32(mem[_8152 + ceil32(return_data.size) + 576])]
                            if not _8212 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8212 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8212) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8212) + (2 * ceil32(return_data.size)) + -(_8212 % 32) + 736 len _8212 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8212) + ceil32(return_data.size) + 160], msg.sender, arg1
                        else:
                            require sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)]
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] == 12
                            require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                            sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                            sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                            require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                            sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100)
                            require sub_910592de[stor0][address(arg1)] + (12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor0][address(arg1)]
                            sub_910592de[stor0][address(arg1)] += 12 * sub_27e6d3c8[stor7[address(msg.sender)]][address(arg1)] / 100
                            require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
                            mem[576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require mem[576] <= 4294967296
                            require mem[576] + 32 <= return_data.size
                            require mem[mem[576] + 576] <= 4294967296 and mem[576] + mem[mem[576] + 576] + 32 <= return_data.size
                            mem[544] = 0
                            getSafe[stor2].field_0 = stor2
                            getSafe[stor2].field_256 = arg2
                            getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                            getSafe[stor2].field_768 = msg.sender
                            getSafe[stor2].field_1024 = arg1
                            getSafe[stor2][5][].field_0 = Array(len=mem[mem[576] + 576], data=mem[mem[576] + 608 len mem[mem[576] + 576]])
                            getSafe[stor2].field_1536 = 72 * arg2 / 100
                            getSafe[stor2].field_1792 = 16 * arg2 / 100
                            getSafe[stor2].field_2048 = block.timestamp
                            getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                            getSafe[stor2].field_2560 = 0
                            getSafe[stor2].field_2816 = 0
                            getSafe[stor2].field_3072 = 0
                            getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                            getSafe[stor2].field_3488 = 0
                            require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                            sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
                            require sub_27e6d3c8[address(msg.sender)][address(arg1)] + arg2 >= sub_27e6d3c8[address(msg.sender)][address(arg1)]
                            sub_27e6d3c8[address(msg.sender)][address(arg1)] += arg2
                            require sub_6a37f573[address(arg1)] + arg2 >= sub_6a37f573[address(arg1)]
                            sub_6a37f573[address(arg1)] += arg2
                            require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
                            sub_666a7370[address(arg1)] += arg2
                            uint256(getTotalAffiliate[stor7[address(msg.sender)]])++
                            address(getTotalAffiliate[stor7[address(msg.sender)]][uint256(getTotalAffiliate[stor7[address(msg.sender)]])]) = msg.sender
                            sub_11a3311c[address(msg.sender)]++
                            sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor2
                            stor2++
                            sub_93002f02++
                            mem[ceil32(return_data.size) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            call arg1.0x95d89b41 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _8151 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_8151 + ceil32(return_data.size) + 576]
                            _8209 = mem[_8151 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_8151 + ceil32(return_data.size) + 576])] = mem[_8151 + ceil32(return_data.size) + 608 len ceil32(mem[_8151 + ceil32(return_data.size) + 576])]
                            if not _8209 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _8209 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_8209) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_8209) + (2 * ceil32(return_data.size)) + -(_8209 % 32) + 736 len _8209 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_8209) + ceil32(return_data.size) + 160], msg.sender, arg1
}



}
