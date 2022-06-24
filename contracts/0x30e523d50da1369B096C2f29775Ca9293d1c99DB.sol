contract main {




// =====================  Runtime code  =====================


#
#  - users(address arg1)
#  - sub_b7e17069(?)
#
uint8 stor0; offset 160
uint8 stor0; offset 168
address owner;
uint256 stor1;
array of uint256 sub_8064d149;
mapping of struct posts;
array of uint256 sub_50cde8ef;
uint256 sub_6c47c2c5;
mapping of uint256 sub_507e7b67;
uint256 sub_5034227b;
uint256 sub_c87ffc77;
uint256 sub_86d859d3;
mapping of uint256 sub_afa22c2f;
uint256 sub_8b390bac;
mapping of struct comments;
array of uint256 sub_79129471;
array of uint256 sub_5193c94c;
uint256 sub_014619ed;
mapping of uint256 sub_4a6b9c3c;
uint256 sub_e11b0f0a;
uint256 sub_1704b737;
mapping of struct stor19;
mapping of uint256 sub_951cc0a5;
array of address sub_6d80546d;
array of address sub_4549ff0d;
array of address sub_9139cda5;
uint256 sub_0f950e99;
uint256 sub_46c224ca;
uint256 sub_2a89375a;
address sub_5fdfc004Address;

function sub_014619ed(?) {
    return sub_014619ed
}

function posts(uint256 arg1) {
    return posts[arg1].field_0, 
           posts[arg1].field_256,
           posts[arg1].field_512,
           posts[arg1].field_768,
           posts[arg1].field_1024,
           posts[arg1].field_1280
}

function sub_0f950e99(?) {
    return sub_0f950e99
}

function sub_1704b737(?) {
    return sub_1704b737
}

function sub_2a89375a(?) {
    return sub_2a89375a
}

function sub_4549ff0d(?) {
    return uint256(sub_4549ff0d[address(arg1)])
}

function sub_46c224ca(?) {
    return sub_46c224ca
}

function sub_4a6b9c3c(?) {
    return sub_4a6b9c3c[arg1]
}

function sub_5034227b(?) {
    return sub_5034227b
}

function sub_507e7b67(?) {
    return sub_507e7b67[arg1]
}

function sub_50cde8ef(?) {
    require arg1 < sub_50cde8ef.length
    return sub_50cde8ef[arg1]
}

function sub_5193c94c(?) {
    require arg2 < sub_5193c94c[arg1]
    return sub_5193c94c[arg1][arg2]
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_5fdfc004(?) {
    return sub_5fdfc004Address
}

function sub_6c47c2c5(?) {
    return sub_6c47c2c5
}

function sub_6d80546d(?) {
    require arg2 < uint256(sub_6d80546d[arg1])
    return address(sub_6d80546d[arg1][arg2])
}

function sub_79129471(?) {
    require arg2 < sub_79129471[arg1]
    return sub_79129471[arg1][arg2]
}

function sub_8064d149(?) {
    require arg2 < sub_8064d149[arg1]
    return sub_8064d149[arg1][arg2]
}

function sub_86d859d3(?) {
    return sub_86d859d3
}

function sub_8b390bac(?) {
    return sub_8b390bac
}

function owner() {
    return owner
}

function comments(uint256 arg1) {
    return comments[arg1].field_0, 
           comments[arg1].field_256,
           comments[arg1].field_512,
           comments[arg1].field_768,
           comments[arg1].field_1024,
           comments[arg1].field_1280,
           comments[arg1].field_1536
}

function sub_9139cda5(?) {
    require arg2 < uint256(sub_9139cda5[arg1])
    return address(sub_9139cda5[arg1][arg2])
}

function sub_951cc0a5(?) {
    return sub_951cc0a5[arg1]
}

function sub_afa22c2f(?) {
    return sub_afa22c2f[arg1]
}

function sub_c134902d(?) {
    return sub_8064d149[address(arg1)]
}

function sub_c305cdd3(?) {
    return sub_5193c94c[arg1]
}

function sub_c51d5eba(?) {
    return uint256(sub_9139cda5[address(arg1)])
}

function sub_c87ffc77(?) {
    return sub_c87ffc77
}

function sub_d76838d4(?) {
    return sub_50cde8ef.length
}

function sub_e11b0f0a(?) {
    return sub_e11b0f0a
}

function sub_ebd009d3(?) {
    require arg2 < uint256(sub_4549ff0d[arg1])
    return address(sub_4549ff0d[arg1][arg2])
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}

function sub_2bfd71e0(?) {
    require msg.sender == owner
    sub_5034227b = arg1
}

function sub_333096b3(?) {
    require msg.sender == owner
    sub_6c47c2c5 = arg1
}

function sub_a9d5dbed(?) {
    require msg.sender == owner
    sub_8b390bac = arg1
}

function sub_ba2e0d31(?) {
    require msg.sender == owner
    sub_1704b737 = arg1
}

function sub_bc1655b0(?) {
    require msg.sender == owner
    sub_0f950e99 = arg1
}

function sub_ca717a1f(?) {
    require msg.sender == owner
    sub_c87ffc77 = arg1
}

function sub_f34f506e(?) {
    require msg.sender == owner
    sub_86d859d3 = arg1
}

function sub_c9f26183(?) {
    if block.timestamp < sub_951cc0a5[msg.sender]:
        return 0
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_c4545147(?) {
    require msg.sender == owner
    sub_951cc0a5[address(arg1)] = arg2 + block.timestamp
}

function sub_421d5cda(?) {
    if block.timestamp < sub_8b390bac + sub_afa22c2f[msg.sender]:
        return 0
    return 1
}

function sub_5942f99f(?) {
    if block.timestamp < sub_5034227b + sub_507e7b67[msg.sender]:
        return 0
    return 1
}

function sub_c8cdb5b5(?) {
    if block.timestamp < sub_e11b0f0a + sub_4a6b9c3c[msg.sender]:
        return 0
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Paused(msg.sender);
}

function sub_c4fa4453(?) {
    require msg.sender == owner
    idx = 0
    while idx < sub_50cde8ef.length:
        mem[0] = 4
        idx = idx + 1
        continue 
    require 0 < sub_50cde8ef.length
    sub_50cde8ef = 0
}

function transferEther(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4f253199(?) {
    require msg.sender == owner
    if arg1 == posts[arg1].field_0:
        posts[arg1].field_0 = 0
        posts[arg1].field_256 = 0
        posts[arg1].field_512 = 0
        posts[arg1].field_768 = 0
        posts[arg1].field_1024 = 0
        posts[arg1].field_1280 = 0
}

function sub_53057c91(?) {
    require msg.sender == owner
    if arg1 == comments[arg1].field_0:
        comments[arg1].field_0 = 0
        comments[arg1].field_256 = 0
        comments[arg1].field_512 = 0
        comments[arg1].field_768 = 0
        comments[arg1].field_1024 = 0
        comments[arg1].field_1280 = 0
        comments[arg1].field_1536 = 0
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_58f0b73d(?) {
    require msg.sender == owner
    idx = 0
    while idx < sub_8064d149[address(arg1)]:
        require idx < sub_8064d149[address(arg1)]
        if sub_8064d149[address(arg1)][idx] == arg2:
            require idx < sub_8064d149[address(arg1)]
            sub_8064d149[address(arg1)][idx] = 0
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
}

function sub_4fb83c34(?) {
    require msg.sender == owner
    idx = 0
    while idx < sub_79129471[address(arg1)]:
        require idx < sub_79129471[address(arg1)]
        if sub_79129471[address(arg1)][idx] == arg2:
            require idx < sub_79129471[address(arg1)]
            sub_79129471[address(arg1)][idx] = 0
        mem[0] = arg1
        mem[32] = 13
        idx = idx + 1
        continue 
}

function sub_36032351(?) {
    require msg.sender == owner
    idx = 0
    while idx < sub_79129471[address(arg1)]:
        require idx < sub_79129471[address(arg1)]
        if sub_79129471[address(arg1)][idx] == arg2:
            require idx < sub_79129471[address(arg1)]
            sub_79129471[address(arg1)][idx] = 0
        mem[0] = arg1
        mem[32] = 13
        idx = idx + 1
        continue 
    require msg.sender == owner
    if arg2 == comments[arg2].field_0:
        comments[arg2].field_0 = 0
        comments[arg2].field_256 = 0
        comments[arg2].field_512 = 0
        comments[arg2].field_768 = 0
        comments[arg2].field_1024 = 0
        comments[arg2].field_1280 = 0
        comments[arg2].field_1536 = 0
}

function sub_01a04b25(?) {
    s = 0
    idx = 0
    while idx < sub_79129471[msg.sender]:
        require idx < sub_79129471[msg.sender]
        comments[stor13[msg.sender][idx]].field_0 = 0
        comments[stor13[msg.sender][idx]].field_256 = 0
        comments[stor13[msg.sender][idx]].field_512 = 0
        comments[stor13[msg.sender][idx]].field_768 = 0
        comments[stor13[msg.sender][idx]].field_1024 = 0
        comments[stor13[msg.sender][idx]].field_1280 = 0
        comments[stor13[msg.sender][idx]].field_1536 = 0
        mem[0] = msg.sender
        mem[32] = 13
        s = sub_79129471[msg.sender][idx]
        idx = idx + 1
        continue 
    sub_79129471[msg.sender] = 0
    idx = 0
    while sub_79129471[msg.sender] > idx:
        sub_79129471[msg.sender][idx] = 0
        idx = idx + 1
        continue 
}

function sub_1875c43e(?) {
    s = 0
    idx = 0
    while idx < sub_8064d149[msg.sender]:
        require idx < sub_8064d149[msg.sender]
        posts[stor2[msg.sender][idx]].field_0 = 0
        posts[stor2[msg.sender][idx]].field_256 = 0
        posts[stor2[msg.sender][idx]].field_512 = 0
        posts[stor2[msg.sender][idx]].field_768 = 0
        posts[stor2[msg.sender][idx]].field_1024 = 0
        posts[stor2[msg.sender][idx]].field_1280 = 0
        require sub_8064d149[msg.sender][idx] < sub_50cde8ef.length
        sub_50cde8ef[stor2[msg.sender][idx]] = 0
        mem[0] = msg.sender
        mem[32] = 2
        s = sub_8064d149[msg.sender][idx]
        idx = idx + 1
        continue 
    sub_8064d149[msg.sender] = 0
    idx = 0
    while sub_8064d149[msg.sender] > idx:
        sub_8064d149[msg.sender][idx] = 0
        idx = idx + 1
        continue 
}

function sub_0956848d(?) {
    require msg.sender == owner
    idx = 0
    while idx < sub_8064d149[address(arg1)]:
        require idx < sub_8064d149[address(arg1)]
        if sub_8064d149[address(arg1)][idx] == arg2:
            require idx < sub_8064d149[address(arg1)]
            sub_8064d149[address(arg1)][idx] = 0
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    require msg.sender == owner
    if arg2 == posts[arg2].field_0:
        posts[arg2].field_0 = 0
        posts[arg2].field_256 = 0
        posts[arg2].field_512 = 0
        posts[arg2].field_768 = 0
        posts[arg2].field_1024 = 0
        posts[arg2].field_1280 = 0
    require msg.sender == owner
    idx = 0
    while idx < sub_50cde8ef.length:
        mem[0] = 4
        idx = idx + 1
        continue 
    require 0 < sub_50cde8ef.length
    sub_50cde8ef = 0
}

function sub_879c9fe9(?) {
    stor19[msg.sender].field_0 = 0
    stor19[msg.sender].field_256 = 0
    if 31 < stor19[msg.sender][1].length:
        idx = 0
        while stor19[msg.sender][1].length + 31 / 32 > idx:
            stor19[msg.sender][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor19[msg.sender].field_512 = 0
    if 31 < stor19[msg.sender][2].length:
        idx = 0
        while stor19[msg.sender][2].length + 31 / 32 > idx:
            stor19[msg.sender][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor19[msg.sender].field_768 = 0
    if 31 < stor19[msg.sender][3].length:
        idx = 0
        while stor19[msg.sender][3].length + 31 / 32 > idx:
            stor19[msg.sender][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor19[msg.sender].field_1024 = 0
    if 31 < stor19[msg.sender][4].length:
        idx = 0
        while stor19[msg.sender][4].length + 31 / 32 > idx:
            stor19[msg.sender][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    uint256(sub_6d80546d[msg.sender]) = 0
    idx = 0
    while uint256(sub_6d80546d[msg.sender]) > idx:
        uint256(sub_6d80546d[msg.sender][idx]) = 0
        idx = idx + 1
        continue 
    uint256(sub_4549ff0d[msg.sender]) = 0
    idx = 0
    while uint256(sub_4549ff0d[msg.sender]) > idx:
        uint256(sub_4549ff0d[msg.sender][idx]) = 0
        idx = idx + 1
        continue 
    uint256(sub_9139cda5[msg.sender]) = 0
    idx = 0
    while uint256(sub_9139cda5[msg.sender]) > idx:
        uint256(sub_9139cda5[msg.sender][idx]) = 0
        idx = idx + 1
        continue 
}

function sub_f6803ab1(?) {
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < sub_50cde8ef.length:
        require msg.sender == owner
        t = 0
        while t < sub_8064d149[stor3[stor4[idx]].field_256]:
            require t < sub_8064d149[stor3[stor4[idx]].field_256]
            if sub_8064d149[stor3[stor4[idx]].field_256][t] == posts[stor4[idx]].field_0:
                require t < sub_8064d149[stor3[stor4[idx]].field_256]
                sub_8064d149[stor3[stor4[idx]].field_256][t] = 0
            mem[0] = posts[stor4[idx]].field_256
            mem[32] = 2
            t = t + 1
            continue 
        require idx < sub_50cde8ef.length
        require msg.sender == owner
        if posts[stor4[idx]].field_0 != posts[posts[stor4[idx]].field_0].field_0:
            require idx < sub_50cde8ef.length
            mem[32] = 3
            require msg.sender == owner
            t = 0
            while t < sub_50cde8ef.length:
                mem[0] = 4
                t = t + 1
                continue 
            require 0 < sub_50cde8ef.length
            mem[0] = 4
            sub_50cde8ef = 0
            t = posts[stor4[idx]].field_256
            idx = idx + 1
            continue 
        posts[posts[stor4[idx]].field_0].field_0 = 0
        posts[posts[stor4[idx]].field_0].field_256 = 0
        posts[posts[stor4[idx]].field_0].field_512 = 0
        posts[posts[stor4[idx]].field_0].field_768 = 0
        posts[posts[stor4[idx]].field_0].field_1024 = 0
        posts[posts[stor4[idx]].field_0].field_1280 = 0
        require idx < sub_50cde8ef.length
        mem[32] = 3
        require msg.sender == owner
        s = 0
        while s < sub_50cde8ef.length:
            mem[0] = 4
            s = s + 1
            continue 
        require 0 < sub_50cde8ef.length
        mem[0] = 4
        sub_50cde8ef = 0
        s = posts[stor4[idx]].field_256
        idx = idx + 1
        continue 
}

function sub_a93d0626(?) {
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1:
        require idx < sub_50cde8ef.length
        require msg.sender == owner
        t = 0
        while t < sub_8064d149[stor3[stor4[idx]].field_256]:
            require t < sub_8064d149[stor3[stor4[idx]].field_256]
            if sub_8064d149[stor3[stor4[idx]].field_256][t] == posts[stor4[idx]].field_0:
                require t < sub_8064d149[stor3[stor4[idx]].field_256]
                sub_8064d149[stor3[stor4[idx]].field_256][t] = 0
            mem[0] = posts[stor4[idx]].field_256
            mem[32] = 2
            t = t + 1
            continue 
        require idx < sub_50cde8ef.length
        require msg.sender == owner
        if posts[stor4[idx]].field_0 != posts[posts[stor4[idx]].field_0].field_0:
            require idx < sub_50cde8ef.length
            mem[32] = 3
            require msg.sender == owner
            t = 0
            while t < sub_50cde8ef.length:
                mem[0] = 4
                t = t + 1
                continue 
            require 0 < sub_50cde8ef.length
            mem[0] = 4
            sub_50cde8ef = 0
            t = posts[stor4[idx]].field_256
            idx = idx + 1
            continue 
        posts[posts[stor4[idx]].field_0].field_0 = 0
        posts[posts[stor4[idx]].field_0].field_256 = 0
        posts[posts[stor4[idx]].field_0].field_512 = 0
        posts[posts[stor4[idx]].field_0].field_768 = 0
        posts[posts[stor4[idx]].field_0].field_1024 = 0
        posts[posts[stor4[idx]].field_0].field_1280 = 0
        require idx < sub_50cde8ef.length
        mem[32] = 3
        require msg.sender == owner
        s = 0
        while s < sub_50cde8ef.length:
            mem[0] = 4
            s = s + 1
            continue 
        require 0 < sub_50cde8ef.length
        mem[0] = 4
        sub_50cde8ef = 0
        s = posts[stor4[idx]].field_256
        idx = idx + 1
        continue 
}

function unblockUser(address arg1) {
    require 3 == uint8((block.timestamp / 24 * 3600) + 4 % 7)
    if uint8(stor0.field_168):
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg1 != msg.sender
        idx = 0
        while idx < uint256(sub_6d80546d[msg.sender]):
            require idx < uint256(sub_6d80546d[msg.sender])
            if address(sub_6d80546d[msg.sender][idx]) == arg1:
                require idx < uint256(sub_6d80546d[msg.sender])
                address(sub_6d80546d[msg.sender][idx]) = 0
            mem[0] = msg.sender
            mem[32] = 21
            idx = idx + 1
            continue 
    else:
        uint8(stor0.field_168) = 1
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg1 != msg.sender
        idx = 0
        while idx < uint256(sub_6d80546d[msg.sender]):
            require idx < uint256(sub_6d80546d[msg.sender])
            if address(sub_6d80546d[msg.sender][idx]) == arg1:
                require idx < uint256(sub_6d80546d[msg.sender])
                address(sub_6d80546d[msg.sender][idx]) = 0
            mem[0] = msg.sender
            mem[32] = 21
            idx = idx + 1
            continue 
        require gas_remaining <= gas_remaining
        if stor1 < block.gasprice:
            if stor1:
                require stor1
                require 41761 * stor1 / stor1 == 41761
            call tx.origin with:
               value 41761 * stor1 wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * stor1);
        else:
            if block.gasprice:
                require block.gasprice
                require 41761 * block.gasprice / block.gasprice == 41761
            call tx.origin with:
               value 41761 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * block.gasprice);
        uint8(stor0.field_168) = 0
}

function sub_f2e8b67d(?) {
    require 3 == uint8((block.timestamp / 24 * 3600) + 4 % 7)
    if uint8(stor0.field_168):
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg2 >= sub_2a89375a
        require arg1 != msg.sender
        require ext_code.size(sub_5fdfc004Address)
        call sub_5fdfc004Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        uint256(sub_6d80546d[msg.sender])++
        address(sub_6d80546d[msg.sender][uint256(sub_6d80546d[msg.sender])]) = arg1
    else:
        uint8(stor0.field_168) = 1
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg2 >= sub_2a89375a
        require arg1 != msg.sender
        require ext_code.size(sub_5fdfc004Address)
        call sub_5fdfc004Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        uint256(sub_6d80546d[msg.sender])++
        address(sub_6d80546d[msg.sender][uint256(sub_6d80546d[msg.sender])]) = arg1
        require gas_remaining <= gas_remaining
        if stor1 < block.gasprice:
            if stor1:
                require stor1
                require 41761 * stor1 / stor1 == 41761
            call tx.origin with:
               value 41761 * stor1 wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * stor1);
        else:
            if block.gasprice:
                require block.gasprice
                require 41761 * block.gasprice / block.gasprice == 41761
            call tx.origin with:
               value 41761 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * block.gasprice);
        uint8(stor0.field_168) = 0
}

function sub_42746ec4(?) {
    require 3 == uint8((block.timestamp / 24 * 3600) + 4 % 7)
    if uint8(stor0.field_168):
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg2 >= sub_c87ffc77
        if arg1 == posts[arg1].field_0:
            require posts[arg1].field_256 != msg.sender
            require ext_code.size(sub_5fdfc004Address)
            call sub_5fdfc004Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, posts[arg1].field_256, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            posts[arg1].field_512 += arg2
            posts[arg1].field_768++
    else:
        uint8(stor0.field_168) = 1
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg2 >= sub_c87ffc77
        if arg1 == posts[arg1].field_0:
            require posts[arg1].field_256 != msg.sender
            require ext_code.size(sub_5fdfc004Address)
            call sub_5fdfc004Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, posts[arg1].field_256, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            posts[arg1].field_512 += arg2
            posts[arg1].field_768++
        require gas_remaining <= gas_remaining
        if stor1 < block.gasprice:
            if stor1:
                require stor1
                require 41761 * stor1 / stor1 == 41761
            call tx.origin with:
               value 41761 * stor1 wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * stor1);
        else:
            if block.gasprice:
                require block.gasprice
                require 41761 * block.gasprice / block.gasprice == 41761
            call tx.origin with:
               value 41761 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * block.gasprice);
        uint8(stor0.field_168) = 0
}

function sub_a0e91821(?) {
    require 3 == uint8((block.timestamp / 24 * 3600) + 4 % 7)
    if uint8(stor0.field_168):
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg2 >= sub_1704b737
        if arg1 == comments[arg1].field_0:
            require comments[arg1].field_512 != msg.sender
            require ext_code.size(sub_5fdfc004Address)
            call sub_5fdfc004Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, comments[arg1].field_512, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            comments[arg1].field_768 += arg2
            comments[arg1].field_1024++
    else:
        uint8(stor0.field_168) = 1
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg2 >= sub_1704b737
        if arg1 == comments[arg1].field_0:
            require comments[arg1].field_512 != msg.sender
            require ext_code.size(sub_5fdfc004Address)
            call sub_5fdfc004Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, comments[arg1].field_512, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            comments[arg1].field_768 += arg2
            comments[arg1].field_1024++
        require gas_remaining <= gas_remaining
        if stor1 < block.gasprice:
            if stor1:
                require stor1
                require 41761 * stor1 / stor1 == 41761
            call tx.origin with:
               value 41761 * stor1 wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * stor1);
        else:
            if block.gasprice:
                require block.gasprice
                require 41761 * block.gasprice / block.gasprice == 41761
            call tx.origin with:
               value 41761 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * block.gasprice);
        uint8(stor0.field_168) = 0
}

function sub_8248afb5(?) {
    require 3 == uint8((block.timestamp / 24 * 3600) + 4 % 7)
    if uint8(stor0.field_168):
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require block.timestamp >= sub_8b390bac + sub_afa22c2f[msg.sender]
        if arg1 == posts[arg1].field_0:
            require posts[arg1].field_256 != msg.sender
            require ext_code.size(sub_5fdfc004Address)
            call sub_5fdfc004Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            posts[arg1].field_1280++
            sub_afa22c2f[msg.sender] = block.timestamp
    else:
        uint8(stor0.field_168) = 1
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require block.timestamp >= sub_8b390bac + sub_afa22c2f[msg.sender]
        if arg1 == posts[arg1].field_0:
            require posts[arg1].field_256 != msg.sender
            require ext_code.size(sub_5fdfc004Address)
            call sub_5fdfc004Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            posts[arg1].field_1280++
            sub_afa22c2f[msg.sender] = block.timestamp
        require gas_remaining <= gas_remaining
        if stor1 < block.gasprice:
            if stor1:
                require stor1
                require 41761 * stor1 / stor1 == 41761
            call tx.origin with:
               value 41761 * stor1 wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * stor1);
        else:
            if block.gasprice:
                require block.gasprice
                require 41761 * block.gasprice / block.gasprice == 41761
            call tx.origin with:
               value 41761 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * block.gasprice);
        uint8(stor0.field_168) = 0
}

