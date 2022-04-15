contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[6125 len 20]
    stor1 = code.data[6157 len 20]
    return code.data[112 len 6001]
}



// =====================  Runtime code  =====================


address sub_c23aa65aAddress;
address adminAddress;
array of struct sub_00b408f5;

function sub_00b408f5(?) {
    return sub_00b408f5[arg1].field_1288
}

function sub_1c4793a7(?) {
    return sub_00b408f5[arg1].field_1280
}

function sub_23fe2947(?) {
    return sub_00b408f5[arg1].field_256
}

function getState(uint256 arg1) {
    require sub_00b408f5[arg1].field_928 <= 2
    return sub_00b408f5[arg1].field_928
}

function sub_7ad22cd6(?) {
    return sub_00b408f5[arg1][9][address(arg2)].field_0
}

function sub_b0cdce4c(?) {
    return sub_00b408f5[arg1].field_2560
}

function sub_c23aa65a(?) {
    return sub_c23aa65aAddress
}

function getOwner(uint256 arg1) {
    return sub_00b408f5[arg1].field_768
}

function getParentId(uint256 arg1) {
    return sub_00b408f5[arg1].field_512
}

function admin() {
    return adminAddress
}

function getContentHash(uint256 arg1) {
    return sub_00b408f5[arg1].field_1024
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) {
    require adminAddress == msg.sender
    if arg1:
        adminAddress = arg1
}

function sub_cca14931(?) {
    require adminAddress == msg.sender
    if arg1:
        sub_c23aa65aAddress = arg1
}

function sub_0c90525f(?) {
    require sub_00b408f5[arg1].field_928 <= 2
    return not sub_00b408f5[arg1].field_928
}

function sub_128d3944(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_00b408f5[arg1].field_512 = arg2
    emit 0x41a0d9ff: arg2, arg1
}

function sub_b37406a4(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_00b408f5[arg1].field_256 = arg2
    emit 0x13958722: arg2, arg1
}

function sub_380bd483(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_00b408f5[arg1].field_1024 = arg2
    emit 0x46f8d2e5: arg2, arg1
}

function sub_770c52e5(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_00b408f5[arg1].field_2560 = arg2
    emit 0xcc4a60b9: arg2, arg1
}

function sub_c9191abb(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_00b408f5[arg1].field_1280 = arg2
    emit 0x3229d6a5: arg2, arg1
}

function sub_fd201099(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_00b408f5[arg1].field_1288 = arg2
    emit 0x78a3843c: arg2, arg1
}

function setOwner(uint256 arg1, address arg2) {
    require sub_c23aa65aAddress == msg.sender
    sub_00b408f5[arg1].field_768 = arg2
    emit 0x7bf8ff92: arg2, arg1
}

function sub_965ff5bc(?) {
    require sub_c23aa65aAddress == msg.sender
    require arg2 <= 2
    sub_00b408f5[arg1].field_928 = arg2
    emit 0x6b382b78: arg2, arg1
}

function sub_172c6d22(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_00b408f5[arg1][9][address(arg2)].field_0 = arg3
    emit 0x65614c56: address(arg2), arg3, arg1
}

function acceptProposal(uint256 arg1) {
    require sub_c23aa65aAddress == msg.sender
    sub_00b408f5[arg1].field_928 = 1
    sub_00b408f5[arg1].field_2560 = block.number
    emit 0x649d6402: sub_00b408f5[arg1].field_1024, arg1
}

function rejectProposal(uint256 arg1) {
    require sub_c23aa65aAddress == msg.sender
    sub_00b408f5[arg1].field_928 = 2
    sub_00b408f5[arg1].field_2560 = block.number
    emit 0x104a3cd2: sub_00b408f5[arg1].field_1024, arg1
}

