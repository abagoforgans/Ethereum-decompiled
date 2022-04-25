contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint8 stor3;
uint128 stor3; offset 8
uint8 stor4; offset 128
uint8 stor4; offset 136
uint8 stor4; offset 144
uint8 stor4; offset 152
uint16 stor4;
uint128 stor4; offset 16

function _fallback() payable {
    uint8(stor4.field_128) = 1
    uint8(stor4.field_136) = 2
    uint8(stor4.field_144) = 3
    uint8(stor4.field_152) = 4
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = msg.sender
    uint8(stor3.field_0) = 1
    Mask(120, 0, stor3.field_8) = 0
    uint16(stor4.field_0) = 2 * 3600
    Mask(112, 0, stor4.field_16) = 0
    return code.data[455 len 13141]
}



// =====================  Runtime code  =====================


address owner;
address arbiterAddress;
address relayerAddress;
uint128 fee;
uint128 sub_bac22d3a; offset 128
uint8 sub_7c13d6af; offset 128
uint8 sub_d31a03c2; offset 136
uint8 sub_3f8f4094; offset 144
uint8 sub_84d069aa; offset 152
uint128 sub_0b44cbc5;
mapping of struct checkStatus;

function sub_0b44cbc5(?) {
    return sub_0b44cbc5
}

function sub_3f8f4094(?) {
    return sub_3f8f4094
}

function sub_457a6b6d(?) {
    require msg.sender == owner
    return sub_bac22d3a
}

function sub_7c13d6af(?) {
    return sub_7c13d6af
}

function relayer() {
    return relayerAddress
}

function sub_84d069aa(?) {
    return sub_84d069aa
}

function owner() {
    return owner
}

function checkStatus(bytes32 arg1) {
    return checkStatus[arg1].field_768
}

function sub_bac22d3a(?) {
    return sub_bac22d3a
}

function sub_d31a03c2(?) {
    return sub_d31a03c2
}

function fee() {
    return fee
}

function sub_fc1da1c8(?) {
    return checkStatus[arg1].field_0, 
           checkStatus[arg1].field_256,
           checkStatus[arg1].field_512,
           checkStatus[arg1].field_512,
           checkStatus[arg1].field_768,
           checkStatus[arg1].field_768
}

function arbiter() {
    return arbiterAddress
}

function _fallback() {
    revert
}

function sub_965ff2c1(?) {
    require msg.sender == owner
    fee = arg1
}