function sub_eeef2d88(?) {
    require 3 == uint8((block.timestamp / 24 * 3600) + 4 % 7)
    if uint8(stor0.field_168):
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require block.timestamp >= sub_8b390bac + sub_afa22c2f[msg.sender]
        if arg1 == comments[arg1].field_0:
            require comments[arg1].field_512 != msg.sender
            require ext_code.size(sub_5fdfc004Address)
            call sub_5fdfc004Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            comments[arg1].field_1536++
            sub_afa22c2f[msg.sender] = block.timestamp
    else:
        uint8(stor0.field_168) = 1
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require block.timestamp >= sub_8b390bac + sub_afa22c2f[msg.sender]
        if arg1 == comments[arg1].field_0:
            require comments[arg1].field_512 != msg.sender
            require ext_code.size(sub_5fdfc004Address)
            call sub_5fdfc004Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            comments[arg1].field_1536++
            sub_afa22c2f[msg.sender] = block.timestamp
        require gas_remaining <= gas_remaining
        if stor1 < block.gasprice:
            if stor1:
                require stor1
                require 41761 * stor1 / stor1 == 41761
            call tx.origin with:
               value 41761 * stor1 wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * stor1);
        else:
            if block.gasprice:
                require block.gasprice
                require 41761 * block.gasprice / block.gasprice == 41761
            call tx.origin with:
               value 41761 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * block.gasprice);
        uint8(stor0.field_168) = 0
}

