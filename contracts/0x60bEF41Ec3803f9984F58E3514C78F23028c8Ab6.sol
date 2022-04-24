contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor3;
address stor4;
uint256 stor7;
uint256 stor12;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
address stor35;

function _fallback() payable {
    stor7 = 0
    stor23 = 0
    stor24 = 0
    stor25 = 0
    stor26 = 0
    stor27 = 105
    stor28 = 110
    stor29 = 115
    stor30 = 121
    require not msg.value
    stor0 = msg.sender
    require code.data[17300 len 20]
    stor2 = code.data[17268 len 20]
    stor3 = block.timestamp
    stor4 = code.data[17300 len 20]
    stor12 = 5 * 10^15
    stor35 = code.data[17332 len 20]
    return code.data[451 len 16805]
}



// =====================  Runtime code  =====================


#
#  - sub_27a187f2(?)
#  - sub_fa37f8f9(?)
#
address owner;
address managerAddress;
address tokenAddress;
uint256 deadline;
address walletAddress;
uint256 weiRaised;
uint256 totalSold;
uint256 sub_0b4b984c;
array of struct buyers;
array of uint256 sub_e10585ca;
uint256 sub_ba288c35;
uint256 tokensForSale;
uint256 sub_c8e7fbbf;
uint256 sub_2960862e;
uint256 sub_8137ff4a;
uint256 sub_a85a4384;
uint256 tokenPrice;
uint256 sub_59654f72;
uint256 sub_423560e6;
uint256 sub_f9ee9e3f;
uint256 sub_3e7b836a;
uint8 stor22;
uint256 stor23;
uint256 stor24;
uint256 sub_c787d815;
uint256 sub_f2a86fea;
uint256 sub_03face2f;
uint256 sub_aac2827d;
array of struct sub_4b4e2c28;
array of struct sub_c3904d6d;
array of struct sub_30b23aa9;
array of struct sub_bfc4b3a6;
uint8 sub_a0f2bb39; offset 160
uint8 sub_3b5bced7; offset 168
uint8 sub_ca69b7e9; offset 176
uint8 sub_651b8e65; offset 184
address preSaleContractAddress;

function sub_03face2f(?) {
    return sub_03face2f
}

function sub_0b4b984c(?) {
    return sub_0b4b984c
}

function tokensForSale() {
    return tokensForSale
}

function sub_2960862e(?) {
    return sub_2960862e
}

function deadline() {
    return deadline
}

function sub_30b23aa9(?) {
    require arg1 < sub_30b23aa9.length
    return sub_30b23aa9[arg1].field_0, sub_30b23aa9[arg1].field_256
}

function sub_3b5bced7(?) {
    return bool(sub_3b5bced7)
}

function sub_3e7b836a(?) {
    return sub_3e7b836a
}

function weiRaised() {
    return weiRaised
}

function sub_423560e6(?) {
    return sub_423560e6
}

function manager() {
    return managerAddress
}

function sub_4b4e2c28(?) {
    require arg1 < sub_4b4e2c28.length
    return sub_4b4e2c28[arg1].field_0, sub_4b4e2c28[arg1].field_256
}

function tokensSold() {
    return totalSold
}

function wallet() {
    return walletAddress
}

function sub_59654f72(?) {
    return sub_59654f72
}

function sub_651b8e65(?) {
    return bool(sub_651b8e65)
}

function tokenPrice() {
    return tokenPrice
}

function sub_8137ff4a(?) {
    return sub_8137ff4a
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function sub_a0f2bb39(?) {
    return bool(sub_a0f2bb39)
}

function sub_a85a4384(?) {
    return sub_a85a4384
}

function sub_a88661f4(?) {
    return buyers.length
}

function sub_aac2827d(?) {
    return sub_aac2827d
}

function preSaleContract() {
    return preSaleContractAddress
}

function sub_ba288c35(?) {
    return sub_ba288c35
}

function sub_bfc4b3a6(?) {
    require arg1 < sub_bfc4b3a6.length
    return sub_bfc4b3a6[arg1].field_0, sub_bfc4b3a6[arg1].field_256
}

function sub_c3904d6d(?) {
    require arg1 < sub_c3904d6d.length
    return sub_c3904d6d[arg1].field_0, sub_c3904d6d[arg1].field_256
}

function sub_c787d815(?) {
    return sub_c787d815
}

function sub_c8e7fbbf(?) {
    return sub_c8e7fbbf
}

function sub_ca69b7e9(?) {
    return bool(sub_ca69b7e9)
}

function sub_e10585ca(?) {
    return sub_e10585ca[0 len sub_e10585ca.length]
}

function sub_f2a86fea(?) {
    return sub_f2a86fea
}

function buyers(uint256 arg1) {
    require arg1 < buyers.length
    return buyers[arg1].field_0, buyers[arg1].field_256
}

function sub_f9ee9e3f(?) {
    return sub_f9ee9e3f
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > deadline)
}

function updatePrice(uint256 arg1) payable {
    sub_ba288c35 = arg1
}

