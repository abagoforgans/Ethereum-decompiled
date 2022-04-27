contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[6295 len 7030]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = 0xb80f274a7596d4dc995f032e24cb55b3902399f5
    stor3 = 100000 * 10^18
    stor4 = 1000
    stor5 = 20
    stor6 = 0
    stor7 = 420768 * 24 * 3600
    stor8 = 421488 * 24 * 3600
    stor9 = 421728 * 24 * 3600
    stor0 = msg.sender
    return code.data[337 len 5958]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address multisigVaultAddress;
uint256 stor3;
uint256 rate;
uint256 stor5;
uint256 fiatDeposits;
uint256 startTime;
uint256 endTime;
uint256 bonusTime;
mapping of uint8 stor10;

function fiatDeposits() {
    return fiatDeposits
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function bonusTime() {
    return bonusTime
}

function multisigVault() {
    return multisigVaultAddress
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function retrieveTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args multisigVaultAddress, ext_call.return_data[0]
    require ext_call.success
}

function doubleBonus(address arg1) {
    require msg.sender == owner
    require block.timestamp > endTime
    require block.timestamp < bonusTime
    if not stor10[address(arg1)]:
        stor10[address(arg1)] = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] < 0:
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), ext_call.return_data[0]
                require ext_call.success
        else:
            require ext_call.return_data[0]
            require 2 * ext_call.return_data[0] / ext_call.return_data[0] == 2
            if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), ext_call.return_data[0]
                require ext_call.success
}

function finishMinting() {
    require msg.sender == owner
    require block.timestamp > bonusTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require -stor5 + 100
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args multisigVaultAddress, 0 / -stor5 + 100
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * stor5 / ext_call.return_data[0] == stor5
        require -stor5 + 100
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args multisigVaultAddress, ext_call.return_data[0] * stor5 / -stor5 + 100
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.startTrading() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit MainSaleClosed()
}

function doubleBonusArray(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        require msg.sender == owner
        require block.timestamp > endTime
        require block.timestamp < bonusTime
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        if not stor10[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 10
            stor10[address(mem[(32 * idx) + 128])] = 1
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = address(_24)
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(_24)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] < 0:
                    mem[(32 * arg1.length) + 132] = address(_24)
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(_24), ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    require ext_call.success
            else:
                require ext_call.return_data[0]
                require 2 * ext_call.return_data[0] / ext_call.return_data[0] == 2
                if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                    mem[(32 * arg1.length) + 132] = address(_24)
                    mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(_24), ext_call.return_data[0]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    require ext_call.success
        idx = idx + 1
        continue 
}

function altCreateTokens(address arg1, uint256 arg2) {
    require eth.balance(multisigVaultAddress) + fiatDeposits <= stor3
    require block.timestamp > startTime
    require block.timestamp < endTime
    require msg.sender == owner
    require arg1
    require arg2 > 0
    fiatDeposits += arg2
    if arg2 / 10^17 > 50:
        if not 150 * rate / 100:
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            emit AuthorizedCreate(address(arg1), 0);
        else:
            require 150 * rate / 100
            require 150 * rate / 100 * arg2 / 150 * rate / 100 == arg2
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 150 * rate / 100 * arg2
            require ext_call.success
            emit AuthorizedCreate(address(arg1), 150 * rate / 100 * arg2);
    else:
        if arg2 / 10^17 < 1:
            if not rate:
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                emit AuthorizedCreate(address(arg1), 0);
            else:
                require rate
                require rate * arg2 / rate == arg2
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), rate * arg2
                require ext_call.success
                emit AuthorizedCreate(address(arg1), rate * arg2);
        else:
            if not arg2 / 10^17:
                if not rate:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    emit AuthorizedCreate(address(arg1), 0);
                else:
                    require rate
                    require rate * arg2 / rate == arg2
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), rate * arg2
                    require ext_call.success
                    emit AuthorizedCreate(address(arg1), rate * arg2);
            else:
                require arg2 / 10^17
                require arg2 / 10^17 * rate / arg2 / 10^17 == rate
                if not (arg2 / 10^17 * rate / 100) + rate:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    emit AuthorizedCreate(address(arg1), 0);
                else:
                    require (arg2 / 10^17 * rate / 100) + rate
                    require (arg2 / 10^17 * rate / 100 * arg2) + (rate * arg2) / (arg2 / 10^17 * rate / 100) + rate == arg2
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (arg2 / 10^17 * rate / 100 * arg2) + (rate * arg2)
                    require ext_call.success
                    emit AuthorizedCreate(address(arg1), (arg2 / 10^17 * rate / 100 * arg2) + (rate * arg2));
    stor10[address(arg1)] = 0
}