function sub_0ec83370(?) {
    require 3 == uint8((block.timestamp / 24 * 3600) + 4 % 7)
    if uint8(stor0.field_168):
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg2 >= sub_0f950e99
        require arg1 != msg.sender
        require ext_code.size(sub_5fdfc004Address)
        call sub_5fdfc004Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        uint256(sub_9139cda5[msg.sender])++
        address(sub_9139cda5[msg.sender][uint256(sub_9139cda5[msg.sender])]) = arg1
        uint256(sub_4549ff0d[address(arg1)])++
        uint256(sub_4549ff0d[address(arg1)][uint256(sub_4549ff0d[address(arg1)])]) = msg.sender or Mask(96, 160, uint256(sub_4549ff0d[address(arg1)][uint256(sub_4549ff0d[address(arg1)])]))
    else:
        uint8(stor0.field_168) = 1
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg2 >= sub_0f950e99
        require arg1 != msg.sender
        require ext_code.size(sub_5fdfc004Address)
        call sub_5fdfc004Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        uint256(sub_9139cda5[msg.sender])++
        address(sub_9139cda5[msg.sender][uint256(sub_9139cda5[msg.sender])]) = arg1
        uint256(sub_4549ff0d[address(arg1)])++
        uint256(sub_4549ff0d[address(arg1)][uint256(sub_4549ff0d[address(arg1)])]) = msg.sender or Mask(96, 160, uint256(sub_4549ff0d[address(arg1)][uint256(sub_4549ff0d[address(arg1)])]))
        require gas_remaining <= gas_remaining
        if stor1 < block.gasprice:
            if stor1:
                require stor1
                require 41761 * stor1 / stor1 == 41761
            call tx.origin with:
               value 41761 * stor1 wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * stor1);
        else:
            if block.gasprice:
                require block.gasprice
                require 41761 * block.gasprice / block.gasprice == 41761
            call tx.origin with:
               value 41761 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * block.gasprice);
        uint8(stor0.field_168) = 0
}

