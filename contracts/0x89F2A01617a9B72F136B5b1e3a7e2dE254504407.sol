contract main {




// =====================  Runtime code  =====================


const sub_eea08deb(?) = 4 * 10^14


address owner;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint8 stor1; offset 176
uint8 stor1; offset 184
uint128 stor1; offset 184
uint128 stor1; offset 176
uint128 stor1; offset 168
uint128 stor1; offset 160
address stor1;
uint256 sub_5119cc83;
mapping of uint256 bountyOf;

function sub_1e51f5a8(?) {
    return bool(uint8(stor1.field_168))
}

function sub_5119cc83(?) {
    return sub_5119cc83
}

function sub_76a116d8(?) {
    return bool(uint8(stor1.field_176))
}

function owner() {
    return owner
}

function bountyOf(address arg1) {
    return bountyOf[arg1]
}

function contractPoweredUp() {
    return bool(uint8(stor1.field_160))
}

function sub_e31e5b7c(?) {
    return bool(uint8(stor1.field_184))
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function ownerPowerUpContract() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 4 * 10^14
    Mask(96, 0, stor1.field_160) = 1
}

function ownerWithdrawParsecs(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 > 0
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0ef47ff4(?) {
    require msg.sender == owner
    require uint8(stor1.field_160)
    require not uint8(stor1.field_184)
    require bountyOf[0xbe762c447ba88e1b22c5a7248cbef103032b8306] + 871143 * 10^6 >= bountyOf[0xbe762c447ba88e1b22c5a7248cbef103032b8306]
    bountyOf[0xbe762c447ba88e1b22c5a7248cbef103032b8306] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0xbe762c44: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xbe762c447ba88e1b22c5a7248cbef103032b8306, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xed2d17430709edde66a3e67c2dd761738ffd0ffd] + 1742286 * 10^6 >= bountyOf[0xed2d17430709edde66a3e67c2dd761738ffd0ffd]
    bountyOf[0xed2d17430709edde66a3e67c2dd761738ffd0ffd] += 1742286 * 10^6
    require sub_5119cc83 + 1742286 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1742286 * 10^6
    emit 0xc72d72b3: 1742286 * 10^6, block.timestamp
    emit 0xed2d1743: 1742286 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xed2d17430709edde66a3e67c2dd761738ffd0ffd, 1742286 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x472d1ddffb017e9ebbb4b6d0d4e1296af14bd703] + 871143 * 10^6 >= bountyOf[0x472d1ddffb017e9ebbb4b6d0d4e1296af14bd703]
    bountyOf[0x472d1ddffb017e9ebbb4b6d0d4e1296af14bd703] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0x472d1ddf: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x472d1ddffb017e9ebbb4b6d0d4e1296af14bd703, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xfe4a4da8de5565e76392b79615375ddf6c504d11] + 3194192 * 10^6 >= bountyOf[0xfe4a4da8de5565e76392b79615375ddf6c504d11]
    bountyOf[0xfe4a4da8de5565e76392b79615375ddf6c504d11] += 3194192 * 10^6
    require sub_5119cc83 + 3194192 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 3194192 * 10^6
    emit 0xc72d72b3: 3194192 * 10^6, block.timestamp
    emit 0xfe4a4da8: 3194192 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xfe4a4da8de5565e76392b79615375ddf6c504d11, 3194192 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xb967ddb883b417f620aaf09505febb77ce0c2374] + 1161525 * 10^6 >= bountyOf[0xb967ddb883b417f620aaf09505febb77ce0c2374]
    bountyOf[0xb967ddb883b417f620aaf09505febb77ce0c2374] += 1161525 * 10^6
    require sub_5119cc83 + 1161525 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1161525 * 10^6
    emit 0xc72d72b3: 1161525 * 10^6, block.timestamp
    emit 0xb967ddb8: 1161525 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xb967ddb883b417f620aaf09505febb77ce0c2374, 1161525 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xe633a1270a7086e1e4923835c0a5cf06893d6a01] + 871143 * 10^6 >= bountyOf[0xe633a1270a7086e1e4923835c0a5cf06893d6a01]
    bountyOf[0xe633a1270a7086e1e4923835c0a5cf06893d6a01] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0xe633a127: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xe633a1270a7086e1e4923835c0a5cf06893d6a01, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x1ee06f228451c2d882b7afe6fd737989665bec52] + (282315000 * 24 * 3600) >= bountyOf[0x1ee06f228451c2d882b7afe6fd737989665bec52]
    bountyOf[0x1ee06f228451c2d882b7afe6fd737989665bec52] += 282315000 * 24 * 3600
    require sub_5119cc83 + (282315000 * 24 * 3600) >= sub_5119cc83
    sub_5119cc83 += 282315000 * 24 * 3600
    emit 0xc72d72b3: 282315000 * 24 * 3600, block.timestamp
    emit 0x1ee06f22: 282315000 * 24 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x1ee06f228451c2d882b7afe6fd737989665bec52, 282315000 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x36d091393dcecd628c52ed4f7b80674107d66bfa] + 871143 * 10^6 >= bountyOf[0x36d091393dcecd628c52ed4f7b80674107d66bfa]
    bountyOf[0x36d091393dcecd628c52ed4f7b80674107d66bfa] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0x36d09139: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x36d091393dcecd628c52ed4f7b80674107d66bfa, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xb8bb1f1423f66712dbc9bc723411397480acd32f] + 871143 * 10^6 >= bountyOf[0xb8bb1f1423f66712dbc9bc723411397480acd32f]
    bountyOf[0xb8bb1f1423f66712dbc9bc723411397480acd32f] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0xb8bb1f14: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xb8bb1f1423f66712dbc9bc723411397480acd32f, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x42fc0b269713e6f07974191a2c2303db68d5f681] + 871143 * 10^6 >= bountyOf[0x42fc0b269713e6f07974191a2c2303db68d5f681]
    bountyOf[0x42fc0b269713e6f07974191a2c2303db68d5f681] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0x42fc0b26: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x42fc0b269713e6f07974191a2c2303db68d5f681, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x8bf0d9afcd2bd5a779fbfa53b702c7b5a5eeba05] + 1742286 * 10^6 >= bountyOf[0x8bf0d9afcd2bd5a779fbfa53b702c7b5a5eeba05]
    bountyOf[0x8bf0d9afcd2bd5a779fbfa53b702c7b5a5eeba05] += 1742286 * 10^6
    require sub_5119cc83 + 1742286 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1742286 * 10^6
    emit 0xc72d72b3: 1742286 * 10^6, block.timestamp
    emit 0x8bf0d9af: 1742286 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x8bf0d9afcd2bd5a779fbfa53b702c7b5a5eeba05, 1742286 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x2b9840f282f167e8e8b0ed8c2938dcaa1006c5d4] + 2177858 * 10^6 >= bountyOf[0x2b9840f282f167e8e8b0ed8c2938dcaa1006c5d4]
    bountyOf[0x2b9840f282f167e8e8b0ed8c2938dcaa1006c5d4] += 2177858 * 10^6
    require sub_5119cc83 + 2177858 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 2177858 * 10^6
    emit 0xc72d72b3: 2177858 * 10^6, block.timestamp
    emit 0x2b9840f2: 2177858 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x2b9840f282f167e8e8b0ed8c2938dcaa1006c5d4, 2177858 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xbdd5645986f492954465b5e407f7528c0cf88ffa] + 871143 * 10^6 >= bountyOf[0xbdd5645986f492954465b5e407f7528c0cf88ffa]
    bountyOf[0xbdd5645986f492954465b5e407f7528c0cf88ffa] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0xbdd56459: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xbdd5645986f492954465b5e407f7528c0cf88ffa, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xbb1b7c3da8920e63b2dc57193a79bbc237aaec7e] + 1742286 * 10^6 >= bountyOf[0xbb1b7c3da8920e63b2dc57193a79bbc237aaec7e]
    bountyOf[0xbb1b7c3da8920e63b2dc57193a79bbc237aaec7e] += 1742286 * 10^6
    require sub_5119cc83 + 1742286 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1742286 * 10^6
    emit 0xc72d72b3: 1742286 * 10^6, block.timestamp
    emit 0xbb1b7c3d: 1742286 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xbb1b7c3da8920e63b2dc57193a79bbc237aaec7e, 1742286 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x5c582de6968264f1865c63dd72f0904be8e3da4a] + 871143 * 10^6 >= bountyOf[0x5c582de6968264f1865c63dd72f0904be8e3da4a]
    bountyOf[0x5c582de6968264f1865c63dd72f0904be8e3da4a] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0x5c582de6: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x5c582de6968264f1865c63dd72f0904be8e3da4a, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xccb98e6af2b1dbe621fbac6b48e6e98811fe1243] + 2613431 * 10^6 >= bountyOf[0xccb98e6af2b1dbe621fbac6b48e6e98811fe1243]
    bountyOf[0xccb98e6af2b1dbe621fbac6b48e6e98811fe1243] += 2613431 * 10^6
    require sub_5119cc83 + 2613431 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 2613431 * 10^6
    emit 0xc72d72b3: 2613431 * 10^6, block.timestamp
    emit 0xccb98e6a: 2613431 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xccb98e6af2b1dbe621fbac6b48e6e98811fe1243, 2613431 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x4c2c20542d75e08328d21f0c7365823d2752e07c] + 1161525 * 10^6 >= bountyOf[0x4c2c20542d75e08328d21f0c7365823d2752e07c]
    bountyOf[0x4c2c20542d75e08328d21f0c7365823d2752e07c] += 1161525 * 10^6
    require sub_5119cc83 + 1161525 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1161525 * 10^6
    emit 0xc72d72b3: 1161525 * 10^6, block.timestamp
    emit 0x4c2c2054: 1161525 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x4c2c20542d75e08328d21f0c7365823d2752e07c, 1161525 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x944f0d58ec256528116d622330b93f8af80c8c35] + 1161525 * 10^6 >= bountyOf[0x944f0d58ec256528116d622330b93f8af80c8c35]
    bountyOf[0x944f0d58ec256528116d622330b93f8af80c8c35] += 1161525 * 10^6
    require sub_5119cc83 + 1161525 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1161525 * 10^6
    emit 0xc72d72b3: 1161525 * 10^6, block.timestamp
    emit 0x944f0d58: 1161525 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x944f0d58ec256528116d622330b93f8af80c8c35, 1161525 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x6eb0b9ebc4ed419f5e7330620d647e4113ae29ef] + 4936481 * 10^6 >= bountyOf[0x6eb0b9ebc4ed419f5e7330620d647e4113ae29ef]
    bountyOf[0x6eb0b9ebc4ed419f5e7330620d647e4113ae29ef] += 4936481 * 10^6
    require sub_5119cc83 + 4936481 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 4936481 * 10^6
    emit 0xc72d72b3: 4936481 * 10^6, block.timestamp
    emit 0x6eb0b9eb: 4936481 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x6eb0b9ebc4ed419f5e7330620d647e4113ae29ef, 4936481 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x9d13df46a009e1c6195908043166cf86d885ed84] + 1742286 * 10^6 >= bountyOf[0x9d13df46a009e1c6195908043166cf86d885ed84]
    bountyOf[0x9d13df46a009e1c6195908043166cf86d885ed84] += 1742286 * 10^6
    require sub_5119cc83 + 1742286 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1742286 * 10^6
    emit 0xc72d72b3: 1742286 * 10^6, block.timestamp
    emit 0x9d13df46: 1742286 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x9d13df46a009e1c6195908043166cf86d885ed84, 1742286 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x4a116f5605159db8f958f19e57712efe3a29f99b] + 1742286 * 10^6 >= bountyOf[0x4a116f5605159db8f958f19e57712efe3a29f99b]
    bountyOf[0x4a116f5605159db8f958f19e57712efe3a29f99b] += 1742286 * 10^6
    require sub_5119cc83 + 1742286 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1742286 * 10^6
    emit 0xc72d72b3: 1742286 * 10^6, block.timestamp
    emit 0x4a116f56: 1742286 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x4a116f5605159db8f958f19e57712efe3a29f99b, 1742286 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x4897447ad5b75b30ff3d988628a6ae12b71ed15b] + (564630000 * 24 * 3600) >= bountyOf[0x4897447ad5b75b30ff3d988628a6ae12b71ed15b]
    bountyOf[0x4897447ad5b75b30ff3d988628a6ae12b71ed15b] += 564630000 * 24 * 3600
    require sub_5119cc83 + (564630000 * 24 * 3600) >= sub_5119cc83
    sub_5119cc83 += 564630000 * 24 * 3600
    emit 0xc72d72b3: 564630000 * 24 * 3600, block.timestamp
    emit 0x4897447a: 564630000 * 24 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x4897447ad5b75b30ff3d988628a6ae12b71ed15b, 564630000 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xb4f9f2ba99b6be2759ed7461058e80c2297734ea] + 2323050 * 10^6 >= bountyOf[0xb4f9f2ba99b6be2759ed7461058e80c2297734ea]
    bountyOf[0xb4f9f2ba99b6be2759ed7461058e80c2297734ea] += 2323050 * 10^6
    require sub_5119cc83 + 2323050 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 2323050 * 10^6
    emit 0xc72d72b3: 2323050 * 10^6, block.timestamp
    emit 0xb4f9f2ba: 2323050 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xb4f9f2ba99b6be2759ed7461058e80c2297734ea, 2323050 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xd76fe7347beb14c9bd0d5a50bf3b69a4e27cfa3b] + 1742286 * 10^6 >= bountyOf[0xd76fe7347beb14c9bd0d5a50bf3b69a4e27cfa3b]
    bountyOf[0xd76fe7347beb14c9bd0d5a50bf3b69a4e27cfa3b] += 1742286 * 10^6
    require sub_5119cc83 + 1742286 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1742286 * 10^6
    emit 0xc72d72b3: 1742286 * 10^6, block.timestamp
    emit 0xd76fe734: 1742286 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xd76fe7347beb14c9bd0d5a50bf3b69a4e27cfa3b, 1742286 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x2a06c794a2b2d7f86094765c258f1a1b06ca1813] + 1161525 * 10^6 >= bountyOf[0x2a06c794a2b2d7f86094765c258f1a1b06ca1813]
    bountyOf[0x2a06c794a2b2d7f86094765c258f1a1b06ca1813] += 1161525 * 10^6
    require sub_5119cc83 + 1161525 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1161525 * 10^6
    emit 0xc72d72b3: 1161525 * 10^6, block.timestamp
    emit 0x2a06c794: 1161525 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x2a06c794a2b2d7f86094765c258f1a1b06ca1813, 1161525 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x7375c73586881acc913015e56cccb4c9d63aaf45] + (725952500 * 3600) >= bountyOf[0x7375c73586881acc913015e56cccb4c9d63aaf45]
    bountyOf[0x7375c73586881acc913015e56cccb4c9d63aaf45] += 725952500 * 3600
    require sub_5119cc83 + (725952500 * 3600) >= sub_5119cc83
    sub_5119cc83 += 725952500 * 3600
    emit 0xc72d72b3: 725952500 * 3600, block.timestamp
    emit 0x7375c735: 725952500 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x7375c73586881acc913015e56cccb4c9d63aaf45, 725952500 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x469579cac0f8c4e62195b25449b885e5e048d2dc] + (725952500 * 3600) >= bountyOf[0x469579cac0f8c4e62195b25449b885e5e048d2dc]
    bountyOf[0x469579cac0f8c4e62195b25449b885e5e048d2dc] += 725952500 * 3600
    require sub_5119cc83 + (725952500 * 3600) >= sub_5119cc83
    sub_5119cc83 += 725952500 * 3600
    emit 0xc72d72b3: 725952500 * 3600, block.timestamp
    emit 0x469579ca: 725952500 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x469579cac0f8c4e62195b25449b885e5e048d2dc, 725952500 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x43d58a3d64062e4e2cf6ad285c7fe3a8b25741cc] + (967937500 * 3600) >= bountyOf[0x43d58a3d64062e4e2cf6ad285c7fe3a8b25741cc]
    bountyOf[0x43d58a3d64062e4e2cf6ad285c7fe3a8b25741cc] += 967937500 * 3600
    require sub_5119cc83 + (967937500 * 3600) >= sub_5119cc83
    sub_5119cc83 += 967937500 * 3600
    emit 0xc72d72b3: 967937500 * 3600, block.timestamp
    emit 0x43d58a3d: 967937500 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x43d58a3d64062e4e2cf6ad285c7fe3a8b25741cc, 967937500 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(72, 0, stor1.field_184) = 1
}

