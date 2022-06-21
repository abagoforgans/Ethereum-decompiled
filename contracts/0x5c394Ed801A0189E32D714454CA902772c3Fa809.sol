contract main {




// =====================  Runtime code  =====================


#
#  - getToken(address arg1)
#  - sub_7bcb1499(?)
#
mapping of uint8 stor0;
array of address stor1;
address primaryAddress;
uint256 stor3;
address exchangerAddress;
address factoryAddress;
address walletsAddress;
mapping of uint256 stor7;
mapping of uint8 stor8;
array of struct stor9;
mapping of uint8 stor10;
mapping of uint256 stor11;

function sub_20f59dc7(?) {
    require stor8[address(arg1)][stor7[address(arg1)]]
    return bool(stor10[address(arg1)][0])
}

function isAdmin(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function sub_4b1acf39(?) {
    return exchangerAddress
}

function exchanger() {
    return exchangerAddress
}

function version() {
    return stor1.length
}

function isTokenWhitelisted(address arg1) {
    return bool(stor8[address(arg1)][stor7[address(arg1)]])
}

function factory() {
    return factoryAddress
}

function primary() {
    return primaryAddress
}

function sub_c96a68c1(?) {
    require stor8[address(arg1)][stor7[address(arg1)]]
    return bool(stor10[address(arg1)][address(arg2)])
}

function wallets() {
    return walletsAddress
}

function sub_e45725d8(?) {
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    return bool(uint8(stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 11][address(arg2)].field_0))
}

function _fallback() payable {
    revert
}

function renounceAdmin() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function transferPrimary(address arg1) {
    require msg.sender == primaryAddress
    require arg1
    primaryAddress = arg1
    emit PrimaryTransferred(arg1);
}

function addAdmin(address arg1) {
    require msg.sender == primaryAddress
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    require msg.sender == primaryAddress
    require arg1
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function serviceWallet() {
    require ext_code.size(walletsAddress)
    call walletsAddress.0xe3ff76e4 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_849072b9(?) {
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    if not uint256(stor12[stor7[address(arg1)]].field_768):
        mem[(32 * uint256(stor12[stor7[address(arg1)]].field_768)) + 128] = 32
        mem[(32 * uint256(stor12[stor7[address(arg1)]].field_768)) + 160] = uint256(stor12[stor7[address(arg1)]].field_768)
        mem[(32 * uint256(stor12[stor7[address(arg1)]].field_768)) + 192 len floor32(uint256(stor12[stor7[address(arg1)]].field_768))] = mem[128 len floor32(uint256(stor12[stor7[address(arg1)]].field_768))]
        return memory
          from (32 * uint256(stor12[stor7[address(arg1)]].field_768)) + 128
           len (96 * uint256(stor12[stor7[address(arg1)]].field_768)) + 64
    mem[128] = address(stor[sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 3)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor12[stor7[address(arg1)]].field_768)) + 96 > idx:
        mem[idx + 32] = address(stor[s + sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor12[stor7[address(arg1)]].field_768)) + 192 len floor32(uint256(stor12[stor7[address(arg1)]].field_768))] = mem[128 len floor32(uint256(stor12[stor7[address(arg1)]].field_768))]
    return Array(len=uint256(stor12[stor7[address(arg1)]].field_768), data=mem[128 len floor32(uint256(stor12[stor7[address(arg1)]].field_768))], mem[(32 * uint256(stor12[stor7[address(arg1)]].field_768)) + floor32(uint256(stor12[stor7[address(arg1)]].field_768)) + 192 len (32 * uint256(stor12[stor7[address(arg1)]].field_768)) - floor32(uint256(stor12[stor7[address(arg1)]].field_768))]), 
}

function sub_460f0b6b(?) {
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    if not uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792):
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 128] = 32
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 160] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 192 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))] = mem[128 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]
        return memory
          from (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 128
           len (96 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 64
    mem[128] = address(stor[sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 7)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 96 > idx:
        mem[idx + 32] = address(stor[s + sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 7)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 192 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))] = mem[128 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]
    return Array(len=uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792), data=mem[128 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))], mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 192 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) - floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]), 
}

function sub_21689c1a(?) {
    require arg3 > 0
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    require uint8(stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 11][address(msg.sender)].field_0)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require ext_code.size(exchangerAddress)
    call exchangerAddress.0x151f3734 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    require arg3 + uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536) >= uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    require uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1280) >= arg3 + uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536)
    require ext_code.size(exchangerAddress)
    call exchangerAddress.0x151f3734 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    require arg3 + uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536) >= uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536) += arg3
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2, uint32 arg3) with:
         gas gas_remaining wei
        args address(arg2), arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd663b1d1: address(arg2), arg3, arg1, msg.sender
}

function sub_75dd8cfc(?) {
    stor3++
    require ext_code.size(walletsAddress)
    call walletsAddress.0xe3ff76e4 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    require arg3 > 0
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    require uint8(stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 11][address(msg.sender)].field_0)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] == uint8(stor12[stor7[address(arg1)]].field_512)
    if uint256(stor12[stor7[address(arg1)]].field_1024) <= 0:
        require 0 <= arg3
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args exchangerAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, exchangerAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args exchangerAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == arg3 + ext_call.return_data[0]
        require ext_code.size(walletsAddress)
        call walletsAddress.0xe3ff76e4 with:
             gas gas_remaining wei
            args 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require stor8[address(arg1)][stor7[address(arg1)]]
        require stor10[address(arg1)][address(arg2)]
        require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
        require arg3 + uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1280) >= uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1280)
        require stor8[address(arg1)][stor7[address(arg1)]]
        require stor10[address(arg1)][address(arg2)]
        require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
        uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1280) += arg3
        require ext_code.size(exchangerAddress)
        call exchangerAddress.0x151f3734 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[5987] = uint256(stor12[stor7[address(arg1)]].field_0)
            idx = 5987
            s = 0
            while stor12[stor7[address(arg1)]].length + 5987 > idx + 32:
                mem[idx + 32] = uint256(stor12[(12 * stor7[address(arg1)]) + s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + 5987] = stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1].length
            mem[stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + 6019] = uint256(stor[sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1)].field_0)
            idx = stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + 6019
            s = 0
            while stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1].length + 6019 > idx + 32:
                mem[idx + 32] = uint256(stor[s + sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            create contract with 0 wei
                            code: code.data[16882 len 5763], Array(len=uint8(stor12[stor7[address(arg1)]].field_512), data=stor12[stor7[address(arg1)]].length, mem[5987 len stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1].length + (floor32(stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1].length - 1) + -stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1].length + 32 % 32) + 32]), stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + 128
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(exchangerAddress)
            call exchangerAddress.0xa0736912 with:
                 gas gas_remaining wei
                args address(arg1), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(exchangerAddress)
        call exchangerAddress.0x151f3734 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x168493f0: address(arg2), arg3, address(ext_call.return_data[0]), arg1, msg.sender
    else:
        require ext_code.size(0x9de53eab103bdc7c4cfb391eb1e75e6c97b7598)
        delegate 0x9de53eab103bdc7c4cfb391eb1e75e6c97b7598.percent(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, uint256(stor12[stor7[address(arg1)]].field_1024)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] <= arg3
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args exchangerAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 - delegate.return_data[0] + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, exchangerAddress, arg3 - delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args exchangerAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == arg3 - delegate.return_data[0] + ext_call.return_data[0]
        require ext_code.size(walletsAddress)
        call walletsAddress.0xe3ff76e4 with:
             gas gas_remaining wei
            args 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), delegate.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == delegate.return_data[0] + ext_call.return_data[0]
        require stor8[address(arg1)][stor7[address(arg1)]]
        require stor10[address(arg1)][address(arg2)]
        require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
        require arg3 - delegate.return_data[0] + uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1280) >= uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1280)
        require stor8[address(arg1)][stor7[address(arg1)]]
        require stor10[address(arg1)][address(arg2)]
        require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
        uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1280) = arg3 - delegate.return_data[0] + uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1280)
        require ext_code.size(exchangerAddress)
        call exchangerAddress.0x151f3734 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[5987] = uint256(stor12[stor7[address(arg1)]].field_0)
            idx = 5987
            s = 0
            while stor12[stor7[address(arg1)]].length + 5987 > idx + 32:
                mem[idx + 32] = uint256(stor12[(12 * stor7[address(arg1)]) + s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + 5987] = stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1].length
            mem[stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + 6019] = uint256(stor[sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1)].field_0)
            idx = stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + 6019
            s = 0
            while stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1].length + 6019 > idx + 32:
                mem[idx + 32] = uint256(stor[s + sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            create contract with 0 wei
                            code: code.data[16882 len 5763], Array(len=uint8(stor12[stor7[address(arg1)]].field_512), data=stor12[stor7[address(arg1)]].length, mem[5987 len stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1].length + (floor32(stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1].length - 1) + -stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 1].length + 32 % 32) + 32]), stor12[stor7[address(arg1)]].length + (floor32(stor12[stor7[address(arg1)]].length - 1) + -stor12[stor7[address(arg1)]].length + 32 % 32) + 128
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(exchangerAddress)
            call exchangerAddress.0xa0736912 with:
                 gas gas_remaining wei
                args address(arg1), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(exchangerAddress)
        call exchangerAddress.0x151f3734 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x168493f0: address(arg2), arg3 - delegate.return_data[0], address(ext_call.return_data[0]), arg1, msg.sender
    require stor3 + 1 == stor3
}

