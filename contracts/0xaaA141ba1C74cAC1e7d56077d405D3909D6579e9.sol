contract main {




// =====================  Runtime code  =====================


#
#  - events(uint256 arg1)
#  - sub_2ff2be14(?)
#  - sub_711c5322(?)
#  - sub_7d26827d(?)
#
const decimals = 18


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint32 stor6;
uint256 stor6; offset 32
uint256 stor6;
uint32 stor7;
uint256 stor7; offset 32
uint256 stor7;
uint32 stor8;
uint256 stor8; offset 32
uint256 stor8;
uint32 stor9;
uint256 stor9; offset 32
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint16 stor16;
uint16 stor16; offset 16
uint16 stor16; offset 32
address sub_b80cc8baAddress; offset 48
bool stor17; offset 256
address stor17;
uint256 stor18;
uint256 stor19;
uint256 stor21;
uint256 eventCount;
mapping of address sub_3ff96222;
mapping of uint256 sub_194e6e9e;
mapping of uint256 sub_12a6b051;
array of struct sub_d9f8c294;
uint256 stor28;
mapping of address sub_ccb4bba7;
mapping of uint256 sub_ee201ee6;
mapping of uint256 sub_e51bbd97;
mapping of uint256 sub_f4f1a7ac;
array of uint256 sub_36d51c45;
array of struct sub_9236afca;
address sub_84a9d463Address;
address stor36;
mapping of address ticketToOwner;
mapping of uint256 sub_54fdfd4e;
mapping of uint256 sub_0bf43695;
mapping of uint256 sub_705553b0;
array of struct sub_d95e1e19;
array of uint256 stor92038740889592694858267878744606412364501637938221086577620191212259273460396;
array of uint256 stor92038740889592694858267878744606412364501637938221086577620191212259273460397;
array of uint256 stor92038740889592694858267878744606412364501637938221086577620191212259273460398;
array of struct stor92038740889592694858267878744606412364501637938221086577620191212259273460399;

function sub_0bf43695(?) {
    return sub_0bf43695[arg1]
}

function sub_12a6b051(?) {
    return sub_12a6b051[arg1]
}

function sub_194e6e9e(?) {
    return sub_194e6e9e[arg1]
}

function getTicketDetails(uint256 arg1) {
    require msg.sender == address(ticketToOwner[arg1])
    require arg1 < sub_d95e1e19.length
    return sub_d95e1e19[arg1].field_0, 
           sub_d95e1e19[arg1].field_256,
           sub_d95e1e19[arg1].field_512,
           sub_d95e1e19[arg1].field_768,
           sub_d95e1e19[arg1].field_784
}

function ticketToOwner(uint256 arg1) {
    return address(ticketToOwner[arg1])
}

function sub_36d51c45(?) {
    return sub_36d51c45[arg1][0 len sub_36d51c45[arg1].length]
}

function sub_3ff96222(?) {
    return sub_3ff96222[arg1]
}

function sub_54fdfd4e(?) {
    return sub_54fdfd4e[arg1]
}

function sub_705553b0(?) {
    return sub_705553b0[arg1]
}

function eventCount() {
    return eventCount
}

function sub_84a9d463(?) {
    return sub_84a9d463Address
}

function owner() {
    return owner
}

function sub_9236afca(?) {
    require arg1 < sub_9236afca.length
    mem[128] = stor[sha3((7 * arg1) + ('name', 'sub_9236afca', 34) + 6)].field_0
    idx = 128
    s = 0
    while stor[(7 * arg1) + ('name', 'sub_9236afca', 34) + 6].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'sub_9236afca', 34) + 6)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_9236afca[arg1].field_0, 
           sub_9236afca[arg1].field_256,
           sub_9236afca[arg1].field_512,
           sub_9236afca[arg1].field_768,
           sub_9236afca[arg1].field_1024,
           sub_9236afca[arg1].field_1280,
           sub_9236afca[arg1].field_1280,
           sub_9236afca[arg1].field_1280,
           Array(len=stor[(7 * arg1) + ('name', 'sub_9236afca', 34) + 6].length, data=mem[128 len stor[(7 * arg1) + ('name', 'sub_9236afca', 34) + 6].length])
}

function sub_b80cc8ba(?) {
    return sub_b80cc8baAddress
}

function sub_ccb4bba7(?) {
    return address(sub_ccb4bba7[arg1])
}

function sub_d95e1e19(?) {
    require msg.sender == owner
    require arg1 < sub_d95e1e19.length
    return sub_d95e1e19[arg1].field_0, 
           sub_d95e1e19[arg1].field_256,
           sub_d95e1e19[arg1].field_512,
           sub_d95e1e19[arg1].field_768,
           sub_d95e1e19[arg1].field_784
}

function sub_d9f8c294(?) {
    require msg.sender == sub_3ff96222[arg1]
    require arg1 < sub_d9f8c294.length
    return sub_d9f8c294[arg1].field_544
}

function sub_dc017725(?) {
    require arg1 < sub_9236afca.length
    return sub_9236afca[arg1].field_1280
}

function sub_e51bbd97(?) {
    return sub_e51bbd97[arg1]
}

function sub_ee201ee6(?) {
    return sub_ee201ee6[arg1]
}

function sub_f4f1a7ac(?) {
    return sub_f4f1a7ac[arg1]
}

function _fallback() payable {
    revert
}

function sub_aa2a2b06(?) {
    return stor10, stor11, stor12, stor13
}

function sub_0eee01ec(?) {
    require msg.sender == owner
    stor14 = arg1
}

function balanceOfContract() {
    require msg.sender == owner
    return eth.balance(this.address)
}

function sub_118a480d(?) {
    require msg.sender == owner
    stor10 = arg1
    stor11 = arg2
    stor12 = arg3
    stor13 = arg4
}

function setMinterContractAddress(address arg1) {
    require msg.sender == owner
    sub_84a9d463Address = arg1
    stor36 = arg1
}

function sub_b517e5fe(?) {
    return stor3, stor4, stor5, uint16(stor16.field_0), uint16(stor16.field_16), uint16(stor16.field_0)
}

function sub_a4295551(?) {
    return uint256(stor6.field_0), uint256(stor7.field_0), uint256(stor8.field_0), uint256(stor9.field_0)
}