function sub_f186b40b(?) {
    require msg.sender == owner
    require uint8(stor1.field_160)
    require not uint8(stor1.field_176)
    require bountyOf[0x3f0cff7cb4ff4254031bcef80412e4cafe4aec7a] + (607190000 * 3600) >= bountyOf[0x3f0cff7cb4ff4254031bcef80412e4cafe4aec7a]
    bountyOf[0x3f0cff7cb4ff4254031bcef80412e4cafe4aec7a] += 607190000 * 3600
    require sub_5119cc83 + (607190000 * 3600) >= sub_5119cc83
    sub_5119cc83 += 607190000 * 3600
    emit 0xc72d72b3: 607190000 * 3600, block.timestamp
    emit 0x3f0cff7c: 607190000 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x3f0cff7cb4ff4254031bcef80412e4cafe4aec7a, 607190000 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xd92e4c34093a0091c1da3fd4f97d90f8cd67a2e9] + (315405000 * 24 * 3600) >= bountyOf[0xd92e4c34093a0091c1da3fd4f97d90f8cd67a2e9]
    bountyOf[0xd92e4c34093a0091c1da3fd4f97d90f8cd67a2e9] += 315405000 * 24 * 3600
    require sub_5119cc83 + (315405000 * 24 * 3600) >= sub_5119cc83
    sub_5119cc83 += 315405000 * 24 * 3600
    emit 0xc72d72b3: 315405000 * 24 * 3600, block.timestamp
    emit 0xd92e4c34: 315405000 * 24 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xd92e4c34093a0091c1da3fd4f97d90f8cd67a2e9, 315405000 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x38b324834410f17d236d9f885370289201cf948f] + 776892 * 10^6 >= bountyOf[0x38b324834410f17d236d9f885370289201cf948f]
    bountyOf[0x38b324834410f17d236d9f885370289201cf948f] += 776892 * 10^6
    require sub_5119cc83 + 776892 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 776892 * 10^6
    emit 0xc72d72b3: 776892 * 10^6, block.timestamp
    emit 0x38b32483: 776892 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x38b324834410f17d236d9f885370289201cf948f, 776892 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xc38e638025e22a046c7fce29e56f628906f9d040] + 836653 * 10^6 >= bountyOf[0xc38e638025e22a046c7fce29e56f628906f9d040]
    bountyOf[0xc38e638025e22a046c7fce29e56f628906f9d040] += 836653 * 10^6
    require sub_5119cc83 + 836653 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 836653 * 10^6
    emit 0xc72d72b3: 836653 * 10^6, block.timestamp
    emit 0xc38e6380: 836653 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xc38e638025e22a046c7fce29e56f628906f9d040, 836653 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x3aa113b6852e60a4c2ba115dfcd4951daec57c78] + 358566 * 10^6 >= bountyOf[0x3aa113b6852e60a4c2ba115dfcd4951daec57c78]
    bountyOf[0x3aa113b6852e60a4c2ba115dfcd4951daec57c78] += 358566 * 10^6
    require sub_5119cc83 + 358566 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 358566 * 10^6
    emit 0xc72d72b3: 358566 * 10^6, block.timestamp
    emit 0x3aa113b6: 358566 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x3aa113b6852e60a4c2ba115dfcd4951daec57c78, 358566 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x6617503541fd6cf5548820a4fde7b14211397206] + 836653 * 10^6 >= bountyOf[0x6617503541fd6cf5548820a4fde7b14211397206]
    bountyOf[0x6617503541fd6cf5548820a4fde7b14211397206] += 836653 * 10^6
    require sub_5119cc83 + 836653 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 836653 * 10^6
    emit 0xc72d72b3: 836653 * 10^6, block.timestamp
    emit 0x66175035: 836653 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x6617503541fd6cf5548820a4fde7b14211397206, 836653 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xd97566a98b9bcedc60f8814114ac371e3aba33e8] + 358566 * 10^6 >= bountyOf[0xd97566a98b9bcedc60f8814114ac371e3aba33e8]
    bountyOf[0xd97566a98b9bcedc60f8814114ac371e3aba33e8] += 358566 * 10^6
    require sub_5119cc83 + 358566 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 358566 * 10^6
    emit 0xc72d72b3: 358566 * 10^6, block.timestamp
    emit 0xd97566a9: 358566 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xd97566a98b9bcedc60f8814114ac371e3aba33e8, 358566 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xc97078d9ecc953a8e263626892da1f17579fa6e6] + 12 * 10^12 >= bountyOf[0xc97078d9ecc953a8e263626892da1f17579fa6e6]
    bountyOf[0xc97078d9ecc953a8e263626892da1f17579fa6e6] += 12 * 10^12
    require sub_5119cc83 + 12 * 10^12 >= sub_5119cc83
    sub_5119cc83 += 12 * 10^12
    emit 0xc72d72b3: 12 * 10^12, block.timestamp
    emit 0xc97078d9: 12 * 10^12, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xc97078d9ecc953a8e263626892da1f17579fa6e6, 12 * 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x448202bf8a049460bfa60527daca2ff3d47294b4] + (2 * 10^9 * 3600) >= bountyOf[0x448202bf8a049460bfa60527daca2ff3d47294b4]
    bountyOf[0x448202bf8a049460bfa60527daca2ff3d47294b4] += 2 * 10^9 * 3600
    require sub_5119cc83 + (2 * 10^9 * 3600) >= sub_5119cc83
    sub_5119cc83 += 2 * 10^9 * 3600
    emit 0xc72d72b3: 2 * 10^9 * 3600, block.timestamp
    emit 0x448202bf: 2 * 10^9 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x448202bf8a049460bfa60527daca2ff3d47294b4, 2 * 10^9 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x9286d9ded3bb4c4ce54e10a8c484e190da455696] + (2 * 10^9 * 3600) >= bountyOf[0x9286d9ded3bb4c4ce54e10a8c484e190da455696]
    bountyOf[0x9286d9ded3bb4c4ce54e10a8c484e190da455696] += 2 * 10^9 * 3600
    require sub_5119cc83 + (2 * 10^9 * 3600) >= sub_5119cc83
    sub_5119cc83 += 2 * 10^9 * 3600
    emit 0xc72d72b3: 2 * 10^9 * 3600, block.timestamp
    emit 0x9286d9de: 2 * 10^9 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x9286d9ded3bb4c4ce54e10a8c484e190da455696, 2 * 10^9 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x1b55887509d4d07965e20842cddaa1b1c4ad559c] + 192 * 10^11 >= bountyOf[0x1b55887509d4d07965e20842cddaa1b1c4ad559c]
    bountyOf[0x1b55887509d4d07965e20842cddaa1b1c4ad559c] += 192 * 10^11
    require sub_5119cc83 + 192 * 10^11 >= sub_5119cc83
    sub_5119cc83 += 192 * 10^11
    emit 0xc72d72b3: 192 * 10^11, block.timestamp
    emit 0x1b558875: 192 * 10^11, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x1b55887509d4d07965e20842cddaa1b1c4ad559c, 192 * 10^11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xac340cbf45502e509ffc5f213c882516c964202a] + (2 * 10^9 * 3600) >= bountyOf[0xac340cbf45502e509ffc5f213c882516c964202a]
    bountyOf[0xac340cbf45502e509ffc5f213c882516c964202a] += 2 * 10^9 * 3600
    require sub_5119cc83 + (2 * 10^9 * 3600) >= sub_5119cc83
    sub_5119cc83 += 2 * 10^9 * 3600
    emit 0xc72d72b3: 2 * 10^9 * 3600, block.timestamp
    emit 0xac340cbf: 2 * 10^9 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xac340cbf45502e509ffc5f213c882516c964202a, 2 * 10^9 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x4638f2cb0cf6d864f351a06d068e4afb642fafa2] + (2 * 10^9 * 3600) >= bountyOf[0x4638f2cb0cf6d864f351a06d068e4afb642fafa2]
    bountyOf[0x4638f2cb0cf6d864f351a06d068e4afb642fafa2] += 2 * 10^9 * 3600
    require sub_5119cc83 + (2 * 10^9 * 3600) >= sub_5119cc83
    sub_5119cc83 += 2 * 10^9 * 3600
    emit 0xc72d72b3: 2 * 10^9 * 3600, block.timestamp
    emit 0x4638f2cb: 2 * 10^9 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x4638f2cb0cf6d864f351a06d068e4afb642fafa2, 2 * 10^9 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x5325d89f64fa6b93c06db2e6f6d1e672cffb15fe] + 1666667 * 10^6 >= bountyOf[0x5325d89f64fa6b93c06db2e6f6d1e672cffb15fe]
    bountyOf[0x5325d89f64fa6b93c06db2e6f6d1e672cffb15fe] += 1666667 * 10^6
    require sub_5119cc83 + 1666667 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1666667 * 10^6
    emit 0xc72d72b3: 1666667 * 10^6, block.timestamp
    emit 0x5325d89f: 1666667 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x5325d89f64fa6b93c06db2e6f6d1e672cffb15fe, 1666667 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x95d4914d4f08732a169367674a8be026c02c5b44] + 20903813 * 10^6 >= bountyOf[0x95d4914d4f08732a169367674a8be026c02c5b44]
    bountyOf[0x95d4914d4f08732a169367674a8be026c02c5b44] += 20903813 * 10^6
    require sub_5119cc83 + 20903813 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 20903813 * 10^6
    emit 0xc72d72b3: 20903813 * 10^6, block.timestamp
    emit 0x95d4914d: 20903813 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x95d4914d4f08732a169367674a8be026c02c5b44, 20903813 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x70580ea14d98a53fd59376dc7e959f4a6129bb9b] + 7247431 * 10^6 >= bountyOf[0x70580ea14d98a53fd59376dc7e959f4a6129bb9b]
    bountyOf[0x70580ea14d98a53fd59376dc7e959f4a6129bb9b] += 7247431 * 10^6
    require sub_5119cc83 + 7247431 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 7247431 * 10^6
    emit 0xc72d72b3: 7247431 * 10^6, block.timestamp
    emit 0x70580ea1: 7247431 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x70580ea14d98a53fd59376dc7e959f4a6129bb9b, 7247431 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x387c71683a05cdf4df2ccd861ad4eed16f09f917] + 10378099 * 10^6 >= bountyOf[0x387c71683a05cdf4df2ccd861ad4eed16f09f917]
    bountyOf[0x387c71683a05cdf4df2ccd861ad4eed16f09f917] += 10378099 * 10^6
    require sub_5119cc83 + 10378099 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 10378099 * 10^6
    emit 0xc72d72b3: 10378099 * 10^6, block.timestamp
    emit 0x387c7168: 10378099 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x387c71683a05cdf4df2ccd861ad4eed16f09f917, 10378099 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xb87e73ad25086c43a16fe5f9589ff265f8a3a9eb] + 6666667 * 10^6 >= bountyOf[0xb87e73ad25086c43a16fe5f9589ff265f8a3a9eb]
    bountyOf[0xb87e73ad25086c43a16fe5f9589ff265f8a3a9eb] += 6666667 * 10^6
    require sub_5119cc83 + 6666667 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 6666667 * 10^6
    emit 0xc72d72b3: 6666667 * 10^6, block.timestamp
    emit 0xb87e73ad: 6666667 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xb87e73ad25086c43a16fe5f9589ff265f8a3a9eb, 6666667 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xa443838ad905148232f78f9521577c38932cd832] + 5333333 * 10^6 >= bountyOf[0xa443838ad905148232f78f9521577c38932cd832]
    bountyOf[0xa443838ad905148232f78f9521577c38932cd832] += 5333333 * 10^6
    require sub_5119cc83 + 5333333 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 5333333 * 10^6
    emit 0xc72d72b3: 5333333 * 10^6, block.timestamp
    emit 0xa443838a: 5333333 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xa443838ad905148232f78f9521577c38932cd832, 5333333 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x237706bfe11d4c4e148b4764c8f7da37743657d4] + 1161525 * 10^6 >= bountyOf[0x237706bfe11d4c4e148b4764c8f7da37743657d4]
    bountyOf[0x237706bfe11d4c4e148b4764c8f7da37743657d4] += 1161525 * 10^6
    require sub_5119cc83 + 1161525 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1161525 * 10^6
    emit 0xc72d72b3: 1161525 * 10^6, block.timestamp
    emit 0x237706bf: 1161525 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x237706bfe11d4c4e148b4764c8f7da37743657d4, 1161525 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x28687f8ae963a33db8fc94c04e231083bd18af4f] + 871143 * 10^6 >= bountyOf[0x28687f8ae963a33db8fc94c04e231083bd18af4f]
    bountyOf[0x28687f8ae963a33db8fc94c04e231083bd18af4f] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0x28687f8a: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x28687f8ae963a33db8fc94c04e231083bd18af4f, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x4f6bf3dc198becdda5fd7bb2cbfd4403b7bd522] + 1161525 * 10^6 >= bountyOf[0x4f6bf3dc198becdda5fd7bb2cbfd4403b7bd522]
    bountyOf[0x4f6bf3dc198becdda5fd7bb2cbfd4403b7bd522] += 1161525 * 10^6
    require sub_5119cc83 + 1161525 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1161525 * 10^6
    emit 0xc72d72b3: 1161525 * 10^6, block.timestamp
    emit 0x4f6bf3dc: 1161525 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x4f6bf3dc198becdda5fd7bb2cbfd4403b7bd522, 1161525 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xf4919c366c3ad386f0a5abe322d6cde0238ceb28] + 1161525 * 10^6 >= bountyOf[0xf4919c366c3ad386f0a5abe322d6cde0238ceb28]
    bountyOf[0xf4919c366c3ad386f0a5abe322d6cde0238ceb28] += 1161525 * 10^6
    require sub_5119cc83 + 1161525 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1161525 * 10^6
    emit 0xc72d72b3: 1161525 * 10^6, block.timestamp
    emit 0xf4919c36: 1161525 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xf4919c366c3ad386f0a5abe322d6cde0238ceb28, 1161525 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xd399e4f178d269dbdad44948fdee157ca574e286] + 871143 * 10^6 >= bountyOf[0xd399e4f178d269dbdad44948fdee157ca574e286]
    bountyOf[0xd399e4f178d269dbdad44948fdee157ca574e286] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0xd399e4f1: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xd399e4f178d269dbdad44948fdee157ca574e286, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x5889823cd24e11222ba370732218ffe1d9938108] + 871143 * 10^6 >= bountyOf[0x5889823cd24e11222ba370732218ffe1d9938108]
    bountyOf[0x5889823cd24e11222ba370732218ffe1d9938108] += 871143 * 10^6
    require sub_5119cc83 + 871143 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 871143 * 10^6
    emit 0xc72d72b3: 871143 * 10^6, block.timestamp
    emit 0x5889823c: 871143 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x5889823cd24e11222ba370732218ffe1d9938108, 871143 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xb906b0641dd9578287c0b7dbe33afec499f1841b] + 1451906 * 10^6 >= bountyOf[0xb906b0641dd9578287c0b7dbe33afec499f1841b]
    bountyOf[0xb906b0641dd9578287c0b7dbe33afec499f1841b] += 1451906 * 10^6
    require sub_5119cc83 + 1451906 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1451906 * 10^6
    emit 0xc72d72b3: 1451906 * 10^6, block.timestamp
    emit 0xb906b064: 1451906 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xb906b0641dd9578287c0b7dbe33afec499f1841b, 1451906 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x1461b1e13ac15b849b8fa54dcfa93b3961992642] + 1161525 * 10^6 >= bountyOf[0x1461b1e13ac15b849b8fa54dcfa93b3961992642]
    bountyOf[0x1461b1e13ac15b849b8fa54dcfa93b3961992642] += 1161525 * 10^6
    require sub_5119cc83 + 1161525 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1161525 * 10^6
    emit 0xc72d72b3: 1161525 * 10^6, block.timestamp
    emit 0x1461b1e1: 1161525 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x1461b1e13ac15b849b8fa54dcfa93b3961992642, 1161525 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xe415638fc30b277ec7f466e746abf2d406f821ff] + 2177858 * 10^6 >= bountyOf[0xe415638fc30b277ec7f466e746abf2d406f821ff]
    bountyOf[0xe415638fc30b277ec7f466e746abf2d406f821ff] += 2177858 * 10^6
    require sub_5119cc83 + 2177858 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 2177858 * 10^6
    emit 0xc72d72b3: 2177858 * 10^6, block.timestamp
    emit 0xe415638f: 2177858 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xe415638fc30b277ec7f466e746abf2d406f821ff, 2177858 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xde7fb34d93f672a5d587dc0f8a416b13eed8547d] + 2323049 * 10^6 >= bountyOf[0xde7fb34d93f672a5d587dc0f8a416b13eed8547d]
    bountyOf[0xde7fb34d93f672a5d587dc0f8a416b13eed8547d] += 2323049 * 10^6
    require sub_5119cc83 + 2323049 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 2323049 * 10^6
    emit 0xc72d72b3: 2323049 * 10^6, block.timestamp
    emit 0xde7fb34d: 2323049 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xde7fb34d93f672a5d587dc0f8a416b13eed8547d, 2323049 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x76cc93e01a6d810a1c11bbc1054c37cb395f14c8] + 3774956 * 10^6 >= bountyOf[0x76cc93e01a6d810a1c11bbc1054c37cb395f14c8]
    bountyOf[0x76cc93e01a6d810a1c11bbc1054c37cb395f14c8] += 3774956 * 10^6
    require sub_5119cc83 + 3774956 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 3774956 * 10^6
    emit 0xc72d72b3: 3774956 * 10^6, block.timestamp
    emit 0x76cc93e0: 3774956 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x76cc93e01a6d810a1c11bbc1054c37cb395f14c8, 3774956 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(80, 0, stor1.field_176) = 1
}

