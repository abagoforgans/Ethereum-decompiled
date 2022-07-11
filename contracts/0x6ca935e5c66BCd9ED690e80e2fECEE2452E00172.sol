contract main {




// =====================  Runtime code  =====================


#
#  - Holdplatform(address arg1, uint256 arg2)
#  - ClaimTokens(address arg1, uint256 arg2)
#
address getEthereumNodesAddress;
uint256 stor1;
uint256 totalUser;
mapping of address cashbackcode;
array of uint256 idaddress;
array of address getTotalAffiliate;
array of struct contractSymbol;
mapping of struct getSafe;
mapping of uint8 stor8;
mapping of uint256 sub_ee3cd825;
mapping of uint256 sub_1996bc1c;
mapping of uint256 tokenBalance;
mapping of uint256 sub_99613956;
mapping of uint256 sub_6a37f573;
mapping of uint256 sub_0d826c0b;
mapping of uint256 sub_8b37932e;
mapping of uint256 sub_0c5d5323;
mapping of uint256 sub_d1ee27a4;
mapping of uint256 statistics;
address holdplatform_address;
uint256 holdplatform_balance;
mapping of uint8 stor21;
mapping of uint256 sub_5ae33a34;

function GetTotalAffiliate(address arg1) {
    return uint256(getTotalAffiliate[address(arg1)])
}

function sub_0c5d5323(?) {
    return sub_0c5d5323[arg1]
}

function sub_0d826c0b(?) {
    return sub_0d826c0b[arg1]
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

function idaddress(address arg1, uint256 arg2) {
    require arg2 < idaddress[arg1]
    return idaddress[arg1][arg2]
}

function contractaddress(address arg1) {
    return bool(stor8[arg1])
}

function cashbackcode(address arg1) {
    return cashbackcode[arg1]
}

function sub_5ae33a34(?) {
    return sub_5ae33a34[arg1]
}

function sub_6a37f573(?) {
    return sub_6a37f573[arg1]
}

function afflist(address arg1, uint256 arg2) {
    require arg2 < uint256(getTotalAffiliate[arg1])
    return address(getTotalAffiliate[arg1][arg2])
}

function sub_8b37932e(?) {
    return sub_8b37932e[arg1]
}

function Holdplatform_balance() {
    return holdplatform_balance
}

function Holdplatform_address() {
    return holdplatform_address
}

function sub_99613956(?) {
    return sub_99613956[arg1]
}

function TokenBalance(address arg1) {
    return tokenBalance[arg1]
}

function sub_d1ee27a4(?) {
    return sub_d1ee27a4[arg1][arg2]
}

function GetUserSafesLength(address arg1) {
    return idaddress[address(arg1)]
}

function TotalUser() {
    return totalUser
}

function Holdplatform_status(address arg1) {
    return bool(stor21[arg1])
}

function sub_ee3cd825(?) {
    return sub_ee3cd825[arg1]
}

function _fallback() payable {
    revert
}

function sub_9ff7cdb9(?) {
    require msg.sender == getEthereumNodesAddress
    if arg2 > 0:
        sub_d1ee27a4[address(arg1)][1] = arg2
    if arg3 > 0:
        sub_d1ee27a4[address(arg1)][2] = arg3
    if arg4 > 0:
        sub_d1ee27a4[address(arg1)][3] = arg4
}

function sub_d6387b1e(?) {
    require msg.sender == getEthereumNodesAddress
    stor21[address(arg1)] = uint8(arg2)
    sub_5ae33a34[address(arg1)] = arg3
    require arg3 > 0
    require arg3
    emit 0x4f3632e6: arg2, arg3, 100 / arg3, block.timestamp, msg.sender, arg1
}

function CashbackCode(address arg1) {
    require arg1 != msg.sender
    if cashbackcode[address(msg.sender)]:
        cashbackcode[address(msg.sender)] = getEthereumNodesAddress
    else:
        if sub_8b37932e[address(arg1)] < 1:
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
    emit 0xc18bc2c2: arg1, holdplatform_balance + arg1, block.timestamp, msg.sender
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
    emit 0x2bde15de: arg1, holdplatform_balance - arg1, block.timestamp, msg.sender
}

function sub_315d4792(?) {
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
        sub_d1ee27a4[address(arg1)][1] = arg2
        stor8[address(arg1)] = 1
        emit 0x4959c2ec: arg2, arg3, Array(len=arg4.length, data=arg4[all]), arg5, 720 * 24 * 3600 * 72 / arg5, msg.sender, arg1
    else:
        sub_1996bc1c[address(arg1)] = 0
        sub_d1ee27a4[address(arg1)][1] = arg2
        stor8[address(arg1)] = 1
        mem[ceil32(arg4.length) + 128] = arg2
        mem[ceil32(arg4.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0x4959c2ec: arg2, arg3, 160, arg5, 0, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256, msg.sender, arg1
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
            emit 0x4959c2ec: arg2, arg3, 160, arg5, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 320 len floor32(arg4.length) + -ceil32(arg4.length) + 32], msg.sender, arg1
}

function WithdrawAffiliate(address arg1, address arg2) {
    require arg2
    require statistics[address(arg1)][address(arg2)][3] > 0
    statistics[address(msg.sender)][address(arg2)][3] = 0
    require statistics[address(msg.sender)][address(arg2)][3] <= tokenBalance[address(arg2)]
    tokenBalance[address(arg2)] -= statistics[address(msg.sender)][address(arg2)][3]
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
    sub_0c5d5323[5]++
    emit 0x772c23bb: Array(len=contractSymbol[address(arg2)].length, data=mem[128 len contractSymbol[address(arg2)].length]), statistics[address(msg.sender)][address(arg2)][3], block.timestamp, msg.sender, arg2
}

function sub_8e9e2795(?) {
    require msg.sender == getEthereumNodesAddress
    s = 0
    t = 0
    idx = 1
    while idx < stor1:
        mem[0] = idx
        mem[32] = 7
        if not getSafe[idx].field_0:
            s = s
            t = sha3(idx, 7)
            idx = idx + 1
            continue 
        if getSafe[idx].field_1536 <= 0:
            s = s
            t = sha3(idx, 7)
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
        require getSafe[idx].field_1536 + getSafe[idx].field_1792 <= tokenBalance[stor7[idx].field_1024]
        tokenBalance[stor7[idx].field_1024] = tokenBalance[stor7[idx].field_1024] - getSafe[idx].field_1536 - getSafe[idx].field_1792
        require sub_0d826c0b[stor7[idx].field_1024] + getSafe[idx].field_1536 + getSafe[idx].field_1792 >= sub_0d826c0b[stor7[idx].field_1024]
        sub_0d826c0b[stor7[idx].field_1024] = sub_0d826c0b[stor7[idx].field_1024] + getSafe[idx].field_1536 + getSafe[idx].field_1792
        require statistics[stor7[idx].field_768][stor7[idx].field_1024][2] + getSafe[idx].field_1536 + getSafe[idx].field_1792 >= statistics[stor7[idx].field_768][stor7[idx].field_1024][2]
        statistics[address(msg.sender)][stor7[idx].field_1024][2] = statistics[stor7[idx].field_768][stor7[idx].field_1024][2] + getSafe[idx].field_1536 + getSafe[idx].field_1792
        sub_0c5d5323[3]++
        mem[0] = getSafe[idx].field_1024
        mem[32] = 21
        if bool(stor21[stor7[idx].field_1024]) == 1:
            require holdplatform_balance > 0
            require sub_5ae33a34[stor7[idx].field_1024] > 0
            require sub_5ae33a34[stor7[idx].field_1024]
            mem[132] = getSafe[idx].field_1536 + getSafe[idx].field_1792 / sub_5ae33a34[stor7[idx].field_1024] / 4
            require ext_code.size(holdplatform_address)
            call holdplatform_address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, getSafe[idx].field_1536 + getSafe[idx].field_1792 / sub_5ae33a34[stor7[idx].field_1024] / 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require getSafe[idx].field_1536 + getSafe[idx].field_1792 / sub_5ae33a34[stor7[idx].field_1024] / 4 <= holdplatform_balance
            holdplatform_balance -= getSafe[idx].field_1536 + getSafe[idx].field_1792 / sub_5ae33a34[stor7[idx].field_1024] / 4
            mem[0] = 4
            mem[32] = 16
            sub_0c5d5323[4]++
            mem[96] = getSafe[idx].field_1536 + getSafe[idx].field_1792 / sub_5ae33a34[stor7[idx].field_1024] / 4
            mem[128] = block.timestamp
            emit 0x93e34edf: Mask(254, 2, getSafe[idx].field_1536 + getSafe[idx].field_1792 / sub_5ae33a34[stor7[idx].field_1024]), block.timestamp, msg.sender
        s = getSafe[idx].field_1536 + getSafe[idx].field_1792
        t = sha3(idx, 7)
        idx = idx + 1
        continue 
}



}
