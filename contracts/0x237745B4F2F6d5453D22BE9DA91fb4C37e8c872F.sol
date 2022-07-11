contract main {




// =====================  Runtime code  =====================


#
#  - sub_7e5d3aa8(?)
#  - sub_c88da5f3(?)
#
const sub_20863894(?) = (720 * 24 * 3600)

const sub_40018a0d(?) = (168 * 24 * 3600)

const sub_6f69c96f(?) = 3600

const sub_dfeefaab(?) = (72 * 24 * 3600)

const sub_fd127a41(?) = (8760 * 24 * 3600)

const DAY_LENGTH_IN_SECONDS = (24 * 3600)


address sub_fdbd648cAddress;
address DAIAddress;
address sub_48a30bf3Address;
address sub_c1516ca0Address;
array of struct sub_f2c532ad;
mapping of uint256 sub_127e2e3e;
mapping of uint256 tokenId;
mapping of uint256 sub_185a44e1;
mapping of uint256 sub_1b6d3d8f;
array of uint256 withdrawalQueue;
uint256 price;
uint256 sub_4d21af96;
uint256 sub_c9d4d3ba;
uint256 sub_6375c1e3;
uint256 sub_f9c2a187;
uint256 sub_99710784;
uint256 sub_d6faedfa;
uint8 sub_0a6c9c12;

function getTokenId() {
    return tokenId[msg.sender]
}

function sub_0a6c9c12(?) {
    return bool(sub_0a6c9c12)
}

function sub_127e2e3e(?) {
    return sub_127e2e3e[arg1]
}

function sub_185a44e1(?) {
    return sub_185a44e1[arg1]
}

function sub_1b6d3d8f(?) {
    return sub_1b6d3d8f[arg1]
}

function sub_48a30bf3(?) {
    return sub_48a30bf3Address
}

function sub_4d21af96(?) {
    return sub_4d21af96
}

function sub_6375c1e3(?) {
    return sub_6375c1e3
}

function sub_6a59c3d4(?) {
    require arg1 < withdrawalQueue.length
    return withdrawalQueue[arg1]
}

function sub_99710784(?) {
    return sub_99710784
}

function price() {
    return price
}

function sub_c1516ca0(?) {
    return sub_c1516ca0Address
}

function withdrawalQueue(uint256 arg1) {
    require arg1 < withdrawalQueue.length
    return withdrawalQueue[arg1]
}

function sub_c9d4d3ba(?) {
    return sub_c9d4d3ba
}

function sub_d6faedfa(?) {
    return sub_d6faedfa
}

function DAI() {
    return DAIAddress
}

function sub_f2c532ad(?) {
    require arg2 < 6
    return sub_f2c532ad[arg1][arg2].field_0
}

function sub_f9c2a187(?) {
    return sub_f9c2a187
}

function tokenIds(address arg1) {
    return tokenId[arg1]
}

function sub_fdbd648c(?) {
    return sub_fdbd648cAddress
}

function kill() {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifiera Only Staked can call this'
    require ext_code.size(DAIAddress)
    call DAIAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(DAIAddress)
    call DAIAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_fdbd648cAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(sub_fdbd648cAddress)
}

function _fallback() payable {
    emit 0xa8bc0512: msg.value
}

function sub_7b3b4dac(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifiera Only Staked can call this'
    sub_0a6c9c12 = 0
}

function setPrice(uint256 arg1) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifiera Only Staked can call this'
    price = arg1
}

function sub_c000c9e6(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifiera Only Staked can call this'
    sub_fdbd648cAddress = arg1
}

function sub_b18ea2fa(?) {
    require ext_code.size(DAIAddress)
    call DAIAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] - sub_d6faedfa - sub_c9d4d3ba)
}

