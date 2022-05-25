contract main {




// =====================  Runtime code  =====================


const sub_375c5d42(?) = 1


address sub_6d268a43Address;
address operatorAddress;
address minterAddress;
address sub_d7d6efe7Address;
uint8 stor4; offset 160
address sub_954f14e3Address;
address newContractAddress;
address sub_e64c5bd8Address;
uint128 artistCut;
array of struct stor8;
array of struct sub_ac3042c1;
mapping of uint256 sub_7184abc8;
array of uint256 sub_af5a6f89;
mapping of uint256 stor12;
mapping of uint256 stor13;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint64 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of struct stor110349606679412691172957834289542550319383271247755660854362242977991410020071;

function operatorAddress() {
    return operatorAddress
}

function sub_152bc9d6(?) {
    return sub_ac3042c1.length
}

function minterAddress() {
    return minterAddress
}

function paused() {
    return bool(stor4)
}

function newContractAddress() {
    return newContractAddress
}

function sub_6d268a43(?) {
    return sub_6d268a43Address
}

function sub_7184abc8(?) {
    require sub_7184abc8[arg1]
    require sub_7184abc8[arg1] < stor8.length
    return stor8[stor10[arg1]].field_0, 
           stor8[stor10[arg1]].field_256,
           stor8[stor10[arg1]].field_512,
           stor8[stor10[arg1]].field_768,
           sub_7184abc8[arg1]
}

function sub_954f14e3(?) {
    return sub_954f14e3Address
}

function sub_ac3042c1(?) {
    require arg1 >= 0
    require arg1 < sub_ac3042c1.length
    require sub_ac3042c1[arg1].field_0 < stor8.length
    return stor8[stor9[arg1].field_0].field_0, 
           stor8[stor9[arg1].field_0].field_256,
           stor8[stor9[arg1].field_0].field_512,
           stor8[stor9[arg1].field_0].field_768,
           sub_ac3042c1[arg1].field_0
}

function sub_af5a6f89(?) {
    require arg2 < sub_af5a6f89[address(arg1)]
    require arg2 < sub_af5a6f89[address(arg1)]
    require sub_af5a6f89[address(arg1)][arg2] < stor8.length
    return stor8[stor11[address(arg1)][arg2]].field_0, 
           stor8[stor11[address(arg1)][arg2]].field_256,
           stor8[stor11[address(arg1)][arg2]].field_512,
           stor8[stor11[address(arg1)][arg2]].field_768,
           sub_af5a6f89[address(arg1)][arg2]
}

function sub_d7d6efe7(?) {
    return sub_d7d6efe7Address
}

function sub_e64c5bd8(?) {
    return sub_e64c5bd8Address
}

function artistCut() {
    return artistCut
}

function sub_f75fdef2(?) {
    return sub_af5a6f89[address(arg1)]
}

function _fallback() {
  stop
}

function pause() {
    require msg.sender == operatorAddress
    require not stor4
    stor4 = 1
}

function sub_2dc4609a(?) {
    require msg.sender == sub_6d268a43Address
    require arg1
    sub_954f14e3Address = arg1
}

function sub_4505e4c4(?) {
    require msg.sender == sub_6d268a43Address
    require arg1
    sub_d7d6efe7Address = arg1
}

function setMinter(address arg1) {
    require msg.sender == sub_6d268a43Address
    require arg1
    minterAddress = arg1
}

function setOperator(address arg1) {
    require msg.sender == sub_6d268a43Address
    require arg1
    operatorAddress = arg1
}

function setAssigner(address arg1) {
    require msg.sender == sub_6d268a43Address
    require arg1
    sub_6d268a43Address = arg1
}

function setNewAddress(address arg1) {
    require msg.sender == sub_6d268a43Address
    require stor4
    newContractAddress = arg1
    emit ContractUpgrade(arg1);
}

function unpause() {
    require msg.sender == operatorAddress
    require stor4
    require not newContractAddress
    require msg.sender == operatorAddress
    require stor4
    stor4 = 0
}

function getPost(uint256 arg1) {
    require arg1 > 0
    require arg1 < stor8.length
    require stor8[arg1].field_1024 <= 1
    return stor8[arg1].field_0, stor8[arg1].field_256, stor8[arg1].field_512, stor8[arg1].field_768, arg1, stor8[arg1].field_1024
}

function withdrawBalance() {
    require msg.sender == sub_d7d6efe7Address
    call sub_d7d6efe7Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3177eea3(?) {
    require stor4
    require msg.sender == sub_6d268a43Address
    require ext_code.size(arg1)
    call arg1.0x1aab30be with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_e64c5bd8Address = arg1
}

function sub_f0bc351a(?) {
    require not stor4
    require arg1 > 0
    require arg1 < stor8.length
    require stor8[arg1].field_1024 <= 1
    require not stor8[arg1].field_1024
    require arg1 < stor8.length
    require msg.sender == stor8[arg1].field_0
    require arg1 < stor8.length
    stor8[arg1].field_256 = arg2
    emit 0xcd54c8d2: arg1, stor8[arg1].field_768, arg2, block.timestamp << 192, msg.sender
}

function sub_49f03a5f(?) {
    require stor4
    require msg.sender == operatorAddress
    require ext_code.size(sub_e64c5bd8Address)
    call sub_e64c5bd8Address.0x6352211e with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    stor8.length++
    stor8[stor8.length].field_0 = arg1
    storF3F7[stor8.length] = arg2
    storF3F7[stor8.length] = arg3
    storF3F7[stor8.length] = arg4
    storF3F7[stor8.length].field_0 = 0
    storF3F7[stor8.length].field_256 = 0
    sub_7184abc8[arg4] = stor8.length
    sub_af5a6f89[address(arg1)]++
    sub_af5a6f89[address(arg1)][sub_af5a6f89[address(arg1)]] = stor8.length
    stor12[stor8.length] = sub_af5a6f89[address(arg1)]
    sub_ac3042c1.length++
    sub_ac3042c1[sub_ac3042c1.length].field_0 = stor8.length
    stor13[stor8.length] = sub_ac3042c1.length
}

function sub_545899ca(?) {
    require stor4
    require msg.sender == operatorAddress
    if var23004 >= sub_ac3042c1.length:
    require var25003 < sub_ac3042c1.length
    require sub_ac3042c1[var25003].field_0 < stor8.length
    require ext_code.size(sub_e64c5bd8Address)
    call sub_e64c5bd8Address.0xa9059cbb with:
         gas gas_remaining wei
        args newContractAddress, stor8[stor9[var25003].field_0].field_768
    s = var25003
    t = var25001
    t = var25002
    t = var25003
    while ext_call.success:
        if t + 1 >= sub_ac3042c1.length:
        require sub_ac3042c1[t].field_512 < stor8.length
        mem[0] = 8
        mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[100] = newContractAddress
        mem[132] = stor8[stor9[t].field_512].field_768
        require ext_code.size(sub_e64c5bd8Address)
        call sub_e64c5bd8Address.0xa9059cbb with:
             gas gas_remaining wei
            args newContractAddress, stor8[stor9[t].field_512].field_768
        s = t + 1
        t = (5 * sub_ac3042c1[s].field_0) + sha3(8)
        t = sub_ac3042c1[s].field_0
        t = t + 1
        continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_d4d9c8e3(?) {
    require not stor4
    require msg.sender == sub_e64c5bd8Address
    require not sub_7184abc8[arg2]
    require ext_code.size(sub_e64c5bd8Address)
    call sub_e64c5bd8Address.0x6352211e with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == arg1
    require ext_code.size(sub_e64c5bd8Address)
    call sub_e64c5bd8Address.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor8.length++
    stor8[stor8.length].field_0 = arg1
    storF3F7[stor8.length] = arg3
    storF3F7[stor8.length] = uint64(block.timestamp)
    storF3F7[stor8.length] = arg2
    storF3F7[stor8.length].field_0 = 0
    storF3F7[stor8.length].field_256 = 0
    sub_7184abc8[arg2] = stor8.length
    sub_af5a6f89[address(arg1)]++
    sub_af5a6f89[address(arg1)][sub_af5a6f89[address(arg1)]] = stor8.length
    stor12[stor8.length] = sub_af5a6f89[address(arg1)]
    sub_ac3042c1.length++
    sub_ac3042c1[sub_ac3042c1.length].field_0 = stor8.length
    stor13[stor8.length] = sub_ac3042c1.length
    emit 0x5e4bcbae: stor8.length, arg2, arg3, block.timestamp << 192, arg1
}

function createPost(uint256 arg1, uint256 arg2) {
    require not stor4
    require not sub_7184abc8[arg1]
    require ext_code.size(sub_e64c5bd8Address)
    call sub_e64c5bd8Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_e64c5bd8Address)
    call sub_e64c5bd8Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor8.length++
    stor8[stor8.length].field_0 = msg.sender
    storF3F7[stor8.length] = arg2
    storF3F7[stor8.length] = uint64(block.timestamp)
    storF3F7[stor8.length] = arg1
    storF3F7[stor8.length].field_0 = 0
    storF3F7[stor8.length].field_256 = 0
    sub_7184abc8[arg1] = stor8.length
    sub_af5a6f89[address(msg.sender)]++
    sub_af5a6f89[address(msg.sender)][sub_af5a6f89[address(msg.sender)]] = stor8.length
    stor12[stor8.length] = sub_af5a6f89[address(msg.sender)]
    sub_ac3042c1.length++
    sub_ac3042c1[sub_ac3042c1.length].field_0 = stor8.length
    stor13[stor8.length] = sub_ac3042c1.length
    emit 0x5e4bcbae: stor8.length, arg1, arg2, block.timestamp << 192, msg.sender
}

function cancelPost(uint256 arg1) {
    require not stor4
    require arg1 > 0
    require arg1 < stor8.length
    require stor8[arg1].field_1024 <= 1
    require not stor8[arg1].field_1024
    require arg1 < stor8.length
    require msg.sender == stor8[arg1].field_0
    require arg1 < stor8.length
    stor8[arg1].field_1024 = 1
    require sub_af5a6f89[stor8[arg1].field_0] - 1 < sub_af5a6f89[stor8[arg1].field_0]
    sub_7184abc8[stor8[arg1].field_768] = 0
    require stor12[arg1] < sub_af5a6f89[stor8[arg1].field_0]
    sub_af5a6f89[stor8[arg1].field_0][stor12[arg1]] = sub_af5a6f89[stor8[arg1].field_0][sub_af5a6f89[stor8[arg1].field_0]]
    require sub_af5a6f89[stor8[arg1].field_0] - 1 < sub_af5a6f89[stor8[arg1].field_0]
    sub_af5a6f89[stor8[arg1].field_0][sub_af5a6f89[stor8[arg1].field_0]] = 0
    sub_af5a6f89[stor8[arg1].field_0]--
    if sub_af5a6f89[stor8[arg1].field_0] > sub_af5a6f89[stor8[arg1].field_0] - 1:
        idx = sub_af5a6f89[stor8[arg1].field_0] - 1
        while sub_af5a6f89[stor8[arg1].field_0] > idx:
            sub_af5a6f89[stor8[arg1].field_0][idx] = 0
            idx = idx + 1
            continue 
    stor12[arg1] = 0
    stor12[stor11[stor8[arg1].field_0][stor11[stor8[arg1].field_0]]] = stor12[arg1]
    require ext_code.size(sub_e64c5bd8Address)
    call sub_e64c5bd8Address.0xa9059cbb with:
         gas gas_remaining wei
        args stor8[arg1].field_0, stor8[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require sub_ac3042c1.length - 1 < sub_ac3042c1.length
    require stor13[arg1] < sub_ac3042c1.length
    sub_ac3042c1[stor13[arg1]].field_0 = sub_ac3042c1[sub_ac3042c1.length].field_0
    require sub_ac3042c1.length - 1 < sub_ac3042c1.length
    sub_ac3042c1[sub_ac3042c1.length].field_0 = 0
    sub_ac3042c1.length--
    if sub_ac3042c1.length > sub_ac3042c1.length - 1:
        idx = sub_ac3042c1.length - 1
        while sub_ac3042c1.length > idx:
            sub_ac3042c1[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor13[arg1] = 0
    stor13[stor9[stor9.length].field_0] = stor13[arg1]
    emit 0xa4e1dc0b: arg1, stor8[arg1].field_768, block.timestamp << 192, stor8[arg1].field_0
}

function sub_2fa67338(?) payable {
    require not stor4
    require arg1 > 0
    require arg1 < stor8.length
    require stor8[arg1].field_1024 <= 1
    require not stor8[arg1].field_1024
    require arg1 < stor8.length
    require stor8[arg1].field_0 != msg.sender
    require msg.value >= stor8[arg1].field_256
    stor8[arg1].field_1024 = 1
    call stor8[arg1].field_0 with:
       value msg.value * uint128(-artistCut + 10000) / 10000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_d7d6efe7Address with:
       value artistCut * msg.value / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(sub_e64c5bd8Address)
    call sub_e64c5bd8Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor8[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < stor8.length
    require sub_af5a6f89[stor8[arg1].field_0] - 1 < sub_af5a6f89[stor8[arg1].field_0]
    sub_7184abc8[stor8[arg1].field_768] = 0
    require stor12[arg1] < sub_af5a6f89[stor8[arg1].field_0]
    sub_af5a6f89[stor8[arg1].field_0][stor12[arg1]] = sub_af5a6f89[stor8[arg1].field_0][sub_af5a6f89[stor8[arg1].field_0]]
    require sub_af5a6f89[stor8[arg1].field_0] - 1 < sub_af5a6f89[stor8[arg1].field_0]
    sub_af5a6f89[stor8[arg1].field_0][sub_af5a6f89[stor8[arg1].field_0]] = 0
    sub_af5a6f89[stor8[arg1].field_0]--
    if sub_af5a6f89[stor8[arg1].field_0] > sub_af5a6f89[stor8[arg1].field_0] - 1:
        idx = sub_af5a6f89[stor8[arg1].field_0] - 1
        while sub_af5a6f89[stor8[arg1].field_0] > idx:
            sub_af5a6f89[stor8[arg1].field_0][idx] = 0
            idx = idx + 1
            continue 
    stor12[arg1] = 0
    stor12[stor11[stor8[arg1].field_0][stor11[stor8[arg1].field_0]]] = stor12[arg1]
    require sub_ac3042c1.length - 1 < sub_ac3042c1.length
    require stor13[arg1] < sub_ac3042c1.length
    sub_ac3042c1[stor13[arg1]].field_0 = sub_ac3042c1[sub_ac3042c1.length].field_0
    require sub_ac3042c1.length - 1 < sub_ac3042c1.length
    sub_ac3042c1[sub_ac3042c1.length].field_0 = 0
    sub_ac3042c1.length--
    if sub_ac3042c1.length > sub_ac3042c1.length - 1:
        idx = sub_ac3042c1.length - 1
        while sub_ac3042c1.length > idx:
            sub_ac3042c1[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor13[arg1] = 0
    stor13[stor9[stor9.length].field_0] = stor13[arg1]
    emit 0xad21b14c: arg1, stor8[arg1].field_768, msg.value, block.timestamp << 192, msg.sender, stor8[arg1].field_0
}



}
