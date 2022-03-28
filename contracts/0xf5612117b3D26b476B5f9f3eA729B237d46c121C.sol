contract main {


// =======================  Init code  ======================


uint8 stor0;
uint32 stor0; offset 8
uint32 stor0; offset 200
address stor0; offset 40
uint32 stor1;
address stor1; offset 32
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint8 stor7; offset 136
uint8 stor7; offset 176
uint32 stor7; offset 40
uint32 stor7; offset 144
uint128 stor7; offset 184
uint256 stor8;
uint8 stor9;
uint8 stor11;
uint8 stor13;
address stor15; offset 8
uint256 stor15;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    uint32(stor0.field_8) = uint32(block.timestamp)
    address(stor0.field_40) = msg.sender
    uint32(stor1.field_0) = uint32(block.timestamp)
    stor9 = 0
    stor11 = 0
    stor13 = 0
    uint256(stor15.field_0) = 0x123456789abcdf012345556789abcdf0123456789abcdf0123456789abcdf0 * 3600 and uint256(stor15.field_0)
    require not msg.value
    uint32(stor1.field_0) = uint32(block.timestamp)
    require code.data[6175 len 20] != msg.sender
    address(stor15.field_8) = code.data[6047 len 20]
    stor3 = code.data[6067 len 32]
    uint32(stor0.field_200) = code.data[6127 len 4]
    require code.data[6131 len 32] <= 1
    if not code.data[6131 len 32]:
        address(stor1.field_32) = msg.sender
    else:
        address(stor1.field_32) = code.data[6175 len 20]
    require code.data[6131 len 32] <= 1
    if code.data[6131 len 32] == 1:
        stor2 = msg.sender
    else:
        stor2 = code.data[6175 len 20]
    stor4 = code.data[6195 len 32]
    stor5 = code.data[6195 len 32] / 100
    stor6 = code.data[6195 len 32] + (code.data[6195 len 32] / 100)
    uint8(stor7.field_0) = code.data[6258 len 1]
    uint32(stor7.field_40) = code.data[6287 len 4]
    if code.data[6322 len 1] > 0:
        uint8(stor7.field_136) = code.data[6322 len 1]
        uint32(stor7.field_144) = code.data[6351 len 4]
        uint8(stor7.field_176) = code.data[6386 len 1]
        Mask(72, 0, stor7.field_184) = 0
    stor8 = uint8(stor7.field_0) * stor4 / 100
    return code.data[744 len 5291]
}



// =====================  Runtime code  =====================


const version = '1.0.0'


bool stor0; offset 256
uint8 stage;
uint32 stageTime; offset 8
uint32 creationTime; offset 200
address creatorAddress; offset 40
uint32 sub_6635465e;
address clientAddress; offset 32
address contractorAddress;
uint256 sub_1b3012a3;
uint256 price;
uint256 fee;
uint256 total;
uint8 sub_5b42969a;
uint8 sub_870784b2; offset 136
uint8 sub_c07868c0; offset 176
uint32 sub_bfeb3d10; offset 8
uint32 sub_e61996a6; offset 40
uint32 sub_45780626; offset 72
uint32 sub_8cc0a674; offset 104
uint32 sub_30d2437f; offset 144
uint256 downPayment;
uint8 stor9;
uint256 sub_4217fa6f;
uint8 sub_d722118d;
uint256 sub_2c40dc0e;
uint8 sub_c127116a;
uint256 lateFee;
uint8 stor15;
uint8 stor15; offset 168
address stor15; offset 8

function creator() {
    return creatorAddress
}

function client() {
    return clientAddress
}

function sub_1b3012a3(?) {
    return sub_1b3012a3
}

function stageTime() {
    return stageTime
}

function sub_2c40dc0e(?) {
    return sub_2c40dc0e
}

function total() {
    return total
}

function sub_30d2437f(?) {
    return sub_30d2437f
}

function lateFee() {
    return lateFee
}

function sub_4217fa6f(?) {
    return sub_4217fa6f
}