function sub_812eca19(?) {
    require msg.sender == owner
    sub_0b44cbc5 = arg1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeArbiter(address arg1) {
    require msg.sender == owner
    arbiterAddress = arg1
}

function sub_0289371c(?) {
    require msg.sender == checkStatus[arg1].field_256
    require checkStatus[arg1].field_768 == sub_7c13d6af
    return 0
}

function sub_e23860d3(?) {
    require msg.sender == owner
    require arg2 <= sub_bac22d3a
    sub_bac22d3a = uint128(sub_bac22d3a - arg2)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_4ab78a63(?) {
    require msg.sender == relayerAddress
    require uint128(uint128(31600 * block.gasprice) / 31600) == uint128(block.gasprice)
    require uint128(checkStatus[arg1].field_640 + (31600 * block.gasprice)) >= checkStatus[arg1].field_640
    checkStatus[arg1].field_640 = uint128(checkStatus[arg1].field_640 + (31600 * block.gasprice))
    require checkStatus[arg1].field_768 == sub_7c13d6af
    return 0
}

function sub_8546bef0(?) {
    if checkStatus[arg1].field_256 != msg.sender:
        require msg.sender == checkStatus[arg1].field_0
    if checkStatus[arg1].field_768 != sub_7c13d6af:
        require checkStatus[arg1].field_768 == sub_d31a03c2
    emit 0x84afe3cf: arg1, checkStatus[arg1].field_0, checkStatus[arg1].field_256
    if checkStatus[arg1].field_768 == sub_7c13d6af:
        checkStatus[arg1].field_768 = sub_3f8f4094
    return 1
}

function sub_2e1e5186(?) payable {
    require msg.value > 0
    checkStatus[arg2].field_0 = msg.sender
    checkStatus[arg2].field_256 = arg1
    checkStatus[arg2].field_512 = uint128(msg.value)
    checkStatus[arg2].field_640 = 0
    checkStatus[arg2].field_768 = 0
    checkStatus[arg2].field_768 = sub_7c13d6af
    checkStatus[arg2].field_776 = uint128(block.timestamp + sub_0b44cbc5)
    emit 0x7bf6f5f9: arg2, msg.sender, arg1
    return 1
}

function sub_c7c11444(?) {
    require msg.sender == relayerAddress
    require uint128(uint128(40166 * block.gasprice) / 40166) == uint128(block.gasprice)
    require uint128(checkStatus[arg1].field_640 + (40166 * block.gasprice)) >= checkStatus[arg1].field_640
    checkStatus[arg1].field_640 = uint128(checkStatus[arg1].field_640 + (40166 * block.gasprice))
    if checkStatus[arg1].field_768 != sub_7c13d6af:
        require checkStatus[arg1].field_768 == sub_d31a03c2
    emit 0x84afe3cf: arg1, checkStatus[arg1].field_0, checkStatus[arg1].field_256
    if checkStatus[arg1].field_768 == sub_7c13d6af:
        checkStatus[arg1].field_768 = sub_3f8f4094
    return 1
}

function sub_dc6017a7(?) {
    require msg.sender == checkStatus[arg1].field_0
    require uint128(block.timestamp) >= checkStatus[arg1].field_776
    require checkStatus[arg1].field_768 == sub_7c13d6af
    checkStatus[arg1].field_0 = 0
    checkStatus[arg1].field_256 = 0
    checkStatus[arg1].field_512 = 0
    checkStatus[arg1].field_512 = checkStatus[arg1].field_512
    checkStatus[arg1].field_768 = 0
    checkStatus[arg1].field_776 = 0
    emit 0x73d49bd5: arg1, checkStatus[arg1].field_0, checkStatus[arg1].field_256
    require checkStatus[arg1].field_640 >= 0
    sub_bac22d3a = uint128(sub_bac22d3a + checkStatus[arg1].field_640)
    require checkStatus[arg1].field_640 <= checkStatus[arg1].field_512
    call checkStatus[arg1].field_0 with:
       value uint128(checkStatus[arg1].field_512 - checkStatus[arg1].field_640) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_94b13478(?) {
    require msg.sender == checkStatus[arg1].field_256
    if checkStatus[arg1].field_768 != sub_7c13d6af:
        if checkStatus[arg1].field_768 != sub_3f8f4094:
            if checkStatus[arg1].field_768 != sub_d31a03c2:
                require checkStatus[arg1].field_768 == sub_84d069aa
    checkStatus[arg1].field_0 = 0
    checkStatus[arg1].field_256 = 0
    checkStatus[arg1].field_512 = 0
    checkStatus[arg1].field_512 = checkStatus[arg1].field_512
    checkStatus[arg1].field_768 = 0
    checkStatus[arg1].field_776 = 0
    emit 0xe6e1a9fa: arg1, checkStatus[arg1].field_0, checkStatus[arg1].field_0
    require checkStatus[arg1].field_640 >= 0
    sub_bac22d3a = uint128(sub_bac22d3a + checkStatus[arg1].field_640)
    require checkStatus[arg1].field_640 <= checkStatus[arg1].field_512
    call checkStatus[arg1].field_0 with:
       value uint128(checkStatus[arg1].field_512 - checkStatus[arg1].field_640) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_6e6a40d3(?) {
    require msg.sender == relayerAddress
    require uint128(uint128(39973 * block.gasprice) / 39973) == uint128(block.gasprice)
    require uint128(checkStatus[arg1].field_640 + (39973 * block.gasprice)) >= checkStatus[arg1].field_640
    checkStatus[arg1].field_640 = uint128(checkStatus[arg1].field_640 + (39973 * block.gasprice))
    require uint128(block.timestamp) >= checkStatus[arg1].field_776
    require checkStatus[arg1].field_768 == sub_7c13d6af
    checkStatus[arg1].field_0 = 0
    checkStatus[arg1].field_256 = 0
    checkStatus[arg1].field_512 = 0
    checkStatus[arg1].field_512 = checkStatus[arg1].field_512
    checkStatus[arg1].field_768 = 0
    checkStatus[arg1].field_776 = 0
    emit 0x73d49bd5: arg1, checkStatus[arg1].field_0, checkStatus[arg1].field_256
    require checkStatus[arg1].field_640 >= 0
    sub_bac22d3a = uint128(sub_bac22d3a + checkStatus[arg1].field_640)
    require checkStatus[arg1].field_640 <= checkStatus[arg1].field_512
    call checkStatus[arg1].field_0 with:
       value uint128(checkStatus[arg1].field_512 - checkStatus[arg1].field_640) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_2068d36e(?) {
    require msg.sender == relayerAddress
    require uint128(uint128(40029 * block.gasprice) / 40029) == uint128(block.gasprice)
    require uint128(checkStatus[arg1].field_640 + (40029 * block.gasprice)) >= checkStatus[arg1].field_640
    checkStatus[arg1].field_640 = uint128(checkStatus[arg1].field_640 + (40029 * block.gasprice))
    if checkStatus[arg1].field_768 != sub_7c13d6af:
        if checkStatus[arg1].field_768 != sub_3f8f4094:
            if checkStatus[arg1].field_768 != sub_d31a03c2:
                require checkStatus[arg1].field_768 == sub_84d069aa
    checkStatus[arg1].field_0 = 0
    checkStatus[arg1].field_256 = 0
    checkStatus[arg1].field_512 = 0
    checkStatus[arg1].field_512 = checkStatus[arg1].field_512
    checkStatus[arg1].field_768 = 0
    checkStatus[arg1].field_776 = 0
    emit 0xe6e1a9fa: arg1, checkStatus[arg1].field_0, checkStatus[arg1].field_0
    require checkStatus[arg1].field_640 >= 0
    sub_bac22d3a = uint128(sub_bac22d3a + checkStatus[arg1].field_640)
    require checkStatus[arg1].field_640 <= checkStatus[arg1].field_512
    call checkStatus[arg1].field_0 with:
       value uint128(checkStatus[arg1].field_512 - checkStatus[arg1].field_640) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_c5110e4d(?) {
    require msg.sender == checkStatus[arg1].field_0
    if checkStatus[arg1].field_768 != sub_7c13d6af:
        if checkStatus[arg1].field_768 != sub_3f8f4094:
            if checkStatus[arg1].field_768 != sub_d31a03c2:
                require checkStatus[arg1].field_768 == sub_84d069aa
    checkStatus[arg1].field_0 = 0
    checkStatus[arg1].field_256 = 0
    checkStatus[arg1].field_512 = 0
    checkStatus[arg1].field_512 = checkStatus[arg1].field_512
    checkStatus[arg1].field_768 = 0
    checkStatus[arg1].field_776 = 0
    emit 0x1a754aef: arg1, checkStatus[arg1].field_0, checkStatus[arg1].field_256
    if fee:
        require fee
        require uint128(uint128(fee * checkStatus[arg1].field_512) / fee) == checkStatus[arg1].field_512
    require uint128((uint128(fee * checkStatus[arg1].field_512) / 100) + checkStatus[arg1].field_640) >= uint128(uint128(fee * checkStatus[arg1].field_512) / 100)
    sub_bac22d3a = uint128(sub_bac22d3a + (uint128(fee * checkStatus[arg1].field_512) / 100) + checkStatus[arg1].field_640)
    require uint128((uint128(fee * checkStatus[arg1].field_512) / 100) + checkStatus[arg1].field_640) <= checkStatus[arg1].field_512
    call checkStatus[arg1].field_256 with:
       value uint128(checkStatus[arg1].field_512 - (uint128(fee * checkStatus[arg1].field_512) / 100) - checkStatus[arg1].field_640) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_471b6b8d(?) {
    require msg.sender == relayerAddress
    require uint128(uint128(40235 * block.gasprice) / 40235) == uint128(block.gasprice)
    require uint128(checkStatus[arg1].field_640 + (40235 * block.gasprice)) >= checkStatus[arg1].field_640
    checkStatus[arg1].field_640 = uint128(checkStatus[arg1].field_640 + (40235 * block.gasprice))
    if checkStatus[arg1].field_768 != sub_7c13d6af:
        if checkStatus[arg1].field_768 != sub_3f8f4094:
            if checkStatus[arg1].field_768 != sub_d31a03c2:
                require checkStatus[arg1].field_768 == sub_84d069aa
    checkStatus[arg1].field_0 = 0
    checkStatus[arg1].field_256 = 0
    checkStatus[arg1].field_512 = 0
    checkStatus[arg1].field_512 = checkStatus[arg1].field_512
    checkStatus[arg1].field_768 = 0
    checkStatus[arg1].field_776 = 0
    emit 0x1a754aef: arg1, checkStatus[arg1].field_0, checkStatus[arg1].field_256
    if fee:
        require fee
        require uint128(uint128(fee * checkStatus[arg1].field_512) / fee) == checkStatus[arg1].field_512
    require uint128((uint128(fee * checkStatus[arg1].field_512) / 100) + checkStatus[arg1].field_640) >= uint128(uint128(fee * checkStatus[arg1].field_512) / 100)
    sub_bac22d3a = uint128(sub_bac22d3a + (uint128(fee * checkStatus[arg1].field_512) / 100) + checkStatus[arg1].field_640)
    require uint128((uint128(fee * checkStatus[arg1].field_512) / 100) + checkStatus[arg1].field_640) <= checkStatus[arg1].field_512
    call checkStatus[arg1].field_256 with:
       value uint128(checkStatus[arg1].field_512 - (uint128(fee * checkStatus[arg1].field_512) / 100) - checkStatus[arg1].field_640) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_31c0be01(?) {
    require msg.sender == arbiterAddress
    if checkStatus[arg1].field_768 != sub_3f8f4094:
        require checkStatus[arg1].field_768 == sub_84d069aa
    require uint128(uint128(47799 * block.gasprice) / 47799) == uint128(block.gasprice)
    require uint128(checkStatus[arg1].field_640 + (47799 * block.gasprice)) >= checkStatus[arg1].field_640
    checkStatus[arg1].field_640 = uint128(checkStatus[arg1].field_640 + (47799 * block.gasprice))
    if checkStatus[arg1].field_512:
        require checkStatus[arg1].field_512
        require uint128(uint128(checkStatus[arg1].field_512 * arg2) / checkStatus[arg1].field_512) == arg2
    require arg2 <= 100
    if checkStatus[arg1].field_512:
        require checkStatus[arg1].field_512
        require uint128(uint128((100 * checkStatus[arg1].field_512) - (arg2 * checkStatus[arg1].field_512)) / checkStatus[arg1].field_512) == uint128(-arg2 + 100)
    if checkStatus[arg1].field_640:
        require checkStatus[arg1].field_640
        require uint128(uint128(checkStatus[arg1].field_640 * arg2) / checkStatus[arg1].field_640) == arg2
    require arg2 <= 100
    if checkStatus[arg1].field_640:
        require checkStatus[arg1].field_640
        require uint128(uint128((100 * checkStatus[arg1].field_640) - (arg2 * checkStatus[arg1].field_640)) / checkStatus[arg1].field_640) == uint128(-arg2 + 100)
    emit 0xc0c2bacb: arg1, checkStatus[arg1].field_0, checkStatus[arg1].field_256
    checkStatus[arg1].field_0 = 0
    checkStatus[arg1].field_256 = 0
    checkStatus[arg1].field_512 = 0
    checkStatus[arg1].field_512 = checkStatus[arg1].field_512
    checkStatus[arg1].field_768 = 0
    checkStatus[arg1].field_776 = 0
    if fee:
        require fee
        require uint128(uint128(fee * uint128(checkStatus[arg1].field_512 * arg2) / 100) / fee) == uint128(uint128(checkStatus[arg1].field_512 * arg2) / 100)
    require uint128((uint128(fee * uint128(checkStatus[arg1].field_512 * arg2) / 100) / 100) + (uint128(checkStatus[arg1].field_640 * arg2) / 100)) >= uint128(uint128(fee * uint128(checkStatus[arg1].field_512 * arg2) / 100) / 100)
    sub_bac22d3a = uint128(sub_bac22d3a + (uint128(fee * uint128(checkStatus[arg1].field_512 * arg2) / 100) / 100) + (uint128(checkStatus[arg1].field_640 * arg2) / 100))
    require uint128((uint128(fee * uint128(checkStatus[arg1].field_512 * arg2) / 100) / 100) + (uint128(checkStatus[arg1].field_640 * arg2) / 100)) <= uint128(uint128(checkStatus[arg1].field_512 * arg2) / 100)
    call checkStatus[arg1].field_256 with:
       value uint128((uint128(checkStatus[arg1].field_512 * arg2) / 100) - (uint128(fee * uint128(checkStatus[arg1].field_512 * arg2) / 100) / 100) - (uint128(checkStatus[arg1].field_640 * arg2) / 100)) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require uint128(uint128((100 * checkStatus[arg1].field_640) - (arg2 * checkStatus[arg1].field_640)) / 100) >= 0
    sub_bac22d3a = uint128(sub_bac22d3a + (uint128((100 * checkStatus[arg1].field_640) - (arg2 * checkStatus[arg1].field_640)) / 100))
    require uint128(uint128((100 * checkStatus[arg1].field_640) - (arg2 * checkStatus[arg1].field_640)) / 100) <= uint128(uint128((100 * checkStatus[arg1].field_512) - (arg2 * checkStatus[arg1].field_512)) / 100)
    call checkStatus[arg1].field_0 with:
       value uint128((uint128((100 * checkStatus[arg1].field_512) - (arg2 * checkStatus[arg1].field_512)) / 100) - (uint128((100 * checkStatus[arg1].field_640) - (arg2 * checkStatus[arg1].field_640)) / 100)) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
