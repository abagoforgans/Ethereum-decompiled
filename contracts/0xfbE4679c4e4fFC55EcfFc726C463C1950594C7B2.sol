contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    return code.data[82 len 21828]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of struct stor1;
array of struct stor2;
array of struct stor3;
mapping of address sub_a0e32870;
array of struct stor5;
address tokenContractAddress;
address sub_e79679d1Address;

function tokenContract() {
    return tokenContractAddress
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function sub_a0e32870(?) {
    return sub_a0e32870[address(arg1)]
}

function sub_e79679d1(?) {
    return sub_e79679d1Address
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getOffersCount() {
    if ext_code.size(msg.sender) <= 0:
        require owner == msg.sender
    else:
        require ext_code.size(msg.sender)
        call msg.sender.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == owner
    return stor3.length
}

function getOffer(uint256 arg1) {
    if ext_code.size(msg.sender) <= 0:
        require owner == msg.sender
    else:
        require ext_code.size(msg.sender)
        call msg.sender.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == owner
    require arg1 < stor3.length
    require arg1 >= 0
    require arg1 < stor3.length
    return address(stor3[arg1].field_0)
}

function sub_6df515b8(?) {
    if stor1.length:
        mem[160] = address(stor1.field_0)
        if (32 * stor1.length) + 32 > 64:
            mem[192] = address(stor1.field_256)
            idx = 192
            s = 1
            while (32 * stor1.length) + 128 > idx:
                mem[idx + 32] = address(stor1[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor1.length) + 160] = 32
    mem[(32 * stor1.length) + 192] = stor1.length
    mem[(32 * stor1.length) + 224 len floor32(stor1.length)] = mem[160 len floor32(stor1.length)]
    return memory
      from (32 * stor1.length) + 160
       len (96 * stor1.length) + 64
}

function sub_fb134a25(?) {
    if ext_code.size(msg.sender) <= 0:
        require owner == msg.sender
    else:
        require ext_code.size(msg.sender)
        call msg.sender.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == owner
    require not stor0
    require arg1
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require address(stor1[idx].field_0) != arg1
        idx = idx + 1
        continue 
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length].field_0) = arg1
}

function sub_cdbf6aeb(?) {
    require not stor0
    require not sub_a0e32870[address(msg.sender)]
    create contract with 0 wei
                    code: code.data[18906 len 2879], address(this.address), sub_e79679d1Address
    require create.new_address
    sub_a0e32870[address(msg.sender)] = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor5[stor5.length].field_0) = sub_a0e32870[address(msg.sender)]
    emit 0x1e0e5e68: sub_a0e32870[address(msg.sender)], msg.sender
}

function sub_4dafaee5(?) {
    if stor2[address(msg.sender)].field_0:
        mem[160] = address(stor2[address(msg.sender)].field_0)
        if (32 * stor2[address(msg.sender)].field_0) + 32 > 64:
            mem[192] = address(stor2[address(msg.sender)].field_256)
            idx = 192
            s = 1
            while (32 * stor2[address(msg.sender)].field_0) + 128 > idx:
                mem[idx + 32] = address(stor2[address(msg.sender)][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor2[address(msg.sender)].field_0) + 160] = 32
    mem[(32 * stor2[address(msg.sender)].field_0) + 192] = stor2[address(msg.sender)].field_0
    mem[(32 * stor2[address(msg.sender)].field_0) + 224 len floor32(stor2[address(msg.sender)].field_0)] = mem[160 len floor32(stor2[address(msg.sender)].field_0)]
    return memory
      from (32 * stor2[address(msg.sender)].field_0) + 160
       len (96 * stor2[address(msg.sender)].field_0) + 64
}