function sub_45780626(?) {
    return sub_45780626
}

function downPayment() {
    return downPayment
}

function sub_5b42969a(?) {
    return sub_5b42969a
}

function sub_6635465e(?) {
    return sub_6635465e
}

function sub_870784b2(?) {
    return sub_870784b2
}

function sub_8cc0a674(?) {
    return sub_8cc0a674
}

function price() {
    return price
}

function sub_bfeb3d10(?) {
    return sub_bfeb3d10
}

function stage() {
    require stage <= 5
    return stage
}

function sub_c07868c0(?) {
    return sub_c07868c0
}

function sub_c127116a(?) {
    return bool(sub_c127116a)
}

function sub_d1fd0433(?) {
    return bool(uint8(stor15.field_0))
}

function sub_d722118d(?) {
    return bool(sub_d722118d)
}

function creationTime() {
    return creationTime
}

function fee() {
    return fee
}

function sub_e61996a6(?) {
    return sub_e61996a6
}

function sub_f9f3a160(?) {
    return bool(stor9)
}

function contractor() {
    return contractorAddress
}

function destroy() {
    require stage <= 5
    require not stage
    require creatorAddress == msg.sender
    emit Destroy()
    selfdestruct(creatorAddress)
}

function _fallback() {
    revert 
}

function sign() {
    require stage <= 5
    require not stage
    require creatorAddress != msg.sender
    require contractorAddress == msg.sender
    emit Sign()
    stage = 1
    stageTime = uint32(block.timestamp)
    stor0 = 0
}

function sub_15e204fc(?) {
    require stage <= 5
    require stage == 5
    require not uint8(stor15.field_168)
    uint8(stor15.field_168) = 1
    require clientAddress == msg.sender
    require sub_4217fa6f
    require not sub_d722118d
    call clientAddress with:
       value sub_4217fa6f wei
         gas gas_remaining - 34050 wei
    sub_d722118d = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0x2639196a 
    uint8(stor15.field_168) = 0
}

function sub_163ccd35(?) {
    require stage <= 5
    require stage == 4
    require not uint8(stor15.field_168)
    uint8(stor15.field_168) = 1
    require contractorAddress == msg.sender
    require sub_2c40dc0e
    require not sub_c127116a
    call contractorAddress with:
       value sub_2c40dc0e wei
         gas gas_remaining - 34050 wei
    sub_c127116a = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0xa746be47 
    uint8(stor15.field_168) = 0
}

function sub_c26f834a(?) {
    require stage <= 5
    require stage == 4
    require not uint8(stor15.field_168)
    uint8(stor15.field_168) = 1
    require clientAddress == msg.sender
    require lateFee
    require not uint8(stor15.field_0)
    call clientAddress with:
       value lateFee wei
         gas gas_remaining - 34050 wei
    uint8(stor15.field_0) = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0xad9e5573 
    uint8(stor15.field_168) = 0
}

function terminate() {
    require stage <= 5
    require stage == 2
    require not uint8(stor15.field_168)
    uint8(stor15.field_168) = 1
    if clientAddress != msg.sender:
        require contractorAddress == msg.sender
    sub_4217fa6f = total - fee - downPayment
    emit Terminate()
    stage = 5
    stageTime = uint32(block.timestamp)
    stor0 = 0
    if sub_4217fa6f > 0:
        call clientAddress with:
           value sub_4217fa6f wei
             gas 2300 * is_zero(value) wei
        sub_d722118d = uint8(bool(ext_call.success))
    uint8(stor15.field_168) = 0
}

function sub_f7be992a(?) {
    require not uint8(stor15.field_168)
    uint8(stor15.field_168) = 1
    require contractorAddress == msg.sender
    require stage <= 5
    if stage != 2:
        require stage <= 5
        if stage != 5:
            require stage <= 5
            require stage == 4
    require downPayment
    require not stor9
    call contractorAddress with:
       value downPayment wei
         gas gas_remaining - 34050 wei
    stor9 = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0x1d652a5c 
    uint8(stor15.field_168) = 0
}

