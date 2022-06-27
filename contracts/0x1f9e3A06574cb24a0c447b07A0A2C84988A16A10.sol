contract main {




// =====================  Runtime code  =====================


#
#  - sub_25681238(?)
#  - ClaimTokens(address arg1, uint256 arg2)
#
const GetContractBalance = eth.balance(this.address)


address getEthereumNodesAddress;
address stor1;
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
mapping of uint256 sub_bb142c2d;
mapping of uint256 sub_67da21dd;
mapping of uint256 sub_d76ca047;
mapping of uint256 sub_910592de;
uint256 sub_a1df4986;
uint8 stor22; offset 160
uint128 stor22; offset 160
address sub_d7cdb9abAddress;
mapping of uint256 sub_163d1857;

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

function sub_163d1857(?) {
    return sub_163d1857[arg1]
}

function sub_1996bc1c(?) {
    return sub_1996bc1c[arg1]
}

function GetEthereumNodes() {
    return getEthereumNodesAddress
}

function sub_33f5085f(?) {
    return bool(uint8(stor22.field_160))
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

function sub_910592de(?) {
    return sub_910592de[arg1][arg2]
}

function sub_93002f02(?) {
    return sub_93002f02
}

function sub_99613956(?) {
    return sub_99613956[arg1]
}

function sub_a1df4986(?) {
    return sub_a1df4986
}

function sub_bb142c2d(?) {
    return sub_bb142c2d[arg1][arg2]
}

function sub_d76ca047(?) {
    return sub_d76ca047[arg1][arg2]
}

function sub_d7cdb9ab(?) {
    return sub_d7cdb9abAddress
}

function GetUserSafesLength(address arg1) {
    return sub_11a3311c[address(arg1)]
}

function sub_ee3cd825(?) {
    return sub_ee3cd825[arg1]
}

function sub_a0493521(?) {
    require msg.sender == getEthereumNodesAddress
    sub_99613956[address(arg1)] = arg2
}

function sub_e187d234(?) {
    require msg.sender == getEthereumNodesAddress
    sub_a1df4986 = arg2
    sub_d7cdb9abAddress = arg1
    Mask(96, 0, stor22.field_160) = Mask(96, 0, arg3)
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

function sub_97c2a3f5(?) {
    require msg.sender == getEthereumNodesAddress
    require arg2 >= 3
    require arg2 <= 12
    require arg2 > 0
    require arg2
    if not 72 / arg2:
        sub_ee3cd825[address(arg1)] = arg2
        sub_1996bc1c[address(arg1)] = 0
    else:
        require 72 / arg2
        require 30 * 72 / arg2 / 72 / arg2 == 30
        sub_ee3cd825[address(arg1)] = arg2
        sub_1996bc1c[address(arg1)] = 720 * 24 * 3600 * 72 / arg2
}

function sub_abaa39d0(?) {
    require msg.sender == getEthereumNodesAddress
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_163d1857[address(arg1)] + arg2 >= sub_163d1857[address(arg1)]
    sub_163d1857[address(arg1)] += arg2
}

function sub_bebce9f7(?) {
    require msg.sender == getEthereumNodesAddress
    stor4[address(arg1)] = uint8(arg2)
    contractSymbol[address(arg1)][].field_0 = Array(len=arg4.length, data=arg4[all])
    sub_99613956[address(arg1)] = arg3
    sub_ee3cd825[address(arg1)] = arg5
    sub_1996bc1c[address(arg1)] = 24 * 3600 * arg6
    if not stor1:
        stor1 = arg1
    if arg1 == stor1:
        if not arg2:
            stor4[address(arg1)] = 1
    emit 0x84e00559: arg2, arg3, Array(len=arg4.length, data=arg4[all]), arg5, arg6, arg1
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

function sub_2e5fb287(?) {
    require msg.sender == getEthereumNodesAddress
    require arg1
    require sub_163d1857[address(arg1)] > 0
    sub_163d1857[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= sub_163d1857[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_163d1857[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function _fallback() payable {
    if msg.value > 0:
        require sub_374d7e3a[0] + msg.value >= sub_374d7e3a[0]
        sub_374d7e3a[0] += msg.value
    if not msg.value:
        if bool(uint8(stor22.field_160)) == 1:
            require sub_163d1857[address(stor22.field_0)] > 0
            require ext_code.size(sub_d7cdb9abAddress)
            call sub_d7cdb9abAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= sub_a1df4986
            require ext_code.size(sub_d7cdb9abAddress)
            call sub_d7cdb9abAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_a1df4986
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require sub_a1df4986 <= sub_163d1857[address(stor22.field_0)]
            sub_163d1857[address(stor22.field_0)] -= sub_a1df4986
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
        require sub_0d826c0b[stor11[idx].field_1024] + getSafe[idx].field_1536 >= sub_0d826c0b[stor11[idx].field_1024]
        sub_0d826c0b[stor11[idx].field_1024] += getSafe[idx].field_1536
        require sub_67da21dd[stor11[idx].field_768][stor11[idx].field_1024] + getSafe[idx].field_1536 >= sub_67da21dd[stor11[idx].field_768][stor11[idx].field_1024]
        sub_67da21dd[address(msg.sender)][stor11[idx].field_1024] = sub_67da21dd[stor11[idx].field_768][stor11[idx].field_1024] + getSafe[idx].field_1536
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
    emit 0xaeb4f573: s
}

function sub_e61021e8(?) {
    require arg1
    require arg2 > 0
    require arg2 <= sub_99613956[address(arg1)]
    require stor4[address(arg1)]
    if not cashbackcode[address(msg.sender)]:
        if not arg2:
            cashbackcode[address(msg.sender)] = getEthereumNodesAddress
            if not arg2:
                require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                mem[512] = getEthereumNodesAddress
                getSafe[stor2].field_0 = stor2
                getSafe[stor2].field_256 = arg2
                getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                getSafe[stor2].field_768 = msg.sender
                getSafe[stor2].field_1024 = arg1
                getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                getSafe[stor2].field_1536 = 0
                getSafe[stor2].field_1792 = 0
                getSafe[stor2].field_2048 = block.timestamp
                getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                getSafe[stor2].field_2560 = 0
                getSafe[stor2].field_2816 = 0
                getSafe[stor2].field_3072 = 0
                getSafe[stor2].field_3328 = getEthereumNodesAddress
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4118 = mem[ceil32(return_data.size) + 544]
                require mem[ceil32(return_data.size) + 544] <= 4294967296
                require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 576] = arg2
                mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 544] = 96
                mem[(2 * ceil32(return_data.size)) + 640] = mem[_4118 + ceil32(return_data.size) + 544]
                _4182 = mem[_4118 + ceil32(return_data.size) + 544]
                mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4118 + ceil32(return_data.size) + 544])] = mem[_4118 + ceil32(return_data.size) + 576 len ceil32(mem[_4118 + ceil32(return_data.size) + 544])]
                if not _4182 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4182 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_4182) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4182) + (2 * ceil32(return_data.size)) + -(_4182 % 32) + 704 len _4182 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4182) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require arg2
                require 28 * arg2 / arg2 == 28
                require sub_374d7e3a[address(arg1)] + (28 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                mem[512] = getEthereumNodesAddress
                getSafe[stor2].field_0 = stor2
                getSafe[stor2].field_256 = arg2
                getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                getSafe[stor2].field_768 = msg.sender
                getSafe[stor2].field_1024 = arg1
                getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                getSafe[stor2].field_1536 = 0
                getSafe[stor2].field_1792 = 0
                getSafe[stor2].field_2048 = block.timestamp
                getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                getSafe[stor2].field_2560 = 0
                getSafe[stor2].field_2816 = 0
                getSafe[stor2].field_3072 = 0
                getSafe[stor2].field_3328 = getEthereumNodesAddress
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4117 = mem[ceil32(return_data.size) + 544]
                require mem[ceil32(return_data.size) + 544] <= 4294967296
                require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 576] = arg2
                mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 544] = 96
                mem[(2 * ceil32(return_data.size)) + 640] = mem[_4117 + ceil32(return_data.size) + 544]
                _4179 = mem[_4117 + ceil32(return_data.size) + 544]
                mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4117 + ceil32(return_data.size) + 544])] = mem[_4117 + ceil32(return_data.size) + 576 len ceil32(mem[_4117 + ceil32(return_data.size) + 544])]
                if not _4179 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4179 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_4179) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4179) + (2 * ceil32(return_data.size)) + -(_4179 % 32) + 704 len _4179 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4179) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            require arg2
            require 72 * arg2 / arg2 == 72
            cashbackcode[address(msg.sender)] = getEthereumNodesAddress
            if not arg2:
                require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                mem[512] = getEthereumNodesAddress
                getSafe[stor2].field_0 = stor2
                getSafe[stor2].field_256 = arg2
                getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                getSafe[stor2].field_768 = msg.sender
                getSafe[stor2].field_1024 = arg1
                getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                getSafe[stor2].field_1536 = 72 * arg2 / 100
                getSafe[stor2].field_1792 = 0
                getSafe[stor2].field_2048 = block.timestamp
                getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                getSafe[stor2].field_2560 = 0
                getSafe[stor2].field_2816 = 0
                getSafe[stor2].field_3072 = 0
                getSafe[stor2].field_3328 = getEthereumNodesAddress
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4116 = mem[ceil32(return_data.size) + 544]
                require mem[ceil32(return_data.size) + 544] <= 4294967296
                require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 576] = arg2
                mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 544] = 96
                mem[(2 * ceil32(return_data.size)) + 640] = mem[_4116 + ceil32(return_data.size) + 544]
                _4176 = mem[_4116 + ceil32(return_data.size) + 544]
                mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4116 + ceil32(return_data.size) + 544])] = mem[_4116 + ceil32(return_data.size) + 576 len ceil32(mem[_4116 + ceil32(return_data.size) + 544])]
                if not _4176 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4176 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_4176) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4176) + (2 * ceil32(return_data.size)) + -(_4176 % 32) + 704 len _4176 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4176) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require arg2
                require 28 * arg2 / arg2 == 28
                require sub_374d7e3a[address(arg1)] + (28 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                sub_374d7e3a[address(arg1)] += 28 * arg2 / 100
                emit 0x3bf019f5: getEthereumNodesAddress, msg.sender
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                mem[512] = getEthereumNodesAddress
                getSafe[stor2].field_0 = stor2
                getSafe[stor2].field_256 = arg2
                getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                getSafe[stor2].field_768 = msg.sender
                getSafe[stor2].field_1024 = arg1
                getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                getSafe[stor2].field_1536 = 72 * arg2 / 100
                getSafe[stor2].field_1792 = 0
                getSafe[stor2].field_2048 = block.timestamp
                getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                getSafe[stor2].field_2560 = 0
                getSafe[stor2].field_2816 = 0
                getSafe[stor2].field_3072 = 0
                getSafe[stor2].field_3328 = getEthereumNodesAddress
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.0x95d89b41 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _4115 = mem[ceil32(return_data.size) + 544]
                require mem[ceil32(return_data.size) + 544] <= 4294967296
                require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 576] = arg2
                mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 544] = 96
                mem[(2 * ceil32(return_data.size)) + 640] = mem[_4115 + ceil32(return_data.size) + 544]
                _4173 = mem[_4115 + ceil32(return_data.size) + 544]
                mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4115 + ceil32(return_data.size) + 544])] = mem[_4115 + ceil32(return_data.size) + 576 len ceil32(mem[_4115 + ceil32(return_data.size) + 544])]
                if not _4173 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4173 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_4173) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4173) + (2 * ceil32(return_data.size)) + -(_4173 % 32) + 704 len _4173 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4173) + ceil32(return_data.size) + 160], msg.sender, arg1
    else:
        if not arg2:
            require 0 <= arg2
            if not arg2:
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2:
                    require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                    require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                    mem[512] = cashbackcode[address(msg.sender)]
                    getSafe[stor2].field_0 = stor2
                    getSafe[stor2].field_256 = arg2
                    getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                    getSafe[stor2].field_768 = msg.sender
                    getSafe[stor2].field_1024 = arg1
                    getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor2].field_1536 = arg2
                    getSafe[stor2].field_1792 = 0
                    getSafe[stor2].field_2048 = block.timestamp
                    getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                    getSafe[stor2].field_2560 = 0
                    getSafe[stor2].field_2816 = 0
                    getSafe[stor2].field_3072 = 0
                    getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _4114 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_4114 + ceil32(return_data.size) + 544]
                    _4170 = mem[_4114 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4114 + ceil32(return_data.size) + 544])] = mem[_4114 + ceil32(return_data.size) + 576 len ceil32(mem[_4114 + ceil32(return_data.size) + 544])]
                    if not _4170 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4170 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_4170) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4170) + (2 * ceil32(return_data.size)) + -(_4170 % 32) + 704 len _4170 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4170) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor2].field_1536 = arg2
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4113 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_4113 + ceil32(return_data.size) + 544]
                        _4167 = mem[_4113 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4113 + ceil32(return_data.size) + 544])] = mem[_4113 + ceil32(return_data.size) + 576 len ceil32(mem[_4113 + ceil32(return_data.size) + 544])]
                        if not _4167 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4167 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4167) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4167) + (2 * ceil32(return_data.size)) + -(_4167 % 32) + 704 len _4167 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4167) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        require sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]
                        require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                        require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                        require sub_374d7e3a[address(arg1)] - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] -= 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor2].field_1536 = arg2
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4112 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_4112 + ceil32(return_data.size) + 544]
                        _4164 = mem[_4112 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4112 + ceil32(return_data.size) + 544])] = mem[_4112 + ceil32(return_data.size) + 576 len ceil32(mem[_4112 + ceil32(return_data.size) + 544])]
                        if not _4164 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4164 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4164) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4164) + (2 * ceil32(return_data.size)) + -(_4164 % 32) + 704 len _4164 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4164) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require arg2
                require 16 * arg2 / arg2 == 16
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2:
                    require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                    require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                    mem[512] = cashbackcode[address(msg.sender)]
                    getSafe[stor2].field_0 = stor2
                    getSafe[stor2].field_256 = arg2
                    getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                    getSafe[stor2].field_768 = msg.sender
                    getSafe[stor2].field_1024 = arg1
                    getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor2].field_1536 = arg2
                    getSafe[stor2].field_1792 = 16 * arg2 / 100
                    getSafe[stor2].field_2048 = block.timestamp
                    getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                    getSafe[stor2].field_2560 = 0
                    getSafe[stor2].field_2816 = 0
                    getSafe[stor2].field_3072 = 0
                    getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _4111 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_4111 + ceil32(return_data.size) + 544]
                    _4161 = mem[_4111 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4111 + ceil32(return_data.size) + 544])] = mem[_4111 + ceil32(return_data.size) + 576 len ceil32(mem[_4111 + ceil32(return_data.size) + 544])]
                    if not _4161 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4161 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_4161) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4161) + (2 * ceil32(return_data.size)) + -(_4161 % 32) + 704 len _4161 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4161) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require sub_374d7e3a[address(arg1)] >= sub_374d7e3a[address(arg1)]
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor2].field_1536 = arg2
                        getSafe[stor2].field_1792 = 16 * arg2 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4110 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_4110 + ceil32(return_data.size) + 544]
                        _4158 = mem[_4110 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4110 + ceil32(return_data.size) + 544])] = mem[_4110 + ceil32(return_data.size) + 576 len ceil32(mem[_4110 + ceil32(return_data.size) + 544])]
                        if not _4158 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4158 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4158) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4158) + (2 * ceil32(return_data.size)) + -(_4158 % 32) + 704 len _4158 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4158) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        require sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]
                        require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                        require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 0
                        require sub_374d7e3a[address(arg1)] - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] -= 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor2].field_1536 = arg2
                        getSafe[stor2].field_1792 = 16 * arg2 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4109 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_4109 + ceil32(return_data.size) + 544]
                        _4155 = mem[_4109 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4109 + ceil32(return_data.size) + 544])] = mem[_4109 + ceil32(return_data.size) + 576 len ceil32(mem[_4109 + ceil32(return_data.size) + 544])]
                        if not _4155 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4155 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4155) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4155) + (2 * ceil32(return_data.size)) + -(_4155 % 32) + 704 len _4155 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4155) + ceil32(return_data.size) + 160], msg.sender, arg1
        else:
            require arg2
            require 12 * arg2 / arg2 == 12
            require 12 * arg2 / 100 <= arg2
            if not arg2:
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2:
                    require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                    sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                    require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                    sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                    mem[512] = cashbackcode[address(msg.sender)]
                    getSafe[stor2].field_0 = stor2
                    getSafe[stor2].field_256 = arg2
                    getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                    getSafe[stor2].field_768 = msg.sender
                    getSafe[stor2].field_1024 = arg1
                    getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor2].field_1536 = arg2 - (12 * arg2 / 100)
                    getSafe[stor2].field_1792 = 0
                    getSafe[stor2].field_2048 = block.timestamp
                    getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                    getSafe[stor2].field_2560 = 0
                    getSafe[stor2].field_2816 = 0
                    getSafe[stor2].field_3072 = 0
                    getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _4108 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_4108 + ceil32(return_data.size) + 544]
                    _4152 = mem[_4108 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4108 + ceil32(return_data.size) + 544])] = mem[_4108 + ceil32(return_data.size) + 576 len ceil32(mem[_4108 + ceil32(return_data.size) + 544])]
                    if not _4152 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4152 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_4152) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4152) + (2 * ceil32(return_data.size)) + -(_4152 % 32) + 704 len _4152 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4152) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require 0 <= 12 * arg2 / 100
                        require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor2].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4107 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_4107 + ceil32(return_data.size) + 544]
                        _4149 = mem[_4107 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4107 + ceil32(return_data.size) + 544])] = mem[_4107 + ceil32(return_data.size) + 576 len ceil32(mem[_4107 + ceil32(return_data.size) + 544])]
                        if not _4149 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4149 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4149) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4149) + (2 * ceil32(return_data.size)) + -(_4149 % 32) + 704 len _4149 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4149) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        require sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]
                        require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                        require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                        require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100)
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor2].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor2].field_1792 = 0
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4106 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_4106 + ceil32(return_data.size) + 544]
                        _4146 = mem[_4106 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4106 + ceil32(return_data.size) + 544])] = mem[_4106 + ceil32(return_data.size) + 576 len ceil32(mem[_4106 + ceil32(return_data.size) + 544])]
                        if not _4146 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4146 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4146) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4146) + (2 * ceil32(return_data.size)) + -(_4146 % 32) + 704 len _4146 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4146) + ceil32(return_data.size) + 160], msg.sender, arg1
            else:
                require arg2
                require 16 * arg2 / arg2 == 16
                require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                if sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] >= sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2:
                    require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                    sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                    require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * arg2 / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                    sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * arg2 / 100
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                    mem[512] = cashbackcode[address(msg.sender)]
                    getSafe[stor2].field_0 = stor2
                    getSafe[stor2].field_256 = arg2
                    getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                    getSafe[stor2].field_768 = msg.sender
                    getSafe[stor2].field_1024 = arg1
                    getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                    getSafe[stor2].field_1536 = arg2 - (12 * arg2 / 100)
                    getSafe[stor2].field_1792 = 16 * arg2 / 100
                    getSafe[stor2].field_2048 = block.timestamp
                    getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                    getSafe[stor2].field_2560 = 0
                    getSafe[stor2].field_2816 = 0
                    getSafe[stor2].field_3072 = 0
                    getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                    require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                    sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                    mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    call arg1.0x95d89b41 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _4105 = mem[ceil32(return_data.size) + 544]
                    require mem[ceil32(return_data.size) + 544] <= 4294967296
                    require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 576] = arg2
                    mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                    mem[(2 * ceil32(return_data.size)) + 544] = 96
                    mem[(2 * ceil32(return_data.size)) + 640] = mem[_4105 + ceil32(return_data.size) + 544]
                    _4143 = mem[_4105 + ceil32(return_data.size) + 544]
                    mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4105 + ceil32(return_data.size) + 544])] = mem[_4105 + ceil32(return_data.size) + 576 len ceil32(mem[_4105 + ceil32(return_data.size) + 544])]
                    if not _4143 % 32:
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4143 + ceil32(return_data.size) + 128], msg.sender, arg1
                    else:
                        mem[floor32(_4143) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4143) + (2 * ceil32(return_data.size)) + -(_4143 % 32) + 704 len _4143 % 32]
                        emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4143) + ceil32(return_data.size) + 160], msg.sender, arg1
                else:
                    if not sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]:
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        require 0 <= 12 * arg2 / 100
                        require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] += 12 * arg2 / 100
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor2].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor2].field_1792 = 16 * arg2 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4104 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_4104 + ceil32(return_data.size) + 544]
                        _4140 = mem[_4104 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4104 + ceil32(return_data.size) + 544])] = mem[_4104 + ceil32(return_data.size) + 576 len ceil32(mem[_4104 + ceil32(return_data.size) + 544])]
                        if not _4140 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4140 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4140) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4140) + (2 * ceil32(return_data.size)) + -(_4140 % 32) + 704 len _4140 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4140) + ceil32(return_data.size) + 160], msg.sender, arg1
                    else:
                        require sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)]
                        require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] == 12
                        require sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_d76ca047[stor7[address(msg.sender)]][address(arg1)]
                        sub_d76ca047[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                        require sub_910592de[stor7[address(msg.sender)]][address(arg1)] + (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_910592de[stor7[address(msg.sender)]][address(arg1)]
                        sub_910592de[stor7[address(msg.sender)]][address(arg1)] += 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100
                        require 12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100 <= 12 * arg2 / 100
                        require sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100) >= sub_374d7e3a[address(arg1)]
                        sub_374d7e3a[address(arg1)] = sub_374d7e3a[address(arg1)] + (12 * arg2 / 100) - (12 * sub_bb142c2d[stor7[address(msg.sender)]][address(arg1)] / 100)
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require block.timestamp + sub_1996bc1c[address(arg1)] >= block.timestamp
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
                        mem[512] = cashbackcode[address(msg.sender)]
                        getSafe[stor2].field_0 = stor2
                        getSafe[stor2].field_256 = arg2
                        getSafe[stor2].field_512 = block.timestamp + sub_1996bc1c[address(arg1)]
                        getSafe[stor2].field_768 = msg.sender
                        getSafe[stor2].field_1024 = arg1
                        getSafe[stor2][5][].field_0 = Array(len=mem[mem[544] + 544], data=mem[mem[544] + 576 len mem[mem[544] + 544]])
                        getSafe[stor2].field_1536 = arg2 - (12 * arg2 / 100)
                        getSafe[stor2].field_1792 = 16 * arg2 / 100
                        getSafe[stor2].field_2048 = block.timestamp
                        getSafe[stor2].field_2304 = sub_ee3cd825[address(arg1)]
                        getSafe[stor2].field_2560 = 0
                        getSafe[stor2].field_2816 = 0
                        getSafe[stor2].field_3072 = 0
                        getSafe[stor2].field_3328 = cashbackcode[address(msg.sender)]
                        require sub_bb142c2d[address(msg.sender)][address(arg1)] + arg2 >= sub_bb142c2d[address(msg.sender)][address(arg1)]
                        sub_bb142c2d[address(msg.sender)][address(arg1)] += arg2
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
                        mem[ceil32(return_data.size) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        call arg1.0x95d89b41 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4103 = mem[ceil32(return_data.size) + 544]
                        require mem[ceil32(return_data.size) + 544] <= 4294967296
                        require mem[ceil32(return_data.size) + 544] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] <= 4294967296 and mem[ceil32(return_data.size) + 544] + mem[mem[ceil32(return_data.size) + 544] + ceil32(return_data.size) + 544] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 576] = arg2
                        mem[(2 * ceil32(return_data.size)) + 608] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 544] = 96
                        mem[(2 * ceil32(return_data.size)) + 640] = mem[_4103 + ceil32(return_data.size) + 544]
                        _4137 = mem[_4103 + ceil32(return_data.size) + 544]
                        mem[(2 * ceil32(return_data.size)) + 672 len ceil32(mem[_4103 + ceil32(return_data.size) + 544])] = mem[_4103 + ceil32(return_data.size) + 576 len ceil32(mem[_4103 + ceil32(return_data.size) + 544])]
                        if not _4137 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len _4137 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_4137) + (2 * ceil32(return_data.size)) + 672] = mem[floor32(_4137) + (2 * ceil32(return_data.size)) + -(_4137 % 32) + 704 len _4137 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 544 len floor32(_4137) + ceil32(return_data.size) + 160], msg.sender, arg1
}



}
