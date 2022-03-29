contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 2519]




// =====================  Runtime code  =====================


address stor0;
mapping of address emitters;
mapping of uint256 versions;
mapping of struct versionInfo;
uint256 latestVersion;

function versions(address arg1) {
    return versions[arg1]
}

function versionInfo(uint256 arg1) {
    mem[288] = versionInfo[arg1][3].field_0
    idx = 288
    s = 0
    while versionInfo[arg1][3].length + 288 > idx + 32:
        mem[idx + 32] = versionInfo[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[versionInfo[arg1][3].length + (floor32(versionInfo[arg1][3].length - 1) + -versionInfo[arg1][3].length + 32 % 32) + 288] = versionInfo[arg1][4].length
    mem[versionInfo[arg1][3].length + (floor32(versionInfo[arg1][3].length - 1) + -versionInfo[arg1][3].length + 32 % 32) + 320] = versionInfo[arg1][4].field_0
    idx = versionInfo[arg1][3].length + (floor32(versionInfo[arg1][3].length - 1) + -versionInfo[arg1][3].length + 32 % 32) + 320
    s = 0
    while versionInfo[arg1][3].length + (floor32(versionInfo[arg1][3].length - 1) + -versionInfo[arg1][3].length + 32 % 32) + versionInfo[arg1][4].length + 320 > idx + 32:
        mem[idx + 32] = versionInfo[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return versionInfo[arg1].field_0, 
           versionInfo[arg1].field_256,
           versionInfo[arg1].field_512,
           Array(len=versionInfo[arg1][3].length, data=mem[288 len versionInfo[arg1][3].length + (floor32(versionInfo[arg1][3].length - 1) + -versionInfo[arg1][3].length + 32 % 32) + versionInfo[arg1][4].length + (floor32(versionInfo[arg1][4].length - 1) + -versionInfo[arg1][4].length + 32 % 32) + 32]),
           versionInfo[arg1][3].length + (floor32(versionInfo[arg1][3].length - 1) + -versionInfo[arg1][3].length + 32 % 32) + 192
}

function latestVersion() {
    return latestVersion
}

function emitters(bytes4 arg1) {
    return emitters[Mask(32, 224, arg1)]
}

function _fallback() {
    if not versions[address(msg.sender)]:
    delegate emitters[call.func_hash] with:
       funct call.data[0 len 4]
         gas gas_remaining - 50 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    require delegate.return_data[0]
}

function addEmitter(bytes4 arg1, address arg2) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 'setup', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if emitters[Mask(32, 224, arg1)]:
        return 0
    emitters[Mask(32, 224, arg1)] = arg2
    return 1
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function addVersion(address arg1, string arg2, string arg3) {
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if versions[address(arg1)]:
        return 0
    if not arg2.length:
        return 0
    if not arg3.length:
        return 0
    latestVersion++
    versions[address(arg1)] = latestVersion + 1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = block.number
    versionInfo[stor4 + 1].field_0 = block.number
    versionInfo[stor4 + 1].field_256 = msg.sender
    versionInfo[stor4 + 1].field_512 = arg1
    versionInfo[stor4 + 1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    versionInfo[stor4 + 1].field_1024 = (2 * arg3.length) + 1
    s = 0
    idx = ceil32(arg2.length) + 160
    while ceil32(arg2.length) + arg3.length + 160 > idx:
        versionInfo[stor4 + 1][s + 4].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if versionInfo[stor4 + 1][4].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        stor[('array', 4, ('map', ('add', 1, ('stor', ('name', 'stor4', 4))), ('name', 'versionInfo', 3))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while versionInfo[stor4 + 1][4].length + 31 / 32 > idx:
            versionInfo[stor4 + 1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}



}