function sub_09363c99(?) {
    stor3++
    require ext_code.size(walletsAddress)
    call walletsAddress.0xe3ff76e4 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    require uint8(stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 11][address(msg.sender)].field_0)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][0]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][0]
    require stor11[address(arg1)][0] < uint256(stor9[address(arg1)].field_0)
    require arg2 + uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_1536) >= uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_1536)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][0]
    require stor11[address(arg1)][0] < uint256(stor9[address(arg1)].field_0)
    require uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_1280) >= arg2 + uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_1536)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    require ext_code.size(exchangerAddress)
    call exchangerAddress.0x151f3734 with:
         gas gas_remaining wei
        args address(stor12[stor7[address(arg1)]].field_2048)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(walletsAddress)
    call walletsAddress.0xe3ff76e4 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint256(stor12[stor7[address(arg1)]].field_768):
        require ext_code.size(factoryAddress)
        call factoryAddress.0x868b16d9 with:
             gas gas_remaining wei
            args 0, uint32(stor12[stor7[address(arg1)]].field_2048), address(ext_call.return_data[0]), arg3, address(ext_call.return_data[0]), uint256(stor12[stor7[address(arg1)]].field_1280), uint256(stor12[stor7[address(arg1)]].field_1536), uint256(stor12[stor7[address(arg1)]].field_1792), exchangerAddress, 288, uint256(stor12[stor7[address(arg1)]].field_768)
    else:
        mem[420] = address(stor[sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 3)].field_0)
        idx = 420
        s = 0
        while (32 * uint256(stor12[stor7[address(arg1)]].field_768)) + 420 > idx + 32:
            mem[idx + 32] = address(stor[s + sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 3)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(factoryAddress)
        call factoryAddress.0x868b16d9 with:
             gas gas_remaining wei
            args 0, uint32(stor12[stor7[address(arg1)]].field_2048), address(ext_call.return_data[0]), arg3, address(ext_call.return_data[0]), uint256(stor12[stor7[address(arg1)]].field_1280), uint256(stor12[stor7[address(arg1)]].field_1536), uint256(stor12[stor7[address(arg1)]].field_1792), exchangerAddress, 288, uint256(stor12[stor7[address(arg1)]].field_768), mem[420 len 32 * uint256(stor12[stor7[address(arg1)]].field_768)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70480275 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getFund() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70480275 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70480275 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require address(ext_call.return_data[0])
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][0]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require not stor10[address(arg1)][address(ext_call.return_data[0])]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][0]
    require stor11[address(arg1)][0] < uint256(stor9[address(arg1)].field_0)
    address(stor9[address(arg1)][stor11[address(arg1)][0]].field_0) = address(ext_call.return_data[0])
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_256) = uint256(stor12[stor7[address(arg1)]].field_1024)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_512) = uint256(stor12[stor7[address(arg1)]].field_1280)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_768) = uint256(stor12[stor7[address(arg1)]].field_1536)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_1024) = uint256(stor12[stor7[address(arg1)]].field_1792)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_1792) = uint256(stor12[stor7[address(arg1)]].field_768)
    if not uint256(stor12[stor7[address(arg1)]].field_768):
        idx = 0
        while uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_1792) > idx:
            address(stor[idx + sha3((10 * stor11[address(arg1)][0]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 7)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while uint256(stor12[stor7[address(arg1)]].field_768) > idx:
            uint256(stor[s + sha3((10 * stor11[address(arg1)][0]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 7)].field_0) = uint256(stor[idx + sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 3)].field_0)
            s = s + 1
            idx = idx + 1
            continue 
        idx = uint256(stor12[stor7[address(arg1)]].field_768)
        while uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_1792) > idx:
            address(stor[idx + sha3((10 * stor11[address(arg1)][0]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 7)].field_0) = 0
            idx = idx + 1
            continue 
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_2048) = uint256(stor12[stor7[address(arg1)]].field_2304)
    if not uint256(stor12[stor7[address(arg1)]].field_2304):
        idx = 0
        while uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_2048) > idx:
            uint256(stor[idx + sha3((10 * stor11[address(arg1)][0]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 8)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while uint256(stor12[stor7[address(arg1)]].field_2304) > idx:
            uint256(stor[s + sha3((10 * stor11[address(arg1)][0]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 8)].field_0) = uint256(stor[idx + sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 9)].field_0)
            s = s + 1
            idx = idx + 1
            continue 
        idx = uint256(stor12[stor7[address(arg1)]].field_2304)
        while uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_2048) > idx:
            uint256(stor[idx + sha3((10 * stor11[address(arg1)][0]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 8)].field_0) = 0
            idx = idx + 1
            continue 
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_2304) = uint256(stor12[stor7[address(arg1)]].field_2560)
    if not uint256(stor12[stor7[address(arg1)]].field_2560):
        idx = 0
        while uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_2304) > idx:
            uint256(stor[idx + sha3((10 * stor11[address(arg1)][0]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while uint256(stor12[stor7[address(arg1)]].field_2560) > idx:
            uint256(stor[s + sha3((10 * stor11[address(arg1)][0]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_0) = uint256(stor[idx + sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 10)].field_0)
            s = s + 1
            idx = idx + 1
            continue 
        idx = uint256(stor12[stor7[address(arg1)]].field_2560)
        while uint256(stor9[address(arg1)][stor11[address(arg1)][0]].field_2304) > idx:
            uint256(stor[idx + sha3((10 * stor11[address(arg1)][0]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_0) = 0
            idx = idx + 1
            continue 
    stor10[address(arg1)][address(ext_call.return_data[0])] = 1
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][0]
    stor11[address(arg1)][address(ext_call.return_data[0])] = stor11[address(arg1)][0]
    stor10[address(arg1)][0] = 0
    stor11[address(arg1)][0] = 0
    idx = 0
    while idx < uint256(stor12[stor7[address(arg1)]].field_2304):
        require idx < uint256(stor12[stor7[address(arg1)]].field_2560)
        mem[0] = (12 * stor7[address(arg1)]) + sha3(12) + 10
        mem[96] = 0x59e3774900000000000000000000000000000000000000000000000000000000
        mem[100] = uint256(stor[sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 9) + idx].field_0)
        mem[132] = 1
        mem[164] = uint256(stor[sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 10) + idx].field_0)
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x59e37749 with:
             gas gas_remaining wei
            args uint256(stor[sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 9) + idx].field_0), 1, uint256(stor[sha3((12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 10) + idx].field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(ext_call.return_data[0])]
    require stor11[address(arg1)][address(ext_call.return_data[0])] < uint256(stor9[address(arg1)].field_0)
    require ext_code.size(exchangerAddress)
    call exchangerAddress.0xe1f21c67 with:
         gas gas_remaining wei
        args address(stor12[stor7[address(arg1)]].field_2048), address(ext_call.return_data[0]), uint256(stor9[address(arg1)][stor11[address(arg1)][address(ext_call.return_data[0])]].field_1280)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 > 0
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor7[address(arg1)] < stor12.length
    require uint8(stor[(12 * stor7[address(arg1)]) + ('name', 'stor12', 12) + 11][address(msg.sender)].field_0)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(ext_call.return_data[0])]
    require ext_code.size(exchangerAddress)
    call exchangerAddress.0x151f3734 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(ext_call.return_data[0])
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(ext_call.return_data[0])]
    require stor11[address(arg1)][address(ext_call.return_data[0])] < uint256(stor9[address(arg1)].field_0)
    require arg2 + uint256(stor9[address(arg1)][stor11[address(arg1)][address(ext_call.return_data[0])]].field_1536) >= uint256(stor9[address(arg1)][stor11[address(arg1)][address(ext_call.return_data[0])]].field_1536)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(ext_call.return_data[0])]
    require stor11[address(arg1)][address(ext_call.return_data[0])] < uint256(stor9[address(arg1)].field_0)
    require uint256(stor9[address(arg1)][stor11[address(arg1)][address(ext_call.return_data[0])]].field_1280) >= arg2 + uint256(stor9[address(arg1)][stor11[address(arg1)][address(ext_call.return_data[0])]].field_1536)
    require ext_code.size(exchangerAddress)
    call exchangerAddress.0x151f3734 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(ext_call.return_data[0])]
    require stor11[address(arg1)][address(ext_call.return_data[0])] < uint256(stor9[address(arg1)].field_0)
    require arg2 + uint256(stor9[address(arg1)][stor11[address(arg1)][address(ext_call.return_data[0])]].field_1536) >= uint256(stor9[address(arg1)][stor11[address(arg1)][address(ext_call.return_data[0])]].field_1536)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(ext_call.return_data[0])]
    require stor11[address(arg1)][address(ext_call.return_data[0])] < uint256(stor9[address(arg1)].field_0)
    uint256(stor9[address(arg1)][stor11[address(arg1)][address(ext_call.return_data[0])]].field_1536) += arg2
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2, uint32 arg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd663b1d1: address(ext_call.return_data[0]), arg2, arg1, msg.sender
    emit 0xc9cecf9f: address(ext_call.return_data[0]), arg2, address(stor12[stor7[address(arg1)]].field_2048), msg.sender
    require stor3 + 1 == stor3
}

function getTokens() {
    mem[64] = (32 * stor12.length) + 128
    mem[96] = stor12.length
    s = 128
    idx = 0
    while idx < stor12.length:
        _344 = mem[64]
        mem[64] = mem[64] + ceil32(stor12[idx].length) + 384
        mem[_344 + 352] = stor12[idx].length
        mem[0] = sha3(12) + (12 * idx)
        mem[_344 + 384] = uint256(stor12[idx].field_0)
        t = _344 + 384
        u = sha3(mem[0])
        while _344 + stor12[idx].length + 384 > t + 32:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_344] = _344 + 352
        _687 = mem[64]
        mem[64] = mem[64] + ceil32(stor[('name', 'stor12', 12) + (12 * idx) + 1].length) + 32
        mem[_687] = stor[('name', 'stor12', 12) + (12 * idx) + 1].length
        mem[0] = sha3(12) + (12 * idx) + 1
        mem[_687 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 1)].field_0)
        t = _687 + 32
        u = sha3(mem[0])
        while _687 + stor[('name', 'stor12', 12) + (12 * idx) + 1].length > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_344 + 32] = _687
        mem[_344 + 64] = uint8(stor12[idx].field_512)
        _1020 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor12[idx].field_768)) + 32
        mem[_1020] = uint256(stor12[idx].field_768)
        if not uint256(stor12[idx].field_768):
            mem[_344 + 96] = _1020
            mem[_344 + 128] = uint256(stor12[idx].field_1024)
            mem[_344 + 160] = uint256(stor12[idx].field_1280)
            mem[_344 + 192] = uint256(stor12[idx].field_1536)
            mem[_344 + 224] = uint256(stor12[idx].field_1792)
            mem[_344 + 256] = address(stor12[idx].field_2048)
            _1027 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2304)) + 32
            mem[_1027] = uint256(stor12[idx].field_2304)
            if not uint256(stor12[idx].field_2304):
                mem[_344 + 288] = _1027
                _1033 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                mem[_1033] = uint256(stor12[idx].field_2560)
                if uint256(stor12[idx].field_2560):
                    mem[0] = sha3(12) + (12 * idx) + 10
                    mem[_1033 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                    t = _1033 + 32
                    u = sha3(mem[0])
                    while _1033 + (32 * uint256(stor12[idx].field_2560)) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_344 + 320] = _1033
            else:
                mem[0] = sha3(12) + (12 * idx) + 9
                mem[_1027 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 9)].field_0)
                t = _1027 + 32
                u = sha3(mem[0])
                while _1027 + (32 * uint256(stor12[idx].field_2304)) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_344 + 288] = _1027
                _1602 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                mem[_1602] = uint256(stor12[idx].field_2560)
                if uint256(stor12[idx].field_2560):
                    mem[0] = sha3(12) + (12 * idx) + 10
                    mem[_1602 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                    t = _1602 + 32
                    u = sha3(mem[0])
                    while _1602 + (32 * uint256(stor12[idx].field_2560)) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_344 + 320] = _1602
        else:
            mem[0] = sha3(12) + (12 * idx) + 3
            mem[_1020 + 32] = address(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 3)].field_0)
            t = _1020 + 32
            u = sha3(mem[0])
            while _1020 + (32 * uint256(stor12[idx].field_768)) > t:
                mem[t + 32] = address(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_344 + 96] = _1020
            mem[_344 + 128] = uint256(stor12[idx].field_1024)
            mem[_344 + 160] = uint256(stor12[idx].field_1280)
            mem[_344 + 192] = uint256(stor12[idx].field_1536)
            mem[_344 + 224] = uint256(stor12[idx].field_1792)
            mem[_344 + 256] = address(stor12[idx].field_2048)
            _1603 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2304)) + 32
            mem[_1603] = uint256(stor12[idx].field_2304)
            if not uint256(stor12[idx].field_2304):
                mem[_344 + 288] = _1603
                _1617 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                mem[_1617] = uint256(stor12[idx].field_2560)
                if uint256(stor12[idx].field_2560):
                    mem[0] = sha3(12) + (12 * idx) + 10
                    mem[_1617 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                    t = _1617 + 32
                    u = sha3(mem[0])
                    while _1617 + (32 * uint256(stor12[idx].field_2560)) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_344 + 320] = _1617
            else:
                mem[0] = sha3(12) + (12 * idx) + 9
                mem[_1603 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 9)].field_0)
                t = _1603 + 32
                u = sha3(mem[0])
                while _1603 + (32 * uint256(stor12[idx].field_2304)) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_344 + 288] = _1603
                _1982 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                mem[_1982] = uint256(stor12[idx].field_2560)
                if uint256(stor12[idx].field_2560):
                    mem[0] = sha3(12) + (12 * idx) + 10
                    mem[_1982 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                    t = _1982 + 32
                    u = sha3(mem[0])
                    while _1982 + (32 * uint256(stor12[idx].field_2560)) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_344 + 320] = _1982
        mem[s] = _344
        s = s + 32
        idx = idx + 1
        continue 
    _345 = mem[96]
    _346 = mem[64]
    mem[mem[64]] = mem[96]
    if not _345:
        _992 = mem[64] + (32 * _345) + 32
        mem[64] = mem[64] + (32 * _345) + (32 * stor12.length) + 64
        mem[_992] = stor12.length
        if var25002 >= stor12.length:
            if var24003 >= stor12.length:
                mem[_346 + (32 * _345) + (32 * stor12.length) + 64] = 32
                mem[_346 + (32 * _345) + (32 * stor12.length) + 96] = mem[_346]
                mem[_346 + (32 * _345) + (32 * stor12.length) + 128 len floor32(mem[_346])] = mem[_346 + 32 len floor32(mem[_346])]
                return memory
                  from mem[64]
                   len (32 * mem[_346]) + _346 + (32 * _345) + (32 * stor12.length) + -mem[64] + 128
            mem[64] = _346 + (32 * _345) + (64 * stor12.length) + 96
            mem[_346 + (32 * _345) + (32 * stor12.length) + 64] = stor12.length
            s = _346 + (32 * _345) + (32 * stor12.length) + 96
            idx = 0
            while idx < stor12.length:
                _1609 = mem[64]
                mem[64] = mem[64] + ceil32(stor12[idx].length) + 384
                mem[_1609 + 352] = stor12[idx].length
                mem[0] = sha3(12) + (12 * idx)
                mem[_1609 + 384] = uint256(stor12[idx].field_0)
                t = _1609 + 384
                u = sha3(mem[0])
                while _1609 + stor12[idx].length + 384 > t + 32:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1609] = _1609 + 352
                _1867 = mem[64]
                mem[64] = mem[64] + ceil32(stor[('name', 'stor12', 12) + (12 * idx) + 1].length) + 32
                mem[_1867] = stor[('name', 'stor12', 12) + (12 * idx) + 1].length
                mem[0] = sha3(12) + (12 * idx) + 1
                mem[_1867 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 1)].field_0)
                t = _1867 + 32
                u = sha3(mem[0])
                while _1867 + stor[('name', 'stor12', 12) + (12 * idx) + 1].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1609 + 32] = _1867
                mem[_1609 + 64] = uint8(stor12[idx].field_512)
                _2034 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[idx].field_768)) + 32
                mem[_2034] = uint256(stor12[idx].field_768)
                if not uint256(stor12[idx].field_768):
                    mem[_1609 + 96] = _2034
                    mem[_1609 + 128] = uint256(stor12[idx].field_1024)
                    mem[_1609 + 160] = uint256(stor12[idx].field_1280)
                    mem[_1609 + 192] = uint256(stor12[idx].field_1536)
                    mem[_1609 + 224] = uint256(stor12[idx].field_1792)
                    mem[_1609 + 256] = address(stor12[idx].field_2048)
                    _2050 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2304)) + 32
                    mem[_2050] = uint256(stor12[idx].field_2304)
                    if not uint256(stor12[idx].field_2304):
                        mem[_1609 + 288] = _2050
                        _2054 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                        mem[_2054] = uint256(stor12[idx].field_2560)
                        if uint256(stor12[idx].field_2560):
                            mem[0] = sha3(12) + (12 * idx) + 10
                            mem[_2054 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                            t = _2054 + 32
                            u = sha3(mem[0])
                            while _2054 + (32 * uint256(stor12[idx].field_2560)) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_1609 + 320] = _2054
                    else:
                        mem[0] = sha3(12) + (12 * idx) + 9
                        mem[_2050 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 9)].field_0)
                        t = _2050 + 32
                        u = sha3(mem[0])
                        while _2050 + (32 * uint256(stor12[idx].field_2304)) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_1609 + 288] = _2050
                        _2138 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                        mem[_2138] = uint256(stor12[idx].field_2560)
                        if uint256(stor12[idx].field_2560):
                            mem[0] = sha3(12) + (12 * idx) + 10
                            mem[_2138 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                            t = _2138 + 32
                            u = sha3(mem[0])
                            while _2138 + (32 * uint256(stor12[idx].field_2560)) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_1609 + 320] = _2138
                else:
                    mem[0] = sha3(12) + (12 * idx) + 3
                    mem[_2034 + 32] = address(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 3)].field_0)
                    t = _2034 + 32
                    u = sha3(mem[0])
                    while _2034 + (32 * uint256(stor12[idx].field_768)) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1609 + 96] = _2034
                    mem[_1609 + 128] = uint256(stor12[idx].field_1024)
                    mem[_1609 + 160] = uint256(stor12[idx].field_1280)
                    mem[_1609 + 192] = uint256(stor12[idx].field_1536)
                    mem[_1609 + 224] = uint256(stor12[idx].field_1792)
                    mem[_1609 + 256] = address(stor12[idx].field_2048)
                    _2139 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2304)) + 32
                    mem[_2139] = uint256(stor12[idx].field_2304)
                    if not uint256(stor12[idx].field_2304):
                        mem[_1609 + 288] = _2139
                        _2159 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                        mem[_2159] = uint256(stor12[idx].field_2560)
                        if uint256(stor12[idx].field_2560):
                            mem[0] = sha3(12) + (12 * idx) + 10
                            mem[_2159 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                            t = _2159 + 32
                            u = sha3(mem[0])
                            while _2159 + (32 * uint256(stor12[idx].field_2560)) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_1609 + 320] = _2159
                    else:
                        mem[0] = sha3(12) + (12 * idx) + 9
                        mem[_2139 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 9)].field_0)
                        t = _2139 + 32
                        u = sha3(mem[0])
                        while _2139 + (32 * uint256(stor12[idx].field_2304)) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_1609 + 288] = _2139
                        _2200 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                        mem[_2200] = uint256(stor12[idx].field_2560)
                        if uint256(stor12[idx].field_2560):
                            mem[0] = sha3(12) + (12 * idx) + 10
                            mem[_2200 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                            t = _2200 + 32
                            u = sha3(mem[0])
                            while _2200 + (32 * uint256(stor12[idx].field_2560)) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_1609 + 320] = _2200
                mem[s] = _1609
                s = s + 32
                idx = idx + 1
                continue 
            require var24003 < mem[_346 + (32 * _345) + (32 * stor12.length) + 64]
            require var24003 < mem[_346]
            mem[_346 + (32 * var24003) + 32] = mem[mem[(32 * var24003) + _346 + (32 * _345) + (32 * stor12.length) + 96] + 268 len 20]
            _1692 = mem[64]
            mem[64] = mem[64] + (32 * stor12.length) + 32
            mem[_1692] = stor12.length
            var25001 = _1692 + 32
            var25002 = 0
            continue 
        mem[64] = _346 + (32 * _345) + (32 * stor12.length) + ceil32(stor12[var25002].length) + 448
        mem[_346 + (32 * _345) + (32 * stor12.length) + 416] = stor12[var25002].length
        mem[0] = sha3(12) + (12 * var25002)
        mem[_346 + (32 * _345) + (32 * stor12.length) + 448] = uint256(stor12[var25002].field_0)
        s = _346 + (32 * _345) + (32 * stor12.length) + 448
        t = 0
        while _346 + (32 * _345) + (32 * stor12.length) + stor12[var25002].length + 448 > s + 32:
            mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
            s = s + 32
            t = t + 1
            continue 
        mem[_346 + (32 * _345) + (32 * stor12.length) + 64] = _346 + (32 * _345) + (32 * stor12.length) + 416
        _1624 = mem[64]
        mem[64] = mem[64] + ceil32(stor[('name', 'stor12', 12) + (12 * var25002) + 1].length) + 32
        mem[_1624] = stor[('name', 'stor12', 12) + (12 * var25002) + 1].length
        mem[0] = sha3(12) + (12 * var25002) + 1
        mem[_1624 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var25002) + 1)].field_0)
        s = _1624 + 32
        t = 0
        while _1624 + stor[('name', 'stor12', 12) + (12 * var25002) + 1].length > s:
            mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
            s = s + 32
            t = t + 1
            continue 
        mem[_346 + (32 * _345) + (32 * stor12.length) + 96] = _1624
        mem[_346 + (32 * _345) + (32 * stor12.length) + 128] = uint8(stor12[var25002].field_512)
        _1871 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor12[var25002].field_768)) + 32
        mem[_1871] = uint256(stor12[var25002].field_768)
        if not uint256(stor12[var25002].field_768):
            mem[_346 + (32 * _345) + (32 * stor12.length) + 160] = _1871
            mem[_346 + (32 * _345) + (32 * stor12.length) + 192] = uint256(stor12[var25002].field_1024)
            mem[_346 + (32 * _345) + (32 * stor12.length) + 224] = uint256(stor12[var25002].field_1280)
            mem[_346 + (32 * _345) + (32 * stor12.length) + 256] = uint256(stor12[var25002].field_1536)
            mem[_346 + (32 * _345) + (32 * stor12.length) + 288] = uint256(stor12[var25002].field_1792)
            mem[_346 + (32 * _345) + (32 * stor12.length) + 320] = address(stor12[var25002].field_2048)
            _1887 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor12[var25002].field_2304)) + 32
            mem[_1887] = uint256(stor12[var25002].field_2304)
            if not uint256(stor12[var25002].field_2304):
                mem[_346 + (32 * _345) + (32 * stor12.length) + 352] = _1887
                _1903 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[var25002].field_2560)) + 32
                mem[_1903] = uint256(stor12[var25002].field_2560)
                if uint256(stor12[var25002].field_2560):
                    mem[0] = sha3(12) + (12 * var25002) + 10
                    mem[_1903 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var25002) + 10)].field_0)
                    s = _1903 + 32
                    t = 0
                    while _1903 + (32 * uint256(stor12[var25002].field_2560)) > s:
                        mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_346 + (32 * _345) + (32 * stor12.length) + 384] = _1903
            else:
                mem[0] = sha3(12) + (12 * var25002) + 9
                mem[_1887 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var25002) + 9)].field_0)
                s = _1887 + 32
                t = 0
                while _1887 + (32 * uint256(stor12[var25002].field_2304)) > s:
                    mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_346 + (32 * _345) + (32 * stor12.length) + 352] = _1887
                _2070 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[var25002].field_2560)) + 32
                mem[_2070] = uint256(stor12[var25002].field_2560)
                if uint256(stor12[var25002].field_2560):
                    mem[0] = sha3(12) + (12 * var25002) + 10
                    mem[_2070 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var25002) + 10)].field_0)
                    s = _2070 + 32
                    t = 0
                    while _2070 + (32 * uint256(stor12[var25002].field_2560)) > s:
                        mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_346 + (32 * _345) + (32 * stor12.length) + 384] = _2070
        else:
            mem[0] = sha3(12) + (12 * var25002) + 3
            mem[_1871 + 32] = address(stor[sha3(('name', 'stor12', 12) + (12 * var25002) + 3)].field_0)
            s = _1871 + 32
            t = 0
            while _1871 + (32 * uint256(stor12[var25002].field_768)) > s:
                mem[s + 32] = address(stor[t + sha3(mem[0]) + 1])
                s = s + 32
                t = t + 1
                continue 
            mem[_346 + (32 * _345) + (32 * stor12.length) + 160] = _1871
            mem[_346 + (32 * _345) + (32 * stor12.length) + 192] = uint256(stor12[var25002].field_1024)
            mem[_346 + (32 * _345) + (32 * stor12.length) + 224] = uint256(stor12[var25002].field_1280)
            mem[_346 + (32 * _345) + (32 * stor12.length) + 256] = uint256(stor12[var25002].field_1536)
            mem[_346 + (32 * _345) + (32 * stor12.length) + 288] = uint256(stor12[var25002].field_1792)
            mem[_346 + (32 * _345) + (32 * stor12.length) + 320] = address(stor12[var25002].field_2048)
            _2071 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor12[var25002].field_2304)) + 32
            mem[_2071] = uint256(stor12[var25002].field_2304)
            if not uint256(stor12[var25002].field_2304):
                mem[_346 + (32 * _345) + (32 * stor12.length) + 352] = _2071
                _2103 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[var25002].field_2560)) + 32
                mem[_2103] = uint256(stor12[var25002].field_2560)
                if uint256(stor12[var25002].field_2560):
                    mem[0] = sha3(12) + (12 * var25002) + 10
                    mem[_2103 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var25002) + 10)].field_0)
                    s = _2103 + 32
                    t = 0
                    while _2103 + (32 * uint256(stor12[var25002].field_2560)) > s:
                        mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_346 + (32 * _345) + (32 * stor12.length) + 384] = _2103
            else:
                mem[0] = sha3(12) + (12 * var25002) + 9
                mem[_2071 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var25002) + 9)].field_0)
                s = _2071 + 32
                t = 0
                while _2071 + (32 * uint256(stor12[var25002].field_2304)) > s:
                    mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_346 + (32 * _345) + (32 * stor12.length) + 352] = _2071
                _2184 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[var25002].field_2560)) + 32
                mem[_2184] = uint256(stor12[var25002].field_2560)
                if uint256(stor12[var25002].field_2560):
                    mem[0] = sha3(12) + (12 * var25002) + 10
                    mem[_2184 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var25002) + 10)].field_0)
                    s = _2184 + 32
                    t = 0
                    while _2184 + (32 * uint256(stor12[var25002].field_2560)) > s:
                        mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_346 + (32 * _345) + (32 * stor12.length) + 384] = _2184
        mem[var25001] = _346 + (32 * _345) + (32 * stor12.length) + 64
        var25001 = var25001 + 32
        var25002 = var25002 + 1
        continue 
    mem[mem[64] + 32 len 32 * _345] = code.data[16882 len 32 * _345]
    mem[64] = mem[64] + (32 * _345) + (32 * stor12.length) + 64
    mem[_346 + (32 * _345) + 32] = stor12.length
    if var26002 >= stor12.length:
        if var25003 >= stor12.length:
            mem[_346 + (32 * _345) + (32 * stor12.length) + 64] = 32
            mem[_346 + (32 * _345) + (32 * stor12.length) + 96] = mem[_346]
            mem[_346 + (32 * _345) + (32 * stor12.length) + 128 len floor32(mem[_346])] = mem[_346 + 32 len floor32(mem[_346])]
            return memory
              from mem[64]
               len (32 * mem[_346]) + _346 + (32 * _345) + (32 * stor12.length) + -mem[64] + 128
        mem[64] = _346 + (32 * _345) + (64 * stor12.length) + 96
        mem[_346 + (32 * _345) + (32 * stor12.length) + 64] = stor12.length
        s = _346 + (32 * _345) + (32 * stor12.length) + 96
        idx = 0
        while idx < stor12.length:
            _1613 = mem[64]
            mem[64] = mem[64] + ceil32(stor12[idx].length) + 384
            mem[_1613 + 352] = stor12[idx].length
            mem[0] = sha3(12) + (12 * idx)
            mem[_1613 + 384] = uint256(stor12[idx].field_0)
            t = _1613 + 384
            u = sha3(mem[0])
            while _1613 + stor12[idx].length + 384 > t + 32:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1613] = _1613 + 352
            _1875 = mem[64]
            mem[64] = mem[64] + ceil32(stor[('name', 'stor12', 12) + (12 * idx) + 1].length) + 32
            mem[_1875] = stor[('name', 'stor12', 12) + (12 * idx) + 1].length
            mem[0] = sha3(12) + (12 * idx) + 1
            mem[_1875 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 1)].field_0)
            t = _1875 + 32
            u = sha3(mem[0])
            while _1875 + stor[('name', 'stor12', 12) + (12 * idx) + 1].length > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1613 + 32] = _1875
            mem[_1613 + 64] = uint8(stor12[idx].field_512)
            _2043 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor12[idx].field_768)) + 32
            mem[_2043] = uint256(stor12[idx].field_768)
            if not uint256(stor12[idx].field_768):
                mem[_1613 + 96] = _2043
                mem[_1613 + 128] = uint256(stor12[idx].field_1024)
                mem[_1613 + 160] = uint256(stor12[idx].field_1280)
                mem[_1613 + 192] = uint256(stor12[idx].field_1536)
                mem[_1613 + 224] = uint256(stor12[idx].field_1792)
                mem[_1613 + 256] = address(stor12[idx].field_2048)
                _2052 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2304)) + 32
                mem[_2052] = uint256(stor12[idx].field_2304)
                if not uint256(stor12[idx].field_2304):
                    mem[_1613 + 288] = _2052
                    _2056 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                    mem[_2056] = uint256(stor12[idx].field_2560)
                    if uint256(stor12[idx].field_2560):
                        mem[0] = sha3(12) + (12 * idx) + 10
                        mem[_2056 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                        t = _2056 + 32
                        u = sha3(mem[0])
                        while _2056 + (32 * uint256(stor12[idx].field_2560)) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1613 + 320] = _2056
                else:
                    mem[0] = sha3(12) + (12 * idx) + 9
                    mem[_2052 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 9)].field_0)
                    t = _2052 + 32
                    u = sha3(mem[0])
                    while _2052 + (32 * uint256(stor12[idx].field_2304)) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1613 + 288] = _2052
                    _2148 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                    mem[_2148] = uint256(stor12[idx].field_2560)
                    if uint256(stor12[idx].field_2560):
                        mem[0] = sha3(12) + (12 * idx) + 10
                        mem[_2148 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                        t = _2148 + 32
                        u = sha3(mem[0])
                        while _2148 + (32 * uint256(stor12[idx].field_2560)) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1613 + 320] = _2148
            else:
                mem[0] = sha3(12) + (12 * idx) + 3
                mem[_2043 + 32] = address(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 3)].field_0)
                t = _2043 + 32
                u = sha3(mem[0])
                while _2043 + (32 * uint256(stor12[idx].field_768)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1613 + 96] = _2043
                mem[_1613 + 128] = uint256(stor12[idx].field_1024)
                mem[_1613 + 160] = uint256(stor12[idx].field_1280)
                mem[_1613 + 192] = uint256(stor12[idx].field_1536)
                mem[_1613 + 224] = uint256(stor12[idx].field_1792)
                mem[_1613 + 256] = address(stor12[idx].field_2048)
                _2149 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2304)) + 32
                mem[_2149] = uint256(stor12[idx].field_2304)
                if not uint256(stor12[idx].field_2304):
                    mem[_1613 + 288] = _2149
                    _2170 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                    mem[_2170] = uint256(stor12[idx].field_2560)
                    if uint256(stor12[idx].field_2560):
                        mem[0] = sha3(12) + (12 * idx) + 10
                        mem[_2170 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                        t = _2170 + 32
                        u = sha3(mem[0])
                        while _2170 + (32 * uint256(stor12[idx].field_2560)) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1613 + 320] = _2170
                else:
                    mem[0] = sha3(12) + (12 * idx) + 9
                    mem[_2149 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 9)].field_0)
                    t = _2149 + 32
                    u = sha3(mem[0])
                    while _2149 + (32 * uint256(stor12[idx].field_2304)) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1613 + 288] = _2149
                    _2201 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor12[idx].field_2560)) + 32
                    mem[_2201] = uint256(stor12[idx].field_2560)
                    if uint256(stor12[idx].field_2560):
                        mem[0] = sha3(12) + (12 * idx) + 10
                        mem[_2201 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * idx) + 10)].field_0)
                        t = _2201 + 32
                        u = sha3(mem[0])
                        while _2201 + (32 * uint256(stor12[idx].field_2560)) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1613 + 320] = _2201
            mem[s] = _1613
            s = s + 32
            idx = idx + 1
            continue 
        require var25003 < mem[_346 + (32 * _345) + (32 * stor12.length) + 64]
        require var25003 < mem[_346]
        mem[_346 + (32 * var25003) + 32] = mem[mem[(32 * var25003) + _346 + (32 * _345) + (32 * stor12.length) + 96] + 268 len 20]
        _1703 = mem[64]
        mem[64] = mem[64] + (32 * stor12.length) + 32
        mem[_1703] = stor12.length
        var26001 = _1703 + 32
        var26002 = 0
        continue 
    mem[64] = _346 + (32 * _345) + (32 * stor12.length) + ceil32(stor12[var26002].length) + 448
    mem[_346 + (32 * _345) + (32 * stor12.length) + 416] = stor12[var26002].length
    mem[0] = sha3(12) + (12 * var26002)
    mem[_346 + (32 * _345) + (32 * stor12.length) + 448] = uint256(stor12[var26002].field_0)
    s = _346 + (32 * _345) + (32 * stor12.length) + 448
    t = 0
    while _346 + (32 * _345) + (32 * stor12.length) + stor12[var26002].length + 448 > s + 32:
        mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
        s = s + 32
        t = t + 1
        continue 
    mem[_346 + (32 * _345) + (32 * stor12.length) + 64] = _346 + (32 * _345) + (32 * stor12.length) + 416
    _1629 = mem[64]
    mem[64] = mem[64] + ceil32(stor[('name', 'stor12', 12) + (12 * var26002) + 1].length) + 32
    mem[_1629] = stor[('name', 'stor12', 12) + (12 * var26002) + 1].length
    mem[0] = sha3(12) + (12 * var26002) + 1
    mem[_1629 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var26002) + 1)].field_0)
    s = _1629 + 32
    t = 0
    while _1629 + stor[('name', 'stor12', 12) + (12 * var26002) + 1].length > s:
        mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
        s = s + 32
        t = t + 1
        continue 
    mem[_346 + (32 * _345) + (32 * stor12.length) + 96] = _1629
    mem[_346 + (32 * _345) + (32 * stor12.length) + 128] = uint8(stor12[var26002].field_512)
    _1879 = mem[64]
    mem[64] = mem[64] + (32 * uint256(stor12[var26002].field_768)) + 32
    mem[_1879] = uint256(stor12[var26002].field_768)
    if not uint256(stor12[var26002].field_768):
        mem[_346 + (32 * _345) + (32 * stor12.length) + 160] = _1879
        mem[_346 + (32 * _345) + (32 * stor12.length) + 192] = uint256(stor12[var26002].field_1024)
        mem[_346 + (32 * _345) + (32 * stor12.length) + 224] = uint256(stor12[var26002].field_1280)
        mem[_346 + (32 * _345) + (32 * stor12.length) + 256] = uint256(stor12[var26002].field_1536)
        mem[_346 + (32 * _345) + (32 * stor12.length) + 288] = uint256(stor12[var26002].field_1792)
        mem[_346 + (32 * _345) + (32 * stor12.length) + 320] = address(stor12[var26002].field_2048)
        _1894 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor12[var26002].field_2304)) + 32
        mem[_1894] = uint256(stor12[var26002].field_2304)
        if not uint256(stor12[var26002].field_2304):
            mem[_346 + (32 * _345) + (32 * stor12.length) + 352] = _1894
            _1912 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor12[var26002].field_2560)) + 32
            mem[_1912] = uint256(stor12[var26002].field_2560)
            if uint256(stor12[var26002].field_2560):
                mem[0] = sha3(12) + (12 * var26002) + 10
                mem[_1912 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var26002) + 10)].field_0)
                s = _1912 + 32
                t = 0
                while _1912 + (32 * uint256(stor12[var26002].field_2560)) > s:
                    mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                    s = s + 32
                    t = t + 1
                    continue 
            mem[_346 + (32 * _345) + (32 * stor12.length) + 384] = _1912
        else:
            mem[0] = sha3(12) + (12 * var26002) + 9
            mem[_1894 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var26002) + 9)].field_0)
            s = _1894 + 32
            t = 0
            while _1894 + (32 * uint256(stor12[var26002].field_2304)) > s:
                mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                s = s + 32
                t = t + 1
                continue 
            mem[_346 + (32 * _345) + (32 * stor12.length) + 352] = _1894
            _2084 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor12[var26002].field_2560)) + 32
            mem[_2084] = uint256(stor12[var26002].field_2560)
            if uint256(stor12[var26002].field_2560):
                mem[0] = sha3(12) + (12 * var26002) + 10
                mem[_2084 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var26002) + 10)].field_0)
                s = _2084 + 32
                t = 0
                while _2084 + (32 * uint256(stor12[var26002].field_2560)) > s:
                    mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                    s = s + 32
                    t = t + 1
                    continue 
            mem[_346 + (32 * _345) + (32 * stor12.length) + 384] = _2084
    else:
        mem[0] = sha3(12) + (12 * var26002) + 3
        mem[_1879 + 32] = address(stor[sha3(('name', 'stor12', 12) + (12 * var26002) + 3)].field_0)
        s = _1879 + 32
        t = 0
        while _1879 + (32 * uint256(stor12[var26002].field_768)) > s:
            mem[s + 32] = address(stor[t + sha3(mem[0]) + 1])
            s = s + 32
            t = t + 1
            continue 
        mem[_346 + (32 * _345) + (32 * stor12.length) + 160] = _1879
        mem[_346 + (32 * _345) + (32 * stor12.length) + 192] = uint256(stor12[var26002].field_1024)
        mem[_346 + (32 * _345) + (32 * stor12.length) + 224] = uint256(stor12[var26002].field_1280)
        mem[_346 + (32 * _345) + (32 * stor12.length) + 256] = uint256(stor12[var26002].field_1536)
        mem[_346 + (32 * _345) + (32 * stor12.length) + 288] = uint256(stor12[var26002].field_1792)
        mem[_346 + (32 * _345) + (32 * stor12.length) + 320] = address(stor12[var26002].field_2048)
        _2085 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor12[var26002].field_2304)) + 32
        mem[_2085] = uint256(stor12[var26002].field_2304)
        if not uint256(stor12[var26002].field_2304):
            mem[_346 + (32 * _345) + (32 * stor12.length) + 352] = _2085
            _2122 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor12[var26002].field_2560)) + 32
            mem[_2122] = uint256(stor12[var26002].field_2560)
            if uint256(stor12[var26002].field_2560):
                mem[0] = sha3(12) + (12 * var26002) + 10
                mem[_2122 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var26002) + 10)].field_0)
                s = _2122 + 32
                t = 0
                while _2122 + (32 * uint256(stor12[var26002].field_2560)) > s:
                    mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                    s = s + 32
                    t = t + 1
                    continue 
            mem[_346 + (32 * _345) + (32 * stor12.length) + 384] = _2122
        else:
            mem[0] = sha3(12) + (12 * var26002) + 9
            mem[_2085 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var26002) + 9)].field_0)
            s = _2085 + 32
            t = 0
            while _2085 + (32 * uint256(stor12[var26002].field_2304)) > s:
                mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                s = s + 32
                t = t + 1
                continue 
            mem[_346 + (32 * _345) + (32 * stor12.length) + 352] = _2085
            _2189 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor12[var26002].field_2560)) + 32
            mem[_2189] = uint256(stor12[var26002].field_2560)
            if uint256(stor12[var26002].field_2560):
                mem[0] = sha3(12) + (12 * var26002) + 10
                mem[_2189 + 32] = uint256(stor[sha3(('name', 'stor12', 12) + (12 * var26002) + 10)].field_0)
                s = _2189 + 32
                t = 0
                while _2189 + (32 * uint256(stor12[var26002].field_2560)) > s:
                    mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                    s = s + 32
                    t = t + 1
                    continue 
            mem[_346 + (32 * _345) + (32 * stor12.length) + 384] = _2189
    mem[var26001] = _346 + (32 * _345) + (32 * stor12.length) + 64
    var26001 = var26001 + 32
    var26002 = var26002 + 1
    continue 
}