function getClients() {
    if ext_code.size(msg.sender) <= 0:
        require owner == msg.sender
    else:
        mem[160] = 0
        require ext_code.size(msg.sender)
        call msg.sender.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == owner
    if stor5.length:
        mem[160] = address(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[192] = address(stor5.field_256)
            idx = 192
            s = 1
            while (32 * stor5.length) + 128 > idx:
                mem[idx + 32] = address(stor5[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 160] = 32
    mem[(32 * stor5.length) + 192] = stor5.length
    mem[(32 * stor5.length) + 224 len floor32(stor5.length)] = mem[160 len floor32(stor5.length)]
    return memory
      from (32 * stor5.length) + 160
       len (96 * stor5.length) + 64
}

function sub_a6ee2b20(?) {
    if ext_code.size(msg.sender) <= 0:
        require owner == msg.sender
    else:
        require ext_code.size(msg.sender)
        call msg.sender.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == owner
    require not stor0
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == owner
    sub_e79679d1Address = arg1
    s = 0
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        mem[96] = 0xa6ee2b2000000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(address(stor5[idx].field_0))
        call address(stor5[idx].field_0).0xa6ee2b20 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        s = address(stor5[idx].field_0)
        idx = idx + 1
        continue 
}

function sub_64c48bf6(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if ext_code.size(msg.sender) <= 0:
        require owner == msg.sender
    else:
        require ext_code.size(msg.sender)
        call msg.sender.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[12 len 20] == owner
    require not stor0
    stor1.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor1.length > idx:
            address(stor1[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(stor1[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor1.length > idx:
            address(stor1[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function setTokensContract(address arg1) {
    if ext_code.size(msg.sender) <= 0:
        require owner == msg.sender
    else:
        require ext_code.size(msg.sender)
        call msg.sender.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == owner
    require not stor0
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == owner
    tokenContractAddress = arg1
    s = 0
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if address(stor3[idx].field_0) != arg1:
            mem[96] = 0x68a5285100000000000000000000000000000000000000000000000000000000
            mem[100] = tokenContractAddress
            require ext_code.size(address(stor3[idx].field_0))
            call address(stor3[idx].field_0).0x68a52851 with:
                 gas gas_remaining - 710 wei
                args tokenContractAddress
            require ext_call.success
        s = address(stor3[idx].field_0)
        idx = idx + 1
        continue 
}

function getOffers() {
    if ext_code.size(msg.sender) <= 0:
        require owner == msg.sender
    else:
        mem[160] = 0
        require ext_code.size(msg.sender)
        call msg.sender.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == owner
    if not stor3.length:
        mem[(32 * stor3.length) + 160] = 32
        mem[(32 * stor3.length) + 192] = stor3.length
        mem[(32 * stor3.length) + 224 len floor32(stor3.length)] = mem[160 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 160
           len (96 * stor3.length) + 64
    mem[160] = address(stor3.field_0)
    idx = 160
    s = 0
    while (32 * stor3.length) + 128 > idx:
        mem[idx + 32] = address(stor3[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 224 len floor32(stor3.length)] = mem[160 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[160 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 224 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function sub_5a3f6f4f(?) {
    require not stor0
    require arg1
    require ext_code.size(arg1)
    call arg1.0x6fd63351 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    create contract with 0 wei
                    code: code.data[10356 len 8550], msg.sender, address(arg1), tokenContractAddress
    require create.new_address
    stor2[address(msg.sender)].field_0++
    if not stor2[address(msg.sender)].field_0 <= stor2[address(msg.sender)].field_0 + 1:
        idx = stor2[address(msg.sender)].field_0 + 1
        while stor2[address(msg.sender)].field_0 > idx:
            stor2[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor2[address(msg.sender)][stor2[address(msg.sender)].field_0].field_0) = address(create.new_address)
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length].field_0) = address(create.new_address)
    require ext_code.size(sub_e79679d1Address)
    call sub_e79679d1Address.0xa553269b with:
         gas gas_remaining - 710 wei
        args address(create.new_address)
    require ext_call.success
    emit 0x87a8f5fe: address(create.new_address), msg.sender
}

function sub_923e50c8(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if ext_code.size(msg.sender) <= 0:
        require owner == msg.sender
    else:
        require ext_code.size(msg.sender)
        call msg.sender.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[12 len 20] == owner
    require not stor0
    stor5.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor5.length > idx:
            address(stor5[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(stor5[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor5.length > idx:
            address(stor5[idx].field_0) = 0
            idx = idx + 1
            continue 
    s = 0
    idx = 0
    while idx < stor5.length:
        mem[(32 * arg1.length) + 160] = 0
        require ext_code.size(address(stor5[idx].field_0))
        call address(stor5[idx].field_0).0x8da5cb5b with:
             gas gas_remaining - 710 wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        mem[0] = ext_call.return_data[12 len 20]
        mem[32] = 4
        sub_a0e32870[ext_call.return_data[12 len 20]] = address(stor5[idx].field_0)
        s = address(stor5[idx].field_0)
        idx = idx + 1
        continue 
}

function sub_c80aa0df(?) {
    require not stor0
    require ext_code.size(sub_a0e32870[address(msg.sender)])
    call sub_a0e32870[address(msg.sender)].0xa1558fdc with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(sub_a0e32870[address(msg.sender)])
    call sub_a0e32870[address(msg.sender)].0xa1558fdc with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xf8ed6ebf with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getBalance() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(sub_a0e32870[address(msg.sender)])
    call sub_a0e32870[address(msg.sender)].0xa1558fdc with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_a0e32870[address(msg.sender)])
    call sub_a0e32870[address(msg.sender)].0xde522dbd with:
         gas gas_remaining - 710 wei
        args address(arg1), 0
    require ext_call.success
    require ext_code.size(sub_a0e32870[address(msg.sender)])
    call sub_a0e32870[address(msg.sender)].0xa6ac02ec with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_e79679d1Address)
    call sub_e79679d1Address.0xd0ebe496 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
        require ext_code.size(sub_a0e32870[address(msg.sender)])
        call sub_a0e32870[address(msg.sender)].0x89592123 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    require ext_code.size(arg1)
    call arg1.payReward(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    emit 0x32e15437: ext_call.return_data[0], arg1, msg.sender
}

function sub_887b0349(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if ext_code.size(msg.sender) <= 0:
        require owner == msg.sender
    else:
        require ext_code.size(msg.sender)
        call msg.sender.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[12 len 20] == owner
    require not stor0
    stor3.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor3.length > idx:
            address(stor3[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(stor3[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor3.length > idx:
            address(stor3[idx].field_0) = 0
            idx = idx + 1
            continue 
    s = 0
    idx = 0
    while idx < stor3.length:
        mem[(32 * arg1.length) + 160] = 0
        require ext_code.size(address(stor3[idx].field_0))
        call address(stor3[idx].field_0).0x528b2627 with:
             gas gas_remaining - 710 wei
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        mem[32] = 2
        stor2[ext_call.return_data[12 len 20]].field_0++
        if not stor2[ext_call.return_data[12 len 20]].field_0 <= stor2[ext_call.return_data[12 len 20]].field_0 + 1:
            s = stor2[ext_call.return_data[12 len 20]].field_0 + sha3(sha3(ext_call.return_data[12 len 20], 2)) + 1
            while sha3(sha3(ext_call.return_data[12 len 20], 2)) + stor2[ext_call.return_data[12 len 20]].field_0 > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = sha3(ext_call.return_data[12 len 20], 2)
        address(stor2[ext_call.return_data[12 len 20]][stor2[ext_call.return_data[12 len 20]].field_0].field_0) = address(stor3[idx].field_0)
        s = address(stor3[idx].field_0)
        idx = idx + 1
        continue 
}

function cloneContract(address arg1) {
    require owner == msg.sender
    require arg1
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == owner
    if not stor1.length:
        require ext_code.size(arg1)
        call arg1.0x64c48bf6 with:
             gas gas_remaining - 710 wei
            args 32, stor1.length
    else:
        mem[164] = address(stor1.field_0)
        idx = 164
        s = 0
        while (32 * stor1.length) + 164 > idx + 32:
            mem[idx + 32] = address(stor1[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(arg1)
        call arg1.0x64c48bf6 with:
             gas gas_remaining - 710 wei
            args Array(len=stor1.length, data=mem[164 len 32 * stor1.length])
    require ext_call.success
    s = 0
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        mem[96] = 0x9a8cbfb100000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(address(stor5[idx].field_0))
        call address(stor5[idx].field_0).0x9a8cbfb1 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        s = address(stor5[idx].field_0)
        idx = idx + 1
        continue 
    if not stor5.length:
        require ext_code.size(arg1)
        call arg1.0x923e50c8 with:
             gas gas_remaining - 710 wei
            args 32, stor5.length
    else:
        mem[164] = address(stor5.field_0)
        idx = 164
        s = 0
        while (32 * stor5.length) + 164 > idx + 32:
            mem[idx + 32] = address(stor5[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(arg1)
        call arg1.0x923e50c8 with:
             gas gas_remaining - 710 wei
            args Array(len=stor5.length, data=mem[164 len 32 * stor5.length])
    require ext_call.success
    s = 0
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[96] = 0xf2fde38b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(address(stor3[idx].field_0))
        call address(stor3[idx].field_0).0xf2fde38b with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        s = address(stor3[idx].field_0)
        idx = idx + 1
        continue 
    if not stor3.length:
        require ext_code.size(arg1)
        call arg1.0x887b0349 with:
             gas gas_remaining - 710 wei
            args 32, stor3.length
    else:
        mem[164] = address(stor3.field_0)
        idx = 164
        s = 0
        while (32 * stor3.length) + 164 > idx + 32:
            mem[idx + 32] = address(stor3[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(arg1)
        call arg1.0x887b0349 with:
             gas gas_remaining - 710 wei
            args Array(len=stor3.length, data=mem[164 len 32 * stor3.length])
    require ext_call.success
    require ext_code.size(sub_e79679d1Address)
    call sub_e79679d1Address.0x9a8cbfb1 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x68a52851 with:
         gas gas_remaining - 710 wei
        args tokenContractAddress
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa6ee2b20 with:
         gas gas_remaining - 710 wei
        args sub_e79679d1Address
    require ext_call.success
}



}