function sub_35ea1da9(?) {
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2a74dbac(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifiera Only Staked can call this'
    require ext_code.size(DAIAddress)
    call DAIAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_fdbd648cAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6b59e800(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifiera Only Staked can call this'
    sub_c9d4d3ba = 0
    require ext_code.size(DAIAddress)
    call DAIAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_fdbd648cAddress, sub_c9d4d3ba
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_98f82414(?) {
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    return sub_f2c532ad[arg1].field_0
}

function sub_6e617743(?) {
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    return sub_f2c532ad[arg1].field_768
}

function sub_bee877eb(?) {
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    return sub_f2c532ad[arg1].field_256
}

function sub_f54c5f31(?) {
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    return sub_f2c532ad[arg1].field_512
}

function sub_9f2f3b80(?) {
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    return sub_f2c532ad[arg1].field_1280
}

function sub_b48745f3(?) {
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    return sub_f2c532ad[arg1].field_1024
}

function sub_f9d8f3cc(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifiera Only Staked can call this'
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function approve(address arg1, address arg2, uint256 arg3) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifiera Only Staked can call this'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_9291d1c9(?) {
    if sub_6375c1e3 <= 0:
        return 0
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, DAIAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_185a44e1[stor1]:
        if sub_6375c1e3:
            return ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg1) / sub_6375c1e3)
    else:
        if sub_6375c1e3:
            return ((10^14 * sub_4d21af96) + (10^14 * arg1) / sub_6375c1e3)
    ('iszero', ('stor', ('name', 'sub_6375c1e3', 13)))
    revert
}

function sub_229bb5ce(?) {
    if sub_6375c1e3 <= 0:
        return 10^18
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, DAIAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_185a44e1[stor1]:
        if sub_6375c1e3:
            return (((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg1) / sub_6375c1e3) + 10^18)
    else:
        if sub_6375c1e3:
            return (((10^14 * sub_4d21af96) + (10^14 * arg1) / sub_6375c1e3) + 10^18)
    ('iszero', ('stor', ('name', 'sub_6375c1e3', 13)))
    revert
}

function sub_7ca9e59b(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifiera Only Staked can call this'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_c1516ca0Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.supply(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller lendToCompound(): Failed to lend to Compound'
    sub_185a44e1[address(arg1)] += arg2
    emit 0x52047a96: arg2, address(arg1), 0
}

function sub_8fbbdba8(?) {
    if sub_6375c1e3 <= 0:
        return 0
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, DAIAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x78deb2bc 
    if ext_call.return_data[0] <= sub_185a44e1[stor1]:
        if sub_6375c1e3:
            return (10^14 * sub_4d21af96 / sub_6375c1e3)
    else:
        if arg1 == 1:
            if ext_call.return_data[0] - sub_185a44e1[stor1] > 0:
                require ext_code.size(sub_c1516ca0Address)
                call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args DAIAddress, ext_call.return_data[0] - sub_185a44e1[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    sub_0a6c9c12 = 1
                sub_4d21af96 = ext_call.return_data[0] - sub_185a44e1[stor1] + sub_4d21af96
                emit 0x1728dcf1: ext_call.return_data[0] - sub_185a44e1[stor1], DAIAddress, 0
        if sub_6375c1e3:
            return ((10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * sub_4d21af96) / sub_6375c1e3)
    ('iszero', ('stor', ('name', 'sub_6375c1e3', 13)))
    revert
}

function sub_03ddfdd5(?) {
    if sub_6375c1e3 <= 0:
        return 10^18
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, DAIAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x78deb2bc 
    if ext_call.return_data[0] <= sub_185a44e1[stor1]:
        if sub_6375c1e3:
            return ((10^14 * sub_4d21af96 / sub_6375c1e3) + 10^18)
    else:
        if arg1 == 1:
            if ext_call.return_data[0] - sub_185a44e1[stor1] > 0:
                require ext_code.size(sub_c1516ca0Address)
                call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args DAIAddress, ext_call.return_data[0] - sub_185a44e1[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    sub_0a6c9c12 = 1
                sub_4d21af96 = ext_call.return_data[0] - sub_185a44e1[stor1] + sub_4d21af96
                emit 0x1728dcf1: ext_call.return_data[0] - sub_185a44e1[stor1], DAIAddress, 0
        if sub_6375c1e3:
            return (((10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * sub_4d21af96) / sub_6375c1e3) + 10^18)
    ('iszero', ('stor', ('name', 'sub_6375c1e3', 13)))
    revert
}

function sub_4528208b(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifiera Only Staked can call this'
    if not arg3:
        call sub_fdbd648cAddress with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg3 != 1:
            if 2 == arg3:
                require ext_code.size(sub_48a30bf3Address)
                call sub_48a30bf3Address.0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, sub_fdbd648cAddress, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if sub_fdbd648cAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            ')#Controller onlyStaked Modifiera Only Staked can call this'
            require ext_code.size(sub_c1516ca0Address)
            call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_fdbd648cAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_4a31fa00(?) {
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0xba20dda4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller withdrawBurntFunds(: Only owner of the SPRT can withdraw'
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    if sub_f2c532ad[arg1].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller withdrawBurntFunds(: Must send in SPRT to unlock all capital'
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    if sub_f2c532ad[arg1].field_1024 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller withdrawBurntFunds(: No burnt funds balance available for this SPRT'
    if sub_f2c532ad[arg1].field_1024 > sub_f9c2a187:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller withdrawBurntFunds(: Not enough ether in system to pay'
    sub_f2c532ad[arg1].field_1024 = 0
    sub_f9c2a187 -= sub_f2c532ad[arg1].field_1024
    emit 0x7ec5a02d: arg1, msg.sender, sub_f2c532ad[arg1].field_1024
    require ext_code.size(DAIAddress)
    call DAIAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_f2c532ad[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x18cb71fe with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0]:
            revert with 0, '#Controller onERC721Received(): The term-length is not over, use secondary markets to exit early'
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x56fa44a6 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
        if sub_f2c532ad[arg3].field_0:
            revert with 0, 
                        32,
                        162,
                        0x23436f6e74726f6c6c6572206f6e455243373231526563656976656428293a204361706974616c207374696c6c206e6565647320746f2062652072656c656173656420746f207468697320535052542c2063616e206f6e6c79206275726e207768656e20616c6c206361706974616c2069732072656c65617365642e20506c6561736520757365207061727469616c207769746864726177616c206d6574686f6400,
                        mem[ceil32(arg4.length) + 358 len 30]
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x56fa44a6 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
        if sub_f9c2a187 < sub_f2c532ad[arg3].field_1024:
            revert with 0, '#Controller onERC721Received(): Not enough capital set aside in this contract'
        idx = 0
        while 6 > idx:
            sub_f2c532ad[arg3][idx].field_0 = 0
            idx = idx + 1
            continue 
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0xc311ba44 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x42966c68 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_f9c2a187 -= sub_f2c532ad[arg3].field_1024
        emit 0xde6d1320: arg3, address(arg2), sub_f2c532ad[arg3].field_1024
        require ext_code.size(DAIAddress)
        call DAIAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), sub_f2c532ad[arg3].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return Mask(32, 224, sha3('onERC721Received(address,address', ',uint256,bytes)'))
}

function sub_b63db575(?) {
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    if sub_f2c532ad[arg1].field_256:
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x56fa44a6 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x56fa44a6 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
        return sub_f2c532ad[arg1].field_1280 * sub_f2c532ad[arg1].field_0, sub_f2c532ad[arg1].field_1280
    if sub_6375c1e3 <= 0:
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x56fa44a6 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
        return 10000 * sub_f2c532ad[arg1].field_0, 10000
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, DAIAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_6375c1e3
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    if ext_call.return_data[0] > sub_185a44e1[stor1]:
        return ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14 * sub_f2c532ad[arg1].field_0, 
               ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14
    return ((10^14 * sub_4d21af96) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14 * sub_f2c532ad[arg1].field_0, 
           ((10^14 * sub_4d21af96) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14
}

function sub_a1b6570a(?) {
    mem[128 len arg6.length] = arg6[all]
    require ext_code.size(DAIAddress)
    call DAIAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '#Controller purchaseSPRToken: Transfer from failed'
    mem[ceil32(arg6.length) + 160] = arg1
    mem[ceil32(arg6.length) + 192] = arg3
    mem[ceil32(arg6.length) + 128] = 180
    mem[ceil32(arg6.length) + 500] = uint64(arg2), Mask(96, 160, arg1) >> 160 or Mask(96, 160, mem[ceil32(arg6.length) + 500])
    if arg6.length != 65:
        if sub_fdbd648cAddress:
            revert with 0, '#Controller: verifySprtPurchase(): Staked must sign the SPRT purchase order'
    else:
        if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg3, arg4, arg5, msg.sender, Mask(96, 160, arg2) >> 160, mem[ceil32(arg6.length) + 500 len 20])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_fdbd648cAddress != address(signer):
                revert with 0, '#Controller: verifySprtPurchase(): Staked must sign the SPRT purchase order'
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                if sub_fdbd648cAddress:
                    revert with 0, '#Controller: verifySprtPurchase(): Staked must sign the SPRT purchase order'
            else:
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg3, arg4, arg5, msg.sender, Mask(96, 160, arg2) >> 160, mem[ceil32(arg6.length) + 500 len 20])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_fdbd648cAddress != address(signer):
                    revert with 0, '#Controller: verifySprtPurchase(): Staked must sign the SPRT purchase order'
    if arg4 <= block.timestamp:
        revert with 0, 'Controller continuePurchase(): This SPRT purchase order is expired'
    if not sub_127e2e3e[arg1]:
        revert with 0, '#Controller continuePurchase(): Must enter a vetted term length'
    if sub_6375c1e3 <= 0:
        if arg2 < 10000:
            revert with 0, '#Controller continuePurchase(): Cannot invest less than the pricePerShare (must buy at least 1 share)'
        emit 0xabef8c37: arg3
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x416cde44 with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2, arg1 + block.timestamp, sub_127e2e3e[arg1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_f2c532ad[ext_call.return_data[0]].field_512 = arg2
        sub_f2c532ad[ext_call.return_data[0]].field_0 = arg2 / 10000
        require (arg2 / 10000) + sub_6375c1e3 >= sub_6375c1e3
        sub_6375c1e3 += arg2 / 10000
    else:
        require ext_code.size(sub_c1516ca0Address)
        call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
             gas gas_remaining wei
            args this.address, DAIAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_6375c1e3
        if ext_call.return_data[0] > sub_185a44e1[stor1]:
            if arg2 < ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14:
                revert with 0, '#Controller continuePurchase(): Cannot invest less than the pricePerShare (must buy at least 1 share)'
            emit 0xabef8c37: arg3
            require ext_code.size(sub_48a30bf3Address)
            call sub_48a30bf3Address.0x416cde44 with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2, arg1 + block.timestamp, sub_127e2e3e[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14
            sub_4d21af96 = (-10000 * arg2 / ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14) + (((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14 * arg2 / ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14) + sub_4d21af96
            sub_f2c532ad[ext_call.return_data[0]].field_512 = arg2
            sub_f2c532ad[ext_call.return_data[0]].field_0 = arg2 / ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14
            require (arg2 / ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14) + sub_6375c1e3 >= sub_6375c1e3
            sub_6375c1e3 += arg2 / ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14
        else:
            if arg2 < ((10^14 * sub_4d21af96) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14:
                revert with 0, '#Controller continuePurchase(): Cannot invest less than the pricePerShare (must buy at least 1 share)'
            emit 0xabef8c37: arg3
            require ext_code.size(sub_48a30bf3Address)
            call sub_48a30bf3Address.0x416cde44 with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2, arg1 + block.timestamp, sub_127e2e3e[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ((10^14 * sub_4d21af96) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14
            sub_4d21af96 = (-10000 * arg2 / ((10^14 * sub_4d21af96) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14) + (((10^14 * sub_4d21af96) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14 * arg2 / ((10^14 * sub_4d21af96) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14) + sub_4d21af96
            sub_f2c532ad[ext_call.return_data[0]].field_512 = arg2
            sub_f2c532ad[ext_call.return_data[0]].field_0 = arg2 / ((10^14 * sub_4d21af96) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14
            require (arg2 / ((10^14 * sub_4d21af96) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14) + sub_6375c1e3 >= sub_6375c1e3
            sub_6375c1e3 += arg2 / ((10^14 * sub_4d21af96) + (10^14 * arg3) / sub_6375c1e3) + 10^18 / 10^14
    tokenId[address(msg.sender)] = ext_call.return_data[0]
    emit 0x49e73180: ext_call.return_data[0], arg2, arg1 + block.timestamp, arg1, msg.sender
}

function sub_242a4467(?) {
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x18cb71fe with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller triggerSprtWithdrawl(): The term-length is not over, use secondary markets to exit early'
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0xba20dda4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    if sub_fdbd648cAddress != msg.sender:
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller triggerSprtWithdrawl(): Only owner or Staked can trigger a withdrawal'
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x18cb71fe with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0] + (72 * 24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller triggerSprtWithdrawl(): Only owner or Staked can trigger a withdrawal'
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    if sub_f2c532ad[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller triggerSprtWithdrawl(): Already requested a withdrawal'
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller triggerSprtWithdrawl(): No value left in this SPRT'
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    require ext_code.size(sub_48a30bf3Address)
    call sub_48a30bf3Address.0x56fa44a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
    if sub_f2c532ad[arg1].field_256:
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x56fa44a6 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x56fa44a6 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
        emit 0xabef8c37: arg2
        if sub_f2c532ad[arg1].field_1280 * sub_f2c532ad[arg1].field_0 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller triggerSprtWithdrawl(): No value left in this SPRT'
        sub_f2c532ad[arg1].field_768 = sub_f2c532ad[arg1].field_1280 * sub_f2c532ad[arg1].field_0
        sub_f2c532ad[arg1].field_256 = 1
        withdrawalQueue.length++
        withdrawalQueue[withdrawalQueue.length] = arg1
        emit 0xe8aa95e7: arg1, sub_f2c532ad[arg1].field_1280 * sub_f2c532ad[arg1].field_0
    else:
        if sub_6375c1e3 <= 0:
            require ext_code.size(sub_48a30bf3Address)
            call sub_48a30bf3Address.0x56fa44a6 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
            emit 0xabef8c37: arg2
            if 10000 * sub_f2c532ad[arg1].field_0 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            '#Controller triggerSprtWithdrawl(): No value left in this SPRT'
            sub_f2c532ad[arg1].field_768 = 10000 * sub_f2c532ad[arg1].field_0
            sub_f2c532ad[arg1].field_1280 = 10000
            sub_f2c532ad[arg1].field_256 = 1
            withdrawalQueue.length++
            withdrawalQueue[withdrawalQueue.length] = arg1
            emit 0xe8aa95e7: arg1, 10000 * sub_f2c532ad[arg1].field_0
        else:
            require ext_code.size(sub_c1516ca0Address)
            call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
                 gas gas_remaining wei
                args this.address, DAIAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require sub_6375c1e3
            require ext_code.size(sub_48a30bf3Address)
            call sub_48a30bf3Address.0x56fa44a6 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
            emit 0xabef8c37: arg2
            if ext_call.return_data[0] > sub_185a44e1[stor1]:
                if ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14 * sub_f2c532ad[arg1].field_0 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                '#Controller triggerSprtWithdrawl(): No value left in this SPRT'
                sub_f2c532ad[arg1].field_768 = ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14 * sub_f2c532ad[arg1].field_0
                sub_f2c532ad[arg1].field_1280 = ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14
                sub_f2c532ad[arg1].field_256 = 1
                withdrawalQueue.length++
                withdrawalQueue[withdrawalQueue.length] = arg1
                emit 0xe8aa95e7: arg1, ((10^14 * sub_4d21af96) + (10^14 * ext_call.return_data[0]) - (10^14 * sub_185a44e1[stor1]) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14 * sub_f2c532ad[arg1].field_0
            else:
                if ((10^14 * sub_4d21af96) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14 * sub_f2c532ad[arg1].field_0 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                '#Controller triggerSprtWithdrawl(): No value left in this SPRT'
                sub_f2c532ad[arg1].field_768 = ((10^14 * sub_4d21af96) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14 * sub_f2c532ad[arg1].field_0
                sub_f2c532ad[arg1].field_1280 = ((10^14 * sub_4d21af96) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14
                sub_f2c532ad[arg1].field_256 = 1
                withdrawalQueue.length++
                withdrawalQueue[withdrawalQueue.length] = arg1
                emit 0xe8aa95e7: arg1, ((10^14 * sub_4d21af96) + (10^14 * arg2) / sub_6375c1e3) + 10^18 / 10^14 * sub_f2c532ad[arg1].field_0
}



}