function sub_fb2ba7df(?) {
    require msg.sender == sub_3ff96222[arg2]
    sub_36d51c45[arg3][] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTokenContractAddress(address arg1) {
    require msg.sender == owner
    sub_b80cc8baAddress = arg1
    address(stor17.field_0) = arg1
    stor17.field_256 % 1 = 0
}

function sub_c6654d69(?) {
    require msg.sender == owner
    stor3 = 10^18 * arg1
    stor4 = 10^18 * arg2
    stor5 = 10^18 * arg3
    uint16(stor16.field_0) = arg4
    uint16(stor16.field_16) = arg5
    uint16(stor16.field_32) = arg6
}

function sub_103287d6(?) {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5b5386bb(?) {
    require msg.sender == owner
    sub_3ff96222[arg1] = owner
    require arg1 < sub_d9f8c294.length
    sub_d9f8c294[arg1].field_1536 = owner
    require sub_194e6e9e[stor0] + 1 >= sub_194e6e9e[stor0]
    sub_194e6e9e[stor0]++
    require 1 <= sub_194e6e9e[stor24[arg1]]
    sub_194e6e9e[stor24[arg1]]--
}

function sub_ef58b4b4(?) {
    require msg.sender == owner
    uint32(stor6.field_0) = arg1
    Mask(224, 0, stor6.field_32) = 0
    uint32(stor7.field_0) = arg2
    Mask(224, 0, stor7.field_32) = 0
    uint32(stor8.field_0) = arg3
    Mask(224, 0, stor8.field_32) = 0
    uint32(stor9.field_0) = arg4
    Mask(224, 0, stor9.field_32) = 0
}

function sub_25826334(?) {
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function checkContractTokenBalance() {
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a4a2b831(?) {
    require msg.sender == sub_3ff96222[arg1]
    require arg1 < sub_d9f8c294.length
    sub_d9f8c294[arg1].field_1792++
    stor[sha3(('name', 'sub_d9f8c294', 27) + (8 * arg1) + 7) + sub_d9f8c294[arg1].field_1792].field_0 = arg2
    require sub_12a6b051[address(arg2)] + 1 >= sub_12a6b051[address(arg2)]
    sub_12a6b051[address(arg2)]++
}

function tokenAllowance(address arg1, address arg2) {
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function tokenTransfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function tokenTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_ed4be263(?) {
    require msg.sender == sub_3ff96222[arg1]
    stor18 = 0
    stor19 = 0
    idx = 0
    while idx < sub_9236afca.length:
        mem[0] = idx
        mem[32] = 29
        if msg.sender == address(sub_ccb4bba7[idx]):
            require idx < sub_9236afca.length
            stor18 += sub_9236afca[idx].field_512
            mem[0] = 34
            stor19 += sub_9236afca[idx].field_1024
        idx = idx + 1
        continue 
    return stor18, stor19
}

function sub_f1a124df(?) {
    if sub_f4f1a7ac[arg1]:
        mem[128 len 32 * sub_f4f1a7ac[arg1]] = code.data[24565 len 32 * sub_f4f1a7ac[arg1]]
    stor28 = 0
    idx = 0
    while idx < sub_9236afca.length:
        mem[0] = idx
        mem[32] = 31
        if arg1 == sub_e51bbd97[idx]:
            require stor28 < sub_f4f1a7ac[arg1]
            mem[(32 * stor28) + 128] = idx
            stor28++
        idx = idx + 1
        continue 
    mem[(32 * sub_f4f1a7ac[arg1]) + 192 len floor32(sub_f4f1a7ac[arg1])] = mem[128 len floor32(sub_f4f1a7ac[arg1])]
    return Array(len=sub_f4f1a7ac[arg1], data=mem[128 len floor32(sub_f4f1a7ac[arg1])], mem[(32 * sub_f4f1a7ac[arg1]) + floor32(sub_f4f1a7ac[arg1]) + 192 len (32 * sub_f4f1a7ac[arg1]) - floor32(sub_f4f1a7ac[arg1])]), 
}

function sub_e110f9ae(?) {
    require msg.sender == sub_84a9d463Address
    require arg3 < sub_d95e1e19.length
    if 1 == sub_d95e1e19[arg3].field_768:
        require 1 <= sub_0bf43695[address(arg1)]
        sub_0bf43695[address(arg1)]--
        require sub_0bf43695[arg2] + 1 >= sub_0bf43695[arg2]
        sub_0bf43695[address(arg2)] = sub_0bf43695[arg2] + 1
    require 1 <= sub_54fdfd4e[address(arg1)]
    sub_54fdfd4e[address(arg1)]--
    require sub_54fdfd4e[arg2] + 1 >= sub_54fdfd4e[arg2]
    sub_54fdfd4e[address(arg2)] = sub_54fdfd4e[arg2] + 1
    require arg3 < sub_d95e1e19.length
    require stor21
    require arg3 < sub_d95e1e19.length
    sub_d95e1e19[arg3].field_512 = sha3(sub_d95e1e19[arg3].field_0, block.timestamp, msg.sender, sub_d95e1e19[arg3].field_256, block.timestamp) % stor21
    sub_d95e1e19[arg3].field_784 = arg2
    return 1
}

function sub_74c2ad63(?) {
    if sub_194e6e9e[address(arg1)]:
        mem[128 len 32 * sub_194e6e9e[address(arg1)]] = code.data[24565 len 32 * sub_194e6e9e[address(arg1)]]
    stor28 = 0
    idx = 0
    while idx < sub_d9f8c294.length:
        mem[0] = idx
        mem[32] = 24
        if sub_3ff96222[idx] == arg1:
            require stor28 < sub_194e6e9e[address(arg1)]
            mem[(32 * stor28) + 128] = idx
            stor28++
        idx = idx + 1
        continue 
    mem[(32 * sub_194e6e9e[address(arg1)]) + 192 len floor32(sub_194e6e9e[address(arg1)])] = mem[128 len floor32(sub_194e6e9e[address(arg1)])]
    return Array(len=sub_194e6e9e[address(arg1)], data=mem[128 len floor32(sub_194e6e9e[address(arg1)])], mem[(32 * sub_194e6e9e[address(arg1)]) + floor32(sub_194e6e9e[address(arg1)]) + 192 len (32 * sub_194e6e9e[address(arg1)]) - floor32(sub_194e6e9e[address(arg1)])]), 
}

function sub_7a9427f0(?) {
    if sub_ee201ee6[address(arg1)]:
        mem[128 len 32 * sub_ee201ee6[address(arg1)]] = code.data[24565 len 32 * sub_ee201ee6[address(arg1)]]
    stor28 = 0
    idx = 0
    while idx < sub_9236afca.length:
        mem[0] = idx
        mem[32] = 29
        if address(sub_ccb4bba7[idx]) == arg1:
            require stor28 < sub_ee201ee6[address(arg1)]
            mem[(32 * stor28) + 128] = idx
            stor28++
        idx = idx + 1
        continue 
    mem[(32 * sub_ee201ee6[address(arg1)]) + 192 len floor32(sub_ee201ee6[address(arg1)])] = mem[128 len floor32(sub_ee201ee6[address(arg1)])]
    return Array(len=sub_ee201ee6[address(arg1)], data=mem[128 len floor32(sub_ee201ee6[address(arg1)])], mem[(32 * sub_ee201ee6[address(arg1)]) + floor32(sub_ee201ee6[address(arg1)]) + 192 len (32 * sub_ee201ee6[address(arg1)]) - floor32(sub_ee201ee6[address(arg1)])]), 
}

function sub_00e11680(?) {
    if sub_54fdfd4e[address(msg.sender)]:
        mem[128 len 32 * sub_54fdfd4e[address(msg.sender)]] = code.data[24565 len 32 * sub_54fdfd4e[address(msg.sender)]]
    stor28 = 0
    idx = 0
    while idx < sub_d95e1e19.length:
        mem[0] = idx
        mem[32] = 37
        if msg.sender == address(ticketToOwner[idx]):
            require stor28 < sub_54fdfd4e[address(msg.sender)]
            mem[(32 * stor28) + 128] = idx
            stor28++
        idx = idx + 1
        continue 
    mem[(32 * sub_54fdfd4e[address(msg.sender)]) + 192 len floor32(sub_54fdfd4e[address(msg.sender)])] = mem[128 len floor32(sub_54fdfd4e[address(msg.sender)])]
    return Array(len=sub_54fdfd4e[address(msg.sender)], data=mem[128 len floor32(sub_54fdfd4e[address(msg.sender)])], mem[(32 * sub_54fdfd4e[address(msg.sender)]) + floor32(sub_54fdfd4e[address(msg.sender)]) + 192 len (32 * sub_54fdfd4e[address(msg.sender)]) - floor32(sub_54fdfd4e[address(msg.sender)])]), 
}

function sub_414c5306(?) {
    require msg.sender == sub_3ff96222[arg1]
    stor18 = 0
    stor19 = 0
    idx = 0
    while idx < sub_9236afca.length:
        mem[0] = idx
        mem[32] = 29
        if msg.sender == address(sub_ccb4bba7[idx]):
            require idx < sub_9236afca.length
            stor18 += sub_9236afca[idx].field_512
            stor19 += sub_9236afca[idx].field_1024
            sub_9236afca[idx].field_512 = 0
            mem[0] = 34
            sub_9236afca[idx].field_1024 = 0
        idx = idx + 1
        continue 
    call msg.sender with:
       value stor18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f8393106(?) {
    require msg.sender == sub_3ff96222[arg2]
    require arg1 < sub_d95e1e19.length
    if not sub_d95e1e19[arg1].field_768:
        require arg1 < sub_d95e1e19.length
        sub_d95e1e19[arg1].field_768 = 1
        sub_d95e1e19[arg1].field_776 = 0
        require sub_d95e1e19[arg1].field_256 < sub_9236afca.length
        require 1 <= sub_9236afca[stor41[arg1].field_256].field_1312
        require arg1 < sub_d95e1e19.length
        require sub_d95e1e19[arg1].field_256 < sub_9236afca.length
        sub_9236afca[stor41[arg1].field_256].field_1312 = uint32(sub_9236afca[stor41[arg1].field_256].field_1312 - 1)
        require arg1 < sub_d95e1e19.length
        require sub_d95e1e19[arg1].field_0 < sub_d9f8c294.length
        require 1 <= sub_d9f8c294[stor41[arg1].field_0].field_576
        require arg1 < sub_d95e1e19.length
        require sub_d95e1e19[arg1].field_0 < sub_d9f8c294.length
        sub_d9f8c294[stor41[arg1].field_0].field_576 = uint32(sub_d9f8c294[stor41[arg1].field_0].field_576 - 1)
        require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
        sub_0bf43695[msg.sender]++
        require arg1 < sub_d95e1e19.length
        emit 0x9aab9a75: arg2, sub_d95e1e19[arg1].field_256, arg1
}

function sub_59bbcb33(?) {
    require arg1 < sub_d9f8c294.length
    if not sub_d9f8c294[arg1].field_1792:
        mem[(32 * sub_d9f8c294[arg1].field_1792) + 128] = 32
        mem[(32 * sub_d9f8c294[arg1].field_1792) + 160] = sub_d9f8c294[arg1].field_1792
        mem[(32 * sub_d9f8c294[arg1].field_1792) + 192 len floor32(sub_d9f8c294[arg1].field_1792)] = mem[128 len floor32(sub_d9f8c294[arg1].field_1792)]
        return memory
          from (32 * sub_d9f8c294[arg1].field_1792) + 128
           len (96 * sub_d9f8c294[arg1].field_1792) + 64
    mem[128] = stor[sha3((8 * arg1) + ('name', 'sub_d9f8c294', 27) + 7)].field_0
    idx = 128
    s = 0
    while (32 * sub_d9f8c294[arg1].field_1792) + 96 > idx:
        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'sub_d9f8c294', 27) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_d9f8c294[arg1].field_1792) + 192 len floor32(sub_d9f8c294[arg1].field_1792)] = mem[128 len floor32(sub_d9f8c294[arg1].field_1792)]
    return Array(len=sub_d9f8c294[arg1].field_1792, data=mem[128 len floor32(sub_d9f8c294[arg1].field_1792)], mem[(32 * sub_d9f8c294[arg1].field_1792) + floor32(sub_d9f8c294[arg1].field_1792) + 192 len (32 * sub_d9f8c294[arg1].field_1792) - floor32(sub_d9f8c294[arg1].field_1792)]), 
}

function sub_731bde7a(?) payable {
    mem[64] = 96
    require not msg.value
    mem[32] = 24
    require msg.sender == sub_3ff96222[arg1]
    stor28 = 0
    require arg1 < sub_d9f8c294.length
    if var19004 >= sub_d9f8c294[arg1].field_1792:
    require arg1 < sub_d9f8c294.length
    require var23005 < sub_d9f8c294[arg1].field_1792
    if stor[sha3((8 * arg1) + ('name', 'sub_d9f8c294', 27) + 7) + var23005].field_0 != arg2:
        if arg1 < sub_d9f8c294.length:
            mem[0] = 27
            if var23005 + 1 >= sub_d9f8c294[arg1].field_1792:
            if arg1 < sub_d9f8c294.length:
                var23005 = var23005 + 1
                continue 
    else:
        if arg1 < sub_d9f8c294.length:
            if var23005 < sub_d9f8c294[arg1].field_1792:
                stor[var23005 + sha3((8 * arg1) + ('name', 'sub_d9f8c294', 27) + 7)].field_0 = 0
                if 1 <= sub_12a6b051[address(arg2)]:
                    mem[32] = 26
                    sub_12a6b051[address(arg2)]--
                    stor28++
                    if arg1 < sub_d9f8c294.length:
                        mem[0] = 27
                        if var23005 + 1 >= sub_d9f8c294[arg1].field_1792:
                        if arg1 < sub_d9f8c294.length:
                            var23005 = var23005 + 1
                            continue 
    revert
}

function sub_dd0f5177(?) {
    require msg.sender == owner
    stor18 = 0
    stor19 = 0
    idx = 0
    while idx < sub_9236afca.length:
        mem[0] = idx
        mem[32] = 29
        if msg.sender == address(sub_ccb4bba7[idx]):
            require idx < sub_9236afca.length
            stor18 += sub_9236afca[idx].field_512
            mem[0] = 34
            stor19 += sub_9236afca[idx].field_1024
        idx = idx + 1
        continue 
    require stor18 <= eth.balance(this.address)
    require eth.balance(this.address) - stor18 >= 0
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor19 <= ext_call.return_data[0]
    require ext_call.return_data[0] - stor19 >= 0
    require stor18 <= eth.balance(this.address)
    call owner with:
       value eth.balance(this.address) - stor18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor19 <= ext_call.return_data[0]
    require msg.sender == owner
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0] - stor19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 'Successful Withdraw.'
}

function sub_75838392(?) payable {
    mem[64] = 96
    require not msg.value
    stor28 = 0
    require arg1 < sub_d9f8c294.length
    if var13003 >= sub_d9f8c294[arg1].field_1792:
        if arg1 < sub_d9f8c294.length:
            if stor28 < sub_d9f8c294[arg1].field_1792:
                require msg.sender == stor[sha3((8 * arg1) + ('name', 'sub_d9f8c294', 27) + 7) + stor28].field_0
                if arg2 < sub_d95e1e19.length:
                    return sub_d95e1e19[arg2].field_0, 
                           sub_d95e1e19[arg2].field_256,
                           sub_d95e1e19[arg2].field_512,
                           sub_d95e1e19[arg2].field_768,
                           sub_d95e1e19[arg2].field_784
    else:
        if arg1 < sub_d9f8c294.length:
            if var17004 < sub_d9f8c294[arg1].field_1792:
                if stor[sha3((8 * arg1) + ('name', 'sub_d9f8c294', 27) + 7) + var17004].field_0 == msg.sender:
                    stor28 = var17004
                if arg1 < sub_d9f8c294.length:
                    mem[0] = 27
                    if var17004 + 1 < sub_d9f8c294[arg1].field_1792:
                        if arg1 < sub_d9f8c294.length:
                            var17004 = var17004 + 1
                            continue 
                    else:
                        if arg1 < sub_d9f8c294.length:
                            if stor28 < sub_d9f8c294[arg1].field_1792:
                                require msg.sender == stor[sha3((8 * arg1) + ('name', 'sub_d9f8c294', 27) + 7) + stor28].field_0
                                if arg2 < sub_d95e1e19.length:
                                    return sub_d95e1e19[arg2].field_0, 
                                           sub_d95e1e19[arg2].field_256,
                                           sub_d95e1e19[arg2].field_512,
                                           sub_d95e1e19[arg2].field_768,
                                           sub_d95e1e19[arg2].field_784
    revert
}

function sub_b5e7750c(?) payable {
    mem[64] = 96
    require not msg.value
    stor28 = 0
    require arg2 < sub_d9f8c294.length
    require arg2 < sub_d9f8c294.length
    if var13003 < sub_d9f8c294[arg2].field_1792:
        require var17004 < sub_d9f8c294[arg2].field_1792
        if stor[sha3((8 * arg2) + ('name', 'sub_d9f8c294', 27) + 7) + var17004].field_0 == msg.sender:
            stor28 = var17004
        require arg2 < sub_d9f8c294.length
        mem[0] = 27
        if var17004 + 1 < sub_d9f8c294[arg2].field_1792:
            require arg2 < sub_d9f8c294.length
            var17004 = var17004 + 1
            continue 
    require stor28 < sub_d9f8c294[arg2].field_1792
    require msg.sender == stor[sha3((8 * arg2) + ('name', 'sub_d9f8c294', 27) + 7) + stor28].field_0
    require arg1 < sub_d95e1e19.length
    require 1 == sub_d95e1e19[arg1].field_768
    require arg1 < sub_d95e1e19.length
    require sub_d95e1e19[arg1].field_512 == arg3
    require arg1 < sub_d95e1e19.length
    sub_d95e1e19[arg1].field_768 = 0
    require 1 <= sub_0bf43695[msg.sender]
    sub_0bf43695[msg.sender]--
    require arg1 < sub_d95e1e19.length
    require sub_d95e1e19[arg1].field_256 < sub_9236afca.length
    require uint32(sub_9236afca[stor41[arg1].field_256].field_1312 + 1) >= sub_9236afca[stor41[arg1].field_256].field_1312
    require arg1 < sub_d95e1e19.length
    require sub_d95e1e19[arg1].field_256 < sub_9236afca.length
    sub_9236afca[stor41[arg1].field_256].field_1312 = uint32(sub_9236afca[stor41[arg1].field_256].field_1312 + 1)
    require arg1 < sub_d95e1e19.length
    require sub_d95e1e19[arg1].field_0 < sub_d9f8c294.length
    require uint32(sub_d9f8c294[stor41[arg1].field_0].field_576 + 1) >= sub_d9f8c294[stor41[arg1].field_0].field_576
    require arg1 < sub_d95e1e19.length
    require sub_d95e1e19[arg1].field_0 < sub_d9f8c294.length
    sub_d9f8c294[stor41[arg1].field_0].field_576 = uint32(sub_d9f8c294[stor41[arg1].field_0].field_576 + 1)
    require arg1 < sub_d95e1e19.length
    emit 0x46408c32: arg2, sub_d95e1e19[arg1].field_256, arg1
}

function sub_a9b01efc(?) payable {
    require msg.sender == sub_3ff96222[arg1]
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = ext_call.return_data[0]
    if stor3 > ext_call.return_data[0]:
        stor2 = 100
    if stor1 < stor3:
        if stor1 >= stor4:
            if stor1 < stor5:
                stor2 = uint16(stor16.field_16)
    else:
        if stor1 < stor4:
            stor2 = uint16(stor16.field_0)
        else:
            if stor1 < stor5:
                stor2 = uint16(stor16.field_16)
    if stor1 > stor5:
        stor2 = uint16(stor16.field_32)
    if arg3 != 1:
        if not arg3:
            stor15 = stor2 * stor11 / 100
            require msg.value == stor2 * stor11 / 100
    else:
        stor15 = stor2 * uint256(stor7.field_0) / 100
        require ext_code.size(address(stor17.field_0))
        call address(stor17.field_0).0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= stor2 * uint256(stor7.field_0) / 100
        require not msg.value
        require ext_code.size(address(stor17.field_0))
        call address(stor17.field_0).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    sub_3ff96222[arg1] = arg2
    require arg1 < sub_d9f8c294.length
    sub_d9f8c294[arg1].field_1536 = arg2
    require 1 <= sub_194e6e9e[msg.sender]
    sub_194e6e9e[msg.sender]--
    require sub_194e6e9e[arg2] + 1 >= sub_194e6e9e[arg2]
    sub_194e6e9e[address(arg2)] = sub_194e6e9e[arg2] + 1
}

function sub_eda44e00(?) payable {
    require msg.sender == sub_3ff96222[arg1]
    require arg2 < sub_9236afca.length
    require sub_9236afca[arg2].field_1280 <= arg5
    require arg1 < sub_d9f8c294.length
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = ext_call.return_data[0]
    if stor3 > ext_call.return_data[0]:
        stor2 = 100
    if stor1 < stor3:
        if stor1 >= stor4:
            if stor1 < stor5:
                stor2 = uint16(stor16.field_16)
    else:
        if stor1 < stor4:
            stor2 = uint16(stor16.field_0)
        else:
            if stor1 < stor5:
                stor2 = uint16(stor16.field_16)
    if stor1 > stor5:
        stor2 = uint16(stor16.field_32)
    if arg7 != 1:
        if not arg7:
            stor15 = stor2 * stor11 / 100
            require msg.value == stor2 * stor11 / 100
    else:
        stor15 = stor2 * uint256(stor7.field_0) / 100
        require ext_code.size(address(stor17.field_0))
        call address(stor17.field_0).0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= stor2 * uint256(stor7.field_0) / 100
        require not msg.value
        require ext_code.size(address(stor17.field_0))
        call address(stor17.field_0).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require arg2 < sub_9236afca.length
    sub_9236afca[arg2].field_256 = arg3
    sub_9236afca[arg2].field_288 = 0
    sub_9236afca[arg2].field_768 = arg4
    sub_9236afca[arg2].field_800 = 0
    require sub_9236afca[arg2].field_1280 <= arg5
    require arg2 < sub_9236afca.length
    require sub_9236afca[arg2].field_1280 <= arg5
    if uint32(arg5 - sub_9236afca[arg2].field_1280) >= 0:
        require arg1 < sub_d9f8c294.length
        require uint32(arg5 - sub_9236afca[arg2].field_1280) <= sub_d9f8c294[arg1].field_544
    else:
        if uint32(arg5 - sub_9236afca[arg2].field_1280) < 0:
            require arg2 < sub_9236afca.length
            require arg5 <= sub_9236afca[arg2].field_1280
            require arg1 < sub_d9f8c294.length
            require uint32(sub_9236afca[arg2].field_1280 - arg5 + sub_d9f8c294[arg1].field_544) >= sub_d9f8c294[arg1].field_544
    require arg2 < sub_9236afca.length
    sub_9236afca[arg2].field_1280 = arg5
    stor[sha3((7 * arg2) + ('name', 'sub_9236afca', 34) + 6)][].field_0 = Array(len=arg6.length, data=arg6[all])
}

function sub_e98122d8(?) {
    if not sub_12a6b051[address(arg1)]:
        stor28 = 0
        idx = 0
        while idx < sub_d9f8c294.length:
            require idx < sub_d9f8c294.length
            mem[0] = 27
            if var18003 >= sub_d9f8c294[idx].field_1792:
                idx = idx + 1
                continue 
            require idx < sub_d9f8c294.length
            require var22004 < sub_d9f8c294[idx].field_1792
            if stor[sha3((8 * idx) + ('name', 'sub_d9f8c294', 27) + 7) + var22004].field_0 != arg1:
                if idx < sub_d9f8c294.length:
                    mem[0] = 27
                    if var22004 + 1 >= sub_d9f8c294[idx].field_1792:
                        idx = idx + 1
                        continue 
                    if idx < sub_d9f8c294.length:
                        var22004 = var22004 + 1
                        continue 
            else:
                if stor28 < sub_12a6b051[address(arg1)]:
                    mem[(32 * stor28) + 128] = idx
                    stor28++
                    if idx < sub_d9f8c294.length:
                        mem[0] = 27
                        if var22004 + 1 >= sub_d9f8c294[idx].field_1792:
                            idx = idx + 1
                            continue 
                        if idx < sub_d9f8c294.length:
                            var22004 = var22004 + 1
                            continue 
            revert
    else:
        mem[128 len 32 * sub_12a6b051[address(arg1)]] = code.data[24565 len 32 * sub_12a6b051[address(arg1)]]
        stor28 = 0
        idx = 0
        while idx < sub_d9f8c294.length:
            require idx < sub_d9f8c294.length
            mem[0] = 27
            if var19003 >= sub_d9f8c294[idx].field_1792:
                idx = idx + 1
                continue 
            require idx < sub_d9f8c294.length
            require var23004 < sub_d9f8c294[idx].field_1792
            if stor[sha3((8 * idx) + ('name', 'sub_d9f8c294', 27) + 7) + var23004].field_0 != arg1:
                if idx < sub_d9f8c294.length:
                    mem[0] = 27
                    if var23004 + 1 >= sub_d9f8c294[idx].field_1792:
                        idx = idx + 1
                        continue 
                    if idx < sub_d9f8c294.length:
                        var23004 = var23004 + 1
                        continue 
            else:
                if stor28 < sub_12a6b051[address(arg1)]:
                    mem[(32 * stor28) + 128] = idx
                    stor28++
                    if idx < sub_d9f8c294.length:
                        mem[0] = 27
                        if var23004 + 1 >= sub_d9f8c294[idx].field_1792:
                            idx = idx + 1
                            continue 
                        if idx < sub_d9f8c294.length:
                            var23004 = var23004 + 1
                            continue 
            revert
    mem[(32 * sub_12a6b051[address(arg1)]) + 192 len floor32(sub_12a6b051[address(arg1)])] = mem[128 len floor32(sub_12a6b051[address(arg1)])]
    return Array(len=sub_12a6b051[address(arg1)], data=mem[128 len floor32(sub_12a6b051[address(arg1)])], mem[(32 * sub_12a6b051[address(arg1)]) + floor32(sub_12a6b051[address(arg1)]) + 192 len (32 * sub_12a6b051[address(arg1)]) - floor32(sub_12a6b051[address(arg1)])]), 
}

function sub_8e54ed5c(?) payable {
    require msg.sender == sub_3ff96222[arg1]
    require arg1 < sub_d9f8c294.length
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = ext_call.return_data[0]
    if stor3 > ext_call.return_data[0]:
        stor2 = 100
    if stor1 < stor3:
        if stor1 >= stor4:
            if stor1 < stor5:
                stor2 = uint16(stor16.field_16)
    else:
        if stor1 < stor4:
            stor2 = uint16(stor16.field_0)
        else:
            if stor1 < stor5:
                stor2 = uint16(stor16.field_16)
    if stor1 > stor5:
        stor2 = uint16(stor16.field_32)
    if arg6 != 1:
        if not arg6:
            require sub_d9f8c294[arg1].field_544 >= arg4
            stor15 = stor2 * stor12 / 100
            require msg.value == stor2 * stor12 / 100
    else:
        require sub_d9f8c294[arg1].field_544 >= arg4
        stor15 = stor2 * uint256(stor8.field_0) / 100
        require ext_code.size(address(stor17.field_0))
        call address(stor17.field_0).0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= stor2 * uint256(stor8.field_0) / 100
        require not msg.value
        require ext_code.size(address(stor17.field_0))
        call address(stor17.field_0).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    sub_9236afca.length++
    sub_9236afca[sub_9236afca.length].field_0 = arg1
    sub_9236afca[sub_9236afca.length].field_256 = arg2
    sub_9236afca[sub_9236afca.length].field_512 = 0
    sub_9236afca[sub_9236afca.length].field_768 = arg3
    sub_9236afca[sub_9236afca.length].field_1024 = 0
    sub_9236afca[sub_9236afca.length].field_1280 = arg4
    sub_9236afca[sub_9236afca.length].field_1312 = 0
    sub_9236afca[sub_9236afca.length].field_1536 = 0
    sub_9236afca[sub_9236afca.length].field_1344 = 0
    sub_9236afca[sub_9236afca.length].field_1536 = 0
    stor[sha3((7 * sub_9236afca.length) + ('name', 'sub_9236afca', 34) + 6)][].field_0 = Array(len=arg5.length, data=arg5[all])
    require arg1 < sub_d9f8c294.length
    require arg4 <= sub_d9f8c294[arg1].field_544
    require arg1 < sub_d9f8c294.length
    sub_d9f8c294[arg1].field_544 = uint32(sub_d9f8c294[arg1].field_544 - arg4)
    uint256(sub_ccb4bba7[stor34.length]) = msg.sender or Mask(96, 160, uint256(sub_ccb4bba7[stor34.length]))
    require sub_ee201ee6[msg.sender] + 1 >= sub_ee201ee6[msg.sender]
    sub_ee201ee6[msg.sender]++
    sub_e51bbd97[stor34.length] = arg1
    require sub_f4f1a7ac[arg1] + 1 >= sub_f4f1a7ac[arg1]
    sub_f4f1a7ac[arg1]++
    mem[ceil32(arg5.length) + 448] = 'https://opensea-creatures-api.he'
    mem[ceil32(arg5.length) + 480] = 'rokuapp.com/api/creature/3'
    sub_36d51c45[stor34.length] = 117
    s = 0
    idx = ceil32(arg5.length) + 448
    while ceil32(arg5.length) + 506 > idx:
        sub_36d51c45[stor34.length][s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while sub_36d51c45[stor34.length].length + 31 / 32 > idx:
        sub_36d51c45[stor34.length][idx] = 0
        idx = idx + 1
        continue 
    emit 0xbc534671: arg1, sub_9236afca.length, arg4 << 224, arg2, arg3
}

function sub_bfb80c87(?) {
    require arg1 < sub_d95e1e19.length
    require 1 == sub_d95e1e19[arg1].field_768
    mem[32] = 40
    require arg2 < sub_d9f8c294.length
    require sub_705553b0[arg1] < sub_9236afca.length
    mem[96] = stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length
    mem[128] = stor[sha3((8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3)].field_0
    idx = 128
    s = 0
    while stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 160
    mem[ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + 128] = stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length
    mem[0] = (7 * sub_705553b0[arg1]) + sha3(34) + 6
    mem[ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + 160] = stor[sha3((7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6)].field_0
    idx = ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + 160
    s = 0
    while ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 160] = 1
    mem[ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 224] = sub_d9f8c294[arg2].field_0
    mem[ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 256] = sub_d9f8c294[arg2].field_256
    mem[ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 192] = 160
    mem[ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 320] = stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length
    mem[ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 352 len ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length)] = mem[128 len ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length)]
    mem[ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 288] = stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length + 192
    mem[stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length + ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 352] = stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length
    mem[stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length + ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 384 len ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length)] = mem[ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + 160 len ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length)]
    if not stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length % 32:
        return 1, 
               Array(len=stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length, data=mem[128 len ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length)], mem[(2 * ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length)) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 352 len stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length + stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length + -ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + 32]),
               sub_d9f8c294[arg2].field_0,
               sub_d9f8c294[arg2].field_256,
               stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length + 192
    mem[floor32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length + ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 384] = mem[floor32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length + ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + -stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length % 32 + 416 len stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length % 32]
    return 1, 
           Array(len=stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length, data=mem[128 len ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length)], mem[(2 * ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length)) + ceil32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + 352 len floor32(stor[(7 * stor40[arg1]) + ('name', 'sub_9236afca', 34) + 6].length) + stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length + -ceil32(stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length) + 64]),
           sub_d9f8c294[arg2].field_0,
           sub_d9f8c294[arg2].field_256,
           stor[(8 * arg2) + ('name', 'sub_d9f8c294', 27) + 3].length + 192
}