function setManager(address arg1) {
    require msg.sender == owner
    managerAddress = arg1
}

function sub_6203ed5a(?) payable {
    if owner != msg.sender:
        require msg.sender == managerAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_e8fd732c(?) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_4d6dade9(?) {
    if not tokenPrice:
        return (tokenPrice * sub_f2a86fea / 100)
    require tokenPrice
    require tokenPrice * sub_f2a86fea / tokenPrice == sub_f2a86fea
    return (tokenPrice * sub_f2a86fea / 100)
}

function sub_907d9c6c(?) {
    if not tokenPrice:
        return (tokenPrice * sub_03face2f / 100)
    require tokenPrice
    require tokenPrice * sub_03face2f / tokenPrice == sub_03face2f
    return (tokenPrice * sub_03face2f / 100)
}

function sub_a0a8bf85(?) {
    if not tokenPrice:
        return (tokenPrice * sub_c787d815 / 100)
    require tokenPrice
    require tokenPrice * sub_c787d815 / tokenPrice == sub_c787d815
    return (tokenPrice * sub_c787d815 / 100)
}

function sub_ee1cf208(?) {
    if not tokenPrice:
        return (tokenPrice * sub_aac2827d / 100)
    require tokenPrice
    require tokenPrice * sub_aac2827d / tokenPrice == sub_aac2827d
    return (tokenPrice * sub_aac2827d / 100)
}

function setNewTokenOwner(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function icoStart() {
    require msg.sender == owner
    sub_59654f72 = block.timestamp + (336 * 24 * 3600)
    sub_423560e6 = sub_59654f72 + (336 * 24 * 3600)
    sub_f9ee9e3f = sub_423560e6 + (336 * 24 * 3600)
    sub_3e7b836a = sub_f9ee9e3f + (336 * 24 * 3600)
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= tokensForSale
    tokenPrice = arg1
    stor22 = 1
}

function burnTokens() {
    require block.timestamp > sub_3e7b836a
    if owner != msg.sender:
        require msg.sender == managerAddress
    require totalSold <= tokensForSale
    require ext_code.size(tokenAddress)
    call tokenAddress.burn(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (tokensForSale - totalSold)
    require ext_call.success
}

function transferTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2 + 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require sub_0b4b984c + arg2 >= sub_0b4b984c
    sub_0b4b984c += arg2
}

function getCurrentPrice() {
    if block.timestamp < sub_59654f72:
        if not tokenPrice:
            return (tokenPrice * sub_c787d815 / 100)
        if tokenPrice:
            if tokenPrice * sub_c787d815 / tokenPrice == sub_c787d815:
                return (tokenPrice * sub_c787d815 / 100)
    else:
        if block.timestamp < sub_423560e6:
            if not tokenPrice:
                return (tokenPrice * sub_f2a86fea / 100)
            if tokenPrice:
                if tokenPrice * sub_f2a86fea / tokenPrice == sub_f2a86fea:
                    return (tokenPrice * sub_f2a86fea / 100)
        else:
            if block.timestamp < sub_f9ee9e3f:
                if not tokenPrice:
                    return (tokenPrice * sub_03face2f / 100)
                if tokenPrice:
                    if tokenPrice * sub_03face2f / tokenPrice == sub_03face2f:
                        return (tokenPrice * sub_03face2f / 100)
            else:
                if block.timestamp >= sub_3e7b836a:
                    return 0
                if not tokenPrice:
                    return (tokenPrice * sub_aac2827d / 100)
                if tokenPrice:
                    if tokenPrice * sub_aac2827d / tokenPrice == sub_aac2827d:
                        return (tokenPrice * sub_aac2827d / 100)
    revert
}

function sub_6dc0504c(?) payable {
    if block.timestamp < sub_59654f72:
        if tokenPrice:
            require tokenPrice
            require tokenPrice * sub_c787d815 / tokenPrice == sub_c787d815
        require tokenPrice * sub_c787d815 / 100
        emit 0xcaeb6f2e: msg.value / tokenPrice * sub_c787d815 / 100, Array(len=7, data='to send')
        emit 0xcaeb6f2e: tokenPrice * sub_c787d815 / 100, Array(len=12, data='currentPrice')
    else:
        if block.timestamp < sub_423560e6:
            if tokenPrice:
                require tokenPrice
                require tokenPrice * sub_f2a86fea / tokenPrice == sub_f2a86fea
            require tokenPrice * sub_f2a86fea / 100
            emit 0xcaeb6f2e: msg.value / tokenPrice * sub_f2a86fea / 100, Array(len=7, data='to send')
            emit 0xcaeb6f2e: tokenPrice * sub_f2a86fea / 100, Array(len=12, data='currentPrice')
        else:
            if block.timestamp < sub_f9ee9e3f:
                if tokenPrice:
                    require tokenPrice
                    require tokenPrice * sub_03face2f / tokenPrice == sub_03face2f
                require tokenPrice * sub_03face2f / 100
                emit 0xcaeb6f2e: msg.value / tokenPrice * sub_03face2f / 100, Array(len=7, data='to send')
                emit 0xcaeb6f2e: tokenPrice * sub_03face2f / 100, Array(len=12, data='currentPrice')
            else:
                require block.timestamp < sub_3e7b836a
                if tokenPrice:
                    require tokenPrice
                    require tokenPrice * sub_aac2827d / tokenPrice == sub_aac2827d
                require tokenPrice * sub_aac2827d / 100
                emit 0xcaeb6f2e: msg.value / tokenPrice * sub_aac2827d / 100, Array(len=7, data='to send')
                emit 0xcaeb6f2e: tokenPrice * sub_aac2827d / 100, Array(len=12, data='currentPrice')
}

function sendTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    require block.timestamp < sub_3e7b836a
    if block.timestamp < sub_59654f72:
        sub_c8e7fbbf += arg2
        totalSold += arg2
        sub_4b4e2c28.length++
        if not sub_4b4e2c28.length <= sub_4b4e2c28.length + 1:
            idx = 2 * sub_4b4e2c28.length + 1
            while 2 * sub_4b4e2c28.length > idx:
                sub_4b4e2c28[idx].field_0 = 0
                sub_4b4e2c28[idx].field_256 = 0
                idx = idx + 2
                continue 
        sub_4b4e2c28[sub_4b4e2c28.length].field_0 = arg1
        sub_4b4e2c28[sub_4b4e2c28.length].field_256 = arg2
    else:
        if block.timestamp < sub_423560e6:
            sub_2960862e += arg2
            totalSold += arg2
        else:
            if block.timestamp < sub_f9ee9e3f:
                sub_8137ff4a += arg2
                totalSold += arg2
            else:
                if block.timestamp < sub_3e7b836a:
                    sub_a85a4384 += arg2
                    totalSold += arg2
        if block.timestamp < sub_59654f72:
            sub_4b4e2c28.length++
            if not sub_4b4e2c28.length <= sub_4b4e2c28.length + 1:
                idx = 2 * sub_4b4e2c28.length + 1
                while 2 * sub_4b4e2c28.length > idx:
                    sub_4b4e2c28[idx].field_0 = 0
                    sub_4b4e2c28[idx].field_256 = 0
                    idx = idx + 2
                    continue 
            sub_4b4e2c28[sub_4b4e2c28.length].field_0 = arg1
            sub_4b4e2c28[sub_4b4e2c28.length].field_256 = arg2
        else:
            if block.timestamp < sub_423560e6:
                sub_c3904d6d.length++
                if not sub_c3904d6d.length <= sub_c3904d6d.length + 1:
                    idx = 2 * sub_c3904d6d.length + 1
                    while 2 * sub_c3904d6d.length > idx:
                        sub_c3904d6d[idx].field_0 = 0
                        sub_c3904d6d[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                sub_c3904d6d[sub_c3904d6d.length].field_0 = arg1
                sub_c3904d6d[sub_c3904d6d.length].field_256 = arg2
            else:
                if block.timestamp < sub_f9ee9e3f:
                    sub_30b23aa9.length++
                    if not sub_30b23aa9.length <= sub_30b23aa9.length + 1:
                        idx = 2 * sub_30b23aa9.length + 1
                        while 2 * sub_30b23aa9.length > idx:
                            sub_30b23aa9[idx].field_0 = 0
                            sub_30b23aa9[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    sub_30b23aa9[sub_30b23aa9.length].field_0 = arg1
                    sub_30b23aa9[sub_30b23aa9.length].field_256 = arg2
                else:
                    if block.timestamp < sub_3e7b836a:
                        sub_bfc4b3a6.length++
                        if not sub_bfc4b3a6.length <= sub_bfc4b3a6.length + 1:
                            idx = 2 * sub_bfc4b3a6.length + 1
                            while 2 * sub_bfc4b3a6.length > idx:
                                sub_bfc4b3a6[idx].field_0 = 0
                                sub_bfc4b3a6[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        sub_bfc4b3a6[sub_bfc4b3a6.length].field_0 = arg1
                        sub_bfc4b3a6[sub_bfc4b3a6.length].field_256 = arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_06efab9d(?) {
    mem[64] = 160
    require block.timestamp > sub_59654f72
    if owner != msg.sender:
        require msg.sender == managerAddress
    require not sub_a0f2bb39
    if tokenPrice:
        require tokenPrice
        require tokenPrice * sub_c8e7fbbf / tokenPrice == sub_c8e7fbbf
        if tokenPrice:
            require tokenPrice
            require tokenPrice * sub_c787d815 / tokenPrice == sub_c787d815
    if sub_c8e7fbbf:
        require sub_c8e7fbbf
        require sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100 / sub_c8e7fbbf == tokenPrice * sub_c787d815 / 100
    require tokenPrice * sub_c8e7fbbf <= sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100
    require stor23 + arg1 >= stor23
    require ext_code.size(preSaleContractAddress)
    call preSaleContractAddress.0xa88661f4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if stor23 + arg1 <= ext_call.return_data[0]:
        s = 0
        idx = stor23
        while idx < stor23 + arg1:
            mem[mem[64] + 64] = 0
            mem[mem[64] + 4] = idx
            require ext_code.size(preSaleContractAddress)
            call preSaleContractAddress.0xf2aa8218 with:
                 gas gas_remaining - 710 wei
                args idx
            require ext_call.success
            mem[128] = ext_call.return_data[32]
            mem[96] = address(ext_call.return_data[0])
            mem[mem[64] + 32] = 0
            require ext_code.size(preSaleContractAddress)
            call preSaleContractAddress.0x12aef8c3 with:
                 gas gas_remaining - 710 wei
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf):
                require (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf)
                require (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100 * ext_call.return_data[32]) - (tokenPrice * sub_c8e7fbbf * ext_call.return_data[32]) / (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) == ext_call.return_data[32]
            require ext_call.return_data[0]
            call uint64(ext_call.return_data[0]) << 96 with:
               value (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100 * ext_call.return_data[32]) - (tokenPrice * sub_c8e7fbbf * ext_call.return_data[32]) / ext_call.return_data[0] / 100 * 10^6 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            s = (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100 * ext_call.return_data[32]) - (tokenPrice * sub_c8e7fbbf * ext_call.return_data[32]) / ext_call.return_data[0] / 100 * 10^6
            idx = idx + 1
            continue 
        stor23 += arg1
    else:
        require ext_code.size(preSaleContractAddress)
        call preSaleContractAddress.0xa88661f4 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        s = 0
        idx = stor23
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 64] = 0
            mem[mem[64] + 4] = idx
            require ext_code.size(preSaleContractAddress)
            call preSaleContractAddress.0xf2aa8218 with:
                 gas gas_remaining - 710 wei
                args idx
            require ext_call.success
            mem[128] = ext_call.return_data[32]
            mem[96] = address(ext_call.return_data[0])
            mem[mem[64] + 32] = 0
            require ext_code.size(preSaleContractAddress)
            call preSaleContractAddress.0x12aef8c3 with:
                 gas gas_remaining - 710 wei
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf):
                require (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf)
                require (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100 * ext_call.return_data[32]) - (tokenPrice * sub_c8e7fbbf * ext_call.return_data[32]) / (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) == ext_call.return_data[32]
            require ext_call.return_data[0]
            call uint64(ext_call.return_data[0]) << 96 with:
               value (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100 * ext_call.return_data[32]) - (tokenPrice * sub_c8e7fbbf * ext_call.return_data[32]) / ext_call.return_data[0] / 100 * 10^6 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            s = (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100 * ext_call.return_data[32]) - (tokenPrice * sub_c8e7fbbf * ext_call.return_data[32]) / ext_call.return_data[0] / 100 * 10^6
            idx = idx + 1
            continue 
        stor23 = ext_call.return_data[0]
}

function sub_1ad0632b(?) {
    mem[64] = 160
    require block.timestamp > sub_423560e6
    if owner != msg.sender:
        require msg.sender == managerAddress
    require not sub_3b5bced7
    if tokenPrice:
        require tokenPrice
        require tokenPrice * sub_c8e7fbbf / tokenPrice == sub_c8e7fbbf
        if tokenPrice:
            require tokenPrice
            require tokenPrice * sub_c787d815 / tokenPrice == sub_c787d815
    if sub_c8e7fbbf:
        require sub_c8e7fbbf
        require sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100 / sub_c8e7fbbf == tokenPrice * sub_c787d815 / 100
    require tokenPrice * sub_c8e7fbbf <= sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100
    if (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf):
        require (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf)
        require (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) == 6
    if (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf):
        require (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf)
        require 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) == 4
    require stor24 + arg1 >= stor24
    require ext_code.size(preSaleContractAddress)
    call preSaleContractAddress.0xa88661f4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if stor24 + arg1 <= ext_call.return_data[0]:
        s = 0
        idx = stor24
        while idx < stor24 + arg1:
            mem[mem[64] + 64] = 0
            mem[mem[64] + 4] = idx
            require ext_code.size(preSaleContractAddress)
            call preSaleContractAddress.0xf2aa8218 with:
                 gas gas_remaining - 710 wei
                args idx
            require ext_call.success
            mem[128] = ext_call.return_data[32]
            mem[96] = address(ext_call.return_data[0])
            mem[mem[64] + 32] = 0
            require ext_code.size(preSaleContractAddress)
            call preSaleContractAddress.0x12aef8c3 with:
                 gas gas_remaining - 710 wei
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10:
                require (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10
                require (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10 * ext_call.return_data[32] / (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10 == ext_call.return_data[32]
            require ext_call.return_data[0]
            call uint64(ext_call.return_data[0]) << 96 with:
               value (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10 * ext_call.return_data[32] / ext_call.return_data[0] / 100 * 10^6 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            s = (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10 * ext_call.return_data[32] / ext_call.return_data[0] / 100 * 10^6
            idx = idx + 1
            continue 
    else:
        require ext_code.size(preSaleContractAddress)
        call preSaleContractAddress.0xa88661f4 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        s = 0
        idx = stor24
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 64] = 0
            mem[mem[64] + 4] = idx
            require ext_code.size(preSaleContractAddress)
            call preSaleContractAddress.0xf2aa8218 with:
                 gas gas_remaining - 710 wei
                args idx
            require ext_call.success
            mem[128] = ext_call.return_data[32]
            mem[96] = address(ext_call.return_data[0])
            mem[mem[64] + 32] = 0
            require ext_code.size(preSaleContractAddress)
            call preSaleContractAddress.0x12aef8c3 with:
                 gas gas_remaining - 710 wei
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10:
                require (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10
                require (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10 * ext_call.return_data[32] / (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10 == ext_call.return_data[32]
            require ext_call.return_data[0]
            call uint64(ext_call.return_data[0]) << 96 with:
               value (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10 * ext_call.return_data[32] / ext_call.return_data[0] / 100 * 10^6 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            s = (6 * sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (6 * tokenPrice * sub_c8e7fbbf) / 10 * ext_call.return_data[32] / ext_call.return_data[0] / 100 * 10^6
            idx = idx + 1
            continue 
    if stor24 + arg1 <= sub_4b4e2c28.length:
        t = s
        idx = stor24
        while idx < stor24 + arg1:
            if sub_c8e7fbbf <= 0:
                t = t
                idx = idx + 1
                continue 
            require idx < sub_4b4e2c28.length
            if 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10:
                require 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10
                require 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10 * sub_4b4e2c28[idx].field_256 / 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10 == sub_4b4e2c28[idx].field_256
            require sub_c8e7fbbf
            require idx < sub_4b4e2c28.length
            mem[0] = 31
            call sub_4b4e2c28[idx].field_0 with:
               value 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10 * sub_4b4e2c28[idx].field_256 / sub_c8e7fbbf wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            t = 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10 * sub_4b4e2c28[idx].field_256 / sub_c8e7fbbf
            idx = idx + 1
            continue 
    else:
        t = s
        idx = stor24
        while idx < sub_4b4e2c28.length:
            if sub_c8e7fbbf <= 0:
                t = t
                idx = idx + 1
                continue 
            require idx < sub_4b4e2c28.length
            if 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10:
                require 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10
                require 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10 * sub_4b4e2c28[idx].field_256 / 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10 == sub_4b4e2c28[idx].field_256
            require sub_c8e7fbbf
            require idx < sub_4b4e2c28.length
            mem[0] = 31
            call sub_4b4e2c28[idx].field_0 with:
               value 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10 * sub_4b4e2c28[idx].field_256 / sub_c8e7fbbf wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            t = 4 * (sub_c8e7fbbf * tokenPrice * sub_c787d815 / 100) - (tokenPrice * sub_c8e7fbbf) / 10 * sub_4b4e2c28[idx].field_256 / sub_c8e7fbbf
            idx = idx + 1
            continue 
    stor24 += arg1
}

function _fallback() payable {
    require block.timestamp < sub_3e7b836a
    if block.timestamp < sub_59654f72:
        if tokenPrice:
            require tokenPrice
            require tokenPrice * sub_c787d815 / tokenPrice == sub_c787d815
        require tokenPrice * sub_c787d815 / 100
        if block.timestamp < sub_59654f72:
            sub_c8e7fbbf += msg.value / tokenPrice * sub_c787d815 / 100
            totalSold += msg.value / tokenPrice * sub_c787d815 / 100
            sub_4b4e2c28.length++
            if not sub_4b4e2c28.length <= sub_4b4e2c28.length + 1:
                idx = 2 * sub_4b4e2c28.length + 1
                while 2 * sub_4b4e2c28.length > idx:
                    sub_4b4e2c28[idx].field_0 = 0
                    sub_4b4e2c28[idx].field_256 = 0
                    idx = idx + 2
                    continue 
            sub_4b4e2c28[sub_4b4e2c28.length].field_0 = msg.sender
            sub_4b4e2c28[sub_4b4e2c28.length].field_256 = msg.value / tokenPrice * sub_c787d815 / 100
        else:
            if block.timestamp < sub_423560e6:
                sub_2960862e += msg.value / tokenPrice * sub_c787d815 / 100
                totalSold += msg.value / tokenPrice * sub_c787d815 / 100
            else:
                if block.timestamp < sub_f9ee9e3f:
                    sub_8137ff4a += msg.value / tokenPrice * sub_c787d815 / 100
                    totalSold += msg.value / tokenPrice * sub_c787d815 / 100
                else:
                    if block.timestamp < sub_3e7b836a:
                        sub_a85a4384 += msg.value / tokenPrice * sub_c787d815 / 100
                        totalSold += msg.value / tokenPrice * sub_c787d815 / 100
            if block.timestamp < sub_59654f72:
                sub_4b4e2c28.length++
                if not sub_4b4e2c28.length <= sub_4b4e2c28.length + 1:
                    idx = 2 * sub_4b4e2c28.length + 1
                    while 2 * sub_4b4e2c28.length > idx:
                        sub_4b4e2c28[idx].field_0 = 0
                        sub_4b4e2c28[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                sub_4b4e2c28[sub_4b4e2c28.length].field_0 = msg.sender
                sub_4b4e2c28[sub_4b4e2c28.length].field_256 = msg.value / tokenPrice * sub_c787d815 / 100
            else:
                if block.timestamp < sub_423560e6:
                    sub_c3904d6d.length++
                    if not sub_c3904d6d.length <= sub_c3904d6d.length + 1:
                        idx = 2 * sub_c3904d6d.length + 1
                        while 2 * sub_c3904d6d.length > idx:
                            sub_c3904d6d[idx].field_0 = 0
                            sub_c3904d6d[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    sub_c3904d6d[sub_c3904d6d.length].field_0 = msg.sender
                    sub_c3904d6d[sub_c3904d6d.length].field_256 = msg.value / tokenPrice * sub_c787d815 / 100
                else:
                    if block.timestamp < sub_f9ee9e3f:
                        sub_30b23aa9.length++
                        if not sub_30b23aa9.length <= sub_30b23aa9.length + 1:
                            idx = 2 * sub_30b23aa9.length + 1
                            while 2 * sub_30b23aa9.length > idx:
                                sub_30b23aa9[idx].field_0 = 0
                                sub_30b23aa9[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        sub_30b23aa9[sub_30b23aa9.length].field_0 = msg.sender
                        sub_30b23aa9[sub_30b23aa9.length].field_256 = msg.value / tokenPrice * sub_c787d815 / 100
                    else:
                        if block.timestamp < sub_3e7b836a:
                            sub_bfc4b3a6.length++
                            if not sub_bfc4b3a6.length <= sub_bfc4b3a6.length + 1:
                                idx = 2 * sub_bfc4b3a6.length + 1
                                while 2 * sub_bfc4b3a6.length > idx:
                                    sub_bfc4b3a6[idx].field_0 = 0
                                    sub_bfc4b3a6[idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            sub_bfc4b3a6[sub_bfc4b3a6.length].field_0 = msg.sender
                            sub_bfc4b3a6[sub_bfc4b3a6.length].field_256 = msg.value / tokenPrice * sub_c787d815 / 100
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / tokenPrice * sub_c787d815 / 100
    else:
        if block.timestamp < sub_423560e6:
            if tokenPrice:
                require tokenPrice
                require tokenPrice * sub_f2a86fea / tokenPrice == sub_f2a86fea
            require tokenPrice * sub_f2a86fea / 100
            if block.timestamp < sub_59654f72:
                sub_c8e7fbbf += msg.value / tokenPrice * sub_f2a86fea / 100
                totalSold += msg.value / tokenPrice * sub_f2a86fea / 100
                sub_4b4e2c28.length++
                if not sub_4b4e2c28.length <= sub_4b4e2c28.length + 1:
                    idx = 2 * sub_4b4e2c28.length + 1
                    while 2 * sub_4b4e2c28.length > idx:
                        sub_4b4e2c28[idx].field_0 = 0
                        sub_4b4e2c28[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                sub_4b4e2c28[sub_4b4e2c28.length].field_0 = msg.sender
                sub_4b4e2c28[sub_4b4e2c28.length].field_256 = msg.value / tokenPrice * sub_f2a86fea / 100
            else:
                if block.timestamp < sub_423560e6:
                    sub_2960862e += msg.value / tokenPrice * sub_f2a86fea / 100
                    totalSold += msg.value / tokenPrice * sub_f2a86fea / 100
                else:
                    if block.timestamp < sub_f9ee9e3f:
                        sub_8137ff4a += msg.value / tokenPrice * sub_f2a86fea / 100
                        totalSold += msg.value / tokenPrice * sub_f2a86fea / 100
                    else:
                        if block.timestamp < sub_3e7b836a:
                            sub_a85a4384 += msg.value / tokenPrice * sub_f2a86fea / 100
                            totalSold += msg.value / tokenPrice * sub_f2a86fea / 100
                if block.timestamp < sub_59654f72:
                    sub_4b4e2c28.length++
                    if not sub_4b4e2c28.length <= sub_4b4e2c28.length + 1:
                        idx = 2 * sub_4b4e2c28.length + 1
                        while 2 * sub_4b4e2c28.length > idx:
                            sub_4b4e2c28[idx].field_0 = 0
                            sub_4b4e2c28[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    sub_4b4e2c28[sub_4b4e2c28.length].field_0 = msg.sender
                    sub_4b4e2c28[sub_4b4e2c28.length].field_256 = msg.value / tokenPrice * sub_f2a86fea / 100
                else:
                    if block.timestamp < sub_423560e6:
                        sub_c3904d6d.length++
                        if not sub_c3904d6d.length <= sub_c3904d6d.length + 1:
                            idx = 2 * sub_c3904d6d.length + 1
                            while 2 * sub_c3904d6d.length > idx:
                                sub_c3904d6d[idx].field_0 = 0
                                sub_c3904d6d[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        sub_c3904d6d[sub_c3904d6d.length].field_0 = msg.sender
                        sub_c3904d6d[sub_c3904d6d.length].field_256 = msg.value / tokenPrice * sub_f2a86fea / 100
                    else:
                        if block.timestamp < sub_f9ee9e3f:
                            sub_30b23aa9.length++
                            if not sub_30b23aa9.length <= sub_30b23aa9.length + 1:
                                idx = 2 * sub_30b23aa9.length + 1
                                while 2 * sub_30b23aa9.length > idx:
                                    sub_30b23aa9[idx].field_0 = 0
                                    sub_30b23aa9[idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            sub_30b23aa9[sub_30b23aa9.length].field_0 = msg.sender
                            sub_30b23aa9[sub_30b23aa9.length].field_256 = msg.value / tokenPrice * sub_f2a86fea / 100
                        else:
                            if block.timestamp < sub_3e7b836a:
                                sub_bfc4b3a6.length++
                                if not sub_bfc4b3a6.length <= sub_bfc4b3a6.length + 1:
                                    idx = 2 * sub_bfc4b3a6.length + 1
                                    while 2 * sub_bfc4b3a6.length > idx:
                                        sub_bfc4b3a6[idx].field_0 = 0
                                        sub_bfc4b3a6[idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                sub_bfc4b3a6[sub_bfc4b3a6.length].field_0 = msg.sender
                                sub_bfc4b3a6[sub_bfc4b3a6.length].field_256 = msg.value / tokenPrice * sub_f2a86fea / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / tokenPrice * sub_f2a86fea / 100
        else:
            if block.timestamp < sub_f9ee9e3f:
                if tokenPrice:
                    require tokenPrice
                    require tokenPrice * sub_03face2f / tokenPrice == sub_03face2f
                require tokenPrice * sub_03face2f / 100
                if block.timestamp < sub_59654f72:
                    sub_c8e7fbbf += msg.value / tokenPrice * sub_03face2f / 100
                    totalSold += msg.value / tokenPrice * sub_03face2f / 100
                    sub_4b4e2c28.length++
                    if not sub_4b4e2c28.length <= sub_4b4e2c28.length + 1:
                        idx = 2 * sub_4b4e2c28.length + 1
                        while 2 * sub_4b4e2c28.length > idx:
                            sub_4b4e2c28[idx].field_0 = 0
                            sub_4b4e2c28[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    sub_4b4e2c28[sub_4b4e2c28.length].field_0 = msg.sender
                    sub_4b4e2c28[sub_4b4e2c28.length].field_256 = msg.value / tokenPrice * sub_03face2f / 100
                else:
                    if block.timestamp < sub_423560e6:
                        sub_2960862e += msg.value / tokenPrice * sub_03face2f / 100
                        totalSold += msg.value / tokenPrice * sub_03face2f / 100
                    else:
                        if block.timestamp < sub_f9ee9e3f:
                            sub_8137ff4a += msg.value / tokenPrice * sub_03face2f / 100
                            totalSold += msg.value / tokenPrice * sub_03face2f / 100
                        else:
                            if block.timestamp < sub_3e7b836a:
                                sub_a85a4384 += msg.value / tokenPrice * sub_03face2f / 100
                                totalSold += msg.value / tokenPrice * sub_03face2f / 100
                    if block.timestamp < sub_59654f72:
                        sub_4b4e2c28.length++
                        if not sub_4b4e2c28.length <= sub_4b4e2c28.length + 1:
                            idx = 2 * sub_4b4e2c28.length + 1
                            while 2 * sub_4b4e2c28.length > idx:
                                sub_4b4e2c28[idx].field_0 = 0
                                sub_4b4e2c28[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        sub_4b4e2c28[sub_4b4e2c28.length].field_0 = msg.sender
                        sub_4b4e2c28[sub_4b4e2c28.length].field_256 = msg.value / tokenPrice * sub_03face2f / 100
                    else:
                        if block.timestamp < sub_423560e6:
                            sub_c3904d6d.length++
                            if not sub_c3904d6d.length <= sub_c3904d6d.length + 1:
                                idx = 2 * sub_c3904d6d.length + 1
                                while 2 * sub_c3904d6d.length > idx:
                                    sub_c3904d6d[idx].field_0 = 0
                                    sub_c3904d6d[idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            sub_c3904d6d[sub_c3904d6d.length].field_0 = msg.sender
                            sub_c3904d6d[sub_c3904d6d.length].field_256 = msg.value / tokenPrice * sub_03face2f / 100
                        else:
                            if block.timestamp < sub_f9ee9e3f:
                                sub_30b23aa9.length++
                                if not sub_30b23aa9.length <= sub_30b23aa9.length + 1:
                                    idx = 2 * sub_30b23aa9.length + 1
                                    while 2 * sub_30b23aa9.length > idx:
                                        sub_30b23aa9[idx].field_0 = 0
                                        sub_30b23aa9[idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                sub_30b23aa9[sub_30b23aa9.length].field_0 = msg.sender
                                sub_30b23aa9[sub_30b23aa9.length].field_256 = msg.value / tokenPrice * sub_03face2f / 100
                            else:
                                if block.timestamp < sub_3e7b836a:
                                    sub_bfc4b3a6.length++
                                    if not sub_bfc4b3a6.length <= sub_bfc4b3a6.length + 1:
                                        idx = 2 * sub_bfc4b3a6.length + 1
                                        while 2 * sub_bfc4b3a6.length > idx:
                                            sub_bfc4b3a6[idx].field_0 = 0
                                            sub_bfc4b3a6[idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    sub_bfc4b3a6[sub_bfc4b3a6.length].field_0 = msg.sender
                                    sub_bfc4b3a6[sub_bfc4b3a6.length].field_256 = msg.value / tokenPrice * sub_03face2f / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value / tokenPrice * sub_03face2f / 100
            else:
                require block.timestamp < sub_3e7b836a
                if tokenPrice:
                    require tokenPrice
                    require tokenPrice * sub_aac2827d / tokenPrice == sub_aac2827d
                require tokenPrice * sub_aac2827d / 100
                if block.timestamp < sub_59654f72:
                    sub_c8e7fbbf += msg.value / tokenPrice * sub_aac2827d / 100
                    totalSold += msg.value / tokenPrice * sub_aac2827d / 100
                    sub_4b4e2c28.length++
                    if not sub_4b4e2c28.length <= sub_4b4e2c28.length + 1:
                        idx = 2 * sub_4b4e2c28.length + 1
                        while 2 * sub_4b4e2c28.length > idx:
                            sub_4b4e2c28[idx].field_0 = 0
                            sub_4b4e2c28[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    sub_4b4e2c28[sub_4b4e2c28.length].field_0 = msg.sender
                    sub_4b4e2c28[sub_4b4e2c28.length].field_256 = msg.value / tokenPrice * sub_aac2827d / 100
                else:
                    if block.timestamp < sub_423560e6:
                        sub_2960862e += msg.value / tokenPrice * sub_aac2827d / 100
                        totalSold += msg.value / tokenPrice * sub_aac2827d / 100
                    else:
                        if block.timestamp < sub_f9ee9e3f:
                            sub_8137ff4a += msg.value / tokenPrice * sub_aac2827d / 100
                            totalSold += msg.value / tokenPrice * sub_aac2827d / 100
                        else:
                            if block.timestamp < sub_3e7b836a:
                                sub_a85a4384 += msg.value / tokenPrice * sub_aac2827d / 100
                                totalSold += msg.value / tokenPrice * sub_aac2827d / 100
                    if block.timestamp < sub_59654f72:
                        sub_4b4e2c28.length++
                        if not sub_4b4e2c28.length <= sub_4b4e2c28.length + 1:
                            idx = 2 * sub_4b4e2c28.length + 1
                            while 2 * sub_4b4e2c28.length > idx:
                                sub_4b4e2c28[idx].field_0 = 0
                                sub_4b4e2c28[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        sub_4b4e2c28[sub_4b4e2c28.length].field_0 = msg.sender
                        sub_4b4e2c28[sub_4b4e2c28.length].field_256 = msg.value / tokenPrice * sub_aac2827d / 100
                    else:
                        if block.timestamp < sub_423560e6:
                            sub_c3904d6d.length++
                            if not sub_c3904d6d.length <= sub_c3904d6d.length + 1:
                                idx = 2 * sub_c3904d6d.length + 1
                                while 2 * sub_c3904d6d.length > idx:
                                    sub_c3904d6d[idx].field_0 = 0
                                    sub_c3904d6d[idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            sub_c3904d6d[sub_c3904d6d.length].field_0 = msg.sender
                            sub_c3904d6d[sub_c3904d6d.length].field_256 = msg.value / tokenPrice * sub_aac2827d / 100
                        else:
                            if block.timestamp < sub_f9ee9e3f:
                                sub_30b23aa9.length++
                                if not sub_30b23aa9.length <= sub_30b23aa9.length + 1:
                                    idx = 2 * sub_30b23aa9.length + 1
                                    while 2 * sub_30b23aa9.length > idx:
                                        sub_30b23aa9[idx].field_0 = 0
                                        sub_30b23aa9[idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                sub_30b23aa9[sub_30b23aa9.length].field_0 = msg.sender
                                sub_30b23aa9[sub_30b23aa9.length].field_256 = msg.value / tokenPrice * sub_aac2827d / 100
                            else:
                                if block.timestamp < sub_3e7b836a:
                                    sub_bfc4b3a6.length++
                                    if not sub_bfc4b3a6.length <= sub_bfc4b3a6.length + 1:
                                        idx = 2 * sub_bfc4b3a6.length + 1
                                        while 2 * sub_bfc4b3a6.length > idx:
                                            sub_bfc4b3a6[idx].field_0 = 0
                                            sub_bfc4b3a6[idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    sub_bfc4b3a6[sub_bfc4b3a6.length].field_0 = msg.sender
                                    sub_bfc4b3a6[sub_bfc4b3a6.length].field_256 = msg.value / tokenPrice * sub_aac2827d / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value / tokenPrice * sub_aac2827d / 100
    require ext_call.success
}



}
