contract main {




// =====================  Runtime code  =====================


#
#  - ClaimTokens(address arg1, uint256 arg2)
#  - sub_7b0afd14(?)
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
array of uint256 sub_56476842;
mapping of uint256 sub_374d7e3a;
mapping of struct getSafe;
mapping of uint256 sub_99613956;
mapping of uint256 sub_6a37f573;
mapping of uint256 sub_0d826c0b;
array of struct contractSymbol;
array of address getTotalAffiliate;
mapping of uint256 sub_6469bd97;
mapping of uint256 sub_bb142c2d;
mapping of uint256 sub_67da21dd;
mapping of uint256 sub_d76ca047;
mapping of uint256 sub_910592de;
mapping of uint256 sub_27e6d3c8;
address holdplatform_address;
mapping of uint8 stor25;
mapping of uint256 sub_6019e8d3;
mapping of uint256 sub_39207473;

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

function sub_39207473(?) {
    return sub_39207473[arg1]
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
           getSafe[arg1].field_1792,
           getSafe[arg1].field_2048,
           getSafe[arg1].field_2304,
           getSafe[arg1].field_2560,
           getSafe[arg1].field_2816
}

function contractaddress(address arg1) {
    return bool(stor4[arg1])
}

function sub_56476842(?) {
    require arg2 < sub_56476842[arg1]
    return sub_56476842[arg1][arg2]
}

function cashbackcode(address arg1) {
    return cashbackcode[arg1]
}

function sub_6019e8d3(?) {
    return sub_6019e8d3[arg1]
}

function sub_6469bd97(?) {
    return sub_6469bd97[arg1]
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

function Holdplatform_address() {
    return holdplatform_address
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

function Holdplatform_status(address arg1) {
    return bool(stor25[arg1])
}

function sub_ee3cd825(?) {
    return sub_ee3cd825[arg1]
}

function sub_e396e971(?) {
    require msg.sender == getEthereumNodesAddress
    sub_6469bd97[address(arg1)] = arg2
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

function sub_9002442f(?) {
    require msg.sender == getEthereumNodesAddress
    holdplatform_address = arg1
    stor25[address(arg2)] = uint8(arg3)
    sub_6019e8d3[address(arg2)] = arg4
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_39207473[address(arg1)] + arg5 >= sub_39207473[address(arg1)]
    sub_39207473[address(arg1)] += arg5
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

function sub_1998c1e6(?) {
    require arg1
    require getSafe[arg1].field_1024
    require getSafe[arg1].field_768 == msg.sender
    require getSafe[arg1].field_1792
    mem[128] = getSafe[arg1][5].field_0
    idx = 128
    s = 0
    while getSafe[arg1][5].length + 96 > idx:
        mem[idx + 32] = getSafe[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    getSafe[arg1].field_1792 = 0
    getSafe[arg1].field_3488 = 1
    require ext_code.size(getSafe[arg1].field_1024)
    call getSafe[arg1].field_1024.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= getSafe[arg1].field_1792
    require ext_code.size(getSafe[arg1].field_1024)
    call getSafe[arg1].field_1024.0xa9059cbb with:
         gas gas_remaining wei
        args getSafe[arg1].field_768, getSafe[arg1].field_1792
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require getSafe[arg1].field_1792 <= sub_666a7370[stor12[arg1].field_1024]
    sub_666a7370[stor12[arg1].field_1024] -= getSafe[arg1].field_1792
    require sub_0d826c0b[stor12[arg1].field_1024] + getSafe[arg1].field_1792 >= sub_0d826c0b[stor12[arg1].field_1024]
    sub_0d826c0b[stor12[arg1].field_1024] += getSafe[arg1].field_1792
    require sub_67da21dd[stor12[arg1].field_768][stor12[arg1].field_1024] + getSafe[arg1].field_1792 >= sub_67da21dd[stor12[arg1].field_768][stor12[arg1].field_1024]
    sub_67da21dd[address(msg.sender)][stor12[arg1].field_1024] = sub_67da21dd[stor12[arg1].field_768][stor12[arg1].field_1024] + getSafe[arg1].field_1792
    emit 0xe25eb861: Array(len=getSafe[arg1][5].length, data=mem[128 len getSafe[arg1][5].length]), getSafe[arg1].field_1792, block.timestamp, msg.sender, getSafe[arg1].field_1024
}

function sub_8e9e2795(?) {
    require msg.sender == getEthereumNodesAddress
    s = 0
    idx = 1
    s = 0
    while idx < stor2:
        mem[0] = idx
        mem[32] = 12
        if not getSafe[idx].field_0:
            s = sha3(idx, 12)
            idx = idx + 1
            s = s
            continue 
        if getSafe[idx].field_1536 <= 0:
            s = sha3(idx, 12)
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
        require getSafe[idx].field_1536 <= sub_666a7370[stor12[idx].field_1024]
        sub_666a7370[stor12[idx].field_1024] -= getSafe[idx].field_1536
        require sub_0d826c0b[stor12[idx].field_1024] + getSafe[idx].field_1536 >= sub_0d826c0b[stor12[idx].field_1024]
        sub_0d826c0b[stor12[idx].field_1024] += getSafe[idx].field_1536
        require sub_67da21dd[stor12[idx].field_768][stor12[idx].field_1024] + getSafe[idx].field_1536 >= sub_67da21dd[stor12[idx].field_768][stor12[idx].field_1024]
        mem[0] = getSafe[idx].field_1024
        mem[32] = sha3(address(msg.sender), 20)
        sub_67da21dd[address(msg.sender)][stor12[idx].field_1024] = sub_67da21dd[stor12[idx].field_768][stor12[idx].field_1024] + getSafe[idx].field_1536
        s = sha3(idx, 12)
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
                _16630 = mem[ceil32(return_data.size) + 576]
                require mem[ceil32(return_data.size) + 576] <= 4294967296
                require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 608] = arg2
                mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 576] = 96
                mem[(2 * ceil32(return_data.size)) + 672] = mem[_16630 + ceil32(return_data.size) + 576]
                _17192 = mem[_16630 + ceil32(return_data.size) + 576]
                mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16630 + ceil32(return_data.size) + 576])] = mem[_16630 + ceil32(return_data.size) + 608 len ceil32(mem[_16630 + ceil32(return_data.size) + 576])]
                if not _17192 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17192 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_17192) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17192) + (2 * ceil32(return_data.size)) + -(_17192 % 32) + 736 len _17192 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17192) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                _16621 = mem[ceil32(return_data.size) + 576]
                require mem[ceil32(return_data.size) + 576] <= 4294967296
                require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 608] = arg2
                mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 576] = 96
                mem[(2 * ceil32(return_data.size)) + 672] = mem[_16621 + ceil32(return_data.size) + 576]
                _17185 = mem[_16621 + ceil32(return_data.size) + 576]
                mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16621 + ceil32(return_data.size) + 576])] = mem[_16621 + ceil32(return_data.size) + 608 len ceil32(mem[_16621 + ceil32(return_data.size) + 576])]
                if not _17185 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17185 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_17185) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17185) + (2 * ceil32(return_data.size)) + -(_17185 % 32) + 736 len _17185 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17185) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                        _16612 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_16612 + ceil32(return_data.size) + 576]
                        _17178 = mem[_16612 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16612 + ceil32(return_data.size) + 576])] = mem[_16612 + ceil32(return_data.size) + 608 len ceil32(mem[_16612 + ceil32(return_data.size) + 576])]
                        if not _17178 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17178 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_17178) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17178) + (2 * ceil32(return_data.size)) + -(_17178 % 32) + 736 len _17178 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17178) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16603 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16603 + ceil32(return_data.size) + 576]
                            _17171 = mem[_16603 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16603 + ceil32(return_data.size) + 576])] = mem[_16603 + ceil32(return_data.size) + 608 len ceil32(mem[_16603 + ceil32(return_data.size) + 576])]
                            if not _17171 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17171 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17171) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17171) + (2 * ceil32(return_data.size)) + -(_17171 % 32) + 736 len _17171 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17171) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16594 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16594 + ceil32(return_data.size) + 576]
                            _17164 = mem[_16594 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16594 + ceil32(return_data.size) + 576])] = mem[_16594 + ceil32(return_data.size) + 608 len ceil32(mem[_16594 + ceil32(return_data.size) + 576])]
                            if not _17164 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17164 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17164) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17164) + (2 * ceil32(return_data.size)) + -(_17164 % 32) + 736 len _17164 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17164) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                        _16585 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_16585 + ceil32(return_data.size) + 576]
                        _17157 = mem[_16585 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16585 + ceil32(return_data.size) + 576])] = mem[_16585 + ceil32(return_data.size) + 608 len ceil32(mem[_16585 + ceil32(return_data.size) + 576])]
                        if not _17157 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17157 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_17157) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17157) + (2 * ceil32(return_data.size)) + -(_17157 % 32) + 736 len _17157 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17157) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16576 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16576 + ceil32(return_data.size) + 576]
                            _17150 = mem[_16576 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16576 + ceil32(return_data.size) + 576])] = mem[_16576 + ceil32(return_data.size) + 608 len ceil32(mem[_16576 + ceil32(return_data.size) + 576])]
                            if not _17150 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17150 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17150) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17150) + (2 * ceil32(return_data.size)) + -(_17150 % 32) + 736 len _17150 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17150) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16567 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16567 + ceil32(return_data.size) + 576]
                            _17143 = mem[_16567 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16567 + ceil32(return_data.size) + 576])] = mem[_16567 + ceil32(return_data.size) + 608 len ceil32(mem[_16567 + ceil32(return_data.size) + 576])]
                            if not _17143 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17143 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17143) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17143) + (2 * ceil32(return_data.size)) + -(_17143 % 32) + 736 len _17143 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17143) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                        _16558 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_16558 + ceil32(return_data.size) + 576]
                        _17136 = mem[_16558 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16558 + ceil32(return_data.size) + 576])] = mem[_16558 + ceil32(return_data.size) + 608 len ceil32(mem[_16558 + ceil32(return_data.size) + 576])]
                        if not _17136 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17136 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_17136) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17136) + (2 * ceil32(return_data.size)) + -(_17136 % 32) + 736 len _17136 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17136) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16549 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16549 + ceil32(return_data.size) + 576]
                            _17129 = mem[_16549 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16549 + ceil32(return_data.size) + 576])] = mem[_16549 + ceil32(return_data.size) + 608 len ceil32(mem[_16549 + ceil32(return_data.size) + 576])]
                            if not _17129 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17129 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17129) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17129) + (2 * ceil32(return_data.size)) + -(_17129 % 32) + 736 len _17129 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17129) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16540 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16540 + ceil32(return_data.size) + 576]
                            _17122 = mem[_16540 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16540 + ceil32(return_data.size) + 576])] = mem[_16540 + ceil32(return_data.size) + 608 len ceil32(mem[_16540 + ceil32(return_data.size) + 576])]
                            if not _17122 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17122 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17122) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17122) + (2 * ceil32(return_data.size)) + -(_17122 % 32) + 736 len _17122 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17122) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                        _16531 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_16531 + ceil32(return_data.size) + 576]
                        _17115 = mem[_16531 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16531 + ceil32(return_data.size) + 576])] = mem[_16531 + ceil32(return_data.size) + 608 len ceil32(mem[_16531 + ceil32(return_data.size) + 576])]
                        if not _17115 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17115 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_17115) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17115) + (2 * ceil32(return_data.size)) + -(_17115 % 32) + 736 len _17115 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17115) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16522 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16522 + ceil32(return_data.size) + 576]
                            _17108 = mem[_16522 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16522 + ceil32(return_data.size) + 576])] = mem[_16522 + ceil32(return_data.size) + 608 len ceil32(mem[_16522 + ceil32(return_data.size) + 576])]
                            if not _17108 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17108 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17108) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17108) + (2 * ceil32(return_data.size)) + -(_17108 % 32) + 736 len _17108 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17108) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16513 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16513 + ceil32(return_data.size) + 576]
                            _17101 = mem[_16513 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16513 + ceil32(return_data.size) + 576])] = mem[_16513 + ceil32(return_data.size) + 608 len ceil32(mem[_16513 + ceil32(return_data.size) + 576])]
                            if not _17101 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17101 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17101) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17101) + (2 * ceil32(return_data.size)) + -(_17101 % 32) + 736 len _17101 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17101) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                _16504 = mem[ceil32(return_data.size) + 576]
                require mem[ceil32(return_data.size) + 576] <= 4294967296
                require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 608] = arg2
                mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 576] = 96
                mem[(2 * ceil32(return_data.size)) + 672] = mem[_16504 + ceil32(return_data.size) + 576]
                _17094 = mem[_16504 + ceil32(return_data.size) + 576]
                mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16504 + ceil32(return_data.size) + 576])] = mem[_16504 + ceil32(return_data.size) + 608 len ceil32(mem[_16504 + ceil32(return_data.size) + 576])]
                if not _17094 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17094 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_17094) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17094) + (2 * ceil32(return_data.size)) + -(_17094 % 32) + 736 len _17094 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17094) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                _16495 = mem[ceil32(return_data.size) + 576]
                require mem[ceil32(return_data.size) + 576] <= 4294967296
                require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 608] = arg2
                mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 576] = 96
                mem[(2 * ceil32(return_data.size)) + 672] = mem[_16495 + ceil32(return_data.size) + 576]
                _17087 = mem[_16495 + ceil32(return_data.size) + 576]
                mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16495 + ceil32(return_data.size) + 576])] = mem[_16495 + ceil32(return_data.size) + 608 len ceil32(mem[_16495 + ceil32(return_data.size) + 576])]
                if not _17087 % 32:
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17087 + ceil32(return_data.size) + 128], msg.sender, arg1
                else:
                    mem[floor32(_17087) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17087) + (2 * ceil32(return_data.size)) + -(_17087 % 32) + 736 len _17087 % 32]
                    emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17087) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                        _16486 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_16486 + ceil32(return_data.size) + 576]
                        _17080 = mem[_16486 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16486 + ceil32(return_data.size) + 576])] = mem[_16486 + ceil32(return_data.size) + 608 len ceil32(mem[_16486 + ceil32(return_data.size) + 576])]
                        if not _17080 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17080 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_17080) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17080) + (2 * ceil32(return_data.size)) + -(_17080 % 32) + 736 len _17080 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17080) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16477 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16477 + ceil32(return_data.size) + 576]
                            _17073 = mem[_16477 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16477 + ceil32(return_data.size) + 576])] = mem[_16477 + ceil32(return_data.size) + 608 len ceil32(mem[_16477 + ceil32(return_data.size) + 576])]
                            if not _17073 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17073 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17073) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17073) + (2 * ceil32(return_data.size)) + -(_17073 % 32) + 736 len _17073 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17073) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16468 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16468 + ceil32(return_data.size) + 576]
                            _17066 = mem[_16468 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16468 + ceil32(return_data.size) + 576])] = mem[_16468 + ceil32(return_data.size) + 608 len ceil32(mem[_16468 + ceil32(return_data.size) + 576])]
                            if not _17066 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17066 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17066) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17066) + (2 * ceil32(return_data.size)) + -(_17066 % 32) + 736 len _17066 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17066) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                        _16459 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_16459 + ceil32(return_data.size) + 576]
                        _17059 = mem[_16459 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16459 + ceil32(return_data.size) + 576])] = mem[_16459 + ceil32(return_data.size) + 608 len ceil32(mem[_16459 + ceil32(return_data.size) + 576])]
                        if not _17059 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17059 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_17059) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17059) + (2 * ceil32(return_data.size)) + -(_17059 % 32) + 736 len _17059 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17059) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16450 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16450 + ceil32(return_data.size) + 576]
                            _17052 = mem[_16450 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16450 + ceil32(return_data.size) + 576])] = mem[_16450 + ceil32(return_data.size) + 608 len ceil32(mem[_16450 + ceil32(return_data.size) + 576])]
                            if not _17052 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17052 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17052) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17052) + (2 * ceil32(return_data.size)) + -(_17052 % 32) + 736 len _17052 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17052) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16441 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16441 + ceil32(return_data.size) + 576]
                            _17045 = mem[_16441 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16441 + ceil32(return_data.size) + 576])] = mem[_16441 + ceil32(return_data.size) + 608 len ceil32(mem[_16441 + ceil32(return_data.size) + 576])]
                            if not _17045 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17045 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17045) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17045) + (2 * ceil32(return_data.size)) + -(_17045 % 32) + 736 len _17045 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17045) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                        _16432 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_16432 + ceil32(return_data.size) + 576]
                        _17038 = mem[_16432 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16432 + ceil32(return_data.size) + 576])] = mem[_16432 + ceil32(return_data.size) + 608 len ceil32(mem[_16432 + ceil32(return_data.size) + 576])]
                        if not _17038 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17038 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_17038) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17038) + (2 * ceil32(return_data.size)) + -(_17038 % 32) + 736 len _17038 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17038) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16423 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16423 + ceil32(return_data.size) + 576]
                            _17031 = mem[_16423 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16423 + ceil32(return_data.size) + 576])] = mem[_16423 + ceil32(return_data.size) + 608 len ceil32(mem[_16423 + ceil32(return_data.size) + 576])]
                            if not _17031 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17031 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17031) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17031) + (2 * ceil32(return_data.size)) + -(_17031 % 32) + 736 len _17031 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17031) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16414 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16414 + ceil32(return_data.size) + 576]
                            _17024 = mem[_16414 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16414 + ceil32(return_data.size) + 576])] = mem[_16414 + ceil32(return_data.size) + 608 len ceil32(mem[_16414 + ceil32(return_data.size) + 576])]
                            if not _17024 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17024 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17024) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17024) + (2 * ceil32(return_data.size)) + -(_17024 % 32) + 736 len _17024 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17024) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                        _16405 = mem[ceil32(return_data.size) + 576]
                        require mem[ceil32(return_data.size) + 576] <= 4294967296
                        require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 608] = arg2
                        mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 576] = 96
                        mem[(2 * ceil32(return_data.size)) + 672] = mem[_16405 + ceil32(return_data.size) + 576]
                        _17017 = mem[_16405 + ceil32(return_data.size) + 576]
                        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16405 + ceil32(return_data.size) + 576])] = mem[_16405 + ceil32(return_data.size) + 608 len ceil32(mem[_16405 + ceil32(return_data.size) + 576])]
                        if not _17017 % 32:
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17017 + ceil32(return_data.size) + 128], msg.sender, arg1
                        else:
                            mem[floor32(_17017) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17017) + (2 * ceil32(return_data.size)) + -(_17017 % 32) + 736 len _17017 % 32]
                            emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17017) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16396 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16396 + ceil32(return_data.size) + 576]
                            _17010 = mem[_16396 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16396 + ceil32(return_data.size) + 576])] = mem[_16396 + ceil32(return_data.size) + 608 len ceil32(mem[_16396 + ceil32(return_data.size) + 576])]
                            if not _17010 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17010 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17010) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17010) + (2 * ceil32(return_data.size)) + -(_17010 % 32) + 736 len _17010 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17010) + ceil32(return_data.size) + 160], msg.sender, arg1
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
                            _16387 = mem[ceil32(return_data.size) + 576]
                            require mem[ceil32(return_data.size) + 576] <= 4294967296
                            require mem[ceil32(return_data.size) + 576] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] <= 4294967296 and mem[ceil32(return_data.size) + 576] + mem[mem[ceil32(return_data.size) + 576] + ceil32(return_data.size) + 576] + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 608] = arg2
                            mem[(2 * ceil32(return_data.size)) + 640] = block.timestamp + sub_1996bc1c[address(arg1)]
                            mem[(2 * ceil32(return_data.size)) + 576] = 96
                            mem[(2 * ceil32(return_data.size)) + 672] = mem[_16387 + ceil32(return_data.size) + 576]
                            _17003 = mem[_16387 + ceil32(return_data.size) + 576]
                            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_16387 + ceil32(return_data.size) + 576])] = mem[_16387 + ceil32(return_data.size) + 608 len ceil32(mem[_16387 + ceil32(return_data.size) + 576])]
                            if not _17003 % 32:
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len _17003 + ceil32(return_data.size) + 128], msg.sender, arg1
                            else:
                                mem[floor32(_17003) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_17003) + (2 * ceil32(return_data.size)) + -(_17003 % 32) + 736 len _17003 % 32]
                                emit 0xed175a8d: mem[(2 * ceil32(return_data.size)) + 576 len floor32(_17003) + ceil32(return_data.size) + 160], msg.sender, arg1
    if bool(stor25[address(arg1)]) == 1:
        if sub_6019e8d3[address(arg1)]:
            require sub_6019e8d3[address(arg1)]
            require not 0 / sub_6019e8d3[address(arg1)]
        mem[(2 * ceil32(return_data.size)) + 580] = this.address
        require ext_code.size(holdplatform_address)
        call holdplatform_address.0x70a08231 with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 580 len ceil32(return_data.size) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= 0
        require sub_39207473[stor24] >= 0
        mem[(2 * ceil32(return_data.size)) + 580] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 612] = 0
        require ext_code.size(holdplatform_address)
        call holdplatform_address.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 580 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
