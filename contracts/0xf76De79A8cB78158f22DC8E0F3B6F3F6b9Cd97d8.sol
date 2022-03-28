contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2153]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
mapping of address emitters;
mapping of uint256 versions;
mapping of struct versionInfo;
uint256 latestVersion;

function versions(address arg1) {
    return versions[arg1]
}

function pendingContractOwner() {
    return pendingContractOwner
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

function contractOwner() {
    return contractOwner
}

function emitters(bytes4 arg1) {
    return emitters[Mask(32, 224, arg1)]
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function addEmitter(bytes4 arg1, address arg2) {
    if contractOwner != msg.sender:
        return 0
    if emitters[Mask(32, 224, arg1)]:
        return 0
    emitters[Mask(32, 224, arg1)] = arg2
    return 1
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

function addVersion(address arg1, string arg2, string arg3) {
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if contractOwner != msg.sender:
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
    versionInfo[stor5 + 1].field_0 = block.number
    versionInfo[stor5 + 1].field_256 = msg.sender
    versionInfo[stor5 + 1].field_512 = arg1
    versionInfo[stor5 + 1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    versionInfo[stor5 + 1].field_1024 = (2 * arg3.length) + 1
    s = 0
    idx = ceil32(arg2.length) + 160
    while ceil32(arg2.length) + arg3.length + 160 > idx:
        versionInfo[stor5 + 1][s + 4].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if versionInfo[stor5 + 1][4].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        stor[('array', 4, ('map', ('add', 1, ('stor', ('name', 'stor5', 5))), ('name', 'versionInfo', 4))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0 = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while versionInfo[stor5 + 1][4].length + 31 / 32 > idx:
            versionInfo[stor5 + 1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}



}