function unfollow(address arg1) {
    require 3 == uint8((block.timestamp / 24 * 3600) + 4 % 7)
    if uint8(stor0.field_168):
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg1 != msg.sender
        idx = 0
        while idx < uint256(sub_9139cda5[msg.sender]):
            require idx < uint256(sub_9139cda5[msg.sender])
            if address(sub_9139cda5[msg.sender][idx]) == arg1:
                require idx < uint256(sub_9139cda5[msg.sender])
                address(sub_9139cda5[msg.sender][idx]) = 0
            mem[0] = msg.sender
            mem[32] = 23
            idx = idx + 1
            continue 
        idx = 0
        while idx < uint256(sub_4549ff0d[address(arg1)]):
            require idx < uint256(sub_4549ff0d[address(arg1)])
            if address(sub_4549ff0d[address(arg1)][idx]) == msg.sender:
                require idx < uint256(sub_4549ff0d[address(arg1)])
                address(sub_4549ff0d[address(arg1)][idx]) = 0
            mem[0] = arg1
            mem[32] = 22
            idx = idx + 1
            continue 
    else:
        uint8(stor0.field_168) = 1
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require arg1 != msg.sender
        idx = 0
        while idx < uint256(sub_9139cda5[msg.sender]):
            require idx < uint256(sub_9139cda5[msg.sender])
            if address(sub_9139cda5[msg.sender][idx]) == arg1:
                require idx < uint256(sub_9139cda5[msg.sender])
                address(sub_9139cda5[msg.sender][idx]) = 0
            mem[0] = msg.sender
            mem[32] = 23
            idx = idx + 1
            continue 
        idx = 0
        while idx < uint256(sub_4549ff0d[address(arg1)]):
            require idx < uint256(sub_4549ff0d[address(arg1)])
            if address(sub_4549ff0d[address(arg1)][idx]) == msg.sender:
                require idx < uint256(sub_4549ff0d[address(arg1)])
                address(sub_4549ff0d[address(arg1)][idx]) = 0
            mem[0] = arg1
            mem[32] = 22
            idx = idx + 1
            continue 
        require gas_remaining <= gas_remaining
        if stor1 < block.gasprice:
            if stor1:
                require stor1
                require 41761 * stor1 / stor1 == 41761
            call tx.origin with:
               value 41761 * stor1 wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * stor1);
        else:
            if block.gasprice:
                require block.gasprice
                require 41761 * block.gasprice / block.gasprice == 41761
            call tx.origin with:
               value 41761 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * block.gasprice);
        uint8(stor0.field_168) = 0
}

