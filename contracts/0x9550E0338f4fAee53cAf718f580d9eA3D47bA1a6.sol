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
uint256 stor7;
uint32 stor8; offset 32
uint256 stor9;
uint32 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
uint8 stor15;
uint8 stor17;
address stor19; offset 8
uint256 stor19;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    uint32(stor0.field_8) = uint32(block.timestamp)
    address(stor0.field_40) = msg.sender
    uint32(stor1.field_0) = uint32(block.timestamp)
    stor13 = 0
    stor15 = 0
    stor17 = 0
    uint256(stor19.field_0) = 0x123456789abcdf012345556789abcdf0123456789abcdf0123456789abcdf0 * 3600 and uint256(stor19.field_0)
    require not msg.value
    uint32(stor1.field_0) = uint32(block.timestamp)
    require code.data[6039 len 20] != msg.sender
    address(stor19.field_8) = code.data[5911 len 20]
    stor3 = code.data[5931 len 32]
    uint32(stor0.field_200) = code.data[5991 len 4]
    require code.data[5995 len 32] <= 1
    if not code.data[5995 len 32]:
        address(stor1.field_32) = msg.sender
    else:
        address(stor1.field_32) = code.data[6039 len 20]
    require code.data[5995 len 32] <= 1
    if code.data[5995 len 32] == 1:
        stor2 = msg.sender
    else:
        stor2 = code.data[6039 len 20]
    stor4 = code.data[6059 len 32]
    stor5 = code.data[6059 len 32] / 100
    stor6 = code.data[6059 len 32] + (code.data[6059 len 32] / 100)
    stor7 = code.data[6091 len 32]
    stor8 = code.data[6151 len 4]
    if code.data[6155 len 32] > 0:
        require code.data[6219 len 32] <= -code.data[6091 len 32] + 100 * 10^18
        stor9 = code.data[6155 len 32]
        stor10 = code.data[6215 len 4]
        stor11 = code.data[6219 len 32]
    stor12 = stor7 * stor4 / 100 * 10^18
    return code.data[673 len 5226]
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
uint256 sub_5b42969a;
uint32 sub_bfeb3d10;
uint32 sub_e61996a6; offset 32
uint32 sub_45780626; offset 64
uint32 sub_8cc0a674; offset 96
uint256 sub_870784b2;
uint32 sub_30d2437f;
uint256 sub_c07868c0;
uint256 downPayment;
uint8 sub_f9f3a160;
uint256 sub_4217fa6f;
uint8 sub_d722118d;
uint256 sub_2c40dc0e;
uint8 sub_c127116a;
uint256 lateFee;
uint8 sub_d1fd0433;
uint8 stor19; offset 168
address stor19; offset 8

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
    return bool(sub_d1fd0433)
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
    return bool(sub_f9f3a160)
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

function sub_c26f834a(?) {
    require stage <= 5
    require stage == 4
    require not uint8(stor19.field_168)
    uint8(stor19.field_168) = 1
    require clientAddress == msg.sender
    require lateFee
    require not sub_d1fd0433
    call clientAddress with:
       value lateFee wei
         gas gas_remaining - 34050 wei
    sub_d1fd0433 = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0xad9e5573 
    uint8(stor19.field_168) = 0
}

function sub_15e204fc(?) {
    require stage <= 5
    require stage == 5
    require not uint8(stor19.field_168)
    uint8(stor19.field_168) = 1
    require clientAddress == msg.sender
    require sub_4217fa6f
    require not sub_d722118d
    call clientAddress with:
       value sub_4217fa6f wei
         gas gas_remaining - 34050 wei
    sub_d722118d = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0x2639196a 
    uint8(stor19.field_168) = 0
}

function sub_163ccd35(?) {
    require stage <= 5
    require stage == 4
    require not uint8(stor19.field_168)
    uint8(stor19.field_168) = 1
    require contractorAddress == msg.sender
    require sub_2c40dc0e
    require not sub_c127116a
    call contractorAddress with:
       value sub_2c40dc0e wei
         gas gas_remaining - 34050 wei
    sub_c127116a = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0xa746be47 
    uint8(stor19.field_168) = 0
}

function terminate() {
    require stage <= 5
    require stage == 2
    require not uint8(stor19.field_168)
    uint8(stor19.field_168) = 1
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
    uint8(stor19.field_168) = 0
}

function sub_f7be992a(?) {
    require not uint8(stor19.field_168)
    uint8(stor19.field_168) = 1
    require contractorAddress == msg.sender
    require stage <= 5
    if stage != 2:
        require stage <= 5
        if stage != 5:
            require stage <= 5
            require stage == 4
    require downPayment
    require not sub_f9f3a160
    call contractorAddress with:
       value downPayment wei
         gas gas_remaining - 34050 wei
    sub_f9f3a160 = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0x1d652a5c 
    uint8(stor19.field_168) = 0
}

function pay() payable {
    require not uint8(stor19.field_168)
    uint8(stor19.field_168) = 1
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
    require ext_code.size(address(stor19.field_8))
    call address(stor19.field_8).0xddca3f43 with:
       value fee wei
         gas gas_remaining - 9050 wei
    require ext_call.success
    if downPayment > 0:
        call contractorAddress with:
           value downPayment wei
             gas 2300 * is_zero(value) wei
        sub_f9f3a160 = uint8(bool(ext_call.success))
    uint8(stor19.field_168) = 0
}

function close(uint32 arg1) {
    require not uint8(stor19.field_168)
    uint8(stor19.field_168) = 1
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
            if sub_45780626 <= sub_e61996a6:
                if sub_2c40dc0e > 0:
                    call contractorAddress with:
                       value sub_2c40dc0e wei
                         gas 2300 * is_zero(value) wei
                    sub_c127116a = uint8(bool(ext_call.success))
            else:
                require sub_30d2437f
                if sub_870784b2 * uint32(uint32(sub_45780626 - sub_e61996a6) / sub_30d2437f) <= sub_c07868c0:
                    lateFee = sub_870784b2 * uint32(uint32(sub_45780626 - sub_e61996a6) / sub_30d2437f) * price / 100 * 10^18
                    sub_2c40dc0e -= sub_870784b2 * uint32(uint32(sub_45780626 - sub_e61996a6) / sub_30d2437f) * price / 100 * 10^18
                    if sub_870784b2 * uint32(uint32(sub_45780626 - sub_e61996a6) / sub_30d2437f) * price / 100 * 10^18 > 0:
                        call clientAddress with:
                           value lateFee wei
                             gas 2300 * is_zero(value) wei
                        sub_d1fd0433 = uint8(bool(ext_call.success))
                    if sub_2c40dc0e > 0:
                        call contractorAddress with:
                           value sub_2c40dc0e wei
                             gas 2300 * is_zero(value) wei
                        sub_c127116a = uint8(bool(ext_call.success))
                else:
                    lateFee = sub_c07868c0 * price / 100 * 10^18
                    sub_2c40dc0e -= sub_c07868c0 * price / 100 * 10^18
                    if sub_c07868c0 * price / 100 * 10^18 > 0:
                        call clientAddress with:
                           value lateFee wei
                             gas 2300 * is_zero(value) wei
                        sub_d1fd0433 = uint8(bool(ext_call.success))
                    if sub_2c40dc0e > 0:
                        call contractorAddress with:
                           value sub_2c40dc0e wei
                             gas 2300 * is_zero(value) wei
                        sub_c127116a = uint8(bool(ext_call.success))
    uint8(stor19.field_168) = 0
}



}
