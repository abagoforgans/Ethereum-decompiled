contract main {




// =====================  Runtime code  =====================


#
#  - ClaimTokens(address arg1, uint256 arg2)
#  - sub_e61021e8(?)
#
const GetContractBalance = eth.balance(this.address)


address getEthereumNodesAddress;
address sub_e781495aAddress;
uint256 stor2;
uint256 sub_93002f02;
mapping of address cashbackcode;
mapping of uint256 sub_ee3cd825;
mapping of uint256 sub_1996bc1c;
mapping of uint256 sub_666a7370;
mapping of uint256 sub_374d7e3a;
mapping of uint256 sub_99613956;
mapping of uint256 sub_6a37f573;
mapping of uint256 sub_0d826c0b;
mapping of uint256 sub_6469bd97;
mapping of uint8 stor13;
mapping of uint8 stor14;
array of uint256 sub_11a3311c;
array of address getTotalAffiliate;
array of struct contractSymbol;
mapping of struct getSafe;
mapping of uint256 statistics;
address holdplatform_address;
uint256 holdplatform_balance;
mapping of uint8 stor22;
mapping of uint256 sub_6019e8d3;

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

function Statistics(address arg1, address arg2, uint256 arg3) {
    return statistics[arg1][arg2][arg3]
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
           getSafe[arg1].field_1792,
           getSafe[arg1].field_2048,
           getSafe[arg1].field_2304,
           getSafe[arg1].field_2560,
           getSafe[arg1].field_2816
}

function contractaddress(address arg1) {
    return bool(stor13[arg1])
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

function sub_6a37f573(?) {
    return sub_6a37f573[arg1]
}

function afflist(address arg1, uint256 arg2) {
    require arg2 < uint256(getTotalAffiliate[arg1])
    return address(getTotalAffiliate[arg1][arg2])
}

function sub_8b37932e(?) {
    return bool(stor14[arg1])
}

function Holdplatform_balance() {
    return holdplatform_balance
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

function GetUserSafesLength(address arg1) {
    return sub_11a3311c[address(arg1)]
}

function sub_e781495a(?) {
    return sub_e781495aAddress
}

function Holdplatform_status(address arg1) {
    return bool(stor22[arg1])
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

function sub_d6387b1e(?) {
    require msg.sender == getEthereumNodesAddress
    require arg3 <= 100000
    stor22[address(arg1)] = uint8(arg2)
    sub_6019e8d3[address(arg1)] = arg3
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

function CashbackCode(address arg1) {
    require arg1 != msg.sender
    if cashbackcode[address(msg.sender)]:
        cashbackcode[address(msg.sender)] = getEthereumNodesAddress
    else:
        if bool(stor14[address(arg1)]) != 1:
            cashbackcode[address(msg.sender)] = getEthereumNodesAddress
        else:
            cashbackcode[address(msg.sender)] = arg1
    emit 0x3bf019f5: arg1, msg.sender
}

function Holdplatform_Deposit(uint256 arg1) {
    require msg.sender == getEthereumNodesAddress
    require arg1 > 0
    require ext_code.size(holdplatform_address)
    call holdplatform_address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require holdplatform_balance + arg1 >= holdplatform_balance
    holdplatform_balance += arg1
}

function sub_36c07a69(?) {
    require msg.sender == getEthereumNodesAddress
    require holdplatform_balance > 0
    require arg1 <= holdplatform_balance
    holdplatform_balance -= arg1
    require ext_code.size(holdplatform_address)
    call holdplatform_address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(holdplatform_address)
    call holdplatform_address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_d429ec51(?) {
    require msg.sender == getEthereumNodesAddress
    require sub_374d7e3a[address(arg1)] > 0
    require sub_374d7e3a[address(arg1)] <= sub_666a7370[address(arg1)]
    sub_666a7370[address(arg1)] -= sub_374d7e3a[address(arg1)]
    require sub_0d826c0b[address(arg1)] + sub_374d7e3a[address(arg1)] >= sub_0d826c0b[address(arg1)]
    sub_0d826c0b[address(arg1)] += sub_374d7e3a[address(arg1)]
    require statistics[address(msg.sender)][address(arg1)][2] + sub_374d7e3a[address(arg1)] >= statistics[address(msg.sender)][address(arg1)][2]
    statistics[address(msg.sender)][address(arg1)][2] += sub_374d7e3a[address(arg1)]
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
    require statistics[address(arg1)][address(arg2)][3] > 0
    statistics[address(msg.sender)][address(arg2)][3] = 0
    require statistics[address(msg.sender)][address(arg2)][3] <= sub_666a7370[address(arg2)]
    sub_666a7370[address(arg2)] -= statistics[address(msg.sender)][address(arg2)][3]
    require sub_0d826c0b[address(arg2)] + statistics[address(msg.sender)][address(arg2)][3] >= sub_0d826c0b[address(arg2)]
    sub_0d826c0b[address(arg2)] += statistics[address(msg.sender)][address(arg2)][3]
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
    require ext_call.return_data[0] >= statistics[address(msg.sender)][address(arg2)][3]
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), statistics[address(msg.sender)][address(arg2)][3]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require statistics[address(arg1)][address(arg2)][2] + statistics[address(msg.sender)][address(arg2)][3] >= statistics[address(arg1)][address(arg2)][2]
    statistics[address(arg1)][address(arg2)][2] += statistics[address(msg.sender)][address(arg2)][3]
    emit 0x772c23bb: Array(len=contractSymbol[address(arg2)].length, data=mem[128 len contractSymbol[address(arg2)].length]), statistics[address(msg.sender)][address(arg2)][3], block.timestamp, msg.sender, arg2
}

function sub_8e9e2795(?) {
    require msg.sender == getEthereumNodesAddress
    s = 0
    t = 0
    idx = 1
    while idx < stor2:
        mem[0] = idx
        mem[32] = 18
        if not getSafe[idx].field_0:
            s = s
            t = sha3(idx, 18)
            idx = idx + 1
            continue 
        if getSafe[idx].field_1536 <= 0:
            s = s
            t = sha3(idx, 18)
            idx = idx + 1
            continue 
        require getSafe[idx].field_1536 + getSafe[idx].field_1792 >= getSafe[idx].field_1536
        require ext_code.size(getSafe[idx].field_1024)
        call getSafe[idx].field_1024.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= getSafe[idx].field_1536 + getSafe[idx].field_1792
        mem[100] = getSafe[idx].field_768
        mem[132] = getSafe[idx].field_1536 + getSafe[idx].field_1792
        require ext_code.size(getSafe[idx].field_1024)
        call getSafe[idx].field_1024.0xa9059cbb with:
             gas gas_remaining wei
            args getSafe[idx].field_768, getSafe[idx].field_1536 + getSafe[idx].field_1792
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require getSafe[idx].field_1536 + getSafe[idx].field_1792 <= sub_666a7370[stor18[idx].field_1024]
        sub_666a7370[stor18[idx].field_1024] = sub_666a7370[stor18[idx].field_1024] - getSafe[idx].field_1536 - getSafe[idx].field_1792
        require sub_0d826c0b[stor18[idx].field_1024] + getSafe[idx].field_1536 + getSafe[idx].field_1792 >= sub_0d826c0b[stor18[idx].field_1024]
        sub_0d826c0b[stor18[idx].field_1024] = sub_0d826c0b[stor18[idx].field_1024] + getSafe[idx].field_1536 + getSafe[idx].field_1792
        require statistics[stor18[idx].field_768][stor18[idx].field_1024][2] + getSafe[idx].field_1536 + getSafe[idx].field_1792 >= statistics[stor18[idx].field_768][stor18[idx].field_1024][2]
        mem[0] = 2
        mem[32] = sha3(getSafe[idx].field_1024, sha3(address(msg.sender), 19))
        statistics[address(msg.sender)][stor18[idx].field_1024][2] = statistics[stor18[idx].field_768][stor18[idx].field_1024][2] + getSafe[idx].field_1536 + getSafe[idx].field_1792
        s = getSafe[idx].field_1536 + getSafe[idx].field_1792
        t = sha3(idx, 18)
        idx = idx + 1
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
            stor13[address(arg1)] = uint8(arg2)
        else:
            if arg2:
                stor13[address(arg1)] = uint8(arg2)
            else:
                stor13[address(arg1)] = 1
        emit 0x84e00559: arg2, arg3, Array(len=arg4.length, data=arg4[all]), arg5, 720 * 24 * 3600 * 72 / arg5, arg1
    else:
        sub_1996bc1c[address(arg1)] = 0
        if not sub_e781495aAddress:
            sub_e781495aAddress = arg1
        if arg1 != sub_e781495aAddress:
            stor13[address(arg1)] = uint8(arg2)
            mem[ceil32(arg4.length) + 128] = arg2
            mem[ceil32(arg4.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0x84e00559: arg2, arg3, 160, arg5, 0, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, arg1
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                emit 0x84e00559: arg2, arg3, 160, arg5, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 320 len floor32(arg4.length) + -ceil32(arg4.length) + 32], arg1
        else:
            if arg2:
                stor13[address(arg1)] = uint8(arg2)
            else:
                stor13[address(arg1)] = 1
            mem[ceil32(arg4.length) + 128] = arg2
            mem[ceil32(arg4.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                emit 0x84e00559: arg2, arg3, 160, arg5, 0, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, arg1
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                emit 0x84e00559: arg2, arg3, 160, arg5, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 320 len floor32(arg4.length) + -ceil32(arg4.length) + 32], arg1
}



}