function sub_f46e12c5(?) {
    s = 0
    idx = 0
    while idx < sub_8064d149[msg.sender]:
        require idx < sub_8064d149[msg.sender]
        posts[stor2[msg.sender][idx]].field_0 = 0
        posts[stor2[msg.sender][idx]].field_256 = 0
        posts[stor2[msg.sender][idx]].field_512 = 0
        posts[stor2[msg.sender][idx]].field_768 = 0
        posts[stor2[msg.sender][idx]].field_1024 = 0
        posts[stor2[msg.sender][idx]].field_1280 = 0
        require sub_8064d149[msg.sender][idx] < sub_50cde8ef.length
        sub_50cde8ef[stor2[msg.sender][idx]] = 0
        mem[0] = msg.sender
        mem[32] = 2
        s = sub_8064d149[msg.sender][idx]
        idx = idx + 1
        continue 
    sub_8064d149[msg.sender] = 0
    idx = 0
    while sub_8064d149[msg.sender] > idx:
        sub_8064d149[msg.sender][idx] = 0
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < sub_79129471[msg.sender]:
        require idx < sub_79129471[msg.sender]
        comments[stor13[msg.sender][idx]].field_0 = 0
        comments[stor13[msg.sender][idx]].field_256 = 0
        comments[stor13[msg.sender][idx]].field_512 = 0
        comments[stor13[msg.sender][idx]].field_768 = 0
        comments[stor13[msg.sender][idx]].field_1024 = 0
        comments[stor13[msg.sender][idx]].field_1280 = 0
        comments[stor13[msg.sender][idx]].field_1536 = 0
        mem[0] = msg.sender
        mem[32] = 13
        s = sub_79129471[msg.sender][idx]
        idx = idx + 1
        continue 
    sub_79129471[msg.sender] = 0
    idx = 0
    while sub_79129471[msg.sender] > idx:
        sub_79129471[msg.sender][idx] = 0
        idx = idx + 1
        continue 
    stor19[msg.sender].field_0 = 0
    stor19[msg.sender].field_256 = 0
    if 31 < stor19[msg.sender][1].length:
        idx = 0
        while stor19[msg.sender][1].length + 31 / 32 > idx:
            stor19[msg.sender][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor19[msg.sender].field_512 = 0
    if 31 < stor19[msg.sender][2].length:
        idx = 0
        while stor19[msg.sender][2].length + 31 / 32 > idx:
            stor19[msg.sender][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor19[msg.sender].field_768 = 0
    if 31 < stor19[msg.sender][3].length:
        idx = 0
        while stor19[msg.sender][3].length + 31 / 32 > idx:
            stor19[msg.sender][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor19[msg.sender].field_1024 = 0
    if 31 < stor19[msg.sender][4].length:
        idx = 0
        while stor19[msg.sender][4].length + 31 / 32 > idx:
            stor19[msg.sender][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    uint256(sub_6d80546d[msg.sender]) = 0
    idx = 0
    while uint256(sub_6d80546d[msg.sender]) > idx:
        uint256(sub_6d80546d[msg.sender][idx]) = 0
        idx = idx + 1
        continue 
    uint256(sub_4549ff0d[msg.sender]) = 0
    idx = 0
    while uint256(sub_4549ff0d[msg.sender]) > idx:
        uint256(sub_4549ff0d[msg.sender][idx]) = 0
        idx = idx + 1
        continue 
    uint256(sub_9139cda5[msg.sender]) = 0
    idx = 0
    while uint256(sub_9139cda5[msg.sender]) > idx:
        uint256(sub_9139cda5[msg.sender][idx]) = 0
        idx = idx + 1
        continue 
}

function sub_4ac992c3(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 0
    require 3 == uint8((block.timestamp / 24 * 3600) + 4 % 7)
    if uint8(stor0.field_168):
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require block.timestamp >= sub_5034227b + sub_507e7b67[msg.sender]
        require arg2 == sub_6c47c2c5
        if arg3.length <= 0:
            require arg4.length > 0
        require sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase) != posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_0
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg2
        require ext_code.size(sub_5fdfc004Address)
        call sub_5fdfc004Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg4.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0xd3ef701f: Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 448 len 4], uint128(block.coinbase) << 96, mem[ceil32(arg3.length) + ceil32(arg4.length) + 480 len arg4.length + arg3.length]), arg3.length + 96, sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 512 len arg4.length % 32]
            emit 0xd3ef701f: Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 448 len 4], uint128(block.coinbase) << 96, mem[ceil32(arg3.length) + ceil32(arg4.length) + 480 len floor32(arg4.length) + arg3.length + 32]), arg3.length + 96, sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        sub_8064d149[address(msg.sender)]++
        sub_8064d149[address(msg.sender)][sub_8064d149[address(msg.sender)]] = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_0 = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_256 = msg.sender
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_512 = 0
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_768 = 0
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_1024 = block.timestamp
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_1280 = 0
        sub_50cde8ef.length++
        sub_50cde8ef[sub_50cde8ef.length] = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        sub_507e7b67[address(msg.sender)] = block.timestamp
    else:
        uint8(stor0.field_168) = 1
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require block.timestamp >= sub_5034227b + sub_507e7b67[msg.sender]
        require arg2 == sub_6c47c2c5
        if arg3.length <= 0:
            require arg4.length > 0
        require sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase) != posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_0
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg2
        require ext_code.size(sub_5fdfc004Address)
        call sub_5fdfc004Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg4.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit 0xd3ef701f: Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 448 len 4], uint128(block.coinbase) << 96, mem[ceil32(arg3.length) + ceil32(arg4.length) + 480 len arg4.length + arg3.length]), arg3.length + 96, sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 512 len arg4.length % 32]
            emit 0xd3ef701f: Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 448 len 4], uint128(block.coinbase) << 96, mem[ceil32(arg3.length) + ceil32(arg4.length) + 480 len floor32(arg4.length) + arg3.length + 32]), arg3.length + 96, sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        sub_8064d149[address(msg.sender)]++
        sub_8064d149[address(msg.sender)][sub_8064d149[address(msg.sender)]] = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_0 = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_256 = msg.sender
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_512 = 0
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_768 = 0
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_1024 = block.timestamp
        posts[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_1280 = 0
        sub_50cde8ef.length++
        sub_50cde8ef[sub_50cde8ef.length] = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        sub_507e7b67[address(msg.sender)] = block.timestamp
        require gas_remaining <= gas_remaining
        if stor1 < block.gasprice:
            if stor1:
                require stor1
                require 41761 * stor1 / stor1 == 41761
            call tx.origin with:
               value 41761 * stor1 wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * stor1);
        else:
            if block.gasprice:
                require block.gasprice
                require 41761 * block.gasprice / block.gasprice == 41761
            call tx.origin with:
               value 41761 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * block.gasprice);
        uint8(stor0.field_168) = 0
}