function sub_9124fe0b(?) payable {
    mem[64] = 96
    mem[32] = 24
    require msg.sender == sub_3ff96222[arg1]
    mem[100] = msg.sender
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = ext_call.return_data[0]
    if stor3 <= ext_call.return_data[0]:
        if stor1 < stor3:
            if stor1 < stor4:
                if stor1 <= stor5:
                    if arg4 != 1:
                        if arg4:
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1830 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1831 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1832 = mem[_1831]
                                t = _1831 + 32
                                u = _1830 + 180
                                s = mem[_1831]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1830 + floor32(mem[_1831]) + 180] = mem[_1830 + floor32(mem[_1831]) + 180] and 256^(-(mem[_1831] % 32) + 32) - 1 or mem[_1831 + floor32(mem[_1831]) + 32] and !(256^(-(mem[_1831] % 32) + 32) - 1)
                                _3417 = sha3(mem[mem[64] len _1830 + _1832 + -mem[64] + 180])
                                require stor21
                                _3774 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3774] = arg1
                                mem[_3774 + 32] = arg2
                                mem[_3774 + 64] = _3417 % stor21
                                mem[_3774 + 96] = 1
                                mem[_3774 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3417 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3417 % stor21
                                idx = idx + 1
                                continue 
                        else:
                            require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                            stor15 = stor13 * stor2 / 100
                            require msg.value == stor13 * stor2 / 100
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1833 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1834 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1835 = mem[_1834]
                                t = _1834 + 32
                                u = _1833 + 180
                                s = mem[_1834]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1833 + floor32(mem[_1834]) + 180] = mem[_1833 + floor32(mem[_1834]) + 180] and 256^(-(mem[_1834] % 32) + 32) - 1 or mem[_1834 + floor32(mem[_1834]) + 32] and !(256^(-(mem[_1834] % 32) + 32) - 1)
                                _3422 = sha3(mem[mem[64] len _1833 + _1835 + -mem[64] + 180])
                                require stor21
                                _3781 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3781] = arg1
                                mem[_3781 + 32] = arg2
                                mem[_3781 + 64] = _3422 % stor21
                                mem[_3781 + 96] = 1
                                mem[_3781 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3422 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3422 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                        stor15 = uint256(stor9.field_0) * stor2 / 100
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                        require not msg.value
                        mem[100] = msg.sender
                        mem[132] = this.address
                        mem[164] = stor15
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), stor15
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 < sub_9236afca.length
                        mem[0] = 34
                        require arg3 <= sub_9236afca[arg2].field_1280
                        require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                        s = 0
                        s = 0
                        idx = 0
                        while idx < arg3:
                            _1836 = mem[64]
                            mem[mem[64] + 32] = arg1
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = address(msg.sender)
                            mem[mem[64] + 116] = arg2
                            mem[mem[64] + 148] = idx
                            _1837 = mem[64]
                            mem[mem[64]] = 148
                            mem[64] = mem[64] + 180
                            _1838 = mem[_1837]
                            t = _1837 + 32
                            u = _1836 + 180
                            s = mem[_1837]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1836 + floor32(mem[_1837]) + 180] = mem[_1836 + floor32(mem[_1837]) + 180] and 256^(-(mem[_1837] % 32) + 32) - 1 or mem[_1837 + floor32(mem[_1837]) + 32] and !(256^(-(mem[_1837] % 32) + 32) - 1)
                            _3427 = sha3(mem[mem[64] len _1836 + _1838 + -mem[64] + 180])
                            require stor21
                            _3788 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3788] = arg1
                            mem[_3788 + 32] = arg2
                            mem[_3788 + 64] = _3427 % stor21
                            mem[_3788 + 96] = 1
                            mem[_3788 + 128] = msg.sender
                            sub_d95e1e19.length++
                            storCB7C[stor41.length] = arg1
                            storCB7C[stor41.length] = arg2
                            storCB7C[stor41.length] = _3427 % stor21
                            storCB7C[stor41.length].field_0 = 1
                            storCB7C[stor41.length].field_8 = 0
                            storCB7C[stor41.length].field_16 = msg.sender
                            require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                            sub_54fdfd4e[msg.sender]++
                            require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                            sub_0bf43695[msg.sender]++
                            uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                            mem[32] = 40
                            sub_705553b0[stor41.length + 1] = arg2
                            require arg2 < sub_9236afca.length
                            require 1 <= sub_9236afca[arg2].field_1280
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                            s = sub_d95e1e19.length + 1
                            s = _3427 % stor21
                            idx = idx + 1
                            continue 
                else:
                    stor2 = uint16(stor16.field_32)
                    if arg4 != 1:
                        if arg4:
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1839 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1840 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1841 = mem[_1840]
                                t = _1840 + 32
                                u = _1839 + 180
                                s = mem[_1840]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1839 + floor32(mem[_1840]) + 180] = mem[_1839 + floor32(mem[_1840]) + 180] and 256^(-(mem[_1840] % 32) + 32) - 1 or mem[_1840 + floor32(mem[_1840]) + 32] and !(256^(-(mem[_1840] % 32) + 32) - 1)
                                _3432 = sha3(mem[mem[64] len _1839 + _1841 + -mem[64] + 180])
                                require stor21
                                _3795 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3795] = arg1
                                mem[_3795 + 32] = arg2
                                mem[_3795 + 64] = _3432 % stor21
                                mem[_3795 + 96] = 1
                                mem[_3795 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3432 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3432 % stor21
                                idx = idx + 1
                                continue 
                        else:
                            require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                            stor15 = stor13 * stor2 / 100
                            require msg.value == stor13 * stor2 / 100
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1842 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1843 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1844 = mem[_1843]
                                t = _1843 + 32
                                u = _1842 + 180
                                s = mem[_1843]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1842 + floor32(mem[_1843]) + 180] = mem[_1842 + floor32(mem[_1843]) + 180] and 256^(-(mem[_1843] % 32) + 32) - 1 or mem[_1843 + floor32(mem[_1843]) + 32] and !(256^(-(mem[_1843] % 32) + 32) - 1)
                                _3437 = sha3(mem[mem[64] len _1842 + _1844 + -mem[64] + 180])
                                require stor21
                                _3802 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3802] = arg1
                                mem[_3802 + 32] = arg2
                                mem[_3802 + 64] = _3437 % stor21
                                mem[_3802 + 96] = 1
                                mem[_3802 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3437 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3437 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                        stor15 = uint256(stor9.field_0) * stor2 / 100
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                        require not msg.value
                        mem[100] = msg.sender
                        mem[132] = this.address
                        mem[164] = stor15
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), stor15
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 < sub_9236afca.length
                        mem[0] = 34
                        require arg3 <= sub_9236afca[arg2].field_1280
                        require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                        s = 0
                        s = 0
                        idx = 0
                        while idx < arg3:
                            _1845 = mem[64]
                            mem[mem[64] + 32] = arg1
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = address(msg.sender)
                            mem[mem[64] + 116] = arg2
                            mem[mem[64] + 148] = idx
                            _1846 = mem[64]
                            mem[mem[64]] = 148
                            mem[64] = mem[64] + 180
                            _1847 = mem[_1846]
                            t = _1846 + 32
                            u = _1845 + 180
                            s = mem[_1846]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1845 + floor32(mem[_1846]) + 180] = mem[_1845 + floor32(mem[_1846]) + 180] and 256^(-(mem[_1846] % 32) + 32) - 1 or mem[_1846 + floor32(mem[_1846]) + 32] and !(256^(-(mem[_1846] % 32) + 32) - 1)
                            _3442 = sha3(mem[mem[64] len _1845 + _1847 + -mem[64] + 180])
                            require stor21
                            _3809 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3809] = arg1
                            mem[_3809 + 32] = arg2
                            mem[_3809 + 64] = _3442 % stor21
                            mem[_3809 + 96] = 1
                            mem[_3809 + 128] = msg.sender
                            sub_d95e1e19.length++
                            storCB7C[stor41.length] = arg1
                            storCB7C[stor41.length] = arg2
                            storCB7C[stor41.length] = _3442 % stor21
                            storCB7C[stor41.length].field_0 = 1
                            storCB7C[stor41.length].field_8 = 0
                            storCB7C[stor41.length].field_16 = msg.sender
                            require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                            sub_54fdfd4e[msg.sender]++
                            require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                            sub_0bf43695[msg.sender]++
                            uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                            mem[32] = 40
                            sub_705553b0[stor41.length + 1] = arg2
                            require arg2 < sub_9236afca.length
                            require 1 <= sub_9236afca[arg2].field_1280
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                            s = sub_d95e1e19.length + 1
                            s = _3442 % stor21
                            idx = idx + 1
                            continue 
            else:
                if stor1 >= stor5:
                    if stor1 <= stor5:
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1848 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1849 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1850 = mem[_1849]
                                    t = _1849 + 32
                                    u = _1848 + 180
                                    s = mem[_1849]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1848 + floor32(mem[_1849]) + 180] = mem[_1848 + floor32(mem[_1849]) + 180] and 256^(-(mem[_1849] % 32) + 32) - 1 or mem[_1849 + floor32(mem[_1849]) + 32] and !(256^(-(mem[_1849] % 32) + 32) - 1)
                                    _3447 = sha3(mem[mem[64] len _1848 + _1850 + -mem[64] + 180])
                                    require stor21
                                    _3816 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3816] = arg1
                                    mem[_3816 + 32] = arg2
                                    mem[_3816 + 64] = _3447 % stor21
                                    mem[_3816 + 96] = 1
                                    mem[_3816 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3447 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3447 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1851 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1852 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1853 = mem[_1852]
                                    t = _1852 + 32
                                    u = _1851 + 180
                                    s = mem[_1852]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1851 + floor32(mem[_1852]) + 180] = mem[_1851 + floor32(mem[_1852]) + 180] and 256^(-(mem[_1852] % 32) + 32) - 1 or mem[_1852 + floor32(mem[_1852]) + 32] and !(256^(-(mem[_1852] % 32) + 32) - 1)
                                    _3452 = sha3(mem[mem[64] len _1851 + _1853 + -mem[64] + 180])
                                    require stor21
                                    _3823 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3823] = arg1
                                    mem[_3823 + 32] = arg2
                                    mem[_3823 + 64] = _3452 % stor21
                                    mem[_3823 + 96] = 1
                                    mem[_3823 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3452 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3452 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1854 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1855 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1856 = mem[_1855]
                                t = _1855 + 32
                                u = _1854 + 180
                                s = mem[_1855]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1854 + floor32(mem[_1855]) + 180] = mem[_1854 + floor32(mem[_1855]) + 180] and 256^(-(mem[_1855] % 32) + 32) - 1 or mem[_1855 + floor32(mem[_1855]) + 32] and !(256^(-(mem[_1855] % 32) + 32) - 1)
                                _3457 = sha3(mem[mem[64] len _1854 + _1856 + -mem[64] + 180])
                                require stor21
                                _3830 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3830] = arg1
                                mem[_3830 + 32] = arg2
                                mem[_3830 + 64] = _3457 % stor21
                                mem[_3830 + 96] = 1
                                mem[_3830 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3457 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3457 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        stor2 = uint16(stor16.field_32)
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1857 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1858 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1859 = mem[_1858]
                                    t = _1858 + 32
                                    u = _1857 + 180
                                    s = mem[_1858]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1857 + floor32(mem[_1858]) + 180] = mem[_1857 + floor32(mem[_1858]) + 180] and 256^(-(mem[_1858] % 32) + 32) - 1 or mem[_1858 + floor32(mem[_1858]) + 32] and !(256^(-(mem[_1858] % 32) + 32) - 1)
                                    _3462 = sha3(mem[mem[64] len _1857 + _1859 + -mem[64] + 180])
                                    require stor21
                                    _3837 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3837] = arg1
                                    mem[_3837 + 32] = arg2
                                    mem[_3837 + 64] = _3462 % stor21
                                    mem[_3837 + 96] = 1
                                    mem[_3837 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3462 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3462 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1860 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1861 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1862 = mem[_1861]
                                    t = _1861 + 32
                                    u = _1860 + 180
                                    s = mem[_1861]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1860 + floor32(mem[_1861]) + 180] = mem[_1860 + floor32(mem[_1861]) + 180] and 256^(-(mem[_1861] % 32) + 32) - 1 or mem[_1861 + floor32(mem[_1861]) + 32] and !(256^(-(mem[_1861] % 32) + 32) - 1)
                                    _3467 = sha3(mem[mem[64] len _1860 + _1862 + -mem[64] + 180])
                                    require stor21
                                    _3844 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3844] = arg1
                                    mem[_3844 + 32] = arg2
                                    mem[_3844 + 64] = _3467 % stor21
                                    mem[_3844 + 96] = 1
                                    mem[_3844 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3467 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3467 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1863 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1864 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1865 = mem[_1864]
                                t = _1864 + 32
                                u = _1863 + 180
                                s = mem[_1864]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1863 + floor32(mem[_1864]) + 180] = mem[_1863 + floor32(mem[_1864]) + 180] and 256^(-(mem[_1864] % 32) + 32) - 1 or mem[_1864 + floor32(mem[_1864]) + 32] and !(256^(-(mem[_1864] % 32) + 32) - 1)
                                _3472 = sha3(mem[mem[64] len _1863 + _1865 + -mem[64] + 180])
                                require stor21
                                _3851 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3851] = arg1
                                mem[_3851 + 32] = arg2
                                mem[_3851 + 64] = _3472 % stor21
                                mem[_3851 + 96] = 1
                                mem[_3851 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3472 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3472 % stor21
                                idx = idx + 1
                                continue 
                else:
                    stor2 = uint16(stor16.field_16)
                    if stor1 <= stor5:
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1866 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1867 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1868 = mem[_1867]
                                    t = _1867 + 32
                                    u = _1866 + 180
                                    s = mem[_1867]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1866 + floor32(mem[_1867]) + 180] = mem[_1866 + floor32(mem[_1867]) + 180] and 256^(-(mem[_1867] % 32) + 32) - 1 or mem[_1867 + floor32(mem[_1867]) + 32] and !(256^(-(mem[_1867] % 32) + 32) - 1)
                                    _3477 = sha3(mem[mem[64] len _1866 + _1868 + -mem[64] + 180])
                                    require stor21
                                    _3858 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3858] = arg1
                                    mem[_3858 + 32] = arg2
                                    mem[_3858 + 64] = _3477 % stor21
                                    mem[_3858 + 96] = 1
                                    mem[_3858 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3477 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3477 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1869 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1870 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1871 = mem[_1870]
                                    t = _1870 + 32
                                    u = _1869 + 180
                                    s = mem[_1870]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1869 + floor32(mem[_1870]) + 180] = mem[_1869 + floor32(mem[_1870]) + 180] and 256^(-(mem[_1870] % 32) + 32) - 1 or mem[_1870 + floor32(mem[_1870]) + 32] and !(256^(-(mem[_1870] % 32) + 32) - 1)
                                    _3482 = sha3(mem[mem[64] len _1869 + _1871 + -mem[64] + 180])
                                    require stor21
                                    _3865 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3865] = arg1
                                    mem[_3865 + 32] = arg2
                                    mem[_3865 + 64] = _3482 % stor21
                                    mem[_3865 + 96] = 1
                                    mem[_3865 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3482 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3482 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1872 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1873 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1874 = mem[_1873]
                                t = _1873 + 32
                                u = _1872 + 180
                                s = mem[_1873]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1872 + floor32(mem[_1873]) + 180] = mem[_1872 + floor32(mem[_1873]) + 180] and 256^(-(mem[_1873] % 32) + 32) - 1 or mem[_1873 + floor32(mem[_1873]) + 32] and !(256^(-(mem[_1873] % 32) + 32) - 1)
                                _3487 = sha3(mem[mem[64] len _1872 + _1874 + -mem[64] + 180])
                                require stor21
                                _3872 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3872] = arg1
                                mem[_3872 + 32] = arg2
                                mem[_3872 + 64] = _3487 % stor21
                                mem[_3872 + 96] = 1
                                mem[_3872 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3487 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3487 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        stor2 = uint16(stor16.field_32)
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1875 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1876 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1877 = mem[_1876]
                                    t = _1876 + 32
                                    u = _1875 + 180
                                    s = mem[_1876]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1875 + floor32(mem[_1876]) + 180] = mem[_1875 + floor32(mem[_1876]) + 180] and 256^(-(mem[_1876] % 32) + 32) - 1 or mem[_1876 + floor32(mem[_1876]) + 32] and !(256^(-(mem[_1876] % 32) + 32) - 1)
                                    _3492 = sha3(mem[mem[64] len _1875 + _1877 + -mem[64] + 180])
                                    require stor21
                                    _3879 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3879] = arg1
                                    mem[_3879 + 32] = arg2
                                    mem[_3879 + 64] = _3492 % stor21
                                    mem[_3879 + 96] = 1
                                    mem[_3879 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3492 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3492 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1878 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1879 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1880 = mem[_1879]
                                    t = _1879 + 32
                                    u = _1878 + 180
                                    s = mem[_1879]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1878 + floor32(mem[_1879]) + 180] = mem[_1878 + floor32(mem[_1879]) + 180] and 256^(-(mem[_1879] % 32) + 32) - 1 or mem[_1879 + floor32(mem[_1879]) + 32] and !(256^(-(mem[_1879] % 32) + 32) - 1)
                                    _3497 = sha3(mem[mem[64] len _1878 + _1880 + -mem[64] + 180])
                                    require stor21
                                    _3886 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3886] = arg1
                                    mem[_3886 + 32] = arg2
                                    mem[_3886 + 64] = _3497 % stor21
                                    mem[_3886 + 96] = 1
                                    mem[_3886 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3497 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3497 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1881 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1882 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1883 = mem[_1882]
                                t = _1882 + 32
                                u = _1881 + 180
                                s = mem[_1882]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1881 + floor32(mem[_1882]) + 180] = mem[_1881 + floor32(mem[_1882]) + 180] and 256^(-(mem[_1882] % 32) + 32) - 1 or mem[_1882 + floor32(mem[_1882]) + 32] and !(256^(-(mem[_1882] % 32) + 32) - 1)
                                _3502 = sha3(mem[mem[64] len _1881 + _1883 + -mem[64] + 180])
                                require stor21
                                _3893 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3893] = arg1
                                mem[_3893 + 32] = arg2
                                mem[_3893 + 64] = _3502 % stor21
                                mem[_3893 + 96] = 1
                                mem[_3893 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3502 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3502 % stor21
                                idx = idx + 1
                                continue 
        else:
            if stor1 < stor4:
                stor2 = uint16(stor16.field_0)
                if stor1 <= stor5:
                    if arg4 != 1:
                        if arg4:
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1920 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1921 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1922 = mem[_1921]
                                t = _1921 + 32
                                u = _1920 + 180
                                s = mem[_1921]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1920 + floor32(mem[_1921]) + 180] = mem[_1920 + floor32(mem[_1921]) + 180] and 256^(-(mem[_1921] % 32) + 32) - 1 or mem[_1921 + floor32(mem[_1921]) + 32] and !(256^(-(mem[_1921] % 32) + 32) - 1)
                                _3567 = sha3(mem[mem[64] len _1920 + _1922 + -mem[64] + 180])
                                require stor21
                                _3984 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3984] = arg1
                                mem[_3984 + 32] = arg2
                                mem[_3984 + 64] = _3567 % stor21
                                mem[_3984 + 96] = 1
                                mem[_3984 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3567 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3567 % stor21
                                idx = idx + 1
                                continue 
                        else:
                            require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                            stor15 = stor13 * stor2 / 100
                            require msg.value == stor13 * stor2 / 100
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1923 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1924 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1925 = mem[_1924]
                                t = _1924 + 32
                                u = _1923 + 180
                                s = mem[_1924]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1923 + floor32(mem[_1924]) + 180] = mem[_1923 + floor32(mem[_1924]) + 180] and 256^(-(mem[_1924] % 32) + 32) - 1 or mem[_1924 + floor32(mem[_1924]) + 32] and !(256^(-(mem[_1924] % 32) + 32) - 1)
                                _3572 = sha3(mem[mem[64] len _1923 + _1925 + -mem[64] + 180])
                                require stor21
                                _3991 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3991] = arg1
                                mem[_3991 + 32] = arg2
                                mem[_3991 + 64] = _3572 % stor21
                                mem[_3991 + 96] = 1
                                mem[_3991 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3572 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3572 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                        stor15 = uint256(stor9.field_0) * stor2 / 100
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                        require not msg.value
                        mem[100] = msg.sender
                        mem[132] = this.address
                        mem[164] = stor15
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), stor15
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 < sub_9236afca.length
                        mem[0] = 34
                        require arg3 <= sub_9236afca[arg2].field_1280
                        require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                        s = 0
                        s = 0
                        idx = 0
                        while idx < arg3:
                            _1926 = mem[64]
                            mem[mem[64] + 32] = arg1
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = address(msg.sender)
                            mem[mem[64] + 116] = arg2
                            mem[mem[64] + 148] = idx
                            _1927 = mem[64]
                            mem[mem[64]] = 148
                            mem[64] = mem[64] + 180
                            _1928 = mem[_1927]
                            t = _1927 + 32
                            u = _1926 + 180
                            s = mem[_1927]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1926 + floor32(mem[_1927]) + 180] = mem[_1926 + floor32(mem[_1927]) + 180] and 256^(-(mem[_1927] % 32) + 32) - 1 or mem[_1927 + floor32(mem[_1927]) + 32] and !(256^(-(mem[_1927] % 32) + 32) - 1)
                            _3577 = sha3(mem[mem[64] len _1926 + _1928 + -mem[64] + 180])
                            require stor21
                            _3998 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_3998] = arg1
                            mem[_3998 + 32] = arg2
                            mem[_3998 + 64] = _3577 % stor21
                            mem[_3998 + 96] = 1
                            mem[_3998 + 128] = msg.sender
                            sub_d95e1e19.length++
                            storCB7C[stor41.length] = arg1
                            storCB7C[stor41.length] = arg2
                            storCB7C[stor41.length] = _3577 % stor21
                            storCB7C[stor41.length].field_0 = 1
                            storCB7C[stor41.length].field_8 = 0
                            storCB7C[stor41.length].field_16 = msg.sender
                            require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                            sub_54fdfd4e[msg.sender]++
                            require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                            sub_0bf43695[msg.sender]++
                            uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                            mem[32] = 40
                            sub_705553b0[stor41.length + 1] = arg2
                            require arg2 < sub_9236afca.length
                            require 1 <= sub_9236afca[arg2].field_1280
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                            s = sub_d95e1e19.length + 1
                            s = _3577 % stor21
                            idx = idx + 1
                            continue 
                else:
                    stor2 = uint16(stor16.field_32)
                    if arg4 != 1:
                        if arg4:
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1929 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1930 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1931 = mem[_1930]
                                t = _1930 + 32
                                u = _1929 + 180
                                s = mem[_1930]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1929 + floor32(mem[_1930]) + 180] = mem[_1929 + floor32(mem[_1930]) + 180] and 256^(-(mem[_1930] % 32) + 32) - 1 or mem[_1930 + floor32(mem[_1930]) + 32] and !(256^(-(mem[_1930] % 32) + 32) - 1)
                                _3582 = sha3(mem[mem[64] len _1929 + _1931 + -mem[64] + 180])
                                require stor21
                                _4005 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4005] = arg1
                                mem[_4005 + 32] = arg2
                                mem[_4005 + 64] = _3582 % stor21
                                mem[_4005 + 96] = 1
                                mem[_4005 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3582 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3582 % stor21
                                idx = idx + 1
                                continue 
                        else:
                            require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                            stor15 = stor13 * stor2 / 100
                            require msg.value == stor13 * stor2 / 100
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1932 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1933 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1934 = mem[_1933]
                                t = _1933 + 32
                                u = _1932 + 180
                                s = mem[_1933]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1932 + floor32(mem[_1933]) + 180] = mem[_1932 + floor32(mem[_1933]) + 180] and 256^(-(mem[_1933] % 32) + 32) - 1 or mem[_1933 + floor32(mem[_1933]) + 32] and !(256^(-(mem[_1933] % 32) + 32) - 1)
                                _3587 = sha3(mem[mem[64] len _1932 + _1934 + -mem[64] + 180])
                                require stor21
                                _4012 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4012] = arg1
                                mem[_4012 + 32] = arg2
                                mem[_4012 + 64] = _3587 % stor21
                                mem[_4012 + 96] = 1
                                mem[_4012 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3587 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3587 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                        stor15 = uint256(stor9.field_0) * stor2 / 100
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                        require not msg.value
                        mem[100] = msg.sender
                        mem[132] = this.address
                        mem[164] = stor15
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), stor15
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 < sub_9236afca.length
                        mem[0] = 34
                        require arg3 <= sub_9236afca[arg2].field_1280
                        require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                        s = 0
                        s = 0
                        idx = 0
                        while idx < arg3:
                            _1935 = mem[64]
                            mem[mem[64] + 32] = arg1
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = address(msg.sender)
                            mem[mem[64] + 116] = arg2
                            mem[mem[64] + 148] = idx
                            _1936 = mem[64]
                            mem[mem[64]] = 148
                            mem[64] = mem[64] + 180
                            _1937 = mem[_1936]
                            t = _1936 + 32
                            u = _1935 + 180
                            s = mem[_1936]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1935 + floor32(mem[_1936]) + 180] = mem[_1935 + floor32(mem[_1936]) + 180] and 256^(-(mem[_1936] % 32) + 32) - 1 or mem[_1936 + floor32(mem[_1936]) + 32] and !(256^(-(mem[_1936] % 32) + 32) - 1)
                            _3592 = sha3(mem[mem[64] len _1935 + _1937 + -mem[64] + 180])
                            require stor21
                            _4019 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4019] = arg1
                            mem[_4019 + 32] = arg2
                            mem[_4019 + 64] = _3592 % stor21
                            mem[_4019 + 96] = 1
                            mem[_4019 + 128] = msg.sender
                            sub_d95e1e19.length++
                            storCB7C[stor41.length] = arg1
                            storCB7C[stor41.length] = arg2
                            storCB7C[stor41.length] = _3592 % stor21
                            storCB7C[stor41.length].field_0 = 1
                            storCB7C[stor41.length].field_8 = 0
                            storCB7C[stor41.length].field_16 = msg.sender
                            require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                            sub_54fdfd4e[msg.sender]++
                            require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                            sub_0bf43695[msg.sender]++
                            uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                            mem[32] = 40
                            sub_705553b0[stor41.length + 1] = arg2
                            require arg2 < sub_9236afca.length
                            require 1 <= sub_9236afca[arg2].field_1280
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                            s = sub_d95e1e19.length + 1
                            s = _3592 % stor21
                            idx = idx + 1
                            continue 
            else:
                if stor1 >= stor5:
                    if stor1 <= stor5:
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1884 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1885 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1886 = mem[_1885]
                                    t = _1885 + 32
                                    u = _1884 + 180
                                    s = mem[_1885]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1884 + floor32(mem[_1885]) + 180] = mem[_1884 + floor32(mem[_1885]) + 180] and 256^(-(mem[_1885] % 32) + 32) - 1 or mem[_1885 + floor32(mem[_1885]) + 32] and !(256^(-(mem[_1885] % 32) + 32) - 1)
                                    _3507 = sha3(mem[mem[64] len _1884 + _1886 + -mem[64] + 180])
                                    require stor21
                                    _3900 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3900] = arg1
                                    mem[_3900 + 32] = arg2
                                    mem[_3900 + 64] = _3507 % stor21
                                    mem[_3900 + 96] = 1
                                    mem[_3900 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3507 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3507 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1887 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1888 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1889 = mem[_1888]
                                    t = _1888 + 32
                                    u = _1887 + 180
                                    s = mem[_1888]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1887 + floor32(mem[_1888]) + 180] = mem[_1887 + floor32(mem[_1888]) + 180] and 256^(-(mem[_1888] % 32) + 32) - 1 or mem[_1888 + floor32(mem[_1888]) + 32] and !(256^(-(mem[_1888] % 32) + 32) - 1)
                                    _3512 = sha3(mem[mem[64] len _1887 + _1889 + -mem[64] + 180])
                                    require stor21
                                    _3907 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3907] = arg1
                                    mem[_3907 + 32] = arg2
                                    mem[_3907 + 64] = _3512 % stor21
                                    mem[_3907 + 96] = 1
                                    mem[_3907 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3512 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3512 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1890 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1891 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1892 = mem[_1891]
                                t = _1891 + 32
                                u = _1890 + 180
                                s = mem[_1891]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1890 + floor32(mem[_1891]) + 180] = mem[_1890 + floor32(mem[_1891]) + 180] and 256^(-(mem[_1891] % 32) + 32) - 1 or mem[_1891 + floor32(mem[_1891]) + 32] and !(256^(-(mem[_1891] % 32) + 32) - 1)
                                _3517 = sha3(mem[mem[64] len _1890 + _1892 + -mem[64] + 180])
                                require stor21
                                _3914 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3914] = arg1
                                mem[_3914 + 32] = arg2
                                mem[_3914 + 64] = _3517 % stor21
                                mem[_3914 + 96] = 1
                                mem[_3914 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3517 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3517 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        stor2 = uint16(stor16.field_32)
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1893 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1894 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1895 = mem[_1894]
                                    t = _1894 + 32
                                    u = _1893 + 180
                                    s = mem[_1894]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1893 + floor32(mem[_1894]) + 180] = mem[_1893 + floor32(mem[_1894]) + 180] and 256^(-(mem[_1894] % 32) + 32) - 1 or mem[_1894 + floor32(mem[_1894]) + 32] and !(256^(-(mem[_1894] % 32) + 32) - 1)
                                    _3522 = sha3(mem[mem[64] len _1893 + _1895 + -mem[64] + 180])
                                    require stor21
                                    _3921 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3921] = arg1
                                    mem[_3921 + 32] = arg2
                                    mem[_3921 + 64] = _3522 % stor21
                                    mem[_3921 + 96] = 1
                                    mem[_3921 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3522 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3522 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1896 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1897 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1898 = mem[_1897]
                                    t = _1897 + 32
                                    u = _1896 + 180
                                    s = mem[_1897]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1896 + floor32(mem[_1897]) + 180] = mem[_1896 + floor32(mem[_1897]) + 180] and 256^(-(mem[_1897] % 32) + 32) - 1 or mem[_1897 + floor32(mem[_1897]) + 32] and !(256^(-(mem[_1897] % 32) + 32) - 1)
                                    _3527 = sha3(mem[mem[64] len _1896 + _1898 + -mem[64] + 180])
                                    require stor21
                                    _3928 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3928] = arg1
                                    mem[_3928 + 32] = arg2
                                    mem[_3928 + 64] = _3527 % stor21
                                    mem[_3928 + 96] = 1
                                    mem[_3928 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3527 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3527 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1899 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1900 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1901 = mem[_1900]
                                t = _1900 + 32
                                u = _1899 + 180
                                s = mem[_1900]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1899 + floor32(mem[_1900]) + 180] = mem[_1899 + floor32(mem[_1900]) + 180] and 256^(-(mem[_1900] % 32) + 32) - 1 or mem[_1900 + floor32(mem[_1900]) + 32] and !(256^(-(mem[_1900] % 32) + 32) - 1)
                                _3532 = sha3(mem[mem[64] len _1899 + _1901 + -mem[64] + 180])
                                require stor21
                                _3935 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3935] = arg1
                                mem[_3935 + 32] = arg2
                                mem[_3935 + 64] = _3532 % stor21
                                mem[_3935 + 96] = 1
                                mem[_3935 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3532 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3532 % stor21
                                idx = idx + 1
                                continue 
                else:
                    stor2 = uint16(stor16.field_16)
                    if stor1 <= stor5:
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1902 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1903 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1904 = mem[_1903]
                                    t = _1903 + 32
                                    u = _1902 + 180
                                    s = mem[_1903]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1902 + floor32(mem[_1903]) + 180] = mem[_1902 + floor32(mem[_1903]) + 180] and 256^(-(mem[_1903] % 32) + 32) - 1 or mem[_1903 + floor32(mem[_1903]) + 32] and !(256^(-(mem[_1903] % 32) + 32) - 1)
                                    _3537 = sha3(mem[mem[64] len _1902 + _1904 + -mem[64] + 180])
                                    require stor21
                                    _3942 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3942] = arg1
                                    mem[_3942 + 32] = arg2
                                    mem[_3942 + 64] = _3537 % stor21
                                    mem[_3942 + 96] = 1
                                    mem[_3942 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3537 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3537 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1905 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1906 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1907 = mem[_1906]
                                    t = _1906 + 32
                                    u = _1905 + 180
                                    s = mem[_1906]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1905 + floor32(mem[_1906]) + 180] = mem[_1905 + floor32(mem[_1906]) + 180] and 256^(-(mem[_1906] % 32) + 32) - 1 or mem[_1906 + floor32(mem[_1906]) + 32] and !(256^(-(mem[_1906] % 32) + 32) - 1)
                                    _3542 = sha3(mem[mem[64] len _1905 + _1907 + -mem[64] + 180])
                                    require stor21
                                    _3949 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3949] = arg1
                                    mem[_3949 + 32] = arg2
                                    mem[_3949 + 64] = _3542 % stor21
                                    mem[_3949 + 96] = 1
                                    mem[_3949 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3542 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3542 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1908 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1909 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1910 = mem[_1909]
                                t = _1909 + 32
                                u = _1908 + 180
                                s = mem[_1909]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1908 + floor32(mem[_1909]) + 180] = mem[_1908 + floor32(mem[_1909]) + 180] and 256^(-(mem[_1909] % 32) + 32) - 1 or mem[_1909 + floor32(mem[_1909]) + 32] and !(256^(-(mem[_1909] % 32) + 32) - 1)
                                _3547 = sha3(mem[mem[64] len _1908 + _1910 + -mem[64] + 180])
                                require stor21
                                _3956 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3956] = arg1
                                mem[_3956 + 32] = arg2
                                mem[_3956 + 64] = _3547 % stor21
                                mem[_3956 + 96] = 1
                                mem[_3956 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3547 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3547 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        stor2 = uint16(stor16.field_32)
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1911 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1912 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1913 = mem[_1912]
                                    t = _1912 + 32
                                    u = _1911 + 180
                                    s = mem[_1912]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1911 + floor32(mem[_1912]) + 180] = mem[_1911 + floor32(mem[_1912]) + 180] and 256^(-(mem[_1912] % 32) + 32) - 1 or mem[_1912 + floor32(mem[_1912]) + 32] and !(256^(-(mem[_1912] % 32) + 32) - 1)
                                    _3552 = sha3(mem[mem[64] len _1911 + _1913 + -mem[64] + 180])
                                    require stor21
                                    _3963 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3963] = arg1
                                    mem[_3963 + 32] = arg2
                                    mem[_3963 + 64] = _3552 % stor21
                                    mem[_3963 + 96] = 1
                                    mem[_3963 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3552 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3552 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1914 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1915 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1916 = mem[_1915]
                                    t = _1915 + 32
                                    u = _1914 + 180
                                    s = mem[_1915]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1914 + floor32(mem[_1915]) + 180] = mem[_1914 + floor32(mem[_1915]) + 180] and 256^(-(mem[_1915] % 32) + 32) - 1 or mem[_1915 + floor32(mem[_1915]) + 32] and !(256^(-(mem[_1915] % 32) + 32) - 1)
                                    _3557 = sha3(mem[mem[64] len _1914 + _1916 + -mem[64] + 180])
                                    require stor21
                                    _3970 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_3970] = arg1
                                    mem[_3970 + 32] = arg2
                                    mem[_3970 + 64] = _3557 % stor21
                                    mem[_3970 + 96] = 1
                                    mem[_3970 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3557 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3557 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1917 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1918 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1919 = mem[_1918]
                                t = _1918 + 32
                                u = _1917 + 180
                                s = mem[_1918]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1917 + floor32(mem[_1918]) + 180] = mem[_1917 + floor32(mem[_1918]) + 180] and 256^(-(mem[_1918] % 32) + 32) - 1 or mem[_1918 + floor32(mem[_1918]) + 32] and !(256^(-(mem[_1918] % 32) + 32) - 1)
                                _3562 = sha3(mem[mem[64] len _1917 + _1919 + -mem[64] + 180])
                                require stor21
                                _3977 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_3977] = arg1
                                mem[_3977 + 32] = arg2
                                mem[_3977 + 64] = _3562 % stor21
                                mem[_3977 + 96] = 1
                                mem[_3977 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3562 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3562 % stor21
                                idx = idx + 1
                                continue 
    else:
        stor2 = 100
        if stor1 < stor3:
            if stor1 < stor4:
                if stor1 <= stor5:
                    if arg4 != 1:
                        if arg4:
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1938 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1939 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1940 = mem[_1939]
                                t = _1939 + 32
                                u = _1938 + 180
                                s = mem[_1939]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1938 + floor32(mem[_1939]) + 180] = mem[_1938 + floor32(mem[_1939]) + 180] and 256^(-(mem[_1939] % 32) + 32) - 1 or mem[_1939 + floor32(mem[_1939]) + 32] and !(256^(-(mem[_1939] % 32) + 32) - 1)
                                _3597 = sha3(mem[mem[64] len _1938 + _1940 + -mem[64] + 180])
                                require stor21
                                _4026 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4026] = arg1
                                mem[_4026 + 32] = arg2
                                mem[_4026 + 64] = _3597 % stor21
                                mem[_4026 + 96] = 1
                                mem[_4026 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3597 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3597 % stor21
                                idx = idx + 1
                                continue 
                        else:
                            require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                            stor15 = stor13 * stor2 / 100
                            require msg.value == stor13 * stor2 / 100
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1941 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1942 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1943 = mem[_1942]
                                t = _1942 + 32
                                u = _1941 + 180
                                s = mem[_1942]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1941 + floor32(mem[_1942]) + 180] = mem[_1941 + floor32(mem[_1942]) + 180] and 256^(-(mem[_1942] % 32) + 32) - 1 or mem[_1942 + floor32(mem[_1942]) + 32] and !(256^(-(mem[_1942] % 32) + 32) - 1)
                                _3602 = sha3(mem[mem[64] len _1941 + _1943 + -mem[64] + 180])
                                require stor21
                                _4033 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4033] = arg1
                                mem[_4033 + 32] = arg2
                                mem[_4033 + 64] = _3602 % stor21
                                mem[_4033 + 96] = 1
                                mem[_4033 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3602 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3602 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                        stor15 = uint256(stor9.field_0) * stor2 / 100
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                        require not msg.value
                        mem[100] = msg.sender
                        mem[132] = this.address
                        mem[164] = stor15
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), stor15
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 < sub_9236afca.length
                        mem[0] = 34
                        require arg3 <= sub_9236afca[arg2].field_1280
                        require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                        s = 0
                        s = 0
                        idx = 0
                        while idx < arg3:
                            _1944 = mem[64]
                            mem[mem[64] + 32] = arg1
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = address(msg.sender)
                            mem[mem[64] + 116] = arg2
                            mem[mem[64] + 148] = idx
                            _1945 = mem[64]
                            mem[mem[64]] = 148
                            mem[64] = mem[64] + 180
                            _1946 = mem[_1945]
                            t = _1945 + 32
                            u = _1944 + 180
                            s = mem[_1945]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1944 + floor32(mem[_1945]) + 180] = mem[_1944 + floor32(mem[_1945]) + 180] and 256^(-(mem[_1945] % 32) + 32) - 1 or mem[_1945 + floor32(mem[_1945]) + 32] and !(256^(-(mem[_1945] % 32) + 32) - 1)
                            _3607 = sha3(mem[mem[64] len _1944 + _1946 + -mem[64] + 180])
                            require stor21
                            _4040 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4040] = arg1
                            mem[_4040 + 32] = arg2
                            mem[_4040 + 64] = _3607 % stor21
                            mem[_4040 + 96] = 1
                            mem[_4040 + 128] = msg.sender
                            sub_d95e1e19.length++
                            storCB7C[stor41.length] = arg1
                            storCB7C[stor41.length] = arg2
                            storCB7C[stor41.length] = _3607 % stor21
                            storCB7C[stor41.length].field_0 = 1
                            storCB7C[stor41.length].field_8 = 0
                            storCB7C[stor41.length].field_16 = msg.sender
                            require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                            sub_54fdfd4e[msg.sender]++
                            require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                            sub_0bf43695[msg.sender]++
                            uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                            mem[32] = 40
                            sub_705553b0[stor41.length + 1] = arg2
                            require arg2 < sub_9236afca.length
                            require 1 <= sub_9236afca[arg2].field_1280
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                            s = sub_d95e1e19.length + 1
                            s = _3607 % stor21
                            idx = idx + 1
                            continue 
                else:
                    stor2 = uint16(stor16.field_32)
                    if arg4 != 1:
                        if arg4:
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1947 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1948 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1949 = mem[_1948]
                                t = _1948 + 32
                                u = _1947 + 180
                                s = mem[_1948]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1947 + floor32(mem[_1948]) + 180] = mem[_1947 + floor32(mem[_1948]) + 180] and 256^(-(mem[_1948] % 32) + 32) - 1 or mem[_1948 + floor32(mem[_1948]) + 32] and !(256^(-(mem[_1948] % 32) + 32) - 1)
                                _3612 = sha3(mem[mem[64] len _1947 + _1949 + -mem[64] + 180])
                                require stor21
                                _4047 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4047] = arg1
                                mem[_4047 + 32] = arg2
                                mem[_4047 + 64] = _3612 % stor21
                                mem[_4047 + 96] = 1
                                mem[_4047 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3612 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3612 % stor21
                                idx = idx + 1
                                continue 
                        else:
                            require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                            stor15 = stor13 * stor2 / 100
                            require msg.value == stor13 * stor2 / 100
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1950 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1951 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1952 = mem[_1951]
                                t = _1951 + 32
                                u = _1950 + 180
                                s = mem[_1951]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1950 + floor32(mem[_1951]) + 180] = mem[_1950 + floor32(mem[_1951]) + 180] and 256^(-(mem[_1951] % 32) + 32) - 1 or mem[_1951 + floor32(mem[_1951]) + 32] and !(256^(-(mem[_1951] % 32) + 32) - 1)
                                _3617 = sha3(mem[mem[64] len _1950 + _1952 + -mem[64] + 180])
                                require stor21
                                _4054 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4054] = arg1
                                mem[_4054 + 32] = arg2
                                mem[_4054 + 64] = _3617 % stor21
                                mem[_4054 + 96] = 1
                                mem[_4054 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3617 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3617 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                        stor15 = uint256(stor9.field_0) * stor2 / 100
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                        require not msg.value
                        mem[100] = msg.sender
                        mem[132] = this.address
                        mem[164] = stor15
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), stor15
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 < sub_9236afca.length
                        mem[0] = 34
                        require arg3 <= sub_9236afca[arg2].field_1280
                        require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                        s = 0
                        s = 0
                        idx = 0
                        while idx < arg3:
                            _1953 = mem[64]
                            mem[mem[64] + 32] = arg1
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = address(msg.sender)
                            mem[mem[64] + 116] = arg2
                            mem[mem[64] + 148] = idx
                            _1954 = mem[64]
                            mem[mem[64]] = 148
                            mem[64] = mem[64] + 180
                            _1955 = mem[_1954]
                            t = _1954 + 32
                            u = _1953 + 180
                            s = mem[_1954]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1953 + floor32(mem[_1954]) + 180] = mem[_1953 + floor32(mem[_1954]) + 180] and 256^(-(mem[_1954] % 32) + 32) - 1 or mem[_1954 + floor32(mem[_1954]) + 32] and !(256^(-(mem[_1954] % 32) + 32) - 1)
                            _3622 = sha3(mem[mem[64] len _1953 + _1955 + -mem[64] + 180])
                            require stor21
                            _4061 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4061] = arg1
                            mem[_4061 + 32] = arg2
                            mem[_4061 + 64] = _3622 % stor21
                            mem[_4061 + 96] = 1
                            mem[_4061 + 128] = msg.sender
                            sub_d95e1e19.length++
                            storCB7C[stor41.length] = arg1
                            storCB7C[stor41.length] = arg2
                            storCB7C[stor41.length] = _3622 % stor21
                            storCB7C[stor41.length].field_0 = 1
                            storCB7C[stor41.length].field_8 = 0
                            storCB7C[stor41.length].field_16 = msg.sender
                            require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                            sub_54fdfd4e[msg.sender]++
                            require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                            sub_0bf43695[msg.sender]++
                            uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                            mem[32] = 40
                            sub_705553b0[stor41.length + 1] = arg2
                            require arg2 < sub_9236afca.length
                            require 1 <= sub_9236afca[arg2].field_1280
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                            s = sub_d95e1e19.length + 1
                            s = _3622 % stor21
                            idx = idx + 1
                            continue 
            else:
                if stor1 >= stor5:
                    if stor1 <= stor5:
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1956 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1957 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1958 = mem[_1957]
                                    t = _1957 + 32
                                    u = _1956 + 180
                                    s = mem[_1957]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1956 + floor32(mem[_1957]) + 180] = mem[_1956 + floor32(mem[_1957]) + 180] and 256^(-(mem[_1957] % 32) + 32) - 1 or mem[_1957 + floor32(mem[_1957]) + 32] and !(256^(-(mem[_1957] % 32) + 32) - 1)
                                    _3627 = sha3(mem[mem[64] len _1956 + _1958 + -mem[64] + 180])
                                    require stor21
                                    _4068 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4068] = arg1
                                    mem[_4068 + 32] = arg2
                                    mem[_4068 + 64] = _3627 % stor21
                                    mem[_4068 + 96] = 1
                                    mem[_4068 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3627 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3627 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1959 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1960 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1961 = mem[_1960]
                                    t = _1960 + 32
                                    u = _1959 + 180
                                    s = mem[_1960]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1959 + floor32(mem[_1960]) + 180] = mem[_1959 + floor32(mem[_1960]) + 180] and 256^(-(mem[_1960] % 32) + 32) - 1 or mem[_1960 + floor32(mem[_1960]) + 32] and !(256^(-(mem[_1960] % 32) + 32) - 1)
                                    _3632 = sha3(mem[mem[64] len _1959 + _1961 + -mem[64] + 180])
                                    require stor21
                                    _4075 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4075] = arg1
                                    mem[_4075 + 32] = arg2
                                    mem[_4075 + 64] = _3632 % stor21
                                    mem[_4075 + 96] = 1
                                    mem[_4075 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3632 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3632 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1962 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1963 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1964 = mem[_1963]
                                t = _1963 + 32
                                u = _1962 + 180
                                s = mem[_1963]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1962 + floor32(mem[_1963]) + 180] = mem[_1962 + floor32(mem[_1963]) + 180] and 256^(-(mem[_1963] % 32) + 32) - 1 or mem[_1963 + floor32(mem[_1963]) + 32] and !(256^(-(mem[_1963] % 32) + 32) - 1)
                                _3637 = sha3(mem[mem[64] len _1962 + _1964 + -mem[64] + 180])
                                require stor21
                                _4082 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4082] = arg1
                                mem[_4082 + 32] = arg2
                                mem[_4082 + 64] = _3637 % stor21
                                mem[_4082 + 96] = 1
                                mem[_4082 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3637 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3637 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        stor2 = uint16(stor16.field_32)
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1965 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1966 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1967 = mem[_1966]
                                    t = _1966 + 32
                                    u = _1965 + 180
                                    s = mem[_1966]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1965 + floor32(mem[_1966]) + 180] = mem[_1965 + floor32(mem[_1966]) + 180] and 256^(-(mem[_1966] % 32) + 32) - 1 or mem[_1966 + floor32(mem[_1966]) + 32] and !(256^(-(mem[_1966] % 32) + 32) - 1)
                                    _3642 = sha3(mem[mem[64] len _1965 + _1967 + -mem[64] + 180])
                                    require stor21
                                    _4089 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4089] = arg1
                                    mem[_4089 + 32] = arg2
                                    mem[_4089 + 64] = _3642 % stor21
                                    mem[_4089 + 96] = 1
                                    mem[_4089 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3642 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3642 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1968 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1969 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1970 = mem[_1969]
                                    t = _1969 + 32
                                    u = _1968 + 180
                                    s = mem[_1969]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1968 + floor32(mem[_1969]) + 180] = mem[_1968 + floor32(mem[_1969]) + 180] and 256^(-(mem[_1969] % 32) + 32) - 1 or mem[_1969 + floor32(mem[_1969]) + 32] and !(256^(-(mem[_1969] % 32) + 32) - 1)
                                    _3647 = sha3(mem[mem[64] len _1968 + _1970 + -mem[64] + 180])
                                    require stor21
                                    _4096 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4096] = arg1
                                    mem[_4096 + 32] = arg2
                                    mem[_4096 + 64] = _3647 % stor21
                                    mem[_4096 + 96] = 1
                                    mem[_4096 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3647 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3647 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1971 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1972 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1973 = mem[_1972]
                                t = _1972 + 32
                                u = _1971 + 180
                                s = mem[_1972]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1971 + floor32(mem[_1972]) + 180] = mem[_1971 + floor32(mem[_1972]) + 180] and 256^(-(mem[_1972] % 32) + 32) - 1 or mem[_1972 + floor32(mem[_1972]) + 32] and !(256^(-(mem[_1972] % 32) + 32) - 1)
                                _3652 = sha3(mem[mem[64] len _1971 + _1973 + -mem[64] + 180])
                                require stor21
                                _4103 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4103] = arg1
                                mem[_4103 + 32] = arg2
                                mem[_4103 + 64] = _3652 % stor21
                                mem[_4103 + 96] = 1
                                mem[_4103 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3652 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3652 % stor21
                                idx = idx + 1
                                continue 
                else:
                    stor2 = uint16(stor16.field_16)
                    if stor1 <= stor5:
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1974 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1975 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1976 = mem[_1975]
                                    t = _1975 + 32
                                    u = _1974 + 180
                                    s = mem[_1975]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1974 + floor32(mem[_1975]) + 180] = mem[_1974 + floor32(mem[_1975]) + 180] and 256^(-(mem[_1975] % 32) + 32) - 1 or mem[_1975 + floor32(mem[_1975]) + 32] and !(256^(-(mem[_1975] % 32) + 32) - 1)
                                    _3657 = sha3(mem[mem[64] len _1974 + _1976 + -mem[64] + 180])
                                    require stor21
                                    _4110 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4110] = arg1
                                    mem[_4110 + 32] = arg2
                                    mem[_4110 + 64] = _3657 % stor21
                                    mem[_4110 + 96] = 1
                                    mem[_4110 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3657 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3657 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1977 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1978 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1979 = mem[_1978]
                                    t = _1978 + 32
                                    u = _1977 + 180
                                    s = mem[_1978]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1977 + floor32(mem[_1978]) + 180] = mem[_1977 + floor32(mem[_1978]) + 180] and 256^(-(mem[_1978] % 32) + 32) - 1 or mem[_1978 + floor32(mem[_1978]) + 32] and !(256^(-(mem[_1978] % 32) + 32) - 1)
                                    _3662 = sha3(mem[mem[64] len _1977 + _1979 + -mem[64] + 180])
                                    require stor21
                                    _4117 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4117] = arg1
                                    mem[_4117 + 32] = arg2
                                    mem[_4117 + 64] = _3662 % stor21
                                    mem[_4117 + 96] = 1
                                    mem[_4117 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3662 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3662 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1980 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1981 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1982 = mem[_1981]
                                t = _1981 + 32
                                u = _1980 + 180
                                s = mem[_1981]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1980 + floor32(mem[_1981]) + 180] = mem[_1980 + floor32(mem[_1981]) + 180] and 256^(-(mem[_1981] % 32) + 32) - 1 or mem[_1981 + floor32(mem[_1981]) + 32] and !(256^(-(mem[_1981] % 32) + 32) - 1)
                                _3667 = sha3(mem[mem[64] len _1980 + _1982 + -mem[64] + 180])
                                require stor21
                                _4124 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4124] = arg1
                                mem[_4124 + 32] = arg2
                                mem[_4124 + 64] = _3667 % stor21
                                mem[_4124 + 96] = 1
                                mem[_4124 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3667 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3667 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        stor2 = uint16(stor16.field_32)
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1983 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1984 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1985 = mem[_1984]
                                    t = _1984 + 32
                                    u = _1983 + 180
                                    s = mem[_1984]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1983 + floor32(mem[_1984]) + 180] = mem[_1983 + floor32(mem[_1984]) + 180] and 256^(-(mem[_1984] % 32) + 32) - 1 or mem[_1984 + floor32(mem[_1984]) + 32] and !(256^(-(mem[_1984] % 32) + 32) - 1)
                                    _3672 = sha3(mem[mem[64] len _1983 + _1985 + -mem[64] + 180])
                                    require stor21
                                    _4131 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4131] = arg1
                                    mem[_4131 + 32] = arg2
                                    mem[_4131 + 64] = _3672 % stor21
                                    mem[_4131 + 96] = 1
                                    mem[_4131 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3672 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3672 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1986 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1987 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1988 = mem[_1987]
                                    t = _1987 + 32
                                    u = _1986 + 180
                                    s = mem[_1987]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1986 + floor32(mem[_1987]) + 180] = mem[_1986 + floor32(mem[_1987]) + 180] and 256^(-(mem[_1987] % 32) + 32) - 1 or mem[_1987 + floor32(mem[_1987]) + 32] and !(256^(-(mem[_1987] % 32) + 32) - 1)
                                    _3677 = sha3(mem[mem[64] len _1986 + _1988 + -mem[64] + 180])
                                    require stor21
                                    _4138 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4138] = arg1
                                    mem[_4138 + 32] = arg2
                                    mem[_4138 + 64] = _3677 % stor21
                                    mem[_4138 + 96] = 1
                                    mem[_4138 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3677 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3677 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1989 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1990 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _1991 = mem[_1990]
                                t = _1990 + 32
                                u = _1989 + 180
                                s = mem[_1990]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1989 + floor32(mem[_1990]) + 180] = mem[_1989 + floor32(mem[_1990]) + 180] and 256^(-(mem[_1990] % 32) + 32) - 1 or mem[_1990 + floor32(mem[_1990]) + 32] and !(256^(-(mem[_1990] % 32) + 32) - 1)
                                _3682 = sha3(mem[mem[64] len _1989 + _1991 + -mem[64] + 180])
                                require stor21
                                _4145 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4145] = arg1
                                mem[_4145 + 32] = arg2
                                mem[_4145 + 64] = _3682 % stor21
                                mem[_4145 + 96] = 1
                                mem[_4145 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3682 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3682 % stor21
                                idx = idx + 1
                                continue 
        else:
            if stor1 < stor4:
                stor2 = uint16(stor16.field_0)
                if stor1 <= stor5:
                    if arg4 != 1:
                        if arg4:
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _2028 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _2029 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _2030 = mem[_2029]
                                t = _2029 + 32
                                u = _2028 + 180
                                s = mem[_2029]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2028 + floor32(mem[_2029]) + 180] = mem[_2028 + floor32(mem[_2029]) + 180] and 256^(-(mem[_2029] % 32) + 32) - 1 or mem[_2029 + floor32(mem[_2029]) + 32] and !(256^(-(mem[_2029] % 32) + 32) - 1)
                                _3747 = sha3(mem[mem[64] len _2028 + _2030 + -mem[64] + 180])
                                require stor21
                                _4236 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4236] = arg1
                                mem[_4236 + 32] = arg2
                                mem[_4236 + 64] = _3747 % stor21
                                mem[_4236 + 96] = 1
                                mem[_4236 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3747 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3747 % stor21
                                idx = idx + 1
                                continue 
                        else:
                            require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                            stor15 = stor13 * stor2 / 100
                            require msg.value == stor13 * stor2 / 100
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _2031 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _2032 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _2033 = mem[_2032]
                                t = _2032 + 32
                                u = _2031 + 180
                                s = mem[_2032]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2031 + floor32(mem[_2032]) + 180] = mem[_2031 + floor32(mem[_2032]) + 180] and 256^(-(mem[_2032] % 32) + 32) - 1 or mem[_2032 + floor32(mem[_2032]) + 32] and !(256^(-(mem[_2032] % 32) + 32) - 1)
                                _3752 = sha3(mem[mem[64] len _2031 + _2033 + -mem[64] + 180])
                                require stor21
                                _4243 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4243] = arg1
                                mem[_4243 + 32] = arg2
                                mem[_4243 + 64] = _3752 % stor21
                                mem[_4243 + 96] = 1
                                mem[_4243 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3752 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3752 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                        stor15 = uint256(stor9.field_0) * stor2 / 100
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                        require not msg.value
                        mem[100] = msg.sender
                        mem[132] = this.address
                        mem[164] = stor15
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), stor15
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 < sub_9236afca.length
                        mem[0] = 34
                        require arg3 <= sub_9236afca[arg2].field_1280
                        require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                        s = 0
                        s = 0
                        idx = 0
                        while idx < arg3:
                            _2034 = mem[64]
                            mem[mem[64] + 32] = arg1
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = address(msg.sender)
                            mem[mem[64] + 116] = arg2
                            mem[mem[64] + 148] = idx
                            _2035 = mem[64]
                            mem[mem[64]] = 148
                            mem[64] = mem[64] + 180
                            _2036 = mem[_2035]
                            t = _2035 + 32
                            u = _2034 + 180
                            s = mem[_2035]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2034 + floor32(mem[_2035]) + 180] = mem[_2034 + floor32(mem[_2035]) + 180] and 256^(-(mem[_2035] % 32) + 32) - 1 or mem[_2035 + floor32(mem[_2035]) + 32] and !(256^(-(mem[_2035] % 32) + 32) - 1)
                            _3757 = sha3(mem[mem[64] len _2034 + _2036 + -mem[64] + 180])
                            require stor21
                            _4250 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4250] = arg1
                            mem[_4250 + 32] = arg2
                            mem[_4250 + 64] = _3757 % stor21
                            mem[_4250 + 96] = 1
                            mem[_4250 + 128] = msg.sender
                            sub_d95e1e19.length++
                            storCB7C[stor41.length] = arg1
                            storCB7C[stor41.length] = arg2
                            storCB7C[stor41.length] = _3757 % stor21
                            storCB7C[stor41.length].field_0 = 1
                            storCB7C[stor41.length].field_8 = 0
                            storCB7C[stor41.length].field_16 = msg.sender
                            require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                            sub_54fdfd4e[msg.sender]++
                            require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                            sub_0bf43695[msg.sender]++
                            uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                            mem[32] = 40
                            sub_705553b0[stor41.length + 1] = arg2
                            require arg2 < sub_9236afca.length
                            require 1 <= sub_9236afca[arg2].field_1280
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                            s = sub_d95e1e19.length + 1
                            s = _3757 % stor21
                            idx = idx + 1
                            continue 
                else:
                    stor2 = uint16(stor16.field_32)
                    if arg4 != 1:
                        if arg4:
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _2037 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _2038 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _2039 = mem[_2038]
                                t = _2038 + 32
                                u = _2037 + 180
                                s = mem[_2038]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2037 + floor32(mem[_2038]) + 180] = mem[_2037 + floor32(mem[_2038]) + 180] and 256^(-(mem[_2038] % 32) + 32) - 1 or mem[_2038 + floor32(mem[_2038]) + 32] and !(256^(-(mem[_2038] % 32) + 32) - 1)
                                _3762 = sha3(mem[mem[64] len _2037 + _2039 + -mem[64] + 180])
                                require stor21
                                _4257 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4257] = arg1
                                mem[_4257 + 32] = arg2
                                mem[_4257 + 64] = _3762 % stor21
                                mem[_4257 + 96] = 1
                                mem[_4257 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3762 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3762 % stor21
                                idx = idx + 1
                                continue 
                        else:
                            require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                            stor15 = stor13 * stor2 / 100
                            require msg.value == stor13 * stor2 / 100
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _2040 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _2041 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _2042 = mem[_2041]
                                t = _2041 + 32
                                u = _2040 + 180
                                s = mem[_2041]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2040 + floor32(mem[_2041]) + 180] = mem[_2040 + floor32(mem[_2041]) + 180] and 256^(-(mem[_2041] % 32) + 32) - 1 or mem[_2041 + floor32(mem[_2041]) + 32] and !(256^(-(mem[_2041] % 32) + 32) - 1)
                                _3767 = sha3(mem[mem[64] len _2040 + _2042 + -mem[64] + 180])
                                require stor21
                                _4264 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4264] = arg1
                                mem[_4264 + 32] = arg2
                                mem[_4264 + 64] = _3767 % stor21
                                mem[_4264 + 96] = 1
                                mem[_4264 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3767 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3767 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                        stor15 = uint256(stor9.field_0) * stor2 / 100
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0xdd62ed3e with:
                             gas gas_remaining wei
                            args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                        require not msg.value
                        mem[100] = msg.sender
                        mem[132] = this.address
                        mem[164] = stor15
                        require ext_code.size(address(stor17.field_0))
                        call address(stor17.field_0).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), stor15
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg2 < sub_9236afca.length
                        mem[0] = 34
                        require arg3 <= sub_9236afca[arg2].field_1280
                        require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                        s = 0
                        s = 0
                        idx = 0
                        while idx < arg3:
                            _2043 = mem[64]
                            mem[mem[64] + 32] = arg1
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = address(msg.sender)
                            mem[mem[64] + 116] = arg2
                            mem[mem[64] + 148] = idx
                            _2044 = mem[64]
                            mem[mem[64]] = 148
                            mem[64] = mem[64] + 180
                            _2045 = mem[_2044]
                            t = _2044 + 32
                            u = _2043 + 180
                            s = mem[_2044]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2043 + floor32(mem[_2044]) + 180] = mem[_2043 + floor32(mem[_2044]) + 180] and 256^(-(mem[_2044] % 32) + 32) - 1 or mem[_2044 + floor32(mem[_2044]) + 32] and !(256^(-(mem[_2044] % 32) + 32) - 1)
                            _3772 = sha3(mem[mem[64] len _2043 + _2045 + -mem[64] + 180])
                            require stor21
                            _4271 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_4271] = arg1
                            mem[_4271 + 32] = arg2
                            mem[_4271 + 64] = _3772 % stor21
                            mem[_4271 + 96] = 1
                            mem[_4271 + 128] = msg.sender
                            sub_d95e1e19.length++
                            storCB7C[stor41.length] = arg1
                            storCB7C[stor41.length] = arg2
                            storCB7C[stor41.length] = _3772 % stor21
                            storCB7C[stor41.length].field_0 = 1
                            storCB7C[stor41.length].field_8 = 0
                            storCB7C[stor41.length].field_16 = msg.sender
                            require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                            sub_54fdfd4e[msg.sender]++
                            require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                            sub_0bf43695[msg.sender]++
                            uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                            mem[32] = 40
                            sub_705553b0[stor41.length + 1] = arg2
                            require arg2 < sub_9236afca.length
                            require 1 <= sub_9236afca[arg2].field_1280
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                            s = sub_d95e1e19.length + 1
                            s = _3772 % stor21
                            idx = idx + 1
                            continue 
            else:
                if stor1 >= stor5:
                    if stor1 <= stor5:
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1992 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1993 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1994 = mem[_1993]
                                    t = _1993 + 32
                                    u = _1992 + 180
                                    s = mem[_1993]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1992 + floor32(mem[_1993]) + 180] = mem[_1992 + floor32(mem[_1993]) + 180] and 256^(-(mem[_1993] % 32) + 32) - 1 or mem[_1993 + floor32(mem[_1993]) + 32] and !(256^(-(mem[_1993] % 32) + 32) - 1)
                                    _3687 = sha3(mem[mem[64] len _1992 + _1994 + -mem[64] + 180])
                                    require stor21
                                    _4152 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4152] = arg1
                                    mem[_4152 + 32] = arg2
                                    mem[_4152 + 64] = _3687 % stor21
                                    mem[_4152 + 96] = 1
                                    mem[_4152 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3687 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3687 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _1995 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _1996 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _1997 = mem[_1996]
                                    t = _1996 + 32
                                    u = _1995 + 180
                                    s = mem[_1996]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1995 + floor32(mem[_1996]) + 180] = mem[_1995 + floor32(mem[_1996]) + 180] and 256^(-(mem[_1996] % 32) + 32) - 1 or mem[_1996 + floor32(mem[_1996]) + 32] and !(256^(-(mem[_1996] % 32) + 32) - 1)
                                    _3692 = sha3(mem[mem[64] len _1995 + _1997 + -mem[64] + 180])
                                    require stor21
                                    _4159 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4159] = arg1
                                    mem[_4159 + 32] = arg2
                                    mem[_4159 + 64] = _3692 % stor21
                                    mem[_4159 + 96] = 1
                                    mem[_4159 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3692 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3692 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _1998 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _1999 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _2000 = mem[_1999]
                                t = _1999 + 32
                                u = _1998 + 180
                                s = mem[_1999]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1998 + floor32(mem[_1999]) + 180] = mem[_1998 + floor32(mem[_1999]) + 180] and 256^(-(mem[_1999] % 32) + 32) - 1 or mem[_1999 + floor32(mem[_1999]) + 32] and !(256^(-(mem[_1999] % 32) + 32) - 1)
                                _3697 = sha3(mem[mem[64] len _1998 + _2000 + -mem[64] + 180])
                                require stor21
                                _4166 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4166] = arg1
                                mem[_4166 + 32] = arg2
                                mem[_4166 + 64] = _3697 % stor21
                                mem[_4166 + 96] = 1
                                mem[_4166 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3697 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3697 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        stor2 = uint16(stor16.field_32)
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _2001 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _2002 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _2003 = mem[_2002]
                                    t = _2002 + 32
                                    u = _2001 + 180
                                    s = mem[_2002]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2001 + floor32(mem[_2002]) + 180] = mem[_2001 + floor32(mem[_2002]) + 180] and 256^(-(mem[_2002] % 32) + 32) - 1 or mem[_2002 + floor32(mem[_2002]) + 32] and !(256^(-(mem[_2002] % 32) + 32) - 1)
                                    _3702 = sha3(mem[mem[64] len _2001 + _2003 + -mem[64] + 180])
                                    require stor21
                                    _4173 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4173] = arg1
                                    mem[_4173 + 32] = arg2
                                    mem[_4173 + 64] = _3702 % stor21
                                    mem[_4173 + 96] = 1
                                    mem[_4173 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3702 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3702 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _2004 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _2005 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _2006 = mem[_2005]
                                    t = _2005 + 32
                                    u = _2004 + 180
                                    s = mem[_2005]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2004 + floor32(mem[_2005]) + 180] = mem[_2004 + floor32(mem[_2005]) + 180] and 256^(-(mem[_2005] % 32) + 32) - 1 or mem[_2005 + floor32(mem[_2005]) + 32] and !(256^(-(mem[_2005] % 32) + 32) - 1)
                                    _3707 = sha3(mem[mem[64] len _2004 + _2006 + -mem[64] + 180])
                                    require stor21
                                    _4180 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4180] = arg1
                                    mem[_4180 + 32] = arg2
                                    mem[_4180 + 64] = _3707 % stor21
                                    mem[_4180 + 96] = 1
                                    mem[_4180 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3707 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3707 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _2007 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _2008 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _2009 = mem[_2008]
                                t = _2008 + 32
                                u = _2007 + 180
                                s = mem[_2008]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2007 + floor32(mem[_2008]) + 180] = mem[_2007 + floor32(mem[_2008]) + 180] and 256^(-(mem[_2008] % 32) + 32) - 1 or mem[_2008 + floor32(mem[_2008]) + 32] and !(256^(-(mem[_2008] % 32) + 32) - 1)
                                _3712 = sha3(mem[mem[64] len _2007 + _2009 + -mem[64] + 180])
                                require stor21
                                _4187 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4187] = arg1
                                mem[_4187 + 32] = arg2
                                mem[_4187 + 64] = _3712 % stor21
                                mem[_4187 + 96] = 1
                                mem[_4187 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3712 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3712 % stor21
                                idx = idx + 1
                                continue 
                else:
                    stor2 = uint16(stor16.field_16)
                    if stor1 <= stor5:
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _2010 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _2011 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _2012 = mem[_2011]
                                    t = _2011 + 32
                                    u = _2010 + 180
                                    s = mem[_2011]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2010 + floor32(mem[_2011]) + 180] = mem[_2010 + floor32(mem[_2011]) + 180] and 256^(-(mem[_2011] % 32) + 32) - 1 or mem[_2011 + floor32(mem[_2011]) + 32] and !(256^(-(mem[_2011] % 32) + 32) - 1)
                                    _3717 = sha3(mem[mem[64] len _2010 + _2012 + -mem[64] + 180])
                                    require stor21
                                    _4194 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4194] = arg1
                                    mem[_4194 + 32] = arg2
                                    mem[_4194 + 64] = _3717 % stor21
                                    mem[_4194 + 96] = 1
                                    mem[_4194 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3717 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3717 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _2013 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _2014 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _2015 = mem[_2014]
                                    t = _2014 + 32
                                    u = _2013 + 180
                                    s = mem[_2014]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2013 + floor32(mem[_2014]) + 180] = mem[_2013 + floor32(mem[_2014]) + 180] and 256^(-(mem[_2014] % 32) + 32) - 1 or mem[_2014 + floor32(mem[_2014]) + 32] and !(256^(-(mem[_2014] % 32) + 32) - 1)
                                    _3722 = sha3(mem[mem[64] len _2013 + _2015 + -mem[64] + 180])
                                    require stor21
                                    _4201 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4201] = arg1
                                    mem[_4201 + 32] = arg2
                                    mem[_4201 + 64] = _3722 % stor21
                                    mem[_4201 + 96] = 1
                                    mem[_4201 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3722 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3722 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _2016 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _2017 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _2018 = mem[_2017]
                                t = _2017 + 32
                                u = _2016 + 180
                                s = mem[_2017]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2016 + floor32(mem[_2017]) + 180] = mem[_2016 + floor32(mem[_2017]) + 180] and 256^(-(mem[_2017] % 32) + 32) - 1 or mem[_2017 + floor32(mem[_2017]) + 32] and !(256^(-(mem[_2017] % 32) + 32) - 1)
                                _3727 = sha3(mem[mem[64] len _2016 + _2018 + -mem[64] + 180])
                                require stor21
                                _4208 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4208] = arg1
                                mem[_4208 + 32] = arg2
                                mem[_4208 + 64] = _3727 % stor21
                                mem[_4208 + 96] = 1
                                mem[_4208 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3727 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3727 % stor21
                                idx = idx + 1
                                continue 
                    else:
                        stor2 = uint16(stor16.field_32)
                        if arg4 != 1:
                            if arg4:
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _2019 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _2020 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _2021 = mem[_2020]
                                    t = _2020 + 32
                                    u = _2019 + 180
                                    s = mem[_2020]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2019 + floor32(mem[_2020]) + 180] = mem[_2019 + floor32(mem[_2020]) + 180] and 256^(-(mem[_2020] % 32) + 32) - 1 or mem[_2020 + floor32(mem[_2020]) + 32] and !(256^(-(mem[_2020] % 32) + 32) - 1)
                                    _3732 = sha3(mem[mem[64] len _2019 + _2021 + -mem[64] + 180])
                                    require stor21
                                    _4215 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4215] = arg1
                                    mem[_4215 + 32] = arg2
                                    mem[_4215 + 64] = _3732 % stor21
                                    mem[_4215 + 96] = 1
                                    mem[_4215 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3732 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3732 % stor21
                                    idx = idx + 1
                                    continue 
                            else:
                                require stor13 * stor2 / 100 >= stor13 * stor2 / 100
                                stor15 = stor13 * stor2 / 100
                                require msg.value == stor13 * stor2 / 100
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                require arg3 <= sub_9236afca[arg2].field_1280
                                require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                                s = 0
                                s = 0
                                idx = 0
                                while idx < arg3:
                                    _2022 = mem[64]
                                    mem[mem[64] + 32] = arg1
                                    mem[mem[64] + 64] = block.timestamp
                                    mem[mem[64] + 96] = address(msg.sender)
                                    mem[mem[64] + 116] = arg2
                                    mem[mem[64] + 148] = idx
                                    _2023 = mem[64]
                                    mem[mem[64]] = 148
                                    mem[64] = mem[64] + 180
                                    _2024 = mem[_2023]
                                    t = _2023 + 32
                                    u = _2022 + 180
                                    s = mem[_2023]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2022 + floor32(mem[_2023]) + 180] = mem[_2022 + floor32(mem[_2023]) + 180] and 256^(-(mem[_2023] % 32) + 32) - 1 or mem[_2023 + floor32(mem[_2023]) + 32] and !(256^(-(mem[_2023] % 32) + 32) - 1)
                                    _3737 = sha3(mem[mem[64] len _2022 + _2024 + -mem[64] + 180])
                                    require stor21
                                    _4222 = mem[64]
                                    mem[64] = mem[64] + 160
                                    mem[_4222] = arg1
                                    mem[_4222 + 32] = arg2
                                    mem[_4222 + 64] = _3737 % stor21
                                    mem[_4222 + 96] = 1
                                    mem[_4222 + 128] = msg.sender
                                    sub_d95e1e19.length++
                                    storCB7C[stor41.length] = arg1
                                    storCB7C[stor41.length] = arg2
                                    storCB7C[stor41.length] = _3737 % stor21
                                    storCB7C[stor41.length].field_0 = 1
                                    storCB7C[stor41.length].field_8 = 0
                                    storCB7C[stor41.length].field_16 = msg.sender
                                    require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                    sub_54fdfd4e[msg.sender]++
                                    require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                    sub_0bf43695[msg.sender]++
                                    uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                    mem[32] = 40
                                    sub_705553b0[stor41.length + 1] = arg2
                                    require arg2 < sub_9236afca.length
                                    require 1 <= sub_9236afca[arg2].field_1280
                                    require arg2 < sub_9236afca.length
                                    mem[0] = 34
                                    sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                    s = sub_d95e1e19.length + 1
                                    s = _3737 % stor21
                                    idx = idx + 1
                                    continue 
                        else:
                            require uint256(stor9.field_0) * stor2 / 100 >= uint256(stor9.field_0) * stor2 / 100
                            stor15 = uint256(stor9.field_0) * stor2 / 100
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0xdd62ed3e with:
                                 gas gas_remaining wei
                                args msg.sender, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= uint256(stor9.field_0) * stor2 / 100
                            require not msg.value
                            mem[100] = msg.sender
                            mem[132] = this.address
                            mem[164] = stor15
                            require ext_code.size(address(stor17.field_0))
                            call address(stor17.field_0).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), stor15
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require arg2 < sub_9236afca.length
                            mem[0] = 34
                            require arg3 <= sub_9236afca[arg2].field_1280
                            require uint32(sub_9236afca[arg2].field_1280 - arg3) >= 0
                            s = 0
                            s = 0
                            idx = 0
                            while idx < arg3:
                                _2025 = mem[64]
                                mem[mem[64] + 32] = arg1
                                mem[mem[64] + 64] = block.timestamp
                                mem[mem[64] + 96] = address(msg.sender)
                                mem[mem[64] + 116] = arg2
                                mem[mem[64] + 148] = idx
                                _2026 = mem[64]
                                mem[mem[64]] = 148
                                mem[64] = mem[64] + 180
                                _2027 = mem[_2026]
                                t = _2026 + 32
                                u = _2025 + 180
                                s = mem[_2026]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2025 + floor32(mem[_2026]) + 180] = mem[_2025 + floor32(mem[_2026]) + 180] and 256^(-(mem[_2026] % 32) + 32) - 1 or mem[_2026 + floor32(mem[_2026]) + 32] and !(256^(-(mem[_2026] % 32) + 32) - 1)
                                _3742 = sha3(mem[mem[64] len _2025 + _2027 + -mem[64] + 180])
                                require stor21
                                _4229 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_4229] = arg1
                                mem[_4229 + 32] = arg2
                                mem[_4229 + 64] = _3742 % stor21
                                mem[_4229 + 96] = 1
                                mem[_4229 + 128] = msg.sender
                                sub_d95e1e19.length++
                                storCB7C[stor41.length] = arg1
                                storCB7C[stor41.length] = arg2
                                storCB7C[stor41.length] = _3742 % stor21
                                storCB7C[stor41.length].field_0 = 1
                                storCB7C[stor41.length].field_8 = 0
                                storCB7C[stor41.length].field_16 = msg.sender
                                require sub_54fdfd4e[msg.sender] + 1 >= sub_54fdfd4e[msg.sender]
                                sub_54fdfd4e[msg.sender]++
                                require sub_0bf43695[msg.sender] + 1 >= sub_0bf43695[msg.sender]
                                sub_0bf43695[msg.sender]++
                                uint256(ticketToOwner[stor41.length + 1]) = msg.sender or Mask(96, 160, uint256(ticketToOwner[stor41.length + 1]))
                                mem[32] = 40
                                sub_705553b0[stor41.length + 1] = arg2
                                require arg2 < sub_9236afca.length
                                require 1 <= sub_9236afca[arg2].field_1280
                                require arg2 < sub_9236afca.length
                                mem[0] = 34
                                sub_9236afca[arg2].field_1280 = uint32(sub_9236afca[arg2].field_1280 - 1)
                                s = sub_d95e1e19.length + 1
                                s = _3742 % stor21
                                idx = idx + 1
                                continue 
}



}
