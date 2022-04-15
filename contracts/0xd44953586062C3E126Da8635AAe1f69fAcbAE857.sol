contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[6183 len 20]
    stor1 = code.data[6215 len 20]
    return code.data[112 len 6059]
}



// =====================  Runtime code  =====================


address sub_c23aa65aAddress;
address adminAddress;
mapping of struct profile;

function getProfile(address arg1) {
    return profile[address(arg1)].field_2560
}

function sub_58e52e6e(?) {
    return profile[address(arg1)].field_512
}

function sub_ab80aa0e(?) {
    return profile[address(arg1)].field_256
}

function sub_c23aa65a(?) {
    return sub_c23aa65aAddress
}

function sub_ef12969b(?) {
    return profile[address(arg1)].field_2304
}

function admin() {
    return adminAddress
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

function sub_6ec2b800(?) {
    require sub_c23aa65aAddress == msg.sender
    profile[address(arg1)].field_2304 = arg2
}

function sub_f5f021b8(?) {
    require sub_c23aa65aAddress == msg.sender
    profile[address(arg1)].field_2560 = arg2
    emit 0xcc28b741: arg2, arg1
}

function sub_32a4b4c7(?) {
    require sub_c23aa65aAddress == msg.sender
    require arg2 <= profile[address(arg1)].field_512
    profile[address(arg1)].field_512 -= arg2
    emit 0xf1a951cc: (profile[address(arg1)].field_512 - arg2), arg1
}

function sub_36df3186(?) {
    require sub_c23aa65aAddress == msg.sender
    require arg2 <= profile[address(arg1)].field_256
    profile[address(arg1)].field_256 -= arg2
    emit 0x3d87d279: (profile[address(arg1)].field_256 - arg2), arg1
}

function sub_871359d6(?) {
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0x1d4cf6c4 with:
         gas gas_remaining - 710 wei
        args 2
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_461094f7(?) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args (sha3(address(arg1), 5) + 6)
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_760a80ee(?) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args (sha3(address(arg1), 5) + 3)
    require delegate.return_code
    return delegate.return_data[0]
}

function contributorExists(address arg1) {
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0xdc02e70d with:
         gas gas_remaining - 710 wei
        args 2, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_9fe9ac3d(?) {
    require sub_c23aa65aAddress == msg.sender
    require arg2 + profile[address(arg1)].field_256 >= profile[address(arg1)].field_256
    require arg2 + profile[address(arg1)].field_256 >= arg2
    profile[address(arg1)].field_256 += arg2
    emit 0x3d87d279: (arg2 + profile[address(arg1)].field_256), arg1
}

function sub_dfcef4e3(?) {
    require sub_c23aa65aAddress == msg.sender
    require arg2 + profile[address(arg1)].field_512 >= profile[address(arg1)].field_512
    require arg2 + profile[address(arg1)].field_512 >= arg2
    profile[address(arg1)].field_512 += arg2
    emit 0xf1a951cc: (arg2 + profile[address(arg1)].field_512), arg1
}

function sub_07830147(?) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args sha3(address(arg1), 5) + 6, arg2
    require delegate.return_code
    profile[address(arg1)].field_2304 = block.number
    emit 0xf71c661e: arg2, arg1
}

function sub_b174e42e(?) {
    require sub_c23aa65aAddress == msg.sender
    require not profile[address(arg1)].field_0
    profile[address(arg1)].field_0 = arg1
    profile[address(arg1)].field_256 = 0
    profile[address(arg1)].field_512 = 0
    profile[address(arg1)].field_768 = 0
    idx = 0
    while profile[address(arg1)].field_768 > idx:
        profile[address(arg1)][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    profile[address(arg1)].field_1536 = 0
    idx = 0
    while profile[address(arg1)].field_1536 > idx:
        profile[address(arg1)][idx + 6].field_0 = 0
        idx = idx + 1
        continue 
    profile[address(arg1)].field_2304 = block.number
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0x1e401616 with:
         gas gas_remaining - 710 wei
        args 2, arg1
    require delegate.return_code
    emit 0x869c367a: arg1
}

function getVotes(address arg1) {
    if not profile[address(arg1)].field_1536:
        mem[(32 * profile[address(arg1)].field_1536) + 160] = 32
        mem[(32 * profile[address(arg1)].field_1536) + 192] = profile[address(arg1)].field_1536
        mem[(32 * profile[address(arg1)].field_1536) + 224 len floor32(profile[address(arg1)].field_1536)] = mem[160 len floor32(profile[address(arg1)].field_1536)]
        return memory
          from (32 * profile[address(arg1)].field_1536) + 160
           len (96 * profile[address(arg1)].field_1536) + 64
    mem[160] = profile[address(arg1)][6].field_0
    idx = 160
    s = 0
    while (32 * profile[address(arg1)].field_1536) + 128 > idx:
        mem[idx + 32] = profile[address(arg1)][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * profile[address(arg1)].field_1536) + 224 len floor32(profile[address(arg1)].field_1536)] = mem[160 len floor32(profile[address(arg1)].field_1536)]
    return Array(len=profile[address(arg1)].field_1536, data=mem[160 len floor32(profile[address(arg1)].field_1536)], mem[(32 * profile[address(arg1)].field_1536) + floor32(profile[address(arg1)].field_1536) + 224 len (32 * profile[address(arg1)].field_1536) - floor32(profile[address(arg1)].field_1536)]), 
}

function sub_ec05cd67(?) {
    mem[96] = 0
    mem[128 len 992] = 0
    mem[64] = 2144
    mem[1120] = 0
    mem[1152 len 992] = 0
    mem[0] = arg1
    mem[32] = 5
    idx = 0
    s = 0
    while idx < 32:
        if arg2:
            require arg2
            require 32 * arg2 / arg2 == 32
        require idx + (32 * arg2) >= 32 * arg2
        require idx + (32 * arg2) >= idx
        mem[2176] = 0
        mem[2148] = sha3(address(arg1), 5) + 3
        require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
        delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
             gas gas_remaining - 710 wei
            args (sha3(address(arg1), 5) + 3)
        mem[2144] = delegate.return_data[0]
        require delegate.return_code
        if idx + (32 * arg2) >= delegate.return_data[0]:
            idx = 0
            while idx < 1024:
                mem[idx + 2144] = mem[idx + 1120]
                idx = idx + 32
                continue 
            return memory
              from 2144
               len 1024
        mem[2148] = sha3(address(arg1), 5) + 3
        mem[2180] = idx + (32 * arg2)
        require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
        delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xc25ce2c1 with:
             gas gas_remaining - 710 wei
            args sha3(address(arg1), 5) + 3, idx + (32 * arg2)
        mem[2144] = delegate.return_data[0]
        require delegate.return_code
        require idx < 32
        mem[(32 * idx) + 1120] = delegate.return_data[0]
        idx = idx + 1
        s = idx + (32 * arg2)
        continue 
    return memory
      from 1120
       len 1024
}

function addProposal(address arg1, uint256 arg2) {
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0xdc02e70d with:
         gas gas_remaining - 710 wei
        args 2, arg1
    require delegate.return_code
    if not delegate.return_data[0]:
        require sub_c23aa65aAddress == msg.sender
        require not profile[address(arg1)].field_0
        profile[address(arg1)].field_0 = arg1
        profile[address(arg1)].field_256 = 0
        profile[address(arg1)].field_512 = 0
        profile[address(arg1)].field_768 = 0
        idx = 0
        while profile[address(arg1)].field_768 > idx:
            profile[address(arg1)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
        profile[address(arg1)].field_1536 = 0
        idx = 0
        while profile[address(arg1)].field_1536 > idx:
            profile[address(arg1)][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
        profile[address(arg1)].field_2304 = block.number
        require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
        delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0x1e401616 with:
             gas gas_remaining - 710 wei
            args 2, arg1
        require delegate.return_code
        emit 0x869c367a: arg1
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args sha3(address(arg1), 5) + 3, arg2
    require delegate.return_code
    profile[address(arg1)].field_2304 = block.number
    emit AddedProposal(arg2, arg1);
}

function getContributor(address arg1) {
    mem[164] = 2
    mem[196] = arg1
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0xdc02e70d with:
         gas gas_remaining - 710 wei
        args 2, arg1
    require delegate.return_code
    if profile[address(arg1)].field_768:
        mem[192] = profile[address(arg1)][3].field_0
        idx = 192
        s = 0
        while (32 * profile[address(arg1)].field_768) + 160 > idx:
            mem[idx + 32] = profile[address(arg1)][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if profile[address(arg1)].field_1536:
        mem[(32 * profile[address(arg1)].field_768) + 224] = profile[address(arg1)][6].field_0
        idx = (32 * profile[address(arg1)].field_768) + 224
        s = 0
        while (32 * profile[address(arg1)].field_768) + (32 * profile[address(arg1)].field_1536) + 192 > idx:
            mem[idx + 32] = profile[address(arg1)][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * profile[address(arg1)].field_768) + (32 * profile[address(arg1)].field_1536) + 448 len floor32(profile[address(arg1)].field_768)] = mem[192 len floor32(profile[address(arg1)].field_768)]
    mem[(64 * profile[address(arg1)].field_768) + (32 * profile[address(arg1)].field_1536) + 448] = profile[address(arg1)].field_1536
    mem[(64 * profile[address(arg1)].field_768) + (32 * profile[address(arg1)].field_1536) + 480 len floor32(profile[address(arg1)].field_1536)] = mem[(32 * profile[address(arg1)].field_768) + 224 len floor32(profile[address(arg1)].field_1536)]
    return bool(delegate.return_data[0]), 
           profile[address(arg1)].field_256,
           profile[address(arg1)].field_512,
           Array(len=profile[address(arg1)].field_768, data=mem[192 len floor32(profile[address(arg1)].field_768)], mem[(32 * profile[address(arg1)].field_768) + (32 * profile[address(arg1)].field_1536) + floor32(profile[address(arg1)].field_768) + 448 len (32 * profile[address(arg1)].field_768) + (32 * profile[address(arg1)].field_1536) + -floor32(profile[address(arg1)].field_768) + 32]),
           (32 * profile[address(arg1)].field_768) + 224,
           profile[address(arg1)].field_2304
}

function sub_b85d479e(?) {
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0xda5d2348 with:
         gas gas_remaining - 710 wei
        args 2, arg1
    require delegate.return_code
    mem[164] = 2
    mem[196] = address(delegate.return_data[0])
    require ext_code.size(0x8526a5c2cbd7288078f0667138b8cb649b385b9b)
    delegate 0x8526a5c2cbd7288078f0667138b8cb649b385b9b.0xdc02e70d with:
         gas gas_remaining - 710 wei
        args 2, address(delegate.return_data[0])
    require delegate.return_code
    if profile[address(delegate.return_data[0])].field_768:
        mem[192] = profile[address(delegate.return_data[0])][3].field_0
        idx = 192
        s = 0
        while (32 * profile[address(delegate.return_data[0])].field_768) + 160 > idx:
            mem[idx + 32] = profile[address(delegate.return_data[0])][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if profile[address(delegate.return_data[0])].field_1536:
        mem[(32 * profile[address(delegate.return_data[0])].field_768) + 224] = profile[address(delegate.return_data[0])][6].field_0
        idx = (32 * profile[address(delegate.return_data[0])].field_768) + 224
        s = 0
        while (32 * profile[address(delegate.return_data[0])].field_768) + (32 * profile[address(delegate.return_data[0])].field_1536) + 192 > idx:
            mem[idx + 32] = profile[address(delegate.return_data[0])][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * profile[address(delegate.return_data[0])].field_768) + (32 * profile[address(delegate.return_data[0])].field_1536) + 480 len floor32(profile[address(delegate.return_data[0])].field_768)] = mem[192 len floor32(profile[address(delegate.return_data[0])].field_768)]
    mem[(64 * profile[address(delegate.return_data[0])].field_768) + (32 * profile[address(delegate.return_data[0])].field_1536) + 480] = profile[address(delegate.return_data[0])].field_1536
    mem[(64 * profile[address(delegate.return_data[0])].field_768) + (32 * profile[address(delegate.return_data[0])].field_1536) + 512 len floor32(profile[address(delegate.return_data[0])].field_1536)] = mem[(32 * profile[address(delegate.return_data[0])].field_768) + 224 len floor32(profile[address(delegate.return_data[0])].field_1536)]
    return bool(delegate.return_data[0]), 
           profile[address(delegate.return_data[0])].field_0,
           profile[address(delegate.return_data[0])].field_256,
           profile[address(delegate.return_data[0])].field_512,
           Array(len=profile[address(delegate.return_data[0])].field_768, data=mem[192 len floor32(profile[address(delegate.return_data[0])].field_768)], mem[(32 * profile[address(delegate.return_data[0])].field_768) + (32 * profile[address(delegate.return_data[0])].field_1536) + floor32(profile[address(delegate.return_data[0])].field_768) + 480 len (32 * profile[address(delegate.return_data[0])].field_768) + (32 * profile[address(delegate.return_data[0])].field_1536) + -floor32(profile[address(delegate.return_data[0])].field_768) + 32]),
           (32 * profile[address(delegate.return_data[0])].field_768) + 256,
           profile[address(delegate.return_data[0])].field_2304
}



}
