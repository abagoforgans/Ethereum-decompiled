contract main {




// =====================  Runtime code  =====================


#
#  - sub_7c5bd7f0(?)
#  - sub_7e5d3aa8(?)
#  - sub_9c9c3e1c(?)
#  - sub_c88da5f3(?)
#
address sub_fdbd648cAddress;
uint256 sub_3f44346d;
address sub_c2ad253cAddress;
address sub_355570d8Address;
address WETHAddress;
address DAIAddress;
address sub_b55a0b5bAddress;
address sub_48a30bf3Address;
address treasuryAddress;
address sub_c1516ca0Address;
address sub_84393f67Address;
array of struct sub_f2c532ad;
mapping of uint256 tokenId;
array of struct sub_14c178bc;
array of uint256 sub_af5a7b5b;
mapping of uint256 sub_185a44e1;
array of uint256 withdrawalQueue;
uint256 price;
uint256 sub_4d8456b0;
uint256 sub_6375c1e3;
uint256 sub_d5511ee7;
uint256 sub_99710784;
uint256 sub_38c855de;
uint256 sub_e1d0a62e;

function getTokenId() {
    return tokenId[msg.sender]
}

function sub_14c178bc(?) {
    require arg2 < sub_14c178bc[arg1].field_0
    return sub_14c178bc[arg1][arg2].field_0
}

function sub_185a44e1(?) {
    return sub_185a44e1[arg1]
}

function sub_355570d8(?) {
    return sub_355570d8Address
}

function sub_38c855de(?) {
    return sub_38c855de
}

function sub_3f44346d(?) {
    return sub_3f44346d
}

function sub_48a30bf3(?) {
    return sub_48a30bf3Address
}

function sub_4d8456b0(?) {
    return sub_4d8456b0
}

function treasury() {
    return treasuryAddress
}

function sub_6375c1e3(?) {
    return sub_6375c1e3
}

function sub_6a59c3d4(?) {
    require arg1 < withdrawalQueue.length
    return withdrawalQueue[arg1]
}

function sub_84393f67(?) {
    return sub_84393f67Address
}

function sub_99710784(?) {
    return sub_99710784
}

function price() {
    return price
}

function WETH() {
    return WETHAddress
}

function sub_af5a7b5b(?) {
    require arg2 < sub_af5a7b5b[arg1]
    return sub_af5a7b5b[arg1][arg2]
}

function sub_b55a0b5b(?) {
    return sub_b55a0b5bAddress
}

function sub_c1516ca0(?) {
    return sub_c1516ca0Address
}

function sub_c2ad253c(?) {
    return sub_c2ad253cAddress
}

function withdrawalQueue(uint256 arg1) {
    require arg1 < withdrawalQueue.length
    return withdrawalQueue[arg1]
}

function sub_d5511ee7(?) {
    return sub_d5511ee7
}

function DAI() {
    return DAIAddress
}

function sub_e1d0a62e(?) {
    return sub_e1d0a62e
}

function sub_f2c532ad(?) {
    require arg2 < 5
    return sub_f2c532ad[arg1][arg2].field_0
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
                    ')#Controller onlyStaked Modifier Only Staked can call this'
    require ext_code.size(WETHAddress)
    call WETHAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WETHAddress)
    call WETHAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(sub_fdbd648cAddress)
}

function _fallback() payable {
  stop
}

function setPrice(uint256 arg1) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifier Only Staked can call this'
    price = arg1
}

function setFee(uint256 arg1) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifier Only Staked can call this'
    sub_3f44346d = arg1
}

function setTreasury(address arg1) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifier Only Staked can call this'
    treasuryAddress = arg1
}

function changeWallet(address arg1) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifier Only Staked can call this'
    sub_fdbd648cAddress = arg1
}

function sub_c4663add(?) {
    require ext_code.size(treasuryAddress)
    call treasuryAddress.getCurrentYield() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b18ea2fa(?) {
    require ext_code.size(WETHAddress)
    call WETHAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] - sub_4d8456b0 - sub_e1d0a62e)
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