function sub_86ad6398(?) {
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    if uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792):
        mem[320] = address(stor[sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 7)].field_0)
        idx = 320
        s = 0
        while (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 288 > idx:
            mem[idx + 32] = address(stor[s + sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 7)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require stor8[address(arg1)][stor7[address(arg1)]]
        require stor10[address(arg1)][address(arg2)]
        require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
        if not uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048):
            require stor8[address(arg1)][stor7[address(arg1)]]
            require stor10[address(arg1)][address(arg2)]
            require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
            if not uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304):
                mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))] = mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]
                mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)
                mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))]
                mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)
                mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]
                return Mask(1024, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1024), 
                       Mask(512, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536),
                       288,
                       (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 320,
                       (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352,
                       uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792),
                       mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))],
                       mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 704 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + -floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 64]
            mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384] = uint256(stor[sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_0)
            idx = (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384
            s = 0
            while (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 352 > idx:
                mem[idx + 32] = uint256(stor[s + sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))] = mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))]
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]
            return Mask(1024, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1024), 
                   Mask(512, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536),
                   Array(len=mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))], data=mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) - floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]),
                   (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 320,
                   (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352,
                   uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792),
                   mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))],
                   mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 704 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + -floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 32],
                   uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352] = uint256(stor[sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 8)].field_0)
        idx = (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352
        s = 0
        while (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 320 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 8)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require stor8[address(arg1)][stor7[address(arg1)]]
        require stor10[address(arg1)][address(arg2)]
        require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
        if not uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304):
            mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))] = mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))]
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]
            return Mask(1024, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1024), 
                   Mask(512, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536),
                   288,
                   (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 320,
                   (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352,
                   uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792),
                   mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))],
                   mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 704 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + -floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 32],
                   mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))],
                   mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 736 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + -floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 32]
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384] = uint256(stor[sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_0)
        idx = (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384
        s = 0
        while (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 352 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))] = mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]
        mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)
        mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))]
        mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]
        return Mask(1024, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1024), 
               uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1280),
               uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536),
               Array(len=uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304), data=mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))], mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) - floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]),
               (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 320,
               (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352,
               uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792),
               mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))],
               mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 704 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + -floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 32]
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    if uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048):
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352] = uint256(stor[sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 8)].field_0)
        idx = (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352
        s = 0
        while (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 320 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 8)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require stor8[address(arg1)][stor7[address(arg1)]]
        require stor10[address(arg1)][address(arg2)]
        require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
        if not uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304):
            mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))] = mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))]
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)
            mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]
            return Mask(1024, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1024), 
                   Mask(512, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536),
                   288,
                   (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 320,
                   (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352,
                   uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792),
                   mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))],
                   mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 704 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + -floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 64]
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384] = uint256(stor[sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_0)
        idx = (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384
        s = 0
        while (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 352 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))] = mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]
        mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)
        mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))]
        mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]
        return Mask(1024, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1024), 
               Mask(512, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536),
               Array(len=mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))], data=mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) - floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]),
               (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 320,
               (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352,
               uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792),
               mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))],
               mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 704 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + -floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 32],
               uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)
    require stor8[address(arg1)][stor7[address(arg1)]]
    require stor10[address(arg1)][address(arg2)]
    require stor11[address(arg1)][address(arg2)] < uint256(stor9[address(arg1)].field_0)
    if uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304):
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384] = uint256(stor[sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_0)
        idx = (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384
        s = 0
        while (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 352 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((10 * stor11[address(arg1)][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + 9)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))] = mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]
        mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)
        mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))]
        mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)
        mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]
        return Mask(1024, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1024), 
               Mask(512, 0, stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536),
               288,
               (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 320,
               (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352,
               uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792),
               mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))],
               mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 704 len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + -floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 64]
    mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 384 len 128] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_256), uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_512), uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_768), uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1024)
    mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 512 len 64] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1280), uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1536)
    mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 576] = 288
    mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 672] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)
    mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))] = mem[320 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792))]
    mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 608] = (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 320
    mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 704] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)
    mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048))]
    mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 640] = (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 352
    mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 736] = uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)
    mem[(64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (64 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 768 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))] = mem[(32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + 384 len floor32(uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304))]
    return memory
      from (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + 384
       len (32 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2304)) + (96 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_2048)) + (96 * uint256(stor9[address(arg1)][stor11[address(arg1)][address(arg2)]].field_1792)) + 384
}

