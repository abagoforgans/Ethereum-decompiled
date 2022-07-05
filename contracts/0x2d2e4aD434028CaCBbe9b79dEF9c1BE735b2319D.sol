contract main {




// =====================  Runtime code  =====================


address owner;
address entityContractAddress;
address sub_c3d22fb6Address;
address seedContractAddress;

function seedContract() {
    return seedContractAddress
}

function owner() {
    return owner
}

function sub_c3d22fb6(?) {
    return sub_c3d22fb6Address
}

function entityContract() {
    return entityContractAddress
}

function selfDestruct() {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function setAddress(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    entityContractAddress = arg1
    sub_c3d22fb6Address = arg2
    seedContractAddress = arg3
}

function sub_cdfa8495(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(entityContractAddress)
    staticcall entityContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(entityContractAddress)
    staticcall entityContractAddress.getEntity(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_code.size(entityContractAddress)
    staticcall entityContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(entityContractAddress)
    staticcall entityContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != sub_c3d22fb6Address:
        require ext_code.size(entityContractAddress)
        staticcall entityContractAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != seedContractAddress:
            return ext_call.return_data[0], 
                   bool(ext_call.return_data[0]),
                   bool(ext_call.return_data[32]),
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   ext_call.return_data[128],
                   ext_call.return_data[160],
                   ext_call.return_data[192],
                   ext_call.return_data[224],
                   ext_call.return_data[256],
                   ext_call.return_data[288],
                   address(ext_call.return_data[0]),
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0
        require ext_code.size(seedContractAddress)
        staticcall seedContractAddress.getCurrentPrice(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(seedContractAddress)
        staticcall seedContractAddress.getAuction(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        return ext_call.return_data[0], 
               bool(ext_call.return_data[0]),
               bool(ext_call.return_data[32]),
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[256],
               ext_call.return_data[288],
               address(ext_call.return_data[0]),
               0,
               0,
               0,
               0,
               0,
               0,
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128],
               ext_call.return_data[0]
    require ext_code.size(sub_c3d22fb6Address)
    staticcall sub_c3d22fb6Address.getCurrentPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c3d22fb6Address)
    staticcall sub_c3d22fb6Address.getAuction(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(entityContractAddress)
    staticcall entityContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != seedContractAddress:
        return ext_call.return_data[0], 
               bool(ext_call.return_data[0]),
               bool(ext_call.return_data[32]),
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[256],
               ext_call.return_data[288],
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128],
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               0
    require ext_code.size(seedContractAddress)
    staticcall seedContractAddress.getCurrentPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(seedContractAddress)
    staticcall seedContractAddress.getAuction(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[0], 
           bool(ext_call.return_data[0]),
           bool(ext_call.return_data[32]),
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256],
           ext_call.return_data[288],
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[0],
           address(ext_call.return_data[0]),
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[0]
}

function sub_ab35ec63(?) {
    require calldata.size - 4 >= 32
    mem[96 len 64] = code.data[6068 len 64]
    mem[160 len 96] = code.data[6068 len 96]
    mem[256 len 608] = code.data[6068 len 608]
    require ext_code.size(entityContractAddress)
    staticcall entityContractAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 864] = 0
    mem[ceil32(return_data.size) + 896] = 0
    mem[ceil32(return_data.size) + 928] = 0
    mem[ceil32(return_data.size) + 960] = 0
    mem[ceil32(return_data.size) + 992] = 0
    mem[ceil32(return_data.size) + 1024] = 0
    mem[ceil32(return_data.size) + 1056] = 0
    mem[ceil32(return_data.size) + 1088] = 0
    mem[ceil32(return_data.size) + 1120] = 0
    mem[ceil32(return_data.size) + 1152] = 0
    mem[ceil32(return_data.size) + 1184] = 0
    mem[ceil32(return_data.size) + 1216] = 0
    mem[ceil32(return_data.size) + 1248] = 0
    mem[ceil32(return_data.size) + 1280] = 0
    mem[ceil32(return_data.size) + 1312] = 0
    mem[ceil32(return_data.size) + 1344] = 0
    mem[ceil32(return_data.size) + 1376] = 0
    mem[ceil32(return_data.size) + 1408] = 0
    mem[ceil32(return_data.size) + 1440] = 0
    mem[ceil32(return_data.size) + 1472] = 0
    mem[ceil32(return_data.size) + 1504] = 0
    mem[ceil32(return_data.size) + 1536] = 0
    require ext_code.size(entityContractAddress)
    staticcall entityContractAddress.getEntity(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 1568 len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    mem[(2 * ceil32(return_data.size)) + 1572] = arg1
    require ext_code.size(entityContractAddress)
    staticcall entityContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 1568] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 1568] = 0
    mem[(4 * ceil32(return_data.size)) + 1600] = 0
    mem[(4 * ceil32(return_data.size)) + 1632] = 0
    mem[(4 * ceil32(return_data.size)) + 1664] = 0
    mem[(4 * ceil32(return_data.size)) + 1696] = 0
    mem[(4 * ceil32(return_data.size)) + 1728] = 0
    mem[(4 * ceil32(return_data.size)) + 1760] = 0
    mem[(4 * ceil32(return_data.size)) + 1792] = 0
    mem[(4 * ceil32(return_data.size)) + 1824] = 0
    mem[(4 * ceil32(return_data.size)) + 1856] = 0
    mem[(4 * ceil32(return_data.size)) + 1888] = 0
    mem[(4 * ceil32(return_data.size)) + 1920] = bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 1952] = bool(ext_call.return_data[32])
    mem[(4 * ceil32(return_data.size)) + 1984] = ext_call.return_data[64]
    mem[(4 * ceil32(return_data.size)) + 2016] = ext_call.return_data[96]
    mem[(4 * ceil32(return_data.size)) + 2048] = ext_call.return_data[128]
    mem[(4 * ceil32(return_data.size)) + 2080] = ext_call.return_data[160]
    mem[(4 * ceil32(return_data.size)) + 2112] = ext_call.return_data[192]
    mem[(4 * ceil32(return_data.size)) + 2144] = ext_call.return_data[224]
    mem[(4 * ceil32(return_data.size)) + 2176] = ext_call.return_data[256]
    mem[(4 * ceil32(return_data.size)) + 2208] = ext_call.return_data[288]
    mem[(4 * ceil32(return_data.size)) + 2240] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 2272] = 0
    mem[(4 * ceil32(return_data.size)) + 2304] = 0
    mem[(4 * ceil32(return_data.size)) + 2336] = 0
    mem[(4 * ceil32(return_data.size)) + 2368] = 0
    mem[(4 * ceil32(return_data.size)) + 2400] = 0
    mem[(4 * ceil32(return_data.size)) + 2432] = 0
    mem[(4 * ceil32(return_data.size)) + 2464] = 0
    mem[(4 * ceil32(return_data.size)) + 2496] = 0
    mem[(4 * ceil32(return_data.size)) + 2528] = 0
    mem[(4 * ceil32(return_data.size)) + 2560] = 0
    mem[(4 * ceil32(return_data.size)) + 2592] = 0
    mem[(4 * ceil32(return_data.size)) + 2624] = 0
    mem[(4 * ceil32(return_data.size)) + 2656] = 0
    mem[(4 * ceil32(return_data.size)) + 2688] = 0
    mem[(4 * ceil32(return_data.size)) + 2720] = 0
    mem[(4 * ceil32(return_data.size)) + 2752] = 0
    mem[(4 * ceil32(return_data.size)) + 2784] = 0
    mem[(4 * ceil32(return_data.size)) + 2816] = 0
    mem[(4 * ceil32(return_data.size)) + 2852] = arg1
    require ext_code.size(entityContractAddress)
    staticcall entityContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + 2848] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 2848] = 0
    mem[(6 * ceil32(return_data.size)) + 2880] = 0
    mem[(6 * ceil32(return_data.size)) + 2912] = 0
    mem[(6 * ceil32(return_data.size)) + 2944] = 0
    mem[(6 * ceil32(return_data.size)) + 2976] = 0
    mem[(6 * ceil32(return_data.size)) + 3008] = 0
    if address(ext_call.return_data[0]) != sub_c3d22fb6Address:
        mem[(6 * ceil32(return_data.size)) + 3040] = 0
        mem[(6 * ceil32(return_data.size)) + 3072] = 0
        mem[(6 * ceil32(return_data.size)) + 3104] = 0
        mem[(6 * ceil32(return_data.size)) + 3136] = 0
        mem[(6 * ceil32(return_data.size)) + 3168] = 0
        mem[(6 * ceil32(return_data.size)) + 3200] = 0
        mem[(6 * ceil32(return_data.size)) + 3232] = 0
        mem[(6 * ceil32(return_data.size)) + 3264] = 0
        mem[(6 * ceil32(return_data.size)) + 3296] = 0
        mem[(6 * ceil32(return_data.size)) + 3328] = 0
        mem[(6 * ceil32(return_data.size)) + 3360] = 0
        mem[(6 * ceil32(return_data.size)) + 3392] = 0
        mem[(6 * ceil32(return_data.size)) + 3424] = 0
        mem[(6 * ceil32(return_data.size)) + 3456] = 0
        mem[(6 * ceil32(return_data.size)) + 3488] = 0
        mem[(6 * ceil32(return_data.size)) + 3520] = 0
        mem[(6 * ceil32(return_data.size)) + 3552] = 0
        mem[(6 * ceil32(return_data.size)) + 3584] = 0
        mem[(6 * ceil32(return_data.size)) + 3616] = 0
        mem[(6 * ceil32(return_data.size)) + 3648] = 0
        mem[(6 * ceil32(return_data.size)) + 3680] = 0
        mem[(6 * ceil32(return_data.size)) + 3712] = 0
        mem[(6 * ceil32(return_data.size)) + 3744] = 0
        mem[(6 * ceil32(return_data.size)) + 3776] = 0
        mem[(6 * ceil32(return_data.size)) + 3812] = arg1
        require ext_code.size(entityContractAddress)
        staticcall entityContractAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(6 * ceil32(return_data.size)) + 3808] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 3808] = 0
        mem[(7 * ceil32(return_data.size)) + 3840] = 0
        mem[(7 * ceil32(return_data.size)) + 3872] = 0
        mem[(7 * ceil32(return_data.size)) + 3904] = 0
        mem[(7 * ceil32(return_data.size)) + 3936] = 0
        mem[(7 * ceil32(return_data.size)) + 3968] = 0
        if address(ext_call.return_data[0]) != seedContractAddress:
            mem[(7 * ceil32(return_data.size)) + 4000] = 0
            mem[(7 * ceil32(return_data.size)) + 4032] = 0
            mem[(7 * ceil32(return_data.size)) + 4064] = 0
            mem[(7 * ceil32(return_data.size)) + 4096] = 0
            mem[(7 * ceil32(return_data.size)) + 4128] = 0
            mem[(7 * ceil32(return_data.size)) + 4160] = 0
            mem[(7 * ceil32(return_data.size)) + 4192] = bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 4224] = bool(ext_call.return_data[32])
            mem[(7 * ceil32(return_data.size)) + 4256] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 4288] = 0
            mem[(7 * ceil32(return_data.size)) + 4320] = 0
            mem[64] = (7 * ceil32(return_data.size)) + 4960
            mem[(7 * ceil32(return_data.size)) + 4352] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 4384] = ext_call.return_data[64]
            mem[(7 * ceil32(return_data.size)) + 4416] = ext_call.return_data[96]
            mem[(7 * ceil32(return_data.size)) + 4448] = ext_call.return_data[128]
            mem[(7 * ceil32(return_data.size)) + 4480] = ext_call.return_data[160]
            mem[(7 * ceil32(return_data.size)) + 4512] = ext_call.return_data[192]
            mem[(7 * ceil32(return_data.size)) + 4544] = ext_call.return_data[224]
            mem[(7 * ceil32(return_data.size)) + 4576] = ext_call.return_data[256]
            mem[(7 * ceil32(return_data.size)) + 4608] = ext_call.return_data[288]
            mem[(7 * ceil32(return_data.size)) + 4640] = 0
            mem[(7 * ceil32(return_data.size)) + 4672] = 0
            mem[(7 * ceil32(return_data.size)) + 4704] = 0
            mem[(7 * ceil32(return_data.size)) + 4736] = 0
            mem[(7 * ceil32(return_data.size)) + 4768] = 0
            mem[(7 * ceil32(return_data.size)) + 4800] = 0
            mem[(7 * ceil32(return_data.size)) + 4832] = 0
            mem[(7 * ceil32(return_data.size)) + 4864] = 0
            mem[(7 * ceil32(return_data.size)) + 4896] = 0
            mem[(7 * ceil32(return_data.size)) + 4928] = 0
            idx = 0
            s = (7 * ceil32(return_data.size)) + 4192
            t = mem[64]
            while idx < 2:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (7 * ceil32(return_data.size)) + 4256
            t = (7 * ceil32(return_data.size)) + 5024
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 5120 len 608] = mem[(7 * ceil32(return_data.size)) + 4352 len 608]
            return memory
              from mem[64]
               len (7 * ceil32(return_data.size)) + -mem[64] + 5728
        mem[(7 * ceil32(return_data.size)) + 4004] = arg1
        require ext_code.size(seedContractAddress)
        staticcall seedContractAddress.getCurrentPrice(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(7 * ceil32(return_data.size)) + 4000] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(seedContractAddress)
        staticcall seedContractAddress.getAuction(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(8 * ceil32(return_data.size)) + 4000 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        mem[(10 * ceil32(return_data.size)) + 4000] = ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 4032] = ext_call.return_data[32]
        mem[(10 * ceil32(return_data.size)) + 4064] = ext_call.return_data[64]
        mem[(10 * ceil32(return_data.size)) + 4096] = ext_call.return_data[96]
        mem[(10 * ceil32(return_data.size)) + 4128] = ext_call.return_data[128]
        mem[(10 * ceil32(return_data.size)) + 4160] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 4192] = bool(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 4224] = bool(ext_call.return_data[32])
        mem[(10 * ceil32(return_data.size)) + 4256] = address(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 4288] = 0
        mem[(10 * ceil32(return_data.size)) + 4320] = address(ext_call.return_data[0])
        mem[64] = (10 * ceil32(return_data.size)) + 4960
        mem[(10 * ceil32(return_data.size)) + 4352] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 4384] = ext_call.return_data[64]
        mem[(10 * ceil32(return_data.size)) + 4416] = ext_call.return_data[96]
        mem[(10 * ceil32(return_data.size)) + 4448] = ext_call.return_data[128]
        mem[(10 * ceil32(return_data.size)) + 4480] = ext_call.return_data[160]
        mem[(10 * ceil32(return_data.size)) + 4512] = ext_call.return_data[192]
        mem[(10 * ceil32(return_data.size)) + 4544] = ext_call.return_data[224]
        mem[(10 * ceil32(return_data.size)) + 4576] = ext_call.return_data[256]
        mem[(10 * ceil32(return_data.size)) + 4608] = ext_call.return_data[288]
        mem[(10 * ceil32(return_data.size)) + 4640] = 0
        mem[(10 * ceil32(return_data.size)) + 4672] = 0
        mem[(10 * ceil32(return_data.size)) + 4704] = 0
        mem[(10 * ceil32(return_data.size)) + 4736] = 0
        mem[(10 * ceil32(return_data.size)) + 4768] = 0
        mem[(10 * ceil32(return_data.size)) + 4800] = ext_call.return_data[32]
        mem[(10 * ceil32(return_data.size)) + 4832] = ext_call.return_data[64]
        mem[(10 * ceil32(return_data.size)) + 4864] = ext_call.return_data[96]
        mem[(10 * ceil32(return_data.size)) + 4896] = ext_call.return_data[128]
        mem[(10 * ceil32(return_data.size)) + 4928] = ext_call.return_data[0]
        idx = 0
        s = (10 * ceil32(return_data.size)) + 4192
        t = mem[64]
        while idx < 2:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = (10 * ceil32(return_data.size)) + 4256
        t = (10 * ceil32(return_data.size)) + 5024
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 5120 len 608] = mem[(10 * ceil32(return_data.size)) + 4352 len 608]
        return memory
          from mem[64]
           len (10 * ceil32(return_data.size)) + -mem[64] + 5728
    mem[(6 * ceil32(return_data.size)) + 3044] = arg1
    require ext_code.size(sub_c3d22fb6Address)
    staticcall sub_c3d22fb6Address.getCurrentPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(6 * ceil32(return_data.size)) + 3040] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c3d22fb6Address)
    staticcall sub_c3d22fb6Address.getAuction(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(7 * ceil32(return_data.size)) + 3040 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    mem[(8 * ceil32(return_data.size)) + 3040] = ext_call.return_data[12 len 20]
    mem[(8 * ceil32(return_data.size)) + 3072] = ext_call.return_data[32]
    mem[(8 * ceil32(return_data.size)) + 3104] = ext_call.return_data[64]
    mem[(8 * ceil32(return_data.size)) + 3136] = ext_call.return_data[96]
    mem[(8 * ceil32(return_data.size)) + 3168] = ext_call.return_data[128]
    mem[(8 * ceil32(return_data.size)) + 3200] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 3232] = 0
    mem[(8 * ceil32(return_data.size)) + 3264] = 0
    mem[(8 * ceil32(return_data.size)) + 3296] = 0
    mem[(8 * ceil32(return_data.size)) + 3328] = 0
    mem[(8 * ceil32(return_data.size)) + 3360] = 0
    mem[(8 * ceil32(return_data.size)) + 3392] = 0
    mem[(8 * ceil32(return_data.size)) + 3424] = 0
    mem[(8 * ceil32(return_data.size)) + 3456] = 0
    mem[(8 * ceil32(return_data.size)) + 3488] = 0
    mem[(8 * ceil32(return_data.size)) + 3520] = 0
    mem[(8 * ceil32(return_data.size)) + 3552] = 0
    mem[(8 * ceil32(return_data.size)) + 3584] = 0
    mem[(8 * ceil32(return_data.size)) + 3616] = 0
    mem[(8 * ceil32(return_data.size)) + 3648] = 0
    mem[(8 * ceil32(return_data.size)) + 3680] = 0
    mem[(8 * ceil32(return_data.size)) + 3712] = 0
    mem[(8 * ceil32(return_data.size)) + 3744] = 0
    mem[(8 * ceil32(return_data.size)) + 3776] = 0
    mem[(8 * ceil32(return_data.size)) + 3812] = arg1
    require ext_code.size(entityContractAddress)
    staticcall entityContractAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(8 * ceil32(return_data.size)) + 3808] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(10 * ceil32(return_data.size)) + 3808] = 0
    mem[(10 * ceil32(return_data.size)) + 3840] = 0
    mem[(10 * ceil32(return_data.size)) + 3872] = 0
    mem[(10 * ceil32(return_data.size)) + 3904] = 0
    mem[(10 * ceil32(return_data.size)) + 3936] = 0
    mem[(10 * ceil32(return_data.size)) + 3968] = 0
    if address(ext_call.return_data[0]) != seedContractAddress:
        mem[(10 * ceil32(return_data.size)) + 4000] = 0
        mem[(10 * ceil32(return_data.size)) + 4032] = 0
        mem[(10 * ceil32(return_data.size)) + 4064] = 0
        mem[(10 * ceil32(return_data.size)) + 4096] = 0
        mem[(10 * ceil32(return_data.size)) + 4128] = 0
        mem[(10 * ceil32(return_data.size)) + 4160] = 0
        mem[(10 * ceil32(return_data.size)) + 4192] = bool(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 4224] = bool(ext_call.return_data[32])
        mem[(10 * ceil32(return_data.size)) + 4256] = address(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 4288] = address(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 4320] = 0
        mem[64] = (10 * ceil32(return_data.size)) + 4960
        mem[(10 * ceil32(return_data.size)) + 4352] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 4384] = ext_call.return_data[64]
        mem[(10 * ceil32(return_data.size)) + 4416] = ext_call.return_data[96]
        mem[(10 * ceil32(return_data.size)) + 4448] = ext_call.return_data[128]
        mem[(10 * ceil32(return_data.size)) + 4480] = ext_call.return_data[160]
        mem[(10 * ceil32(return_data.size)) + 4512] = ext_call.return_data[192]
        mem[(10 * ceil32(return_data.size)) + 4544] = ext_call.return_data[224]
        mem[(10 * ceil32(return_data.size)) + 4576] = ext_call.return_data[256]
        mem[(10 * ceil32(return_data.size)) + 4608] = ext_call.return_data[288]
        mem[(10 * ceil32(return_data.size)) + 4640] = ext_call.return_data[32]
        mem[(10 * ceil32(return_data.size)) + 4672] = ext_call.return_data[64]
        mem[(10 * ceil32(return_data.size)) + 4704] = ext_call.return_data[96]
        mem[(10 * ceil32(return_data.size)) + 4736] = ext_call.return_data[128]
        mem[(10 * ceil32(return_data.size)) + 4768] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 4800] = 0
        mem[(10 * ceil32(return_data.size)) + 4832] = 0
        mem[(10 * ceil32(return_data.size)) + 4864] = 0
        mem[(10 * ceil32(return_data.size)) + 4896] = 0
        mem[(10 * ceil32(return_data.size)) + 4928] = 0
        idx = 0
        s = (10 * ceil32(return_data.size)) + 4192
        t = mem[64]
        while idx < 2:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = (10 * ceil32(return_data.size)) + 4256
        t = (10 * ceil32(return_data.size)) + 5024
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 5120 len 608] = mem[(10 * ceil32(return_data.size)) + 4352 len 608]
        return memory
          from mem[64]
           len (10 * ceil32(return_data.size)) + -mem[64] + 5728
    mem[(10 * ceil32(return_data.size)) + 4004] = arg1
    require ext_code.size(seedContractAddress)
    staticcall seedContractAddress.getCurrentPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(10 * ceil32(return_data.size)) + 4000] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(seedContractAddress)
    staticcall seedContractAddress.getAuction(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(11 * ceil32(return_data.size)) + 4000 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    mem[(12 * ceil32(return_data.size)) + 4000] = ext_call.return_data[12 len 20]
    mem[(12 * ceil32(return_data.size)) + 4032] = ext_call.return_data[32]
    mem[(12 * ceil32(return_data.size)) + 4064] = ext_call.return_data[64]
    mem[(12 * ceil32(return_data.size)) + 4096] = ext_call.return_data[96]
    mem[(12 * ceil32(return_data.size)) + 4128] = ext_call.return_data[128]
    mem[(12 * ceil32(return_data.size)) + 4160] = ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + 4192] = bool(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + 4224] = bool(ext_call.return_data[32])
    mem[(12 * ceil32(return_data.size)) + 4256] = address(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + 4288] = address(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + 4320] = address(ext_call.return_data[0])
    mem[64] = (12 * ceil32(return_data.size)) + 4960
    mem[(12 * ceil32(return_data.size)) + 4352] = ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + 4384] = ext_call.return_data[64]
    mem[(12 * ceil32(return_data.size)) + 4416] = ext_call.return_data[96]
    mem[(12 * ceil32(return_data.size)) + 4448] = ext_call.return_data[128]
    mem[(12 * ceil32(return_data.size)) + 4480] = ext_call.return_data[160]
    mem[(12 * ceil32(return_data.size)) + 4512] = ext_call.return_data[192]
    mem[(12 * ceil32(return_data.size)) + 4544] = ext_call.return_data[224]
    mem[(12 * ceil32(return_data.size)) + 4576] = ext_call.return_data[256]
    mem[(12 * ceil32(return_data.size)) + 4608] = ext_call.return_data[288]
    mem[(12 * ceil32(return_data.size)) + 4640] = ext_call.return_data[32]
    mem[(12 * ceil32(return_data.size)) + 4672] = ext_call.return_data[64]
    mem[(12 * ceil32(return_data.size)) + 4704] = ext_call.return_data[96]
    mem[(12 * ceil32(return_data.size)) + 4736] = ext_call.return_data[128]
    mem[(12 * ceil32(return_data.size)) + 4768] = ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + 4800] = ext_call.return_data[32]
    mem[(12 * ceil32(return_data.size)) + 4832] = ext_call.return_data[64]
    mem[(12 * ceil32(return_data.size)) + 4864] = ext_call.return_data[96]
    mem[(12 * ceil32(return_data.size)) + 4896] = ext_call.return_data[128]
    mem[(12 * ceil32(return_data.size)) + 4928] = ext_call.return_data[0]
    idx = 0
    s = (12 * ceil32(return_data.size)) + 4192
    t = mem[64]
    while idx < 2:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = (12 * ceil32(return_data.size)) + 4256
    t = (12 * ceil32(return_data.size)) + 5024
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(12 * ceil32(return_data.size)) + 5120 len 608] = mem[(12 * ceil32(return_data.size)) + 4352 len 608]
    return memory
      from mem[64]
       len (12 * ceil32(return_data.size)) + -mem[64] + 5728
}



}