function sub_24056a30(?) {
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
                    ')#Controller onlyStaked Modifier Only Staked can call this'
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
                    ')#Controller onlyStaked Modifier Only Staked can call this'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_2a74dbac(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifier Only Staked can call this'
    if arg1 <= eth.balance(this.address):
        call sub_fdbd648cAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args (arg1 - eth.balance(this.address))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call sub_fdbd648cAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
}

function sub_6b59e800(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifier Only Staked can call this'
    sub_4d8456b0 = 0
    require ext_code.size(WETHAddress)
    call WETHAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - sub_4d8456b0 < sub_4d8456b0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '#Controller unwrapETH(): Not enough WETH balance'
    require ext_code.size(WETHAddress)
    call WETHAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args sub_4d8456b0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_fdbd648cAddress with:
       value sub_4d8456b0 wei
         gas 2300 * is_zero(value) wei
}

function sub_7ca9e59b(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifier Only Staked can call this'
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
    emit 0x52047a96: arg2, address(arg1), 2
}

function sub_6e65d26f(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0, ')#Controller onlyStaked Modifier Only Staked can call this'
    require ext_code.size(sub_84393f67Address)
    call sub_84393f67Address.fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
         gas gas_remaining wei
        args address(arg1), call.data[36 len 192], call.data[228 len 256], call.data[484], call.data[516 len 96], call.data[612 len 96], call.data[708 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '#Controller lendToDharma(): Invalid Dharma Order'
    require ext_code.size(sub_b55a0b5bAddress)
    call sub_b55a0b5bAddress.0x42842e0e with:
         gas gas_remaining wei
        args this.address, treasuryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x52047a96: call.data[292], address(call.data[164]), 0
}

function sub_e962ce20(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ')#Controller onlyStaked Modifier Only Staked can call this'
    require ext_code.size(arg1)
    call arg1.deposit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 >= sub_af5a7b5b[address(arg1)]:
        sub_af5a7b5b[address(arg1)]++
        sub_af5a7b5b[address(arg1)][sub_af5a7b5b[address(arg1)]] = arg2
        sub_af5a7b5b[address(arg1)]++
        sub_af5a7b5b[address(arg1)][sub_af5a7b5b[address(arg1)]] = arg2
    else:
        require sub_af5a7b5b[address(arg1)] - 1 < sub_af5a7b5b[address(arg1)]
        require sub_af5a7b5b[address(arg1)] - 1 < sub_af5a7b5b[address(arg1)]
        sub_af5a7b5b[address(arg1)][sub_af5a7b5b[address(arg1)]] = arg2
        sub_af5a7b5b[address(arg1)]++
        sub_af5a7b5b[address(arg1)][sub_af5a7b5b[address(arg1)]] += arg2
    sub_14c178bc[address(arg1)].field_0++
    sub_14c178bc[address(arg1)][sub_14c178bc[address(arg1)].field_0].field_0 = ext_call.return_data[0]
    emit 0x52047a96: arg2, WETHAddress, 3
}

function sub_4e476402(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0, ')#Controller onlyStaked Modifier Only Staked can call this'
    if not sub_14c178bc[address(arg1)].field_0:
        mem[(32 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(arg1)
        call arg1.withdraw(uint256[] arg1, uint256[] arg2, address arg3) with:
             gas gas_remaining wei
            args 96, 128, this.address, sub_14c178bc[address(arg1)].field_0, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 292 len (32 * arg2.length) - floor32(arg2.length)]
    else:
        mem[(32 * arg2.length) + 260] = sub_14c178bc[address(arg1)].field_0
        idx = (32 * arg2.length) + 260
        s = 0
        while (32 * arg2.length) + (32 * sub_14c178bc[address(arg1)].field_0) + 260 > idx + 32:
            mem[idx + 32] = sub_14c178bc[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * arg2.length) + (32 * sub_14c178bc[address(arg1)].field_0) + 260] = arg2.length
        mem[(32 * arg2.length) + (32 * sub_14c178bc[address(arg1)].field_0) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(arg1)
        call arg1.withdraw(uint256[] arg1, uint256[] arg2, address arg3) with:
             gas gas_remaining wei
            args Array(len=sub_14c178bc[address(arg1)].field_0, data=mem[(32 * arg2.length) + 260 len (32 * sub_14c178bc[address(arg1)].field_0) + 32], call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * sub_14c178bc[address(arg1)].field_0) + floor32(arg2.length) + 292 len (32 * arg2.length) - floor32(arg2.length)]), (32 * sub_14c178bc[address(arg1)].field_0) + 128, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_0981d886(?) {
    if sub_6375c1e3 <= 0:
        return 0
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    call treasuryAddress.getCurrentYield() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_185a44e1[stor4]:
        if sub_6375c1e3:
            return ((10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3)
    else:
        if ext_call.return_data[0] - sub_185a44e1[stor4] <= 0:
            if sub_6375c1e3:
                return ((2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3)
        else:
            require ext_code.size(sub_c1516ca0Address)
            call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args WETHAddress, ext_call.return_data[0] - sub_185a44e1[stor4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            '#Controller withdrawYieldFromCompound(): Withdrawing from Compound failed'
            if sub_3f44346d:
                sub_4d8456b0 += ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d
                require ext_code.size(WETHAddress)
                call WETHAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args this.address, treasuryAddress, ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x1728dcf1: ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d), WETHAddress, 2
                if sub_6375c1e3:
                    return ((2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3)
    revert
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
    if sub_f2c532ad[arg1].field_512 <= 0:
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
    if sub_f2c532ad[arg1].field_1024 > eth.balance(this.address) - sub_38c855de:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller withdrawBurntFunds(: Not enough ether in system to pay'
    sub_f2c532ad[arg1].field_1024 = 0
    emit 0x7ec5a02d: arg1, msg.sender, sub_f2c532ad[arg1].field_1024
    call msg.sender with:
       value sub_f2c532ad[arg1].field_1024 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        call sub_48a30bf3Address.0xba20dda4 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg2:
            revert with 0, '#Controller onERC721Received(): Only the owner of the SPRT can withdraw'
        if eth.balance(this.address) - sub_38c855de <= 0:
            revert with 0, '#Controller onERC721Received(): No capital set aside in this contract'
        require ext_code.size(sub_48a30bf3Address)
        call sub_48a30bf3Address.0x56fa44a6 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 's#Controller existingSPRT Modifi:r: This is not a valid SPRT'
        if sub_f2c532ad[arg3].field_512:
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
        sub_f2c532ad[arg3].field_0 = 0
        sub_f2c532ad[arg3].field_256 = 0
        sub_f2c532ad[arg3].field_512 = 0
        sub_f2c532ad[arg3].field_768 = 0
        sub_f2c532ad[arg3].field_1024 = 0
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
        call arg2 with:
           value sub_f2c532ad[arg3].field_1024 wei
             gas 2300 * is_zero(value) wei
        emit 0xde6d1320: arg3, address(arg2), sub_f2c532ad[arg3].field_1024
    return Mask(32, 224, sha3('onERC721Received(address,address', ',uint256,bytes)'))
}

function sub_9830cff8(?) {
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
        else:
            return 0
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    call treasuryAddress.getCurrentYield() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_185a44e1[stor4]:
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
        if (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= 0:
            return 0
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
        if (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= sub_f2c532ad[arg1].field_256:
            return 0
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
        return (((10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256)
    if ext_call.return_data[0] - sub_185a44e1[stor4] > 0:
        require ext_code.size(sub_c1516ca0Address)
        call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args WETHAddress, ext_call.return_data[0] - sub_185a44e1[stor4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller withdrawYieldFromCompound(): Withdrawing from Compound failed'
        require sub_3f44346d
        sub_4d8456b0 += ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d
        require ext_code.size(WETHAddress)
        call WETHAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, treasuryAddress, ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x1728dcf1: ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d), WETHAddress, 2
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
    if (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= 0:
        return 0
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
    if (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= sub_f2c532ad[arg1].field_256:
        return 0
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
    return (((2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256)
}

function sub_421517f0(?) {
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
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    call treasuryAddress.getCurrentYield() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_185a44e1[stor4]:
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
        if (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= 0:
            return sub_f2c532ad[arg1].field_512
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
        if (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= sub_f2c532ad[arg1].field_256:
            return sub_f2c532ad[arg1].field_512
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
        return (sub_f2c532ad[arg1].field_512 + ((10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256)
    if ext_call.return_data[0] - sub_185a44e1[stor4] > 0:
        require ext_code.size(sub_c1516ca0Address)
        call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args WETHAddress, ext_call.return_data[0] - sub_185a44e1[stor4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller withdrawYieldFromCompound(): Withdrawing from Compound failed'
        require sub_3f44346d
        sub_4d8456b0 += ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d
        require ext_code.size(WETHAddress)
        call WETHAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, treasuryAddress, ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x1728dcf1: ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d), WETHAddress, 2
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
    if (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= 0:
        return sub_f2c532ad[arg1].field_512
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
    if (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= sub_f2c532ad[arg1].field_256:
        return sub_f2c532ad[arg1].field_512
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
    return (sub_f2c532ad[arg1].field_512 + ((2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256)
}

function sub_ffc563b8(?) {
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
                    '#Controller withdrawYield(): Only owner of the SPRT can withdraw'
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
        if 0 < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller withdrawPartialYield(): Not enough yield in this token'
    else:
        require ext_code.size(sub_c1516ca0Address)
        call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
             gas gas_remaining wei
            args this.address, WETHAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(treasuryAddress)
        call treasuryAddress.getCurrentYield() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= sub_185a44e1[stor4]:
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
            if (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= 0:
                if 0 < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                '#Controller withdrawPartialYield(): Not enough yield in this token'
            else:
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
                if (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= sub_f2c532ad[arg1].field_256:
                    if 0 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    '#Controller withdrawPartialYield(): Not enough yield in this token'
                else:
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
                    if ((10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    '#Controller withdrawPartialYield(): Not enough yield in this token'
        else:
            if ext_call.return_data[0] - sub_185a44e1[stor4] > 0:
                require ext_code.size(sub_c1516ca0Address)
                call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args WETHAddress, ext_call.return_data[0] - sub_185a44e1[stor4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                '#Controller withdrawYieldFromCompound(): Withdrawing from Compound failed'
                require sub_3f44346d
                sub_4d8456b0 += ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d
                require ext_code.size(WETHAddress)
                call WETHAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args this.address, treasuryAddress, ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x1728dcf1: ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d), WETHAddress, 2
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
            if (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= 0:
                if 0 < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                '#Controller withdrawPartialYield(): Not enough yield in this token'
            else:
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
                if (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= sub_f2c532ad[arg1].field_256:
                    if 0 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    '#Controller withdrawPartialYield(): Not enough yield in this token'
                else:
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
                    if ((2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    '#Controller withdrawPartialYield(): Not enough yield in this token'
    sub_f2c532ad[arg1].field_256 += arg2
    sub_d5511ee7 += arg2
    require ext_code.size(treasuryAddress)
    call treasuryAddress.0x63a78101 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    emit 0xb9888788: arg1, msg.sender, arg2
}

function sub_60163da3(?) {
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
                    '#Controller withdrawYield(): Only owner of the SPRT can withdraw'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller withdrawYield(): No yield available in this SPRT'
    require ext_code.size(sub_c1516ca0Address)
    call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(treasuryAddress)
    call treasuryAddress.getCurrentYield() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_185a44e1[stor4]:
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
        if (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller withdrawYield(): No yield available in this SPRT'
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
        if (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= sub_f2c532ad[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller withdrawYield(): No yield available in this SPRT'
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
        if ((10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller withdrawYield(): No yield available in this SPRT'
        sub_f2c532ad[arg1].field_256 = (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14
        sub_d5511ee7 = ((10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256 + sub_d5511ee7
        require ext_code.size(treasuryAddress)
        call treasuryAddress.0x63a78101 with:
             gas gas_remaining wei
            args (((10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value ((10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        emit 0xb9888788: arg1, msg.sender, ((10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256
    else:
        if ext_call.return_data[0] - sub_185a44e1[stor4] > 0:
            require ext_code.size(sub_c1516ca0Address)
            call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args WETHAddress, ext_call.return_data[0] - sub_185a44e1[stor4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            '#Controller withdrawYieldFromCompound(): Withdrawing from Compound failed'
            require sub_3f44346d
            sub_4d8456b0 += ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d
            require ext_code.size(WETHAddress)
            call WETHAddress.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, treasuryAddress, ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x1728dcf1: ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d), WETHAddress, 2
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
        if (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller withdrawYield(): No yield available in this SPRT'
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
        if (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14 <= sub_f2c532ad[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller withdrawYield(): No yield available in this SPRT'
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
        if ((2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#Controller withdrawYield(): No yield available in this SPRT'
        sub_f2c532ad[arg1].field_256 = (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14
        sub_d5511ee7 = ((2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256 + sub_d5511ee7
        require ext_code.size(treasuryAddress)
        call treasuryAddress.0x63a78101 with:
             gas gas_remaining wei
            args (((2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value ((2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        emit 0xb9888788: arg1, msg.sender, ((2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 * sub_f2c532ad[arg1].field_0 / 10^14) - sub_f2c532ad[arg1].field_256
}

function sub_a4a7ae3a(?) {
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
                    '#Controller tryToWithdrawCapital(): Only owner can request withdrawal'
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
    if sub_f2c532ad[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller tryToWithdrawCapital(): Only allowed to request withdrawal once'
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
    if sub_f2c532ad[arg1].field_512 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller tryToWithdrawCapital(): No capital available in this SPRT'
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
    require ext_code.size(WETHAddress)
    call WETHAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - sub_4d8456b0 - sub_e1d0a62e <= 0:
        sub_f2c532ad[arg1].field_768 = 1
        withdrawalQueue.length++
        withdrawalQueue[withdrawalQueue.length] = arg1
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
        emit 0xe8aa95e7: arg1, sub_f2c532ad[arg1].field_512
    else:
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
        require sub_f2c532ad[arg1].field_512
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
        if ext_call.return_data[0] - sub_4d8456b0 - sub_e1d0a62e >= sub_f2c532ad[arg1].field_512:
            if sub_6375c1e3 <= 0:
                sub_d5511ee7 -= sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14
                sub_6375c1e3 -= 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
                sub_f2c532ad[arg1].field_0 -= 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
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
                sub_f2c532ad[arg1].field_256 -= sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14
                sub_f2c532ad[arg1].field_512 = 0
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
                sub_f2c532ad[arg1].field_1024 = sub_f2c532ad[arg1].field_1024 - (sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14) + sub_f2c532ad[arg1].field_512
                if -sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14 > 0:
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.0x63a78101 with:
                         gas gas_remaining wei
                        args -(sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(sub_c1516ca0Address)
                call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args this.address, WETHAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(treasuryAddress)
                call treasuryAddress.getCurrentYield() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_185a44e1[stor4]:
                    require sub_6375c1e3
                    sub_d5511ee7 -= sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14
                    sub_6375c1e3 -= 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
                    sub_f2c532ad[arg1].field_0 -= 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
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
                    sub_f2c532ad[arg1].field_256 -= sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14
                    sub_f2c532ad[arg1].field_512 = 0
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
                    sub_f2c532ad[arg1].field_1024 = sub_f2c532ad[arg1].field_1024 + (10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14) + sub_f2c532ad[arg1].field_512
                    if (10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14) > 0:
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.0x63a78101 with:
                             gas gas_remaining wei
                            args ((10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if ext_call.return_data[0] - sub_185a44e1[stor4] > 0:
                        require ext_code.size(sub_c1516ca0Address)
                        call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args WETHAddress, ext_call.return_data[0] - sub_185a44e1[stor4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        '#Controller withdrawYieldFromCompound(): Withdrawing from Compound failed'
                        require sub_3f44346d
                        sub_4d8456b0 += ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d
                        require ext_code.size(WETHAddress)
                        call WETHAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, treasuryAddress, ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0x1728dcf1: ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d), WETHAddress, 2
                    require sub_6375c1e3
                    sub_d5511ee7 -= sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14
                    sub_6375c1e3 -= 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
                    sub_f2c532ad[arg1].field_0 -= 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
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
                    sub_f2c532ad[arg1].field_256 -= sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14
                    sub_f2c532ad[arg1].field_512 = 0
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
                    sub_f2c532ad[arg1].field_1024 = sub_f2c532ad[arg1].field_1024 + (10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14) + sub_f2c532ad[arg1].field_512
                    if (10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14) > 0:
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.0x63a78101 with:
                             gas gas_remaining wei
                            args ((10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * 10^14 * sub_f2c532ad[arg1].field_512 / sub_f2c532ad[arg1].field_512 / 10^14))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if sub_f2c532ad[arg1].field_512 > eth.balance(this.address):
                require ext_code.size(WETHAddress)
                call WETHAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] - sub_4d8456b0 < sub_f2c532ad[arg1].field_512 - eth.balance(this.address):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '#Controller unwrapETH(): Not enough WETH balance'
                require ext_code.size(WETHAddress)
                call WETHAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (sub_f2c532ad[arg1].field_512 - eth.balance(this.address))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if sub_6375c1e3 <= 0:
                sub_d5511ee7 -= sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14
                sub_6375c1e3 -= (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
                sub_f2c532ad[arg1].field_0 -= (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
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
                sub_f2c532ad[arg1].field_256 -= sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14
                sub_f2c532ad[arg1].field_512 = sub_f2c532ad[arg1].field_512 - ext_call.return_data[0] + sub_4d8456b0 + sub_e1d0a62e
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
                sub_f2c532ad[arg1].field_1024 = sub_f2c532ad[arg1].field_1024 - (sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14) + ext_call.return_data[0] - sub_4d8456b0 - sub_e1d0a62e
                if -sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14 > 0:
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.0x63a78101 with:
                         gas gas_remaining wei
                        args -(sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(sub_c1516ca0Address)
                call sub_c1516ca0Address.getSupplyBalance(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args this.address, WETHAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(treasuryAddress)
                call treasuryAddress.getCurrentYield() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_185a44e1[stor4]:
                    require sub_6375c1e3
                    sub_d5511ee7 -= sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14
                    sub_6375c1e3 -= (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
                    sub_f2c532ad[arg1].field_0 -= (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
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
                    sub_f2c532ad[arg1].field_256 -= sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14
                    sub_f2c532ad[arg1].field_512 = sub_f2c532ad[arg1].field_512 - ext_call.return_data[0] + sub_4d8456b0 + sub_e1d0a62e
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
                    sub_f2c532ad[arg1].field_1024 = sub_f2c532ad[arg1].field_1024 + ((10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14) + ext_call.return_data[0] - sub_4d8456b0 - sub_e1d0a62e
                    if ((10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14) > 0:
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.0x63a78101 with:
                             gas gas_remaining wei
                            args (((10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if ext_call.return_data[0] - sub_185a44e1[stor4] > 0:
                        require ext_code.size(sub_c1516ca0Address)
                        call sub_c1516ca0Address.withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args WETHAddress, ext_call.return_data[0] - sub_185a44e1[stor4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        '#Controller withdrawYieldFromCompound(): Withdrawing from Compound failed'
                        require sub_3f44346d
                        sub_4d8456b0 += ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d
                        require ext_code.size(WETHAddress)
                        call WETHAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, treasuryAddress, ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0x1728dcf1: ext_call.return_data[0] - sub_185a44e1[stor4] - (ext_call.return_data[0] - sub_185a44e1[stor4] / sub_3f44346d), WETHAddress, 2
                    require sub_6375c1e3
                    sub_d5511ee7 -= sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14
                    sub_6375c1e3 -= (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
                    sub_f2c532ad[arg1].field_0 -= (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14
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
                    sub_f2c532ad[arg1].field_256 -= sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14
                    sub_f2c532ad[arg1].field_512 = sub_f2c532ad[arg1].field_512 - ext_call.return_data[0] + sub_4d8456b0 + sub_e1d0a62e
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
                    sub_f2c532ad[arg1].field_1024 = sub_f2c532ad[arg1].field_1024 + ((10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14) + ext_call.return_data[0] - sub_4d8456b0 - sub_e1d0a62e
                    if ((10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14) > 0:
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.0x63a78101 with:
                             gas gas_remaining wei
                            args (((10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 * sub_f2c532ad[arg1].field_0 / 10^14 * (2 * 10^14 * ext_call.return_data[0]) + (10^14 * sub_d5511ee7) - (10^14 * sub_185a44e1[stor4]) / sub_6375c1e3 / 10^14) - (sub_f2c532ad[arg1].field_256 * (10^14 * ext_call.return_data[0]) - (10^14 * sub_4d8456b0) - (10^14 * sub_e1d0a62e) / sub_f2c532ad[arg1].field_512 / 10^14))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] - sub_4d8456b0 - sub_e1d0a62e > eth.balance(this.address):
                require ext_code.size(WETHAddress)
                call WETHAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - sub_e1d0a62e - eth.balance(this.address):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '#Controller unwrapETH(): Not enough WETH balance'
                require ext_code.size(WETHAddress)
                call WETHAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - sub_4d8456b0 - sub_e1d0a62e - eth.balance(this.address))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            sub_f2c532ad[arg1].field_768 = 1
            withdrawalQueue.length++
            withdrawalQueue[withdrawalQueue.length] = arg1
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
            emit 0xe8aa95e7: arg1, sub_f2c532ad[arg1].field_512
}



}
