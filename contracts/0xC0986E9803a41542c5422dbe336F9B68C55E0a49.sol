contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;
mapping of struct items;
mapping of uint256 sub_f97f5ba1;
array of uint256 sub_1c19eb23;
uint32 stor5;
address sub_ac5e7f73Address;
uint256 stor5;
uint256 fee;
address registryAddress;
address tubAddress;

function sub_1c19eb23(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1c19eb23.length
    return sub_1c19eb23[arg1]
}

function tub() {
    return tubAddress
}

function sub_3661ab5c(?) {
    require calldata.size - 4 >= 32
    return bool(items[arg1].field_768)
}

function items(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return items[arg1].field_0, items[arg1].field_256, items[arg1].field_512, bool(items[arg1].field_768)
}

function registry() {
    return registryAddress
}

function owner() {
    return owner
}

function sub_ac5e7f73(?) {
    return address(sub_ac5e7f73Address)
}

function authority() {
    return authorityAddress
}

function fee() {
    return fee
}

function sub_f97f5ba1(?) {
    require calldata.size - 4 >= 32
    return sub_f97f5ba1[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function withdraw() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bbcbc2e7(?) {
    if sub_1c19eb23.length:
        mem[128 len 32 * sub_1c19eb23.length] = code.data[10499 len 32 * sub_1c19eb23.length]
    idx = 0
    s = 0
    while idx < sub_1c19eb23.length:
        mem[0] = 4
        mem[(32 * sub_1c19eb23.length) + 132] = sub_1c19eb23[idx]
        require ext_code.size(tubAddress)
        staticcall tubAddress.lad(bytes32 arg1) with:
                gas gas_remaining wei
               args sub_1c19eb23[idx]
        mem[(32 * sub_1c19eb23.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            idx = idx + 1
            s = s
            continue 
        require idx < sub_1c19eb23.length
        mem[0] = 4
        require s < sub_1c19eb23.length
        mem[(32 * s) + 128] = sub_1c19eb23[idx]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * sub_1c19eb23.length) + 192 len floor32(sub_1c19eb23.length)] = mem[128 len floor32(sub_1c19eb23.length)]
    return Array(len=sub_1c19eb23.length, data=mem[128 len floor32(sub_1c19eb23.length)], mem[(32 * sub_1c19eb23.length) + floor32(sub_1c19eb23.length) + 192 len (32 * sub_1c19eb23.length) - floor32(sub_1c19eb23.length)]), 
}

function cancel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tubAddress)
    staticcall tubAddress.lad(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    if not items[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x656f6e6c792063616e63656c2063647073207468617420617265206f6e2073616c,
                    mem[197 len 31]
    items[arg1].field_0 = 0
    items[arg1].field_256 = 0
    items[arg1].field_512 = 0
    items[arg1].field_768 = 0
    require sub_1c19eb23.length - 1 < sub_1c19eb23.length
    require sub_f97f5ba1[arg1] < sub_1c19eb23.length
    sub_1c19eb23[stor3[arg1]] = sub_1c19eb23[sub_1c19eb23.length]
    sub_f97f5ba1[arg1] = 0
    require sub_1c19eb23.length - 1 < sub_1c19eb23.length
    sub_f97f5ba1[stor4[stor4.length]] = sub_f97f5ba1[arg1]
    sub_1c19eb23.length--
    if sub_1c19eb23.length > sub_1c19eb23.length - 1:
        idx = sub_1c19eb23.length - 1
        while sub_1c19eb23.length > idx:
            sub_1c19eb23[idx] = 0
            idx = idx + 1
            continue 
}

function sub_4db4f981(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(tubAddress)
    staticcall tubAddress.lad(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    if arg2 >= 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7063616e27742068617665203130302520646973636f756e7420616e64206d757374206265206f7665722031,
                    mem[208 len 20]
    if arg2 <= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7063616e27742068617665203130302520646973636f756e7420616e64206d757374206265206f7665722031,
                    mem[208 len 20]
    require ext_code.size(tubAddress)
    call tubAddress.ink(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x706d757374206861766520636f6c6c61746572616c20616e64206465627420746f20707574206f6e2073616c,
                    mem[208 len 20]
    require ext_code.size(tubAddress)
    call tubAddress.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x706d757374206861766520636f6c6c61746572616c20616e64206465627420746f20707574206f6e2073616c,
                    mem[208 len 20]
    if items[arg1].field_768:
        revert with 0, 'can't put a cdp on sale twice'
    require ext_code.size(msg.sender)
    call msg.sender.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    items[arg1].field_0 = address(ext_call.return_data[0])
    items[arg1].field_256 = msg.sender
    items[arg1].field_512 = arg2
    items[arg1].field_768 = 1
    sub_1c19eb23.length++
    sub_1c19eb23[sub_1c19eb23.length] = arg1
    sub_f97f5ba1[arg1] = sub_1c19eb23.length - 1
    emit 0xa23e1b9c: address(ext_call.return_data[0]), arg2, arg1, msg.sender
}

function sub_a06c9be2(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(tubAddress)
    call tubAddress.ink(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.per() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(tubAddress)
        call tubAddress.tab(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tubAddress)
        call tubAddress.rap(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tubAddress)
        call tubAddress.tab(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 == ext_call.return_data[0]
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 1000000000 * 10^18 * ext_call.return_data[0]
        require ext_call.return_data[0]
        if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            require ext_code.size(tubAddress)
            call tubAddress.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] / 2 >= 0
            require ext_call.return_data[0]
            require ext_code.size(tubAddress)
            call tubAddress.tab(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tubAddress)
            call tubAddress.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
            require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 10^18 * ext_call.return_data[0]
            require ext_call.return_data[0]
            require (ext_call.return_data[0] / 2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) >= ext_call.return_data[0] / 2 / ext_call.return_data[0]
            if items[arg1].field_512 <= fee:
                require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                require -items[arg1].field_512 + 10000 <= 10000
                if not -items[arg1].field_512 + 10000:
                    require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                    if not fee:
                        return 0
                    require fee
                    require (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    return 0, 
                           (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
                require -items[arg1].field_512 + 10000
                require (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + 10000 == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                if not fee:
                    return (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                           0
                require fee
                require (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                return (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                       (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
            require items[arg1].field_512 - fee <= items[arg1].field_512
            require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
            require -items[arg1].field_512 + fee + 10000 <= 10000
            if not -items[arg1].field_512 + fee + 10000:
                require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                if not fee:
                    return 0
                require fee
                require (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                return 0, 
                       (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
            require -items[arg1].field_512 + fee + 10000
            require (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + fee + 10000 == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
            if not fee:
                return (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                       0
            require fee
            require (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            return (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                   (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        require ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] == ext_call.return_data[0]
        require (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        require ext_code.size(tubAddress)
        call tubAddress.pip() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).read() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 == (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        require (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) >= 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        require ext_call.return_data[0]
        require ext_code.size(tubAddress)
        call tubAddress.tab(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tubAddress)
        call tubAddress.pip() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).read() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
        require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 10^18 * ext_call.return_data[0]
        require ext_call.return_data[0]
        require ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) >= (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if items[arg1].field_512 <= fee:
            require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
            require -items[arg1].field_512 + 10000 <= 10000
            if not -items[arg1].field_512 + 10000:
                require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                if not fee:
                    return 0
                require fee
                require (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                return 0, 
                       (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
            require -items[arg1].field_512 + 10000
            require (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + 10000 == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
            if not fee:
                return (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                       0
            require fee
            require (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            return (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                   (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
        require items[arg1].field_512 - fee <= items[arg1].field_512
        require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
        require -items[arg1].field_512 + fee + 10000 <= 10000
        if not -items[arg1].field_512 + fee + 10000:
            require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
            if not fee:
                return 0
            require fee
            require (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            return 0, 
                   (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
        require -items[arg1].field_512 + fee + 10000
        require (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + fee + 10000 == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
        if not fee:
            return (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                   0
        require fee
        require (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        return (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
               (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
    require ext_call.return_data[0]
    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
    require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.rap(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 == ext_call.return_data[0]
    require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 1000000000 * 10^18 * ext_call.return_data[0]
    require ext_call.return_data[0]
    if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
        require ext_code.size(tubAddress)
        call tubAddress.pip() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).read() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] / 2 >= 0
        require ext_call.return_data[0]
        require ext_code.size(tubAddress)
        call tubAddress.tab(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tubAddress)
        call tubAddress.pip() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).read() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
        require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 10^18 * ext_call.return_data[0]
        require ext_call.return_data[0]
        require (ext_call.return_data[0] / 2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) >= ext_call.return_data[0] / 2 / ext_call.return_data[0]
        if items[arg1].field_512 <= fee:
            require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require -items[arg1].field_512 + 10000 <= 10000
            if not -items[arg1].field_512 + 10000:
                require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                if not fee:
                    return 0
                require fee
                require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                return 0, 
                       ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
            require -items[arg1].field_512 + 10000
            require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + 10000 == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            if not fee:
                return (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                       0
            require fee
            require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            return (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                   ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
        require items[arg1].field_512 - fee <= items[arg1].field_512
        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        require -items[arg1].field_512 + fee + 10000 <= 10000
        if not -items[arg1].field_512 + fee + 10000:
            require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            if not fee:
                return 0
            require fee
            require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            return 0, 
                   ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
        require -items[arg1].field_512 + fee + 10000
        require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + fee + 10000 == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        if not fee:
            return (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                   0
        require fee
        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        return (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
               ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
    require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    require ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] == ext_call.return_data[0]
    require (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.pip() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).read() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 == (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    require (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) >= 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    require ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.pip() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).read() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
    require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 10^18 * ext_call.return_data[0]
    require ext_call.return_data[0]
    require ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) >= (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    if items[arg1].field_512 <= fee:
        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        require -items[arg1].field_512 + 10000 <= 10000
        if not -items[arg1].field_512 + 10000:
            require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            if not fee:
                return 0
            require fee
            require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            return 0, 
                   ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
        require -items[arg1].field_512 + 10000
        require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + 10000 == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        if not fee:
            return (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
                   0
        require fee
        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        return (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
               ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
    require items[arg1].field_512 - fee <= items[arg1].field_512
    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    require -items[arg1].field_512 + fee + 10000 <= 10000
    if not -items[arg1].field_512 + fee + 10000:
        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        if not fee:
            return 0
        require fee
        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        return 0, 
               ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
    require -items[arg1].field_512 + fee + 10000
    require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + fee + 10000 == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    if not fee:
        return (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
               0
    require fee
    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    return (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000, 
           ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000
}

function buy(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if bool(items[arg1].field_768) != 1:
        revert with 0, 'Check if cup is on sale'
    require ext_code.size(tubAddress)
    staticcall tubAddress.lad(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if items[arg1].field_256 != ext_call.return_data[12 len 20]:
        revert with 0, 'The owner must stay the same'
    require ext_code.size(tubAddress)
    call tubAddress.ink(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.per() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(tubAddress)
        call tubAddress.tab(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tubAddress)
        call tubAddress.rap(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tubAddress)
        call tubAddress.tab(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 == ext_call.return_data[0]
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 1000000000 * 10^18 * ext_call.return_data[0]
        require ext_call.return_data[0]
        if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            require ext_code.size(tubAddress)
            call tubAddress.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] / 2 >= 0
            require ext_call.return_data[0]
            require ext_code.size(tubAddress)
            call tubAddress.tab(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tubAddress)
            call tubAddress.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
            require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 10^18 * ext_call.return_data[0]
            require ext_call.return_data[0]
            require (ext_call.return_data[0] / 2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) >= ext_call.return_data[0] / 2 / ext_call.return_data[0]
            if items[arg1].field_512 <= fee:
                require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                require -items[arg1].field_512 + 10000 <= 10000
                if not -items[arg1].field_512 + 10000:
                    require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                    if not fee:
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call items[arg1].field_0 with:
                             gas 2300 wei
                    else:
                        require fee
                        require (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require -(-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 <= 0
                        call items[arg1].field_0 with:
                           value -(-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value <= msg.value
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require -items[arg1].field_512 + 10000
                    require (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + 10000 == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                    if not fee:
                        if msg.value < (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 <= (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require fee
                        require (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ((-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - ((-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) <= (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value ((-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - ((-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) <= msg.value
                    call msg.sender with:
                       value msg.value - ((-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) wei
                         gas 2300 * is_zero(value) wei
            else:
                require items[arg1].field_512 - fee <= items[arg1].field_512
                require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                require -items[arg1].field_512 + fee + 10000 <= 10000
                if not -items[arg1].field_512 + fee + 10000:
                    require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                    if not fee:
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call items[arg1].field_0 with:
                             gas 2300 wei
                    else:
                        require fee
                        require (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require -(-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 <= 0
                        call items[arg1].field_0 with:
                           value -(-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value <= msg.value
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require -items[arg1].field_512 + fee + 10000
                    require (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + fee + 10000 == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    require -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                    if not fee:
                        if msg.value < (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 <= (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require fee
                        require (-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -(ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ((-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - ((-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) <= (-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value ((-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - ((-1 * ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) <= msg.value
                    call msg.sender with:
                       value msg.value - ((-10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) wei
                         gas 2300 * is_zero(value) wei
        else:
            require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            require ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] == ext_call.return_data[0]
            require (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            require ext_code.size(tubAddress)
            call tubAddress.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 == (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) >= 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require ext_call.return_data[0]
            require ext_code.size(tubAddress)
            call tubAddress.tab(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tubAddress)
            call tubAddress.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
            require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 10^18 * ext_call.return_data[0]
            require ext_call.return_data[0]
            require ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) >= (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if items[arg1].field_512 <= fee:
                require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                require -items[arg1].field_512 + 10000 <= 10000
                if not -items[arg1].field_512 + 10000:
                    require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                    if not fee:
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call items[arg1].field_0 with:
                             gas 2300 wei
                    else:
                        require fee
                        require (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require -(-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 <= 0
                        call items[arg1].field_0 with:
                           value -(-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value <= msg.value
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require -items[arg1].field_512 + 10000
                    require (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + 10000 == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                    if not fee:
                        if msg.value < (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 <= (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require fee
                        require (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ((-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - ((-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) <= (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value ((-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - ((-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) <= msg.value
                    call msg.sender with:
                       value msg.value - ((-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) wei
                         gas 2300 * is_zero(value) wei
            else:
                require items[arg1].field_512 - fee <= items[arg1].field_512
                require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                require -items[arg1].field_512 + fee + 10000 <= 10000
                if not -items[arg1].field_512 + fee + 10000:
                    require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                    if not fee:
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call items[arg1].field_0 with:
                             gas 2300 wei
                    else:
                        require fee
                        require (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require -(-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 <= 0
                        call items[arg1].field_0 with:
                           value -(-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value <= msg.value
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require -items[arg1].field_512 + fee + 10000
                    require (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + fee + 10000 == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    require -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= 0
                    if not fee:
                        if msg.value < (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 <= (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require fee
                        require (-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == -((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ((-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - ((-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) <= (-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value ((-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - ((-1 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) <= msg.value
                    call msg.sender with:
                       value msg.value - ((-10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) wei
                         gas 2300 * is_zero(value) wei
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        require (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * ext_call.return_data[0]
        require ext_code.size(tubAddress)
        call tubAddress.tab(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tubAddress)
        call tubAddress.rap(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tubAddress)
        call tubAddress.tab(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 == ext_call.return_data[0]
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 1000000000 * 10^18 * ext_call.return_data[0]
        require ext_call.return_data[0]
        if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            require ext_code.size(tubAddress)
            call tubAddress.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] / 2 >= 0
            require ext_call.return_data[0]
            require ext_code.size(tubAddress)
            call tubAddress.tab(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tubAddress)
            call tubAddress.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
            require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 10^18 * ext_call.return_data[0]
            require ext_call.return_data[0]
            require (ext_call.return_data[0] / 2 / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) >= ext_call.return_data[0] / 2 / ext_call.return_data[0]
            if items[arg1].field_512 <= fee:
                require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                require -items[arg1].field_512 + 10000 <= 10000
                if not -items[arg1].field_512 + 10000:
                    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                    if not fee:
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call items[arg1].field_0 with:
                             gas 2300 wei
                    else:
                        require fee
                        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require -((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 <= 0
                        call items[arg1].field_0 with:
                           value -((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value <= msg.value
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require -items[arg1].field_512 + 10000
                    require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + 10000 == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                    if not fee:
                        if msg.value < (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 <= (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require fee
                        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - (((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) <= (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - (((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) <= msg.value
                    call msg.sender with:
                       value msg.value - ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) wei
                         gas 2300 * is_zero(value) wei
            else:
                require items[arg1].field_512 - fee <= items[arg1].field_512
                require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                require -items[arg1].field_512 + fee + 10000 <= 10000
                if not -items[arg1].field_512 + fee + 10000:
                    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                    if not fee:
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call items[arg1].field_0 with:
                             gas 2300 wei
                    else:
                        require fee
                        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require -((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 <= 0
                        call items[arg1].field_0 with:
                           value -((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value <= msg.value
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require -items[arg1].field_512 + fee + 10000
                    require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + fee + 10000 == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                    if not fee:
                        if msg.value < (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 <= (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require fee
                        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - (((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) <= (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - (((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - (ext_call.return_data[0] / 2 / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) <= msg.value
                    call msg.sender with:
                       value msg.value - ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) + (items[arg1].field_512 * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (fee * ext_call.return_data[0] / 2 / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) wei
                         gas 2300 * is_zero(value) wei
        else:
            require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            require ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] == ext_call.return_data[0]
            require (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 >= ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            require ext_code.size(tubAddress)
            call tubAddress.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 == (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) >= 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require ext_call.return_data[0]
            require ext_code.size(tubAddress)
            call tubAddress.tab(bytes32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tubAddress)
            call tubAddress.pip() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).read() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
            require (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) >= 10^18 * ext_call.return_data[0]
            require ext_call.return_data[0]
            require ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) >= (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if items[arg1].field_512 <= fee:
                require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                require -items[arg1].field_512 + 10000 <= 10000
                if not -items[arg1].field_512 + 10000:
                    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                    if not fee:
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call items[arg1].field_0 with:
                             gas 2300 wei
                    else:
                        require fee
                        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require -((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 <= 0
                        call items[arg1].field_0 with:
                           value -((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value <= msg.value
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require -items[arg1].field_512 + 10000
                    require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + 10000 == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                    if not fee:
                        if msg.value < (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 <= (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require fee
                        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - (((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) <= (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - (((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) <= msg.value
                    call msg.sender with:
                       value msg.value - ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) wei
                         gas 2300 * is_zero(value) wei
            else:
                require items[arg1].field_512 - fee <= items[arg1].field_512
                require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                require -items[arg1].field_512 + fee + 10000 <= 10000
                if not -items[arg1].field_512 + fee + 10000:
                    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                    if not fee:
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call items[arg1].field_0 with:
                             gas 2300 wei
                    else:
                        require fee
                        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < 0:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require -((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 <= 0
                        call items[arg1].field_0 with:
                           value -((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value <= msg.value
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require -items[arg1].field_512 + fee + 10000
                    require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / -items[arg1].field_512 + fee + 10000 == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                    if not fee:
                        if msg.value < (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 <= (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require fee
                        require ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / fee == ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                        if msg.value < (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000:
                            revert with 0, 32, 42, 0x65436865636b20696620656e6f7567682065746865722069732073656e7420666f722074686973206375, mem[462 len 22]
                        items[arg1].field_768 = 0
                        require ext_code.size(items[arg1].field_256)
                        call items[arg1].field_256.execute(address arg1, bytes arg2) with:
                             gas gas_remaining wei
                            args address(sub_ac5e7f73Address), Array(len=68, data=give(bytes32 arg1, address arg2), arg1, arg2, 0, Mask(192, 0, stor5) >> 256, uint32(stor5))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - (((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) <= (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000
                        call items[arg1].field_0 with:
                           value ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) - (((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * fee) - ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) - ((10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * fee) / 10000) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.value - ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) <= msg.value
                    call msg.sender with:
                       value msg.value - ((10000 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (items[arg1].field_512 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (fee * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (10000 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (10000 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + (items[arg1].field_512 * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - (fee * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) / 10000) wei
                         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x786e1e7a: items[arg1].field_0, items[arg1].field_512, arg1, msg.sender, items[arg1].field_256
    items[arg1].field_0 = 0
    items[arg1].field_256 = 0
    items[arg1].field_512 = 0
    items[arg1].field_768 = 0
    require sub_1c19eb23.length - 1 < sub_1c19eb23.length
    require sub_f97f5ba1[arg1] < sub_1c19eb23.length
    sub_1c19eb23[stor3[arg1]] = sub_1c19eb23[sub_1c19eb23.length]
    sub_f97f5ba1[arg1] = 0
    require sub_1c19eb23.length - 1 < sub_1c19eb23.length
    sub_f97f5ba1[stor4[stor4.length]] = sub_f97f5ba1[arg1]
    sub_1c19eb23.length--
    if sub_1c19eb23.length > sub_1c19eb23.length - 1:
        idx = sub_1c19eb23.length - 1
        while sub_1c19eb23.length > idx:
            sub_1c19eb23[idx] = 0
            idx = idx + 1
            continue 
}



}