function sub_9c199989(?) {
    require msg.sender == owner
    require uint8(stor1.field_160)
    require not uint8(stor1.field_168)
    require bountyOf[0x254e9475169b5b1681e0e282476a764cfee303c9] + 38199052 * 10^6 >= bountyOf[0x254e9475169b5b1681e0e282476a764cfee303c9]
    bountyOf[0x254e9475169b5b1681e0e282476a764cfee303c9] += 38199052 * 10^6
    require sub_5119cc83 + 38199052 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 38199052 * 10^6
    emit 0xc72d72b3: 38199052 * 10^6, block.timestamp
    emit 0x254e9475: 38199052 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x254e9475169b5b1681e0e282476a764cfee303c9, 38199052 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xfd854e01ddadaa35f64fc1c491347963b6562d2d] + 43127962 * 10^6 >= bountyOf[0xfd854e01ddadaa35f64fc1c491347963b6562d2d]
    bountyOf[0xfd854e01ddadaa35f64fc1c491347963b6562d2d] += 43127962 * 10^6
    require sub_5119cc83 + 43127962 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 43127962 * 10^6
    emit 0xc72d72b3: 43127962 * 10^6, block.timestamp
    emit 0xfd854e01: 43127962 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xfd854e01ddadaa35f64fc1c491347963b6562d2d, 43127962 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x9c99eeb6a3cc8ac6dcf8575575bbcff7a0d87896] + 34502370 * 10^6 >= bountyOf[0x9c99eeb6a3cc8ac6dcf8575575bbcff7a0d87896]
    bountyOf[0x9c99eeb6a3cc8ac6dcf8575575bbcff7a0d87896] += 34502370 * 10^6
    require sub_5119cc83 + 34502370 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 34502370 * 10^6
    emit 0xc72d72b3: 34502370 * 10^6, block.timestamp
    emit 0x9c99eeb6: 34502370 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x9c99eeb6a3cc8ac6dcf8575575bbcff7a0d87896, 34502370 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xcbc8bbf61326422067a17d31a1daf33e8f0b70c8] + 11090047 * 10^6 >= bountyOf[0xcbc8bbf61326422067a17d31a1daf33e8f0b70c8]
    bountyOf[0xcbc8bbf61326422067a17d31a1daf33e8f0b70c8] += 11090047 * 10^6
    require sub_5119cc83 + 11090047 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 11090047 * 10^6
    emit 0xc72d72b3: 11090047 * 10^6, block.timestamp
    emit 0xcbc8bbf6: 11090047 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xcbc8bbf61326422067a17d31a1daf33e8f0b70c8, 11090047 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x9fefd6c32e435435921be98d5251a35eb4b9339d] + 2843602 * 10^6 >= bountyOf[0x9fefd6c32e435435921be98d5251a35eb4b9339d]
    bountyOf[0x9fefd6c32e435435921be98d5251a35eb4b9339d] += 2843602 * 10^6
    require sub_5119cc83 + 2843602 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 2843602 * 10^6
    emit 0xc72d72b3: 2843602 * 10^6, block.timestamp
    emit 0x9fefd6c3: 2843602 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x9fefd6c32e435435921be98d5251a35eb4b9339d, 2843602 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x2cce6c9d6a95a8fa8485578119b399b1759e6292] + 2843602 * 10^6 >= bountyOf[0x2cce6c9d6a95a8fa8485578119b399b1759e6292]
    bountyOf[0x2cce6c9d6a95a8fa8485578119b399b1759e6292] += 2843602 * 10^6
    require sub_5119cc83 + 2843602 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 2843602 * 10^6
    emit 0xc72d72b3: 2843602 * 10^6, block.timestamp
    emit 0x2cce6c9d: 2843602 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x2cce6c9d6a95a8fa8485578119b399b1759e6292, 2843602 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xc7e98a1f2f749b9737878748ddf971ea3234077d] + (2053712500 * 3600) >= bountyOf[0xc7e98a1f2f749b9737878748ddf971ea3234077d]
    bountyOf[0xc7e98a1f2f749b9737878748ddf971ea3234077d] += 2053712500 * 3600
    require sub_5119cc83 + (2053712500 * 3600) >= sub_5119cc83
    sub_5119cc83 += 2053712500 * 3600
    emit 0xc72d72b3: 2053712500 * 3600, block.timestamp
    emit 0xc7e98a1f: 2053712500 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xc7e98a1f2f749b9737878748ddf971ea3234077d, 2053712500 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x4230d0704cddd9242a0c98418138dd068d52c8a1] + (1924092500 * 3600) >= bountyOf[0x4230d0704cddd9242a0c98418138dd068d52c8a1]
    bountyOf[0x4230d0704cddd9242a0c98418138dd068d52c8a1] += 1924092500 * 3600
    require sub_5119cc83 + (1924092500 * 3600) >= sub_5119cc83
    sub_5119cc83 += 1924092500 * 3600
    emit 0xc72d72b3: 1924092500 * 3600, block.timestamp
    emit 0x4230d070: 1924092500 * 3600, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x4230d0704cddd9242a0c98418138dd068d52c8a1, 1924092500 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xd896714537310f20db563ae28e7226e4fbe2cee2] + 10397400 * 10^6 >= bountyOf[0xd896714537310f20db563ae28e7226e4fbe2cee2]
    bountyOf[0xd896714537310f20db563ae28e7226e4fbe2cee2] += 10397400 * 10^6
    require sub_5119cc83 + 10397400 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 10397400 * 10^6
    emit 0xc72d72b3: 10397400 * 10^6, block.timestamp
    emit 0xd8967145: 10397400 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xd896714537310f20db563ae28e7226e4fbe2cee2, 10397400 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x542f72dc468606877877ce971dece03c9beb67d5] + 8221483 * 10^6 >= bountyOf[0x542f72dc468606877877ce971dece03c9beb67d5]
    bountyOf[0x542f72dc468606877877ce971dece03c9beb67d5] += 8221483 * 10^6
    require sub_5119cc83 + 8221483 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 8221483 * 10^6
    emit 0xc72d72b3: 8221483 * 10^6, block.timestamp
    emit 0x542f72dc: 8221483 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x542f72dc468606877877ce971dece03c9beb67d5, 8221483 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x9bdbeb5f6e59dd471bc296b97266d3ee634b7c7e] + 8958390 * 10^6 >= bountyOf[0x9bdbeb5f6e59dd471bc296b97266d3ee634b7c7e]
    bountyOf[0x9bdbeb5f6e59dd471bc296b97266d3ee634b7c7e] += 8958390 * 10^6
    require sub_5119cc83 + 8958390 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 8958390 * 10^6
    emit 0xc72d72b3: 8958390 * 10^6, block.timestamp
    emit 0x9bdbeb5f: 8958390 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x9bdbeb5f6e59dd471bc296b97266d3ee634b7c7e, 8958390 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x84c10c798ee82d4b8cf229e40267e6efa9bbf6dd] + 1857480 * 10^6 >= bountyOf[0x84c10c798ee82d4b8cf229e40267e6efa9bbf6dd]
    bountyOf[0x84c10c798ee82d4b8cf229e40267e6efa9bbf6dd] += 1857480 * 10^6
    require sub_5119cc83 + 1857480 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1857480 * 10^6
    emit 0xc72d72b3: 1857480 * 10^6, block.timestamp
    emit 0x84c10c79: 1857480 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x84c10c798ee82d4b8cf229e40267e6efa9bbf6dd, 1857480 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x72a5b7fc75dc27f9da2748373b07a883896411f3] + 5079250 * 10^6 >= bountyOf[0x72a5b7fc75dc27f9da2748373b07a883896411f3]
    bountyOf[0x72a5b7fc75dc27f9da2748373b07a883896411f3] += 5079250 * 10^6
    require sub_5119cc83 + 5079250 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 5079250 * 10^6
    emit 0xc72d72b3: 5079250 * 10^6, block.timestamp
    emit 0x72a5b7fc: 5079250 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x72a5b7fc75dc27f9da2748373b07a883896411f3, 5079250 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x2dabbc7db7a6bf55b1356afacbcc882a32301c55] + 2171171 * 10^6 >= bountyOf[0x2dabbc7db7a6bf55b1356afacbcc882a32301c55]
    bountyOf[0x2dabbc7db7a6bf55b1356afacbcc882a32301c55] += 2171171 * 10^6
    require sub_5119cc83 + 2171171 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 2171171 * 10^6
    emit 0xc72d72b3: 2171171 * 10^6, block.timestamp
    emit 0x2dabbc7d: 2171171 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x2dabbc7db7a6bf55b1356afacbcc882a32301c55, 2171171 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x11d1e70f657399baad0849edd93a2f52cb5f35f9] + 3132236 * 10^6 >= bountyOf[0x11d1e70f657399baad0849edd93a2f52cb5f35f9]
    bountyOf[0x11d1e70f657399baad0849edd93a2f52cb5f35f9] += 3132236 * 10^6
    require sub_5119cc83 + 3132236 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 3132236 * 10^6
    emit 0xc72d72b3: 3132236 * 10^6, block.timestamp
    emit 0x11d1e70f: 3132236 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x11d1e70f657399baad0849edd93a2f52cb5f35f9, 3132236 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x91aa1bf579cf66847d833925f77e26237fdfca91] + 3216880 * 10^6 >= bountyOf[0x91aa1bf579cf66847d833925f77e26237fdfca91]
    bountyOf[0x91aa1bf579cf66847d833925f77e26237fdfca91] += 3216880 * 10^6
    require sub_5119cc83 + 3216880 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 3216880 * 10^6
    emit 0xc72d72b3: 3216880 * 10^6, block.timestamp
    emit 0x91aa1bf5: 3216880 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x91aa1bf579cf66847d833925f77e26237fdfca91, 3216880 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xc50cd9c617cf4095533578236cfeae149efbce87] + 2569505 * 10^6 >= bountyOf[0xc50cd9c617cf4095533578236cfeae149efbce87]
    bountyOf[0xc50cd9c617cf4095533578236cfeae149efbce87] += 2569505 * 10^6
    require sub_5119cc83 + 2569505 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 2569505 * 10^6
    emit 0xc72d72b3: 2569505 * 10^6, block.timestamp
    emit 0xc50cd9c6: 2569505 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xc50cd9c617cf4095533578236cfeae149efbce87, 2569505 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x9e1216e6731d66f22de9115a6a363adf76d913ce] + 2136292 * 10^6 >= bountyOf[0x9e1216e6731d66f22de9115a6a363adf76d913ce]
    bountyOf[0x9e1216e6731d66f22de9115a6a363adf76d913ce] += 2136292 * 10^6
    require sub_5119cc83 + 2136292 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 2136292 * 10^6
    emit 0xc72d72b3: 2136292 * 10^6, block.timestamp
    emit 0x9e1216e6: 2136292 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x9e1216e6731d66f22de9115a6a363adf76d913ce, 2136292 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xaaf48f8743c985d3191508c066799ebed00dc0d8] + 1991888 * 10^6 >= bountyOf[0xaaf48f8743c985d3191508c066799ebed00dc0d8]
    bountyOf[0xaaf48f8743c985d3191508c066799ebed00dc0d8] += 1991888 * 10^6
    require sub_5119cc83 + 1991888 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1991888 * 10^6
    emit 0xc72d72b3: 1991888 * 10^6, block.timestamp
    emit 0xaaf48f87: 1991888 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xaaf48f8743c985d3191508c066799ebed00dc0d8, 1991888 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xd3ec5a07125761494b38ae7c67e6d203dd419aae] + 1284753 * 10^6 >= bountyOf[0xd3ec5a07125761494b38ae7c67e6d203dd419aae]
    bountyOf[0xd3ec5a07125761494b38ae7c67e6d203dd419aae] += 1284753 * 10^6
    require sub_5119cc83 + 1284753 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1284753 * 10^6
    emit 0xc72d72b3: 1284753 * 10^6, block.timestamp
    emit 0xd3ec5a07: 1284753 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xd3ec5a07125761494b38ae7c67e6d203dd419aae, 1284753 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x8194a6a9f0b2fe02344fcd7f41ddfab6539fb52f] + 577617 * 10^6 >= bountyOf[0x8194a6a9f0b2fe02344fcd7f41ddfab6539fb52f]
    bountyOf[0x8194a6a9f0b2fe02344fcd7f41ddfab6539fb52f] += 577617 * 10^6
    require sub_5119cc83 + 577617 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 577617 * 10^6
    emit 0xc72d72b3: 577617 * 10^6, block.timestamp
    emit 0x8194a6a9: 577617 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x8194a6a9f0b2fe02344fcd7f41ddfab6539fb52f, 577617 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x9d3afa524b87ba0a3b0907d3df879d4b8f044a73] + 1065629 * 10^6 >= bountyOf[0x9d3afa524b87ba0a3b0907d3df879d4b8f044a73]
    bountyOf[0x9d3afa524b87ba0a3b0907d3df879d4b8f044a73] += 1065629 * 10^6
    require sub_5119cc83 + 1065629 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1065629 * 10^6
    emit 0xc72d72b3: 1065629 * 10^6, block.timestamp
    emit 0x9d3afa52: 1065629 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x9d3afa524b87ba0a3b0907d3df879d4b8f044a73, 1065629 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xf539d423e2175b7cd82061eff7072c328b309230] + 433213 * 10^6 >= bountyOf[0xf539d423e2175b7cd82061eff7072c328b309230]
    bountyOf[0xf539d423e2175b7cd82061eff7072c328b309230] += 433213 * 10^6
    require sub_5119cc83 + 433213 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 433213 * 10^6
    emit 0xc72d72b3: 433213 * 10^6, block.timestamp
    emit 0xf539d423: 433213 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xf539d423e2175b7cd82061eff7072c328b309230, 433213 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xfd052ec542db2d8d179c97555434c12277a2da90] + 4003984 * 10^6 >= bountyOf[0xfd052ec542db2d8d179c97555434c12277a2da90]
    bountyOf[0xfd052ec542db2d8d179c97555434c12277a2da90] += 4003984 * 10^6
    require sub_5119cc83 + 4003984 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 4003984 * 10^6
    emit 0xc72d72b3: 4003984 * 10^6, block.timestamp
    emit 0xfd052ec5: 4003984 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xfd052ec542db2d8d179c97555434c12277a2da90, 4003984 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xcfe1bd70ae72b9c7bc319f94c512d8f96fccb4c8] + 3466135 * 10^6 >= bountyOf[0xcfe1bd70ae72b9c7bc319f94c512d8f96fccb4c8]
    bountyOf[0xcfe1bd70ae72b9c7bc319f94c512d8f96fccb4c8] += 3466135 * 10^6
    require sub_5119cc83 + 3466135 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 3466135 * 10^6
    emit 0xc72d72b3: 3466135 * 10^6, block.timestamp
    emit 0xcfe1bd70: 3466135 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xcfe1bd70ae72b9c7bc319f94c512d8f96fccb4c8, 3466135 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0xdde12a1b5718d002e8ac78216720eb9bf3c6dbfb] + 4541833 * 10^6 >= bountyOf[0xdde12a1b5718d002e8ac78216720eb9bf3c6dbfb]
    bountyOf[0xdde12a1b5718d002e8ac78216720eb9bf3c6dbfb] += 4541833 * 10^6
    require sub_5119cc83 + 4541833 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 4541833 * 10^6
    emit 0xc72d72b3: 4541833 * 10^6, block.timestamp
    emit 0xdde12a1b: 4541833 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0xdde12a1b5718d002e8ac78216720eb9bf3c6dbfb, 4541833 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x31a570a588dc86faeb45057e749533fb0cd9622d] + 358566 * 10^6 >= bountyOf[0x31a570a588dc86faeb45057e749533fb0cd9622d]
    bountyOf[0x31a570a588dc86faeb45057e749533fb0cd9622d] += 358566 * 10^6
    require sub_5119cc83 + 358566 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 358566 * 10^6
    emit 0xc72d72b3: 358566 * 10^6, block.timestamp
    emit 0x31a570a5: 358566 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x31a570a588dc86faeb45057e749533fb0cd9622d, 358566 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x9b6286cb7d58c90ca49b5b6900c5a3b98f5f77cd] + 1010585 * 10^6 >= bountyOf[0x9b6286cb7d58c90ca49b5b6900c5a3b98f5f77cd]
    bountyOf[0x9b6286cb7d58c90ca49b5b6900c5a3b98f5f77cd] += 1010585 * 10^6
    require sub_5119cc83 + 1010585 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1010585 * 10^6
    emit 0xc72d72b3: 1010585 * 10^6, block.timestamp
    emit 0x9b6286cb: 1010585 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x9b6286cb7d58c90ca49b5b6900c5a3b98f5f77cd, 1010585 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x9be1c7a1f118f61740f01e96d292c0bae90360ab] + 597610 * 10^6 >= bountyOf[0x9be1c7a1f118f61740f01e96d292c0bae90360ab]
    bountyOf[0x9be1c7a1f118f61740f01e96d292c0bae90360ab] += 597610 * 10^6
    require sub_5119cc83 + 597610 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 597610 * 10^6
    emit 0xc72d72b3: 597610 * 10^6, block.timestamp
    emit 0x9be1c7a1: 597610 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x9be1c7a1f118f61740f01e96d292c0bae90360ab, 597610 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require bountyOf[0x123422cf323c57de45361d361e6c8ab3b8391503] + 1254980 * 10^6 >= bountyOf[0x123422cf323c57de45361d361e6c8ab3b8391503]
    bountyOf[0x123422cf323c57de45361d361e6c8ab3b8391503] += 1254980 * 10^6
    require sub_5119cc83 + 1254980 * 10^6 >= sub_5119cc83
    sub_5119cc83 += 1254980 * 10^6
    emit 0xc72d72b3: 1254980 * 10^6, block.timestamp
    emit 0x123422cf: 1254980 * 10^6, block.timestamp
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args 0x123422cf323c57de45361d361e6c8ab3b8391503, 1254980 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(88, 0, stor1.field_168) = 1
}



}