function _fallback() payable {
    require eth.balance(multisigVaultAddress) + fiatDeposits <= stor3
    require block.timestamp > startTime
    require block.timestamp < endTime
    if msg.value / 10^17 > 50:
        if not 150 * rate / 100:
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            call multisigVaultAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenSold(msg.sender, msg.value, 0);
        else:
            require 150 * rate / 100
            require 150 * rate / 100 * msg.value / 150 * rate / 100 == msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 150 * rate / 100 * msg.value
            require ext_call.success
            call multisigVaultAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenSold(msg.sender, msg.value, 150 * rate / 100 * msg.value);
    else:
        if msg.value / 10^17 < 1:
            if not rate:
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                call multisigVaultAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit TokenSold(msg.sender, msg.value, 0);
            else:
                require rate
                require rate * msg.value / rate == msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, rate * msg.value
                require ext_call.success
                call multisigVaultAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit TokenSold(msg.sender, msg.value, rate * msg.value);
        else:
            if not msg.value / 10^17:
                if not rate:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    call multisigVaultAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenSold(msg.sender, msg.value, 0);
                else:
                    require rate
                    require rate * msg.value / rate == msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, rate * msg.value
                    require ext_call.success
                    call multisigVaultAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenSold(msg.sender, msg.value, rate * msg.value);
            else:
                require msg.value / 10^17
                require msg.value / 10^17 * rate / msg.value / 10^17 == rate
                if not (msg.value / 10^17 * rate / 100) + rate:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    call multisigVaultAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenSold(msg.sender, msg.value, 0);
                else:
                    require (msg.value / 10^17 * rate / 100) + rate
                    require (msg.value / 10^17 * rate / 100 * msg.value) + (rate * msg.value) / (msg.value / 10^17 * rate / 100) + rate == msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value / 10^17 * rate / 100 * msg.value) + (rate * msg.value)
                    require ext_call.success
                    call multisigVaultAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenSold(msg.sender, msg.value, (msg.value / 10^17 * rate / 100 * msg.value) + (rate * msg.value));
    stor10[address(msg.sender)] = 0
}

function createTokens(address arg1) payable {
    require eth.balance(multisigVaultAddress) + fiatDeposits <= stor3
    require block.timestamp > startTime
    require block.timestamp < endTime
    if msg.value / 10^17 > 50:
        if not 150 * rate / 100:
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            call multisigVaultAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenSold(address(arg1), msg.value, 0);
        else:
            require 150 * rate / 100
            require 150 * rate / 100 * msg.value / 150 * rate / 100 == msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 150 * rate / 100 * msg.value
            require ext_call.success
            call multisigVaultAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenSold(address(arg1), msg.value, 150 * rate / 100 * msg.value);
    else:
        if msg.value / 10^17 < 1:
            if not rate:
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                call multisigVaultAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit TokenSold(address(arg1), msg.value, 0);
            else:
                require rate
                require rate * msg.value / rate == msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), rate * msg.value
                require ext_call.success
                call multisigVaultAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit TokenSold(address(arg1), msg.value, rate * msg.value);
        else:
            if not msg.value / 10^17:
                if not rate:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    call multisigVaultAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenSold(address(arg1), msg.value, 0);
                else:
                    require rate
                    require rate * msg.value / rate == msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), rate * msg.value
                    require ext_call.success
                    call multisigVaultAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenSold(address(arg1), msg.value, rate * msg.value);
            else:
                require msg.value / 10^17
                require msg.value / 10^17 * rate / msg.value / 10^17 == rate
                if not (msg.value / 10^17 * rate / 100) + rate:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    call multisigVaultAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenSold(address(arg1), msg.value, 0);
                else:
                    require (msg.value / 10^17 * rate / 100) + rate
                    require (msg.value / 10^17 * rate / 100 * msg.value) + (rate * msg.value) / (msg.value / 10^17 * rate / 100) + rate == msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (msg.value / 10^17 * rate / 100 * msg.value) + (rate * msg.value)
                    require ext_call.success
                    call multisigVaultAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit TokenSold(address(arg1), msg.value, (msg.value / 10^17 * rate / 100 * msg.value) + (rate * msg.value));
    stor10[address(msg.sender)] = 0
}



}
