contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


array of struct stor0;
array of struct deployedCampaigns;
array of struct sub_5aeef402;
uint16 stor3;
uint16 platformFee; offset 160
address managerAddress;
mapping of uint8 stor4;
mapping of uint8 stor5;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403024;

function platformFee() {
    return platformFee
}

function deployedCampaigns(uint256 arg1) {
    require arg1 < deployedCampaigns.length
    return deployedCampaigns[arg1].field_0
}

function manager() {
    return managerAddress
}

function sub_5aeef402(?) {
    require arg1 < sub_5aeef402.length
    mem[128] = sub_5aeef402[arg1].field_0
    idx = 128
    s = 0
    while sub_5aeef402[arg1].length + 96 > idx:
        mem[idx + 32] = sub_5aeef402[(3 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_5aeef402[arg1].length, data=mem[128 len sub_5aeef402[arg1].length]), 
           sub_5aeef402[arg1].field_256,
           sub_5aeef402[arg1].field_512,
           sub_5aeef402[arg1].field_512,
           sub_5aeef402[arg1].field_512,
           bool(sub_5aeef402[arg1].field_704),
           bool(sub_5aeef402[arg1].field_712),
           bool(sub_5aeef402[arg1].field_720)
}

function sub_c890fb63(?) {
    return bool(stor4[arg1])
}

function sub_cfc985e4(?) {
    return bool(stor5[arg1])
}

function _fallback() payable {
  stop
}

function contribute() payable {
  stop
}

function sub_5cbc742c(?) {
    require msg.sender == managerAddress
    require arg1 >= 0
    require arg1 <= 500
    platformFee = arg1
}

function sub_a4056a1c(?) {
    require msg.sender == managerAddress
    require ext_code.size(arg1)
    call arg1.0x572fb917 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_af34950b(?) {
    require msg.sender == managerAddress
    require ext_code.size(arg1)
    call arg1.0xe3ec6de9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e8743a4e(?) {
    require msg.sender == managerAddress
    require ext_code.size(arg1)
    call arg1.0xf18095e7 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fcc801b9(?) {
    require msg.sender == managerAddress
    require ext_code.size(arg1)
    call arg1.returnBalance() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function createRequest(string arg1, uint256 arg2, address arg3) {
    require msg.sender == managerAddress
    stor0.length++
    stor0[stor0.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor290D[stor0.length] = arg2
    stor290D[stor0.length].field_0 = arg3
    stor290D[stor0.length].field_160 = 0
}

function finalizeRequest(uint256 arg1) {
    require msg.sender == managerAddress
    require arg1 < stor0.length
    require not stor0[arg1].field_672
    call stor0[arg1].field_512 with:
       value stor0[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[arg1].field_672 = 1
}

function requests(uint256 arg1) {
    require arg1 < stor0.length
    mem[128] = stor0[arg1].field_0
    idx = 128
    s = 0
    while stor0[arg1].length + 96 > idx:
        mem[idx + 32] = stor0[(3 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[128 len stor0[arg1].length]), 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           bool(stor0[arg1].field_672)
}

function sub_3d3c17b9(?) {
    require ext_code.size(msg.sender)
    call msg.sender.0x481c6a75 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == managerAddress
    if not stor4[address(arg1)]:
        deployedCampaigns.length++
        deployedCampaigns[deployedCampaigns.length].field_0 = arg1
        stor4[address(arg1)] = 1
    return 1
}

function sub_393d09c2(?) {
    require msg.sender == managerAddress
    require ext_code.size(arg1)
    call arg1.0xad286aae with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        require ext_code.size(arg1)
        call arg1.0x9c5e823 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_93f02dc2(?) {
    require msg.sender == managerAddress
    idx = 0
    s = 1
    while idx < deployedCampaigns.length:
        mem[0] = 1
        mem[100] = arg1
        require ext_code.size(deployedCampaigns[idx].field_0)
        call deployedCampaigns[idx].field_0.0x9b66c8a0 with:
             gas gas_remaining wei
            args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    return bool(s)
}

function getDeployedCampaigns() {
    if not deployedCampaigns.length:
        mem[(32 * deployedCampaigns.length) + 128] = 32
        mem[(32 * deployedCampaigns.length) + 160] = deployedCampaigns.length
        mem[(32 * deployedCampaigns.length) + 192 len floor32(deployedCampaigns.length)] = mem[128 len floor32(deployedCampaigns.length)]
        return memory
          from (32 * deployedCampaigns.length) + 128
           len (96 * deployedCampaigns.length) + 64
    mem[128] = address(deployedCampaigns.field_0)
    idx = 128
    s = 0
    while (32 * deployedCampaigns.length) + 96 > idx:
        mem[idx + 32] = deployedCampaigns[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * deployedCampaigns.length) + 192 len floor32(deployedCampaigns.length)] = mem[128 len floor32(deployedCampaigns.length)]
    return Array(len=deployedCampaigns.length, data=mem[128 len floor32(deployedCampaigns.length)], mem[(32 * deployedCampaigns.length) + floor32(deployedCampaigns.length) + 192 len (32 * deployedCampaigns.length) - floor32(deployedCampaigns.length)]), 
}

function sub_a561e4bb(?) {
    require msg.sender == managerAddress
    idx = 0
    s = 1
    while idx < deployedCampaigns.length:
        mem[0] = 1
        mem[100] = deployedCampaigns[idx].field_0
        require ext_code.size(arg1)
        call arg1.0x3d3c17b9 with:
             gas gas_remaining wei
            args deployedCampaigns[idx].field_0
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    idx = 0
    t = s
    while idx < sub_5aeef402.length:
        mem[0] = 2
        mem[100] = sub_5aeef402[idx].field_256
        require ext_code.size(arg1)
        call arg1.0xcbea3f88 with:
             gas gas_remaining wei
            args sub_5aeef402[idx].field_256
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = idx + 1
            t = t
            continue 
        idx = idx + 1
        t = 0
        continue 
    return bool(t)
}

function sub_9167ba14(?) {
    mem[128 len arg6.length] = arg6[all]
    mem[ceil32(arg6.length) + 128] = 96
    mem[ceil32(arg6.length) + 17187 len ceil32(arg6.length)] = arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]
    if not arg6.length % 32:
        create contract with 0 wei
                        code: code.data[8189 len 16323], arg1, arg2, arg3, arg4 << 240, stor3, Array(len=arg14, data=arg6.length, Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256), arg8, arg9, address(arg10), address(arg11), address(arg12), msg.sender, address(arg13)
    else:
        mem[floor32(arg6.length) + ceil32(arg6.length) + 17187] = mem[floor32(arg6.length) + ceil32(arg6.length) + -(arg6.length % 32) + 17219 len arg6.length % 32]
        create contract with 0 wei
                        code: code.data[8189 len 16323], arg1, arg2, arg3, arg4 << 240, stor3, Array(len=arg14, data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * ceil32(arg6.length)) - 256, mem[(2 * ceil32(arg6.length)) + 17187 len floor32(arg6.length) + -ceil32(arg6.length) + 32]), arg8, arg9, address(arg10), address(arg11), address(arg12), msg.sender, address(arg13)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    deployedCampaigns.length++
    deployedCampaigns[deployedCampaigns.length].field_0 = address(create.new_address)
    sub_5aeef402.length++
    sub_5aeef402[sub_5aeef402.length][].field_0 = Array(len=arg6.length, data=arg6[all])
    sub_5aeef402[sub_5aeef402.length].field_256 = address(create.new_address)
    sub_5aeef402[sub_5aeef402.length].field_512 = msg.sender
    sub_5aeef402[sub_5aeef402.length].field_672 = arg4
    sub_5aeef402[sub_5aeef402.length].field_688 = arg5
    sub_5aeef402[sub_5aeef402.length].field_704 = uint8(arg7)
    sub_5aeef402[sub_5aeef402.length].field_712 = uint8(arg8)
    sub_5aeef402[sub_5aeef402.length].field_720 = arg9 % 281474976710656
    sub_5aeef402[sub_5aeef402.length].field_728 = Mask(40, 16, arg8) >> 16
    sub_5aeef402[sub_5aeef402.length].field_728 = Mask(40, 24, arg7) >> 24
    emit 0x80f9eee3: msg.sender, address(create.new_address)
}

function sub_cbea3f88(?) {
    mem[320] = 0
    require ext_code.size(msg.sender)
    call msg.sender.0x481c6a75 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == managerAddress
    mem[352] = 0x7284e41600000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.description() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[352]
    require mem[352] <= 4294967296
    require mem[352] + 32 <= return_data.size
    require return_data.size >= mem[mem[352] + 352] + mem[352] + 32 and mem[mem[352] + 352] <= 4294967296
    require ext_code.size(arg1)
    call arg1.0x481c6a75 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x9c7632fc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.'&#*.' with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x47479144 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.enableWhitelist() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa202815c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor5[address(arg1)]:
        mem[ceil32(return_data.size) + 352] = mem[352] + 352
        mem[ceil32(return_data.size) + 384] = arg1
        mem[ceil32(return_data.size) + 416] = address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 448] = uint16(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 480] = uint16(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 512] = bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 544] = bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 576] = bool(ext_call.return_data[0])
        sub_5aeef402.length++
        _38 = mem[_9 + 352]
        sub_5aeef402[sub_5aeef402.length][].field_0 = Array(len=_38, data=mem[_9 + 384 len _38])
        stor4057[stor2.length] = arg1
        stor4057[stor2.length].field_0 = address(ext_call.return_data[0])
        stor4057[stor2.length].field_160 = uint16(ext_call.return_data[0])
        stor4057[stor2.length].field_176 = uint16(ext_call.return_data[0])
        stor4057[stor2.length].field_192 = uint8(bool(ext_call.return_data[0]))
        stor4057[stor2.length].field_200 = uint8(bool(ext_call.return_data[0]))
        stor4057[stor2.length].field_208 = bool(ext_call.return_data[0]) % 281474976710656
        stor4057[stor2.length].field_216 = Mask(40, 16, bool(ext_call.return_data[0])) >> 16
        stor4057[stor2.length].field_216 = Mask(40, 24, bool(ext_call.return_data[0])) >> 24
        if sub_5aeef402.length + 1 != sub_5aeef402.length + 1:
            return 0
        stor5[address(arg1)] = 1
    return 1
}



}