function getNumProposals() {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args 2
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_b6f34aca(?) {
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0x1d4cf6c4 with:
         gas gas_remaining - 710 wei
        args (sha3(arg1, 5) + 6)
    require delegate.return_code
    return delegate.return_data[0]
}

function proposalExists(uint256 arg1) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x7f562d88 with:
         gas gas_remaining - 710 wei
        args 2, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_60c8b28d(?) {
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0xdc02e70d with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 6, arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function getVoter(uint256 arg1, uint256 arg2) {
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0xda5d2348 with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 6, arg2
    require delegate.return_code
    return delegate.return_data[12 len 20]
}

function sub_db60ec64(?) {
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0x1d4cf6c4 with:
         gas gas_remaining - 710 wei
        args (sha3(arg1, 5) + 6)
    require delegate.return_code
    return (delegate.return_data[0] == sub_00b408f5[arg1].field_1280)
}

function sub_555055f5(?) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0x1e401616 with:
         gas gas_remaining - 710 wei
        args sha3(arg1, 5) + 6, arg2
    require delegate.return_code
    sub_00b408f5[arg1][9][address(arg2)].field_0 = arg3
    emit 0x65614c56: address(arg2), arg3, arg1
}

function getProposal(uint256 arg1) {
    mem[132] = 2
    mem[164] = arg1
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x7f562d88 with:
         gas gas_remaining - 710 wei
        args 2, arg1
    require delegate.return_code
    require sub_00b408f5[arg1].field_928 <= 2
    if sub_00b408f5[arg1].field_1536:
        mem[160] = sub_00b408f5[arg1][6].field_0
        idx = 160
        s = 0
        while (32 * sub_00b408f5[arg1].field_1536) + 128 > idx:
            mem[idx + 32] = sub_00b408f5[arg1][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_00b408f5[arg1].field_1536) + 512 len floor32(sub_00b408f5[arg1].field_1536)] = mem[160 len floor32(sub_00b408f5[arg1].field_1536)]
    return bool(delegate.return_data[0]), 
           sub_00b408f5[arg1].field_256,
           sub_00b408f5[arg1].field_512,
           sub_00b408f5[arg1].field_768,
           sub_00b408f5[arg1].field_768,
           sub_00b408f5[arg1].field_1024,
           sub_00b408f5[arg1].field_1280,
           sub_00b408f5[arg1].field_1280,
           Array(len=sub_00b408f5[arg1].field_1536, data=mem[160 len floor32(sub_00b408f5[arg1].field_1536)], mem[(32 * sub_00b408f5[arg1].field_1536) + floor32(sub_00b408f5[arg1].field_1536) + 512 len (32 * sub_00b408f5[arg1].field_1536) - floor32(sub_00b408f5[arg1].field_1536)]),
           sub_00b408f5[arg1].field_2560
}

function sub_fcd691d3(?) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args 2
    require delegate.return_code
    require not sub_00b408f5[delegate.return_data[0] + 1].field_0
    sub_00b408f5[delegate.return_data[0] + 1].field_0 = delegate.return_data[0] + 1
    sub_00b408f5[delegate.return_data[0] + 1].field_256 = arg2
    sub_00b408f5[delegate.return_data[0] + 1].field_512 = arg1
    sub_00b408f5[delegate.return_data[0] + 1].field_768 = arg6
    sub_00b408f5[delegate.return_data[0] + 1].field_768 = arg6
    sub_00b408f5[delegate.return_data[0] + 1].field_928 = 0
    sub_00b408f5[delegate.return_data[0] + 1].field_1024 = arg3
    sub_00b408f5[delegate.return_data[0] + 1].field_1280 = arg4
    sub_00b408f5[delegate.return_data[0] + 1].field_1288 = arg5
    sub_00b408f5[delegate.return_data[0] + 1].field_1536 = 0
    idx = 0
    while sub_00b408f5[delegate.return_data[0] + 1].field_1536 > idx:
        sub_00b408f5[delegate.return_data[0] + 1][idx + 6].field_0 = 0
        idx = idx + 1
        continue 
    sub_00b408f5[delegate.return_data[0] + 1].field_2560 = block.number
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args 2, delegate.return_data[0] + 1
    require delegate.return_code
    emit 0x4b6b1cd5: arg1, arg3, arg4 << 248, arg5, delegate.return_data[0] + 1, arg2, sub_00b408f5[delegate.return_data[0] + 1].field_768
    return (delegate.return_data[0] + 1)
}



}