function sub_0b3a4208(?) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 0
    require 3 == uint8((block.timestamp / 24 * 3600) + 4 % 7)
    if uint8(stor0.field_168):
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require block.timestamp >= sub_e11b0f0a + sub_4a6b9c3c[msg.sender]
        require arg3 == sub_014619ed
        if arg4.length <= 0:
            require arg5.length > 0
        require arg2 == posts[arg2].field_0
        require sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase) != comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_0
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg3
        require ext_code.size(sub_5fdfc004Address)
        call sub_5fdfc004Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, posts[arg2].field_256, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 480 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 480] = arg5.length
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 512 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            emit 0x23380d43: Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 480 len 4], uint128(block.coinbase) << 96, mem[ceil32(arg4.length) + ceil32(arg5.length) + 512 len arg5.length + arg4.length]), arg4.length + 96, sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        else:
            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 512] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 544 len arg5.length % 32]
            emit 0x23380d43: Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 480 len 4], uint128(block.coinbase) << 96, mem[ceil32(arg4.length) + ceil32(arg5.length) + 512 len floor32(arg5.length) + arg4.length + 32]), arg4.length + 96, sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        sub_79129471[address(msg.sender)]++
        sub_79129471[address(msg.sender)][sub_79129471[address(msg.sender)]] = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_0 = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_256 = arg2
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_512 = msg.sender
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_768 = 0
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_1024 = 0
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_1280 = block.timestamp
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_1536 = 0
        sub_5193c94c[arg2]++
        sub_5193c94c[arg2][sub_5193c94c[arg2]] = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        sub_4a6b9c3c[address(msg.sender)] = block.timestamp
    else:
        uint8(stor0.field_168) = 1
        require not uint8(stor0.field_160)
        require block.timestamp >= sub_951cc0a5[msg.sender]
        require block.timestamp >= sub_e11b0f0a + sub_4a6b9c3c[msg.sender]
        require arg3 == sub_014619ed
        if arg4.length <= 0:
            require arg5.length > 0
        require arg2 == posts[arg2].field_0
        require sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase) != comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_0
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg3
        require ext_code.size(sub_5fdfc004Address)
        call sub_5fdfc004Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, posts[arg2].field_256, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 480 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 480] = arg5.length
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 512 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            emit 0x23380d43: Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 480 len 4], uint128(block.coinbase) << 96, mem[ceil32(arg4.length) + ceil32(arg5.length) + 512 len arg5.length + arg4.length]), arg4.length + 96, sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        else:
            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 512] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 544 len arg5.length % 32]
            emit 0x23380d43: Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 480 len 4], uint128(block.coinbase) << 96, mem[ceil32(arg4.length) + ceil32(arg5.length) + 512 len floor32(arg5.length) + arg4.length + 32]), arg4.length + 96, sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        sub_79129471[address(msg.sender)]++
        sub_79129471[address(msg.sender)][sub_79129471[address(msg.sender)]] = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_0 = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_256 = arg2
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_512 = msg.sender
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_768 = 0
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_1024 = 0
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_1280 = block.timestamp
        comments[arg1][block.timestamp][block.hash(block.number - 1)][block.coinbase].field_1536 = 0
        sub_5193c94c[arg2]++
        sub_5193c94c[arg2][sub_5193c94c[arg2]] = sha3(arg1, block.timestamp, block.hash(block.number - 1), block.coinbase)
        sub_4a6b9c3c[address(msg.sender)] = block.timestamp
        require gas_remaining <= gas_remaining
        if stor1 < block.gasprice:
            if stor1:
                require stor1
                require 41761 * stor1 / stor1 == 41761
            call tx.origin with:
               value 41761 * stor1 wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * stor1);
        else:
            if block.gasprice:
                require block.gasprice
                require 41761 * block.gasprice / block.gasprice == 41761
            call tx.origin with:
               value 41761 * block.gasprice wei
                 gas 2300 * is_zero(value) wei
            emit Repaid(tx.origin, 41761 * block.gasprice);
        uint8(stor0.field_168) = 0
}



}
