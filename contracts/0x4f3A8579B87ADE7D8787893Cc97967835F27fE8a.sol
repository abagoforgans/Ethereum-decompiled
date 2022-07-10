contract main {




// =====================  Runtime code  =====================


#
#  - sub_057846e2(?)
#  - buy(uint256 arg1)
#
array of uint256 description;
array of uint256 sub_5594ed7c;
array of uint256 externalLink;
uint256 stor3;
address stor4;
address sub_1c70ecd3Address;
array of struct stor6;
array of struct balanceOf;
mapping of address ownerOf;
mapping of uint256 stor9;
uint256 stor10;
uint8 stor11;

function sub_1c70ecd3(?) {
    return sub_1c70ecd3Address
}

function sub_5594ed7c(?) {
    return sub_5594ed7c[0 len sub_5594ed7c.length]
}

function externalLink() {
    return externalLink[0 len externalLink.length]
}

function sub_60599c83(?) {
    return bool(stor11)
}

function ownerOf(uint256 arg1) {
    return ownerOf[arg1]
}

function sub_642b5f9b(?) {
    require arg1 < stor6.length
    return bool(uint8(stor6[arg1].field_256))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function description() {
    return description[0 len description.length]
}

function _fallback() payable {
    revert
}

function sub_c16a030d(?) {
    require msg.sender == sub_1c70ecd3Address
    stor11 = uint8(arg1)
}

function exists(uint256 arg1) {
    if arg1 < 0:
        return arg1 >= 0
    return (arg1 < stor6.length)
}

function sub_94707d8a(?) {
    require ownerOf[arg1] == msg.sender
    require stor9[arg1]
    stor9[arg1] = 0
    stor10--
}

function sub_1f917921(?) {
    require msg.sender == sub_1c70ecd3Address
    externalLink[] = Array(len=arg1.length, data=arg1[all])
}

function sub_6ce6e04f(?) {
    require msg.sender == sub_1c70ecd3Address
    sub_5594ed7c[] = Array(len=arg1.length, data=arg1[all])
}

function getBalance() {
    if stor4 != msg.sender:
        require msg.sender == sub_1c70ecd3Address
    return eth.balance(this.address)
}

function sub_79fafa6e(?) {
    require arg1 < stor6.length
    if uint8(stor6[arg1].field_256):
        revert with 0, 'Ticket already used!'
    mem[212] = uint64(this.address), Mask(96, 160, arg1) >> 160 or Mask(96, 160, mem[212])
    return sha3(arg1, mem[212 len 20])
}

function sub_fac2bfec(?) {
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = 6
        if not uint8(stor6[idx].field_256):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_c030ac73(?) {
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = idx
        mem[32] = 8
        if ownerOf[idx]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_f309455a(?) {
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = idx
        mem[32] = 8
        if not ownerOf[idx]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function withdraw() {
    require msg.sender == sub_1c70ecd3Address
    if stor4 != msg.sender:
        require msg.sender == sub_1c70ecd3Address
    call sub_1c70ecd3Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function proposeSale(uint256 arg1, uint256 arg2) {
    require arg1 < stor6.length
    if uint8(stor6[arg1].field_256):
        revert with 0, 'Ticket already used!'
    require ownerOf[arg1] == msg.sender
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please set a valid non-zero price'
    if not stor9[arg1]:
        stor10++
    stor9[arg1] = arg2
}

function sub_c72578e5(?) {
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = 6
        if uint8(stor6[idx].field_256):
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 8
        if not ownerOf[idx]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_cb11f72b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require ownerOf[mem[(32 * idx) + 128]] == msg.sender
        require stor9[mem[(32 * idx) + 128]]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        stor9[mem[(32 * idx) + 128]] = 0
        stor10--
        idx = idx + 1
        continue 
}

function issue(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == sub_1c70ecd3Address
    idx = 0
    while idx < arg1:
        _5 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5] = arg2
        mem[_5 + 32] = 0
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = arg2
        uint8(stor6[stor6.length].field_256) = 0
        idx = idx + 1
        continue 
}

function sub_eedf6cb8(?) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < stor6.length
    if uint8(stor6[arg1].field_256):
        revert with 0, 'Ticket already used!'
    mem[ceil32(arg2.length) + 160] = arg1
    mem[ceil32(arg2.length) + 128] = 52
    mem[ceil32(arg2.length) + 244] = uint64(this.address), Mask(96, 160, arg1) >> 160 or Mask(96, 160, mem[ceil32(arg2.length) + 244])
    require arg2.length == 65
    signer = erecover(sha3(arg1, mem[ceil32(arg2.length) + 244 len 20]), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (ownerOf[arg1] == address(signer))
}

function sub_abefc2d1(?) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < stor6.length
    if uint8(stor6[arg1].field_256):
        revert with 0, 'Ticket already used!'
    mem[ceil32(arg2.length) + 160] = arg1
    mem[ceil32(arg2.length) + 128] = 52
    mem[ceil32(arg2.length) + 244] = uint64(this.address), Mask(96, 160, arg1) >> 160 or Mask(96, 160, mem[ceil32(arg2.length) + 244])
    require arg2.length == 65
    signer = erecover(sha3(arg1, mem[ceil32(arg2.length) + 244 len 20]), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if ownerOf[arg1] != address(signer):
        revert with 0, 'Incorrect usage signature!'
    require arg1 < stor6.length
    if uint8(stor6[arg1].field_256):
        revert with 0, 'Ticket already used!'
    require arg1 < stor6.length
    uint8(stor6[arg1].field_256) = 1
    if stor9[arg1]:
        stor9[arg1] = 0
        stor10--
    return 1
}

function sub_493f263c(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require mem[(32 * idx) + 128] < stor6.length
        if uint8(stor6[mem[(32 * idx) + 128]].field_256):
            revert with 0, 'Ticket already used!'
        require ownerOf[mem[(32 * idx) + 128]] == msg.sender
        if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
            revert with 0, 'Please set a valid non-zero price'
        if not stor9[mem[(32 * idx) + 128]]:
            stor10++
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        stor9[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function forSale() {
    if not stor10:
        mem[(32 * stor10) + 128] = stor10
    else:
        mem[128 len 32 * stor10] = code.data[12419 len 32 * stor10]
        mem[(32 * stor10) + 128] = stor10
        mem[(32 * stor10) + 160 len 32 * stor10] = code.data[12419 len 32 * stor10]
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = idx
        mem[32] = 9
        if stor9[idx] <= 0:
            idx = idx + 1
            s = s
            continue 
        require s < stor10
        mem[(32 * s) + 128] = idx
        mem[0] = idx
        mem[32] = 9
        require s < mem[(32 * stor10) + 128]
        mem[(32 * s) + (32 * stor10) + 160] = stor9[idx]
        idx = idx + 1
        s = s + 1
        continue 
    require s == stor10
    mem[(64 * stor10) + 160] = s
    mem[(64 * stor10) + 192] = 96
    mem[(64 * stor10) + 256] = stor10
    mem[(64 * stor10) + 288 len floor32(stor10)] = mem[128 len floor32(stor10)]
    mem[(64 * stor10) + 224] = (32 * stor10) + 128
    mem[(98 * stor10) + 288] = mem[(32 * stor10) + 128]
    mem[(98 * stor10) + 320 len floor32(mem[(32 * stor10) + 128])] = mem[(32 * stor10) + 160 len floor32(mem[(32 * stor10) + 128])]
    return memory
      from (64 * stor10) + 160
       len (32 * mem[(32 * stor10) + 128]) + (161 * stor10) + 160
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3] == arg1
    if arg1 != msg.sender:
        require tx.origin == arg1
    require ownerOf[arg3] == arg1
    if stor9[arg3]:
        stor9[arg3] = 0
        stor10--
    idx = 0
    while idx < balanceOf[stor8[arg3]].field_0:
        mem[0] = sha3(ownerOf[arg3], 7)
        if balanceOf[stor8[arg3]][idx].field_0 != arg3:
            idx = idx + 1
            continue 
        require balanceOf[stor8[arg3]].field_0 - 1 < balanceOf[stor8[arg3]].field_0
        require idx < balanceOf[stor8[arg3]].field_0
        balanceOf[stor8[arg3]][idx].field_0 = balanceOf[stor8[arg3]][balanceOf[stor8[arg3]].field_0].field_0
        require balanceOf[stor8[arg3]].field_0 - 1 < balanceOf[stor8[arg3]].field_0
        balanceOf[stor8[arg3]][balanceOf[stor8[arg3]].field_0].field_0 = 0
        balanceOf[stor8[arg3]].field_0--
        if balanceOf[stor8[arg3]].field_0 > balanceOf[stor8[arg3]].field_0 - 1:
            idx = sha3(sha3(ownerOf[arg3], 7)) + balanceOf[stor8[arg3]].field_0 - 1
            while sha3(sha3(ownerOf[arg3], 7)) + balanceOf[stor8[arg3]].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        ownerOf[arg3] = arg2
        balanceOf[address(arg2)].field_0++
        balanceOf[address(arg2)][balanceOf[address(arg2)].field_0].field_0 = arg3
        require ext_code.size(stor4)
        call stor4.0xa5b46cae with:
             gas gas_remaining wei
            args address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    ownerOf[arg3] = arg2
    balanceOf[address(arg2)].field_0++
    balanceOf[address(arg2)][balanceOf[address(arg2)].field_0].field_0 = arg3
    require ext_code.size(stor4)
    call stor4.0xa5b46cae with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c86a3cf5(?) payable {
    require arg1 < stor6.length
    if uint8(stor6[arg1].field_256):
        revert with 0, 'Ticket already used!'
    require stor9[arg1] > 0
    require msg.value >= stor9[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    if stor9[arg1]:
        stor9[arg1] = 0
        stor10--
    idx = 0
    while idx < balanceOf[stor8[arg1]].field_0:
        mem[0] = sha3(ownerOf[arg1], 7)
        if balanceOf[stor8[arg1]][idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require balanceOf[stor8[arg1]].field_0 - 1 < balanceOf[stor8[arg1]].field_0
        require idx < balanceOf[stor8[arg1]].field_0
        balanceOf[stor8[arg1]][idx].field_0 = balanceOf[stor8[arg1]][balanceOf[stor8[arg1]].field_0].field_0
        require balanceOf[stor8[arg1]].field_0 - 1 < balanceOf[stor8[arg1]].field_0
        balanceOf[stor8[arg1]][balanceOf[stor8[arg1]].field_0].field_0 = 0
        balanceOf[stor8[arg1]].field_0--
        if balanceOf[stor8[arg1]].field_0 > balanceOf[stor8[arg1]].field_0 - 1:
            idx = sha3(sha3(ownerOf[arg1], 7)) + balanceOf[stor8[arg1]].field_0 - 1
            while sha3(sha3(ownerOf[arg1], 7)) + balanceOf[stor8[arg1]].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        ownerOf[arg1] = msg.sender
        balanceOf[address(msg.sender)].field_0++
        balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = arg1
        require ext_code.size(stor4)
        call stor4.0xa5b46cae with:
             gas gas_remaining wei
            args address(this.address), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1 < stor6.length
        if stor6[arg1].field_0 > msg.value:
            call ownerOf[arg1] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require arg1 < stor6.length
            require arg1 < stor6.length
            call ownerOf[arg1] with:
               value (msg.value - stor6[arg1].field_0 / 2) + stor6[arg1].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor4 with:
               value msg.value - stor6[arg1].field_0 / 2 / 100 * stor3 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg1 < stor6.length
            stor6[arg1].field_0 = msg.value
    ownerOf[arg1] = msg.sender
    balanceOf[address(msg.sender)].field_0++
    balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = arg1
    require ext_code.size(stor4)
    call stor4.0xa5b46cae with:
         gas gas_remaining wei
        args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < stor6.length
    if stor6[arg1].field_0 > msg.value:
        call ownerOf[arg1] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg1 < stor6.length
        require arg1 < stor6.length
        call ownerOf[arg1] with:
           value (msg.value - stor6[arg1].field_0 / 2) + stor6[arg1].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor4 with:
           value msg.value - stor6[arg1].field_0 / 2 / 100 * stor3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1 < stor6.length
        stor6[arg1].field_0 = msg.value
}

function myTickets() {
    if not balanceOf[address(msg.sender)].field_0:
        mem[(32 * balanceOf[address(msg.sender)].field_0) + 128] = balanceOf[address(msg.sender)].field_0
        mem[(64 * balanceOf[address(msg.sender)].field_0) + 160] = balanceOf[address(msg.sender)].field_0
    else:
        mem[128 len 32 * balanceOf[address(msg.sender)].field_0] = code.data[12419 len 32 * balanceOf[address(msg.sender)].field_0]
        mem[(32 * balanceOf[address(msg.sender)].field_0) + 128] = balanceOf[address(msg.sender)].field_0
        mem[(32 * balanceOf[address(msg.sender)].field_0) + 160 len 32 * balanceOf[address(msg.sender)].field_0] = code.data[12419 len 32 * balanceOf[address(msg.sender)].field_0]
        mem[(64 * balanceOf[address(msg.sender)].field_0) + 160] = balanceOf[address(msg.sender)].field_0
        mem[(64 * balanceOf[address(msg.sender)].field_0) + 192 len 32 * balanceOf[address(msg.sender)].field_0] = code.data[12419 len 32 * balanceOf[address(msg.sender)].field_0]
    s = 0
    idx = 0
    while idx < balanceOf[address(msg.sender)].field_0:
        mem[32] = 9
        if not stor9[stor7[address(msg.sender)][idx].field_0]:
            require balanceOf[address(msg.sender)][idx].field_0 < stor6.length
            require idx < balanceOf[address(msg.sender)].field_0
            mem[(32 * idx) + 128] = stor6[stor7[address(msg.sender)][idx].field_0].field_0
            require idx < mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]
            mem[(32 * idx) + (32 * balanceOf[address(msg.sender)].field_0) + 160] = 0
        else:
            mem[32] = 9
            require idx < balanceOf[address(msg.sender)].field_0
            mem[(32 * idx) + 128] = stor9[stor7[address(msg.sender)][idx].field_0]
            require idx < mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]
            mem[(32 * idx) + (32 * balanceOf[address(msg.sender)].field_0) + 160] = 1
        require balanceOf[address(msg.sender)][idx].field_0 < stor6.length
        mem[0] = 6
        require idx < mem[(64 * balanceOf[address(msg.sender)].field_0) + 160]
        mem[(32 * idx) + (64 * balanceOf[address(msg.sender)].field_0) + 192] = bool(uint8(stor6[stor7[address(msg.sender)][idx].field_0].field_256))
        s = balanceOf[address(msg.sender)][idx].field_0
        idx = idx + 1
        continue 
    mem[(98 * balanceOf[address(msg.sender)].field_0) + 192] = balanceOf[address(msg.sender)].field_0
    if not balanceOf[address(msg.sender)].field_0:
        mem[(131 * balanceOf[address(msg.sender)].field_0) + 224] = 128
        mem[(131 * balanceOf[address(msg.sender)].field_0) + 352] = balanceOf[address(msg.sender)].field_0
        mem[(131 * balanceOf[address(msg.sender)].field_0) + 384 len floor32(balanceOf[address(msg.sender)].field_0)] = mem[(98 * balanceOf[address(msg.sender)].field_0) + 224 len floor32(balanceOf[address(msg.sender)].field_0)]
        mem[(131 * balanceOf[address(msg.sender)].field_0) + 256] = (32 * balanceOf[address(msg.sender)].field_0) + 160
        mem[(164 * balanceOf[address(msg.sender)].field_0) + 384] = balanceOf[address(msg.sender)].field_0
        mem[(164 * balanceOf[address(msg.sender)].field_0) + 416 len floor32(balanceOf[address(msg.sender)].field_0)] = mem[128 len floor32(balanceOf[address(msg.sender)].field_0)]
        mem[(131 * balanceOf[address(msg.sender)].field_0) + 288] = (64 * balanceOf[address(msg.sender)].field_0) + 192
        mem[(165 * balanceOf[address(msg.sender)].field_0) + 416] = mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]
        mem[(165 * balanceOf[address(msg.sender)].field_0) + 448 len floor32(mem[(32 * balanceOf[address(msg.sender)].field_0) + 128])] = mem[(32 * balanceOf[address(msg.sender)].field_0) + 160 len floor32(mem[(32 * balanceOf[address(msg.sender)].field_0) + 128])]
        mem[(131 * balanceOf[address(msg.sender)].field_0) + 320] = (32 * mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]) + (64 * balanceOf[address(msg.sender)].field_0) + 224
        mem[(32 * mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]) + (165 * balanceOf[address(msg.sender)].field_0) + 448] = mem[(64 * balanceOf[address(msg.sender)].field_0) + 160]
        mem[(32 * mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]) + (165 * balanceOf[address(msg.sender)].field_0) + 480 len floor32(mem[(64 * balanceOf[address(msg.sender)].field_0) + 160])] = mem[(64 * balanceOf[address(msg.sender)].field_0) + 192 len floor32(mem[(64 * balanceOf[address(msg.sender)].field_0) + 160])]
        return memory
          from (131 * balanceOf[address(msg.sender)].field_0) + 224
           len (32 * mem[(64 * balanceOf[address(msg.sender)].field_0) + 160]) + (32 * mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]) + (66 * balanceOf[address(msg.sender)].field_0) + 256
    mem[(98 * balanceOf[address(msg.sender)].field_0) + 224] = balanceOf[address(msg.sender)].field_0
    idx = (98 * balanceOf[address(msg.sender)].field_0) + 224
    s = 0
    while (131 * balanceOf[address(msg.sender)].field_0) + 192 > idx:
        mem[idx + 32] = balanceOf[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(131 * balanceOf[address(msg.sender)].field_0) + 224] = 128
    mem[(131 * balanceOf[address(msg.sender)].field_0) + 352] = balanceOf[address(msg.sender)].field_0
    mem[(131 * balanceOf[address(msg.sender)].field_0) + 384 len floor32(balanceOf[address(msg.sender)].field_0)] = mem[(98 * balanceOf[address(msg.sender)].field_0) + 224 len floor32(balanceOf[address(msg.sender)].field_0)]
    mem[(131 * balanceOf[address(msg.sender)].field_0) + 256] = (32 * balanceOf[address(msg.sender)].field_0) + 160
    mem[(164 * balanceOf[address(msg.sender)].field_0) + 384] = balanceOf[address(msg.sender)].field_0
    mem[(164 * balanceOf[address(msg.sender)].field_0) + 416 len floor32(balanceOf[address(msg.sender)].field_0)] = mem[128 len floor32(balanceOf[address(msg.sender)].field_0)]
    mem[(131 * balanceOf[address(msg.sender)].field_0) + 288] = (64 * balanceOf[address(msg.sender)].field_0) + 192
    mem[(196 * balanceOf[address(msg.sender)].field_0) + 416] = mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]
    mem[(196 * balanceOf[address(msg.sender)].field_0) + 448 len floor32(mem[(32 * balanceOf[address(msg.sender)].field_0) + 128])] = mem[(32 * balanceOf[address(msg.sender)].field_0) + 160 len floor32(mem[(32 * balanceOf[address(msg.sender)].field_0) + 128])]
    mem[(131 * balanceOf[address(msg.sender)].field_0) + 320] = (32 * mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]) + (64 * balanceOf[address(msg.sender)].field_0) + 224
    mem[(32 * mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]) + (197 * balanceOf[address(msg.sender)].field_0) + 448] = mem[(64 * balanceOf[address(msg.sender)].field_0) + 160]
    mem[(32 * mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]) + (197 * balanceOf[address(msg.sender)].field_0) + 480 len floor32(mem[(64 * balanceOf[address(msg.sender)].field_0) + 160])] = mem[(64 * balanceOf[address(msg.sender)].field_0) + 192 len floor32(mem[(64 * balanceOf[address(msg.sender)].field_0) + 160])]
    return Array(len=balanceOf[address(msg.sender)].field_0, data=mem[(98 * balanceOf[address(msg.sender)].field_0) + 224 len floor32(balanceOf[address(msg.sender)].field_0)], mem[(131 * balanceOf[address(msg.sender)].field_0) + floor32(balanceOf[address(msg.sender)].field_0) + 384 len (33 * balanceOf[address(msg.sender)].field_0) - floor32(balanceOf[address(msg.sender)].field_0)], balanceOf[address(msg.sender)].field_0, mem[(164 * balanceOf[address(msg.sender)].field_0) + 416 len (32 * mem[(64 * balanceOf[address(msg.sender)].field_0) + 160]) + (32 * mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]) + (32 * balanceOf[address(msg.sender)].field_0) + 64]), 
           (32 * balanceOf[address(msg.sender)].field_0) + 160,
           (64 * balanceOf[address(msg.sender)].field_0) + 192,
           (32 * mem[(32 * balanceOf[address(msg.sender)].field_0) + 128]) + (64 * balanceOf[address(msg.sender)].field_0) + 224
}



}