function sub_1cd82e60(?) {
    require stor8[address(arg1)][stor7[address(arg1)]]
    mem[0] = arg1
    mem[64] = (32 * uint256(stor9[address(arg1)].field_0)) + 128
    mem[96] = uint256(stor9[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(stor9[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 9)
        _89 = mem[64]
        mem[64] = mem[64] + 320
        mem[_89] = address(stor9[address(arg1)][idx].field_0)
        mem[_89 + 32] = uint256(stor9[address(arg1)][idx].field_256)
        mem[_89 + 64] = uint256(stor9[address(arg1)][idx].field_512)
        mem[_89 + 96] = uint256(stor9[address(arg1)][idx].field_768)
        mem[_89 + 128] = uint256(stor9[address(arg1)][idx].field_1024)
        mem[_89 + 160] = uint256(stor9[address(arg1)][idx].field_1280)
        mem[_89 + 192] = uint256(stor9[address(arg1)][idx].field_1536)
        _90 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_1792)) + 32
        mem[_90] = uint256(stor9[address(arg1)][idx].field_1792)
        if not uint256(stor9[address(arg1)][idx].field_1792):
            mem[_89 + 224] = _90
            _93 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_2048)) + 32
            mem[_93] = uint256(stor9[address(arg1)][idx].field_2048)
            if not uint256(stor9[address(arg1)][idx].field_2048):
                mem[_89 + 256] = _93
                _95 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_2304)) + 32
                mem[_95] = uint256(stor9[address(arg1)][idx].field_2304)
                if uint256(stor9[address(arg1)][idx].field_2304):
                    mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 9
                    mem[_95 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 9)].field_0)
                    t = _95 + 32
                    u = sha3(mem[0])
                    while _95 + (32 * uint256(stor9[address(arg1)][idx].field_2304)) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_89 + 288] = _95
            else:
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 8
                mem[_93 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 8)].field_0)
                t = _93 + 32
                u = sha3(mem[0])
                while _93 + (32 * uint256(stor9[address(arg1)][idx].field_2048)) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_89 + 256] = _93
                _242 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_2304)) + 32
                mem[_242] = uint256(stor9[address(arg1)][idx].field_2304)
                if uint256(stor9[address(arg1)][idx].field_2304):
                    mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 9
                    mem[_242 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 9)].field_0)
                    t = _242 + 32
                    u = sha3(mem[0])
                    while _242 + (32 * uint256(stor9[address(arg1)][idx].field_2304)) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_89 + 288] = _242
            mem[s] = _89
            s = s + 32
            idx = idx + 1
            continue 
        mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 7
        mem[_90 + 32] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 7)].field_0)
        t = _90 + 32
        u = sha3(mem[0])
        while _90 + (32 * uint256(stor9[address(arg1)][u].field_1792)) > t:
            mem[t + 32] = address(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_89 + 224] = _90
        _243 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][u].field_2048)) + 32
        mem[_243] = uint256(stor9[address(arg1)][u].field_2048)
        if not uint256(stor9[address(arg1)][u].field_2048):
            mem[_89 + 256] = _243
            _251 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][u].field_2304)) + 32
            mem[_251] = uint256(stor9[address(arg1)][u].field_2304)
            if uint256(stor9[address(arg1)][u].field_2304):
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * u) + 9
                mem[_251 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * u) + 9)].field_0)
                s = _251 + 32
                v = sha3(mem[0])
                while _251 + (32 * uint256(stor9[address(arg1)][u].field_2304)) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
            mem[_89 + 288] = _251
        else:
            mem[0] = sha3(sha3(address(arg1), 9)) + (10 * u) + 8
            mem[_243 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * u) + 8)].field_0)
            s = _243 + 32
            v = sha3(mem[0])
            while _243 + (32 * uint256(stor9[address(arg1)][u].field_2048)) > s:
                mem[s + 32] = uint256(stor1[v])
                s = s + 32
                v = v + 1
                continue 
            mem[_89 + 256] = _243
            _398 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][u].field_2304)) + 32
            mem[_398] = uint256(stor9[address(arg1)][u].field_2304)
            if uint256(stor9[address(arg1)][u].field_2304):
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * u) + 9
                mem[_398 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * u) + 9)].field_0)
                s = _398 + 32
                v = sha3(mem[0])
                while _398 + (32 * uint256(stor9[address(arg1)][u].field_2304)) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
            mem[_89 + 288] = _398
        mem[t] = _89
        t = t + 32
        u = u + 1
        continue 
    _91 = mem[96]
    _92 = mem[64]
    mem[mem[64]] = mem[96]
    if not _91:
        require var37001
        mem[0] = arg1
        mem[32] = 9
        _473 = mem[64] + (32 * _91) + 32
        mem[64] = mem[64] + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64
        mem[_473] = uint256(stor9[address(arg1)].field_0)
        if var28002 >= uint256(stor9[address(arg1)].field_0):
            if var39005 >= uint256(stor9[address(arg1)].field_0):
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64] = 32
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 96] = mem[_92]
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 128 len floor32(mem[_92])] = mem[_92 + 32 len floor32(mem[_92])]
                return memory
                  from mem[64]
                   len (32 * mem[_92]) + _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + -mem[64] + 128
            require stor8[address(arg1)][stor7[address(arg1)]]
            mem[0] = arg1
            mem[32] = 9
            mem[64] = _92 + (32 * _91) + (64 * uint256(stor9[address(arg1)].field_0)) + 96
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64] = uint256(stor9[address(arg1)].field_0)
            s = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 96
            idx = 0
            while idx < uint256(stor9[address(arg1)].field_0):
                mem[0] = sha3(address(arg1), 9)
                _623 = mem[64]
                mem[64] = mem[64] + 320
                mem[_623] = address(stor9[address(arg1)][idx].field_0)
                mem[_623 + 32] = uint256(stor9[address(arg1)][idx].field_256)
                mem[_623 + 64] = uint256(stor9[address(arg1)][idx].field_512)
                mem[_623 + 96] = uint256(stor9[address(arg1)][idx].field_768)
                mem[_623 + 128] = uint256(stor9[address(arg1)][idx].field_1024)
                mem[_623 + 160] = uint256(stor9[address(arg1)][idx].field_1280)
                mem[_623 + 192] = uint256(stor9[address(arg1)][idx].field_1536)
                _624 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_1792)) + 32
                mem[_624] = uint256(stor9[address(arg1)][idx].field_1792)
                if not uint256(stor9[address(arg1)][idx].field_1792):
                    mem[_623 + 224] = _624
                    _631 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_2048)) + 32
                    mem[_631] = uint256(stor9[address(arg1)][idx].field_2048)
                    if not uint256(stor9[address(arg1)][idx].field_2048):
                        mem[_623 + 256] = _631
                        _639 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_2304)) + 32
                        mem[_639] = uint256(stor9[address(arg1)][idx].field_2304)
                        if uint256(stor9[address(arg1)][idx].field_2304):
                            mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 9
                            mem[_639 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 9)].field_0)
                            t = _639 + 32
                            u = sha3(mem[0])
                            while _639 + (32 * uint256(stor9[address(arg1)][idx].field_2304)) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_623 + 288] = _639
                    else:
                        mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 8
                        mem[_631 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 8)].field_0)
                        t = _631 + 32
                        u = sha3(mem[0])
                        while _631 + (32 * uint256(stor9[address(arg1)][idx].field_2048)) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_623 + 256] = _631
                        _670 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_2304)) + 32
                        mem[_670] = uint256(stor9[address(arg1)][idx].field_2304)
                        if uint256(stor9[address(arg1)][idx].field_2304):
                            mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 9
                            mem[_670 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 9)].field_0)
                            t = _670 + 32
                            u = sha3(mem[0])
                            while _670 + (32 * uint256(stor9[address(arg1)][idx].field_2304)) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_623 + 288] = _670
                    mem[s] = _623
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 7
                mem[_624 + 32] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 7)].field_0)
                t = _624 + 32
                u = sha3(mem[0])
                while _624 + (32 * uint256(stor9[address(arg1)][u].field_1792)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_623 + 224] = _624
                _671 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][u].field_2048)) + 32
                mem[_671] = uint256(stor9[address(arg1)][u].field_2048)
                if not uint256(stor9[address(arg1)][u].field_2048):
                    mem[_623 + 256] = _671
                    _675 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][u].field_2304)) + 32
                    mem[_675] = uint256(stor9[address(arg1)][u].field_2304)
                    if uint256(stor9[address(arg1)][u].field_2304):
                        mem[0] = sha3(sha3(address(arg1), 9)) + (10 * u) + 9
                        mem[_675 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * u) + 9)].field_0)
                        s = _675 + 32
                        v = sha3(mem[0])
                        while _675 + (32 * uint256(stor9[address(arg1)][u].field_2304)) > s:
                            mem[s + 32] = uint256(stor1[v])
                            s = s + 32
                            v = v + 1
                            continue 
                    mem[_623 + 288] = _675
                else:
                    mem[0] = sha3(sha3(address(arg1), 9)) + (10 * u) + 8
                    mem[_671 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * u) + 8)].field_0)
                    s = _671 + 32
                    v = sha3(mem[0])
                    while _671 + (32 * uint256(stor9[address(arg1)][u].field_2048)) > s:
                        mem[s + 32] = uint256(stor1[v])
                        s = s + 32
                        v = v + 1
                        continue 
                    mem[_623 + 256] = _671
                    _686 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][u].field_2304)) + 32
                    mem[_686] = uint256(stor9[address(arg1)][u].field_2304)
                    if uint256(stor9[address(arg1)][u].field_2304):
                        mem[0] = sha3(sha3(address(arg1), 9)) + (10 * u) + 9
                        mem[_686 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * u) + 9)].field_0)
                        s = _686 + 32
                        v = sha3(mem[0])
                        while _686 + (32 * uint256(stor9[address(arg1)][u].field_2304)) > s:
                            mem[s + 32] = uint256(stor1[v])
                            s = s + 32
                            v = v + 1
                            continue 
                    mem[_623 + 288] = _686
                mem[t] = _623
                t = t + 32
                u = u + 1
                continue 
            require var39005 < mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64]
            require var39005 < mem[_92]
            mem[_92 + (32 * var39005) + 32] = mem[mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * var39005) + 96] + 12 len 20]
            require stor8[address(arg1)][stor7[address(arg1)]]
            mem[0] = arg1
            mem[32] = 9
            _655 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)].field_0)) + 32
            mem[_655] = uint256(stor9[address(arg1)].field_0)
            var28001 = _655 + 32
            var28002 = 0
            continue 
        mem[0] = sha3(address(arg1), 9)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64] = address(stor9[address(arg1)][var28002].field_0)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 96] = uint256(stor9[address(arg1)][var28002].field_256)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 128] = uint256(stor9[address(arg1)][var28002].field_512)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 160] = uint256(stor9[address(arg1)][var28002].field_768)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 192] = uint256(stor9[address(arg1)][var28002].field_1024)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 224] = uint256(stor9[address(arg1)][var28002].field_1280)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 256] = uint256(stor9[address(arg1)][var28002].field_1536)
        mem[64] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + 416
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 384] = uint256(stor9[address(arg1)][var28002].field_1792)
        if not uint256(stor9[address(arg1)][var28002].field_1792):
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 288] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 384
            mem[64] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + (32 * uint256(stor9[address(arg1)][var28002].field_2048)) + 448
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + 416] = uint256(stor9[address(arg1)][var28002].field_2048)
            if not uint256(stor9[address(arg1)][var28002].field_2048):
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 320] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + 416
                mem[64] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + (32 * uint256(stor9[address(arg1)][var28002].field_2048)) + (32 * uint256(stor9[address(arg1)][var28002].field_2304)) + 480
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + (32 * uint256(stor9[address(arg1)][var28002].field_2048)) + 448] = uint256(stor9[address(arg1)][var28002].field_2304)
                if uint256(stor9[address(arg1)][var28002].field_2304):
                    mem[0] = sha3(sha3(address(arg1), 9)) + (10 * var28002) + 9
                    mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + (32 * uint256(stor9[address(arg1)][var28002].field_2048)) + 480] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * var28002) + 9)].field_0)
                    s = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + (32 * uint256(stor9[address(arg1)][var28002].field_2048)) + 480
                    t = 0
                    while _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + (32 * uint256(stor9[address(arg1)][var28002].field_2048)) + (32 * uint256(stor9[address(arg1)][var28002].field_2304)) + 448 > s:
                        mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 352] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + (32 * uint256(stor9[address(arg1)][var28002].field_2048)) + 448
            else:
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * var28002) + 8
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + 448] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * var28002) + 8)].field_0)
                s = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + 448
                t = 0
                while _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + (32 * uint256(stor9[address(arg1)][var28002].field_2048)) + 416 > s:
                    mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 320] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var28002].field_1792)) + 416
                _658 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][var28002].field_2304)) + 32
                mem[_658] = uint256(stor9[address(arg1)][var28002].field_2304)
                if uint256(stor9[address(arg1)][var28002].field_2304):
                    mem[0] = sha3(sha3(address(arg1), 9)) + (10 * var28002) + 9
                    mem[_658 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * var28002) + 9)].field_0)
                    s = _658 + 32
                    t = 0
                    while _658 + (32 * uint256(stor9[address(arg1)][var28002].field_2304)) > s:
                        mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 352] = _658
            mem[var28001] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64
            var28001 = var28001 + 32
            var28002 = var28002 + 1
            continue 
        mem[0] = sha3(sha3(address(arg1), 9)) + (10 * var28002) + 7
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 416] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * var28002) + 7)].field_0)
        s = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 416
        t = 0
        while _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * t) + (10 * sha3(mem[0]))].field_1792)) + 384 > s:
            mem[s + 32] = address(stor[t + sha3(mem[0]) + 1])
            s = s + 32
            t = t + 1
            continue 
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 288] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 384
        _659 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][t].field_2048)) + 32
        mem[_659] = uint256(stor9[address(arg1)][t].field_2048)
        if not uint256(stor9[address(arg1)][t].field_2048):
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 320] = _659
            _663 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][t].field_2304)) + 32
            mem[_663] = uint256(stor9[address(arg1)][t].field_2304)
            if uint256(stor9[address(arg1)][t].field_2304):
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * t) + 9
                mem[_663 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * t) + 9)].field_0)
                u = _663 + 32
                v = 0
                while _663 + (32 * uint256(stor9[address(arg1)][t].field_2304)) > u:
                    mem[u + 32] = uint256(stor[v + sha3(mem[0]) + 1])
                    u = u + 32
                    v = v + 1
                    continue 
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 352] = _663
        else:
            mem[0] = sha3(sha3(address(arg1), 9)) + (10 * t) + 8
            mem[_659 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * t) + 8)].field_0)
            u = _659 + 32
            v = 0
            while _659 + (32 * uint256(stor9[address(arg1)][t].field_2048)) > u:
                mem[u + 32] = uint256(stor[v + sha3(mem[0]) + 1])
                u = u + 32
                v = v + 1
                continue 
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 320] = _659
            _682 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][t].field_2304)) + 32
            mem[_682] = uint256(stor9[address(arg1)][t].field_2304)
            if uint256(stor9[address(arg1)][t].field_2304):
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * t) + 9
                mem[_682 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * t) + 9)].field_0)
                u = _682 + 32
                v = 0
                while _682 + (32 * uint256(stor9[address(arg1)][t].field_2304)) > u:
                    mem[u + 32] = uint256(stor[v + sha3(mem[0]) + 1])
                    u = u + 32
                    v = v + 1
                    continue 
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 352] = _682
    else:
        mem[mem[64] + 32 len 32 * _91] = code.data[16882 len 32 * _91]
        require var38001
        mem[0] = arg1
        mem[32] = 9
        mem[64] = mem[64] + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64
        mem[_92 + (32 * _91) + 32] = uint256(stor9[address(arg1)].field_0)
        if var29002 >= uint256(stor9[address(arg1)].field_0):
            if var40005 >= uint256(stor9[address(arg1)].field_0):
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64] = 32
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 96] = mem[_92]
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 128 len floor32(mem[_92])] = mem[_92 + 32 len floor32(mem[_92])]
                return memory
                  from mem[64]
                   len (32 * mem[_92]) + _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + -mem[64] + 128
            require stor8[address(arg1)][stor7[address(arg1)]]
            mem[0] = arg1
            mem[32] = 9
            mem[64] = _92 + (32 * _91) + (64 * uint256(stor9[address(arg1)].field_0)) + 96
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64] = uint256(stor9[address(arg1)].field_0)
            s = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 96
            idx = 0
            while idx < uint256(stor9[address(arg1)].field_0):
                mem[0] = sha3(address(arg1), 9)
                _628 = mem[64]
                mem[64] = mem[64] + 320
                mem[_628] = address(stor9[address(arg1)][idx].field_0)
                mem[_628 + 32] = uint256(stor9[address(arg1)][idx].field_256)
                mem[_628 + 64] = uint256(stor9[address(arg1)][idx].field_512)
                mem[_628 + 96] = uint256(stor9[address(arg1)][idx].field_768)
                mem[_628 + 128] = uint256(stor9[address(arg1)][idx].field_1024)
                mem[_628 + 160] = uint256(stor9[address(arg1)][idx].field_1280)
                mem[_628 + 192] = uint256(stor9[address(arg1)][idx].field_1536)
                _629 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_1792)) + 32
                mem[_629] = uint256(stor9[address(arg1)][idx].field_1792)
                if not uint256(stor9[address(arg1)][idx].field_1792):
                    mem[_628 + 224] = _629
                    _634 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_2048)) + 32
                    mem[_634] = uint256(stor9[address(arg1)][idx].field_2048)
                    if not uint256(stor9[address(arg1)][idx].field_2048):
                        mem[_628 + 256] = _634
                        _644 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_2304)) + 32
                        mem[_644] = uint256(stor9[address(arg1)][idx].field_2304)
                        if uint256(stor9[address(arg1)][idx].field_2304):
                            mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 9
                            mem[_644 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 9)].field_0)
                            t = _644 + 32
                            u = sha3(mem[0])
                            while _644 + (32 * uint256(stor9[address(arg1)][idx].field_2304)) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_628 + 288] = _644
                    else:
                        mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 8
                        mem[_634 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 8)].field_0)
                        t = _634 + 32
                        u = sha3(mem[0])
                        while _634 + (32 * uint256(stor9[address(arg1)][idx].field_2048)) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_628 + 256] = _634
                        _672 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][idx].field_2304)) + 32
                        mem[_672] = uint256(stor9[address(arg1)][idx].field_2304)
                        if uint256(stor9[address(arg1)][idx].field_2304):
                            mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 9
                            mem[_672 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 9)].field_0)
                            t = _672 + 32
                            u = sha3(mem[0])
                            while _672 + (32 * uint256(stor9[address(arg1)][idx].field_2304)) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_628 + 288] = _672
                    mem[s] = _628
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * idx) + 7
                mem[_629 + 32] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * idx) + 7)].field_0)
                t = _629 + 32
                u = sha3(mem[0])
                while _629 + (32 * uint256(stor9[address(arg1)][u].field_1792)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_628 + 224] = _629
                _673 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][u].field_2048)) + 32
                mem[_673] = uint256(stor9[address(arg1)][u].field_2048)
                if not uint256(stor9[address(arg1)][u].field_2048):
                    mem[_628 + 256] = _673
                    _678 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][u].field_2304)) + 32
                    mem[_678] = uint256(stor9[address(arg1)][u].field_2304)
                    if uint256(stor9[address(arg1)][u].field_2304):
                        mem[0] = sha3(sha3(address(arg1), 9)) + (10 * u) + 9
                        mem[_678 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * u) + 9)].field_0)
                        s = _678 + 32
                        v = sha3(mem[0])
                        while _678 + (32 * uint256(stor9[address(arg1)][u].field_2304)) > s:
                            mem[s + 32] = uint256(stor1[v])
                            s = s + 32
                            v = v + 1
                            continue 
                    mem[_628 + 288] = _678
                else:
                    mem[0] = sha3(sha3(address(arg1), 9)) + (10 * u) + 8
                    mem[_673 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * u) + 8)].field_0)
                    s = _673 + 32
                    v = sha3(mem[0])
                    while _673 + (32 * uint256(stor9[address(arg1)][u].field_2048)) > s:
                        mem[s + 32] = uint256(stor1[v])
                        s = s + 32
                        v = v + 1
                        continue 
                    mem[_628 + 256] = _673
                    _687 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][u].field_2304)) + 32
                    mem[_687] = uint256(stor9[address(arg1)][u].field_2304)
                    if uint256(stor9[address(arg1)][u].field_2304):
                        mem[0] = sha3(sha3(address(arg1), 9)) + (10 * u) + 9
                        mem[_687 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * u) + 9)].field_0)
                        s = _687 + 32
                        v = sha3(mem[0])
                        while _687 + (32 * uint256(stor9[address(arg1)][u].field_2304)) > s:
                            mem[s + 32] = uint256(stor1[v])
                            s = s + 32
                            v = v + 1
                            continue 
                    mem[_628 + 288] = _687
                mem[t] = _628
                t = t + 32
                u = u + 1
                continue 
            require var40005 < mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64]
            require var40005 < mem[_92]
            mem[_92 + (32 * var40005) + 32] = mem[mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * var40005) + 96] + 12 len 20]
            require stor8[address(arg1)][stor7[address(arg1)]]
            mem[0] = arg1
            mem[32] = 9
            _657 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)].field_0)) + 32
            mem[_657] = uint256(stor9[address(arg1)].field_0)
            var29001 = _657 + 32
            var29002 = 0
            continue 
        mem[0] = sha3(address(arg1), 9)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64] = address(stor9[address(arg1)][var29002].field_0)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 96] = uint256(stor9[address(arg1)][var29002].field_256)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 128] = uint256(stor9[address(arg1)][var29002].field_512)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 160] = uint256(stor9[address(arg1)][var29002].field_768)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 192] = uint256(stor9[address(arg1)][var29002].field_1024)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 224] = uint256(stor9[address(arg1)][var29002].field_1280)
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 256] = uint256(stor9[address(arg1)][var29002].field_1536)
        mem[64] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + 416
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 384] = uint256(stor9[address(arg1)][var29002].field_1792)
        if not uint256(stor9[address(arg1)][var29002].field_1792):
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 288] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 384
            mem[64] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + (32 * uint256(stor9[address(arg1)][var29002].field_2048)) + 448
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + 416] = uint256(stor9[address(arg1)][var29002].field_2048)
            if not uint256(stor9[address(arg1)][var29002].field_2048):
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 320] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + 416
                mem[64] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + (32 * uint256(stor9[address(arg1)][var29002].field_2048)) + (32 * uint256(stor9[address(arg1)][var29002].field_2304)) + 480
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + (32 * uint256(stor9[address(arg1)][var29002].field_2048)) + 448] = uint256(stor9[address(arg1)][var29002].field_2304)
                if uint256(stor9[address(arg1)][var29002].field_2304):
                    mem[0] = sha3(sha3(address(arg1), 9)) + (10 * var29002) + 9
                    mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + (32 * uint256(stor9[address(arg1)][var29002].field_2048)) + 480] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * var29002) + 9)].field_0)
                    s = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + (32 * uint256(stor9[address(arg1)][var29002].field_2048)) + 480
                    t = 0
                    while _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + (32 * uint256(stor9[address(arg1)][var29002].field_2048)) + (32 * uint256(stor9[address(arg1)][var29002].field_2304)) + 448 > s:
                        mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 352] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + (32 * uint256(stor9[address(arg1)][var29002].field_2048)) + 448
            else:
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * var29002) + 8
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + 448] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * var29002) + 8)].field_0)
                s = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + 448
                t = 0
                while _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + (32 * uint256(stor9[address(arg1)][var29002].field_2048)) + 416 > s:
                    mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 320] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor9[address(arg1)][var29002].field_1792)) + 416
                _660 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][var29002].field_2304)) + 32
                mem[_660] = uint256(stor9[address(arg1)][var29002].field_2304)
                if uint256(stor9[address(arg1)][var29002].field_2304):
                    mem[0] = sha3(sha3(address(arg1), 9)) + (10 * var29002) + 9
                    mem[_660 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * var29002) + 9)].field_0)
                    s = _660 + 32
                    t = 0
                    while _660 + (32 * uint256(stor9[address(arg1)][var29002].field_2304)) > s:
                        mem[s + 32] = uint256(stor[t + sha3(mem[0]) + 1])
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 352] = _660
            mem[var29001] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64
            var29001 = var29001 + 32
            var29002 = var29002 + 1
            continue 
        mem[0] = sha3(sha3(address(arg1), 9)) + (10 * var29002) + 7
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 416] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * var29002) + 7)].field_0)
        s = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 416
        t = 0
        while _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + (32 * uint256(stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * t) + (10 * sha3(mem[0]))].field_1792)) + 384 > s:
            mem[s + 32] = address(stor[t + sha3(mem[0]) + 1])
            s = s + 32
            t = t + 1
            continue 
        mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 288] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 384
        _661 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][t].field_2048)) + 32
        mem[_661] = uint256(stor9[address(arg1)][t].field_2048)
        if not uint256(stor9[address(arg1)][t].field_2048):
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 320] = _661
            _666 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][t].field_2304)) + 32
            mem[_666] = uint256(stor9[address(arg1)][t].field_2304)
            if uint256(stor9[address(arg1)][t].field_2304):
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * t) + 9
                mem[_666 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * t) + 9)].field_0)
                u = _666 + 32
                v = 0
                while _666 + (32 * uint256(stor9[address(arg1)][t].field_2304)) > u:
                    mem[u + 32] = uint256(stor[v + sha3(mem[0]) + 1])
                    u = u + 32
                    v = v + 1
                    continue 
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 352] = _666
        else:
            mem[0] = sha3(sha3(address(arg1), 9)) + (10 * t) + 8
            mem[_661 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * t) + 8)].field_0)
            u = _661 + 32
            v = 0
            while _661 + (32 * uint256(stor9[address(arg1)][t].field_2048)) > u:
                mem[u + 32] = uint256(stor[v + sha3(mem[0]) + 1])
                u = u + 32
                v = v + 1
                continue 
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 320] = _661
            _683 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor9[address(arg1)][t].field_2304)) + 32
            mem[_683] = uint256(stor9[address(arg1)][t].field_2304)
            if uint256(stor9[address(arg1)][t].field_2304):
                mem[0] = sha3(sha3(address(arg1), 9)) + (10 * t) + 9
                mem[_683 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)) + (10 * t) + 9)].field_0)
                u = _683 + 32
                v = 0
                while _683 + (32 * uint256(stor9[address(arg1)][t].field_2304)) > u:
                    mem[u + 32] = uint256(stor[v + sha3(mem[0]) + 1])
                    u = u + 32
                    v = v + 1
                    continue 
            mem[_92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 352] = _683
    mem[s] = _92 + (32 * _91) + (32 * uint256(stor9[address(arg1)].field_0)) + 64
    s = s + 32
    t = t + 1
    continue 
}



}