function pay() payable {
    require not uint8(stor15.field_168)
    uint8(stor15.field_168) = 1
    require stage <= 5
    if creatorAddress == msg.sender:
        require stage == 1
    else:
        require not stage
        if creatorAddress == msg.sender:
            require stage <= 5
            require stage == 1
    require clientAddress == msg.sender
    require msg.value == total
    emit Pay()
    stage = 2
    stageTime = uint32(block.timestamp)
    stor0 = 0
    sub_bfeb3d10 = uint32(block.timestamp)
    require ext_code.size(address(stor15.field_8))
    call address(stor15.field_8).0xddca3f43 with:
       value fee wei
         gas gas_remaining - 9050 wei
    require ext_call.success
    if downPayment > 0:
        call contractorAddress with:
           value downPayment wei
             gas 2300 * is_zero(value) wei
        stor9 = uint8(bool(ext_call.success))
    uint8(stor15.field_168) = 0
}

function close(uint32 arg1) {
    require not uint8(stor15.field_168)
    uint8(stor15.field_168) = 1
    require stage <= 5
    if stage != 2:
        require stage <= 5
        require stage == 3
    if clientAddress == msg.sender:
        if sub_45780626 != arg1:
            sub_45780626 = arg1
            emit 0xfaea1630 
            stage = 3
            stageTime = uint32(block.timestamp)
            stor0 = 0
    else:
        require contractorAddress == msg.sender
        if sub_8cc0a674 != arg1:
            sub_8cc0a674 = arg1
            emit 0xfaea1630 
            stage = 3
            stageTime = uint32(block.timestamp)
            stor0 = 0
    if sub_8cc0a674 == sub_45780626:
        sub_2c40dc0e = price - downPayment
        emit Close()
        stage = 4
        stageTime = uint32(block.timestamp)
        stor0 = 0
        if sub_870784b2 <= 0:
            if sub_2c40dc0e > 0:
                call contractorAddress with:
                   value sub_2c40dc0e wei
                     gas 2300 * is_zero(value) wei
                sub_c127116a = uint8(bool(ext_call.success))
        else:
            if block.timestamp <= sub_e61996a6:
                if sub_2c40dc0e > 0:
                    call contractorAddress with:
                       value sub_2c40dc0e wei
                         gas 2300 * is_zero(value) wei
                    sub_c127116a = uint8(bool(ext_call.success))
            else:
                require sub_30d2437f
                if uint8(sub_e61996a6 - block.timestamp / sub_30d2437f * sub_870784b2) <= sub_c07868c0:
                    lateFee = uint8(sub_e61996a6 - block.timestamp / sub_30d2437f * sub_870784b2) * price / 100
                    sub_2c40dc0e -= uint8(sub_e61996a6 - block.timestamp / sub_30d2437f * sub_870784b2) * price / 100
                    if uint8(sub_e61996a6 - block.timestamp / sub_30d2437f * sub_870784b2) * price / 100 > 0:
                        call clientAddress with:
                           value lateFee wei
                             gas 2300 * is_zero(value) wei
                        uint8(stor15.field_0) = uint8(bool(ext_call.success))
                    if sub_2c40dc0e > 0:
                        call contractorAddress with:
                           value sub_2c40dc0e wei
                             gas 2300 * is_zero(value) wei
                        sub_c127116a = uint8(bool(ext_call.success))
                else:
                    lateFee = sub_c07868c0 * price / 100
                    sub_2c40dc0e -= sub_c07868c0 * price / 100
                    if sub_c07868c0 * price / 100 > 0:
                        call clientAddress with:
                           value lateFee wei
                             gas 2300 * is_zero(value) wei
                        uint8(stor15.field_0) = uint8(bool(ext_call.success))
                    if sub_2c40dc0e > 0:
                        call contractorAddress with:
                           value sub_2c40dc0e wei
                             gas 2300 * is_zero(value) wei
                        sub_c127116a = uint8(bool(ext_call.success))
    uint8(stor15.field_168) = 0
}



}
