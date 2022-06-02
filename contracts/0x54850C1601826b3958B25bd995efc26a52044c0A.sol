contract main {




// =====================  Runtime code  =====================


#
#  - sub_ee0cdd53(?)
#
address authorityAddress;
address owner;
address sub_6e626e4dAddress;
uint256 totalETH;
uint256 price;
uint32 sub_0b1f9a42;
uint32 sub_f36a0a1a; offset 32
mapping of struct sub_6c58cc0c;
array of struct stor7;
array of uint256 sub_9383f152;
uint8 sub_3326e055; offset 176
uint8 sub_42235612; offset 184
uint16 sub_beeb7021; offset 160
address sub_3aae3f0aAddress;
array of address sub_5c27da9d;
uint256 stor11;

function sub_0b1f9a42(?) {
    return sub_0b1f9a42
}

function sub_3326e055(?) {
    return bool(sub_3326e055)
}

function totalETH() {
    return totalETH
}

function sub_3aae3f0a(?) {
    return sub_3aae3f0aAddress
}

function sub_42235612(?) {
    return bool(sub_42235612)
}

function sub_5c27da9d(?) {
    require arg1 < sub_5c27da9d.length
    return sub_5c27da9d[arg1]
}

function sub_6c58cc0c(?) {
    return bool(sub_6c58cc0c[arg1].field_0), sub_6c58cc0c[arg1].field_0, sub_6c58cc0c[arg1].field_16
}

function sub_6e626e4d(?) {
    return sub_6e626e4dAddress
}

function owner() {
    return owner
}

function sub_9383f152(?) {
    return sub_9383f152[arg1][0 len sub_9383f152[arg1].length]
}

function price() {
    return price
}

function sub_beeb7021(?) {
    return sub_beeb7021
}

function authority() {
    return authorityAddress
}

function sub_f36a0a1a(?) {
    return sub_f36a0a1a
}

function todayDays() {
    require block.timestamp - stor11 <= block.timestamp
    return ((block.timestamp - stor11 / 24 * 3600) + 1)
}

function selectGod(uint16 arg1) {
    require sub_3326e055
    require msg.sender == sub_3aae3f0aAddress
    sub_beeb7021 = arg1
    emit LogGod(sub_3aae3f0aAddress, arg1);
}

function selectElf(uint8 arg1, uint16 arg2) {
    require sub_6c58cc0c[msg.sender].field_0
    sub_6c58cc0c[msg.sender].field_8 = arg1
    sub_6c58cc0c[msg.sender].field_16 = arg2
    sub_6c58cc0c[msg.sender].field_32 = 0
    emit LogElf(msg.sender, arg1 << 248, arg2);
}

function balanceToken() {
    require sub_6e626e4dAddress
    require ext_code.size(sub_6e626e4dAddress)
    call sub_6e626e4dAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setPrice(uint256 arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require not sub_3326e055
    price = arg1
}

function setOwner(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require arg1
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function freezeToken() {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require sub_3326e055
    sub_42235612 = 1
    require ext_code.size(sub_6e626e4dAddress)
    call sub_6e626e4dAddress.stop() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogFreeze()
}

function register(string arg1) {
    require sub_42235612
    require arg1.length <= 128
    sub_9383f152[msg.sender] = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        sub_9383f152[msg.sender][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while sub_9383f152[msg.sender].length + 31 / 32 > idx:
        sub_9383f152[msg.sender][idx] = 0
        idx = idx + 1
        continue 
    require ext_code.size(sub_6e626e4dAddress)
    call sub_6e626e4dAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit LogRegister(msg.sender, Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0]);
}

function withdrawal() {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require eth.balance(this.address) - 10^15 <= eth.balance(this.address)
    if eth.balance(this.address) - 10^15 > 0:
        call msg.sender with:
           value eth.balance(this.address) - 10^15 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit LogFund(msg.sender, eth.balance(this.address) - 10^15, 0, 0);
}

function distillGodOwner() {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require sub_3326e055
    idx = 0
    s = 0
    while idx < sub_5c27da9d.length:
        mem[0] = 10
        if sub_5c27da9d[idx]:
            mem[0] = sub_5c27da9d[idx]
            mem[32] = 7
            if 0 < stor7[stor10[idx]].field_0:
                mem[0] = sub_5c27da9d[idx]
                mem[32] = 7
        idx = idx + 1
        s = sub_5c27da9d[idx]
        continue 
    sub_3aae3f0aAddress = 0
}

function vendueClosed() {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    sub_3326e055 = 1
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require sub_3326e055
    idx = 0
    s = 0
    while idx < sub_5c27da9d.length:
        mem[0] = 10
        if sub_5c27da9d[idx]:
            mem[0] = sub_5c27da9d[idx]
            mem[32] = 7
            if 0 < stor7[stor10[idx]].field_0:
                mem[0] = sub_5c27da9d[idx]
                mem[32] = 7
        idx = idx + 1
        s = sub_5c27da9d[idx]
        continue 
    sub_3aae3f0aAddress = 0
}

function regInitAccount(string arg1, string arg2, string arg3) {
    require stor7[msg.sender].field_0 > 0
    require arg1.length <= 10
    require arg1.length >= 2
    require arg2.length <= 128
    if arg3.length != 16:
        require arg3.length == 32
    stor7[msg.sender].field_256 = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        stor7[msg.sender][s + 1].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while stor7[msg.sender][1].length + 31 / 32 > idx:
        stor7[msg.sender][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    stor7[msg.sender].field_512 = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        stor7[msg.sender][s + 2].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while stor7[msg.sender][2].length + 31 / 32 > idx:
        stor7[msg.sender][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    stor7[msg.sender].field_768 = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        stor7[msg.sender][s + 3].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while stor7[msg.sender][3].length + 31 / 32 > idx:
        stor7[msg.sender][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    emit LogInitAcc(address(msg.sender), Array(len=arg1.length, data=arg1[all]), arg1.length + 160, arg1.length + arg2.length + 192);
}

function initialize(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require not sub_6e626e4dAddress
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(arg1)
    call arg1.0xbf7e214f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    stor11 = block.timestamp
    sub_6e626e4dAddress = arg1
    require ext_code.size(arg1)
    call arg1.mint(uint128 arg1) with:
         gas gas_remaining wei
        args 10^9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_6e626e4dAddress)
    call sub_6e626e4dAddress.push(address arg1, uint128 arg2) with:
         gas gas_remaining wei
        args 0, 800 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6e626e4dAddress)
    call sub_6e626e4dAddress.push(address arg1, uint128 arg2) with:
         gas gas_remaining wei
        args msg.sender, 100 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require not sub_3326e055
    require sub_f36a0a1a > 0
    require msg.value >= price
    require not stor7[msg.sender].field_0
    stor7[msg.sender].field_0 = msg.value
    require totalETH + msg.value >= totalETH
    totalETH += msg.value
    sub_f36a0a1a = uint32(sub_f36a0a1a - 1)
    require block.timestamp - stor11 <= block.timestamp
    if (block.timestamp - stor11 / 24 * 3600) + 1 <= 37:
        sub_6c58cc0c[msg.sender].field_0 = 1
    require sub_6e626e4dAddress
    require ext_code.size(sub_6e626e4dAddress)
    call sub_6e626e4dAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (block.timestamp - stor11 / 24 * 3600) + 1 > 97:
        if ext_call.return_data[0] < 2000:
            if msg.value <= price:
                idx = 0
                s = 0
                while idx < sub_5c27da9d.length:
                    mem[0] = 10
                    if sub_5c27da9d[idx] != msg.sender:
                        idx = idx + 1
                        s = sub_5c27da9d[idx]
                        continue 
                    emit LogFund(msg.sender, msg.value, 1, 0);
                sub_5c27da9d.length++
                sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                emit LogFund(msg.sender, msg.value, 1, 0);
            else:
                require msg.value - price <= msg.value
                require 800 * msg.value - price / 10^18 >= msg.value - price / 10^18
                if 800 * msg.value - price / 10^18 <= 0:
                    idx = 0
                    s = 0
                    while idx < sub_5c27da9d.length:
                        mem[0] = 10
                        if sub_5c27da9d[idx] != msg.sender:
                            idx = idx + 1
                            s = sub_5c27da9d[idx]
                            continue 
                        emit LogFund(msg.sender, msg.value, 1, 0);
                    sub_5c27da9d.length++
                    sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                    emit LogFund(msg.sender, msg.value, 1, 0);
                else:
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    if ext_call.return_data[0] < 800 * msg.value - price / 10^18:
                        idx = 0
                        s = 0
                        while idx < sub_5c27da9d.length:
                            mem[0] = 10
                            if sub_5c27da9d[idx] != msg.sender:
                                idx = idx + 1
                                s = sub_5c27da9d[idx]
                                continue 
                            emit LogFund(msg.sender, msg.value, 1, 0);
                        sub_5c27da9d.length++
                        sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                        emit LogFund(msg.sender, msg.value, 1, 0);
                    else:
                        require 800 * msg.value - price / 10^18 >= 0
                        if 800 * msg.value - price / 10^18 > 0:
                            require ext_code.size(sub_6e626e4dAddress)
                            call sub_6e626e4dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 800 * msg.value - price / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < sub_5c27da9d.length:
                            mem[0] = 10
                            if sub_5c27da9d[idx] != msg.sender:
                                idx = idx + 1
                                s = sub_5c27da9d[idx]
                                continue 
                            emit LogFund(msg.sender, msg.value, 1, 800 * msg.value - price / 10^18);
                        sub_5c27da9d.length++
                        sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                        emit LogFund(msg.sender, msg.value, 1, 800 * msg.value - price / 10^18);
        else:
            if msg.value <= price:
                require ext_code.size(sub_6e626e4dAddress)
                call sub_6e626e4dAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < sub_5c27da9d.length:
                    mem[0] = 10
                    if sub_5c27da9d[idx] != msg.sender:
                        idx = idx + 1
                        s = sub_5c27da9d[idx]
                        continue 
                    emit LogFund(msg.sender, msg.value, 1, 2000);
                sub_5c27da9d.length++
                sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                emit LogFund(msg.sender, msg.value, 1, 2000);
            else:
                require msg.value - price <= msg.value
                require 800 * msg.value - price / 10^18 >= msg.value - price / 10^18
                if 800 * msg.value - price / 10^18 <= 0:
                    require ext_code.size(sub_6e626e4dAddress)
                    call sub_6e626e4dAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 2000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    s = 0
                    while idx < sub_5c27da9d.length:
                        mem[0] = 10
                        if sub_5c27da9d[idx] != msg.sender:
                            idx = idx + 1
                            s = sub_5c27da9d[idx]
                            continue 
                        emit LogFund(msg.sender, msg.value, 1, 2000);
                    sub_5c27da9d.length++
                    sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                    emit LogFund(msg.sender, msg.value, 1, 2000);
                else:
                    require ext_call.return_data[0] - 2000 <= ext_call.return_data[0]
                    if ext_call.return_data[0] - 2000 < 800 * msg.value - price / 10^18:
                        require ext_code.size(sub_6e626e4dAddress)
                        call sub_6e626e4dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 2000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < sub_5c27da9d.length:
                            mem[0] = 10
                            if sub_5c27da9d[idx] != msg.sender:
                                idx = idx + 1
                                s = sub_5c27da9d[idx]
                                continue 
                            emit LogFund(msg.sender, msg.value, 1, 2000);
                        sub_5c27da9d.length++
                        sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                        emit LogFund(msg.sender, msg.value, 1, 2000);
                    else:
                        require (800 * msg.value - price / 10^18) + 2000 >= 2000
                        if (800 * msg.value - price / 10^18) + 2000 > 0:
                            require ext_code.size(sub_6e626e4dAddress)
                            call sub_6e626e4dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (800 * msg.value - price / 10^18) + 2000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < sub_5c27da9d.length:
                            mem[0] = 10
                            if sub_5c27da9d[idx] != msg.sender:
                                idx = idx + 1
                                s = sub_5c27da9d[idx]
                                continue 
                            emit LogFund(msg.sender, msg.value, 1, (800 * msg.value - price / 10^18) + 2000);
                        sub_5c27da9d.length++
                        sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                        emit LogFund(msg.sender, msg.value, 1, (800 * msg.value - price / 10^18) + 2000);
    else:
        if ext_call.return_data[0] < 3500:
            if msg.value <= price:
                idx = 0
                s = 0
                while idx < sub_5c27da9d.length:
                    mem[0] = 10
                    if sub_5c27da9d[idx] != msg.sender:
                        idx = idx + 1
                        s = sub_5c27da9d[idx]
                        continue 
                    emit LogFund(msg.sender, msg.value, 1, 0);
                sub_5c27da9d.length++
                sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                emit LogFund(msg.sender, msg.value, 1, 0);
            else:
                require msg.value - price <= msg.value
                require 800 * msg.value - price / 10^18 >= msg.value - price / 10^18
                if 800 * msg.value - price / 10^18 <= 0:
                    idx = 0
                    s = 0
                    while idx < sub_5c27da9d.length:
                        mem[0] = 10
                        if sub_5c27da9d[idx] != msg.sender:
                            idx = idx + 1
                            s = sub_5c27da9d[idx]
                            continue 
                        emit LogFund(msg.sender, msg.value, 1, 0);
                    sub_5c27da9d.length++
                    sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                    emit LogFund(msg.sender, msg.value, 1, 0);
                else:
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                    if ext_call.return_data[0] < 800 * msg.value - price / 10^18:
                        idx = 0
                        s = 0
                        while idx < sub_5c27da9d.length:
                            mem[0] = 10
                            if sub_5c27da9d[idx] != msg.sender:
                                idx = idx + 1
                                s = sub_5c27da9d[idx]
                                continue 
                            emit LogFund(msg.sender, msg.value, 1, 0);
                        sub_5c27da9d.length++
                        sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                        emit LogFund(msg.sender, msg.value, 1, 0);
                    else:
                        require 800 * msg.value - price / 10^18 >= 0
                        if 800 * msg.value - price / 10^18 > 0:
                            require ext_code.size(sub_6e626e4dAddress)
                            call sub_6e626e4dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 800 * msg.value - price / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < sub_5c27da9d.length:
                            mem[0] = 10
                            if sub_5c27da9d[idx] != msg.sender:
                                idx = idx + 1
                                s = sub_5c27da9d[idx]
                                continue 
                            emit LogFund(msg.sender, msg.value, 1, 800 * msg.value - price / 10^18);
                        sub_5c27da9d.length++
                        sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                        emit LogFund(msg.sender, msg.value, 1, 800 * msg.value - price / 10^18);
        else:
            if msg.value <= price:
                require ext_code.size(sub_6e626e4dAddress)
                call sub_6e626e4dAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 3500
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < sub_5c27da9d.length:
                    mem[0] = 10
                    if sub_5c27da9d[idx] != msg.sender:
                        idx = idx + 1
                        s = sub_5c27da9d[idx]
                        continue 
                    emit LogFund(msg.sender, msg.value, 1, 3500);
                sub_5c27da9d.length++
                sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                emit LogFund(msg.sender, msg.value, 1, 3500);
            else:
                require msg.value - price <= msg.value
                require 800 * msg.value - price / 10^18 >= msg.value - price / 10^18
                if 800 * msg.value - price / 10^18 <= 0:
                    require ext_code.size(sub_6e626e4dAddress)
                    call sub_6e626e4dAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 3500
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    s = 0
                    while idx < sub_5c27da9d.length:
                        mem[0] = 10
                        if sub_5c27da9d[idx] != msg.sender:
                            idx = idx + 1
                            s = sub_5c27da9d[idx]
                            continue 
                        emit LogFund(msg.sender, msg.value, 1, 3500);
                    sub_5c27da9d.length++
                    sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                    emit LogFund(msg.sender, msg.value, 1, 3500);
                else:
                    require ext_call.return_data[0] - 3500 <= ext_call.return_data[0]
                    if ext_call.return_data[0] - 3500 < 800 * msg.value - price / 10^18:
                        require ext_code.size(sub_6e626e4dAddress)
                        call sub_6e626e4dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 3500
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < sub_5c27da9d.length:
                            mem[0] = 10
                            if sub_5c27da9d[idx] != msg.sender:
                                idx = idx + 1
                                s = sub_5c27da9d[idx]
                                continue 
                            emit LogFund(msg.sender, msg.value, 1, 3500);
                        sub_5c27da9d.length++
                        sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                        emit LogFund(msg.sender, msg.value, 1, 3500);
                    else:
                        require (800 * msg.value - price / 10^18) + 3500 >= 3500
                        if (800 * msg.value - price / 10^18) + 3500 > 0:
                            require ext_code.size(sub_6e626e4dAddress)
                            call sub_6e626e4dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (800 * msg.value - price / 10^18) + 3500
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < sub_5c27da9d.length:
                            mem[0] = 10
                            if sub_5c27da9d[idx] != msg.sender:
                                idx = idx + 1
                                s = sub_5c27da9d[idx]
                                continue 
                            emit LogFund(msg.sender, msg.value, 1, (800 * msg.value - price / 10^18) + 3500);
                        sub_5c27da9d.length++
                        sub_5c27da9d[sub_5c27da9d.length] = msg.sender
                        emit LogFund(msg.sender, msg.value, 1, (800 * msg.value - price / 10^18) + 3500);
}



}
